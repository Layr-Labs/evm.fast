import InitECandidate.Proofs.DeadStages713.Chunk024
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input6400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6399 input6398)).val
theorem input6400_def : input6400 = (.seq input6399 input6398) := by
  unfold input6400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6399 output6398)).val
theorem output6400_def : output6400 = (.seq output6399 output6398) := by
  unfold output6400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6400_skip : Flapjack.WordAlloc.isSkip output6400 = false := by
  rw [output6400_def]
  conv => lhs; cbv
  try rfl
theorem node6400_eq : Flapjack.WordAlloc.removeDeadStructural input6400 value3204 value1 value2 = (output6400, value5, value1) := by
  rw [input6400_def, output6400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6398_eq]
  dsimp only
  rw [node6399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6400 input6397)).val
theorem input6401_def : input6401 = (.seq input6400 input6397) := by
  unfold input6401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6400 output6397)).val
theorem output6401_def : output6401 = (.seq output6400 output6397) := by
  unfold output6401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6401_skip : Flapjack.WordAlloc.isSkip output6401 = false := by
  rw [output6401_def]
  conv => lhs; cbv
  try rfl
theorem node6401_eq : Flapjack.WordAlloc.removeDeadStructural input6401 value3203 value1 value2 = (output6401, value5, value1) := by
  rw [input6401_def, output6401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6397_eq]
  dsimp only
  rw [node6400_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6401 input6396)).val
theorem input6402_def : input6402 = (.seq input6401 input6396) := by
  unfold input6402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6401 output6396)).val
theorem output6402_def : output6402 = (.seq output6401 output6396) := by
  unfold output6402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6402_skip : Flapjack.WordAlloc.isSkip output6402 = false := by
  rw [output6402_def]
  conv => lhs; cbv
  try rfl
theorem node6402_eq : Flapjack.WordAlloc.removeDeadStructural input6402 value3202 value1 value2 = (output6402, value5, value1) := by
  rw [input6402_def, output6402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6396_eq]
  dsimp only
  rw [node6401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6402 input6395)).val
theorem input6403_def : input6403 = (.seq input6402 input6395) := by
  unfold input6403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6402 output6395)).val
theorem output6403_def : output6403 = (.seq output6402 output6395) := by
  unfold output6403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6403_skip : Flapjack.WordAlloc.isSkip output6403 = false := by
  rw [output6403_def]
  conv => lhs; cbv
  try rfl
theorem node6403_eq : Flapjack.WordAlloc.removeDeadStructural input6403 value3200 value1 value2 = (output6403, value5, value1) := by
  rw [input6403_def, output6403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6395_eq]
  dsimp only
  rw [node6402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3206 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16809 (Flapjack.WordLangAddr.addr 16813 0#64)))).val
theorem input6404_def : input6404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16809 (Flapjack.WordLangAddr.addr 16813 0#64))) := by
  unfold input6404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16809 (Flapjack.WordLangAddr.addr 16813 0#64)))).val
theorem output6404_def : output6404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16809 (Flapjack.WordLangAddr.addr 16813 0#64))) := by
  unfold output6404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6404_skip : Flapjack.WordAlloc.isSkip output6404 = false := by
  rw [output6404_def]
  conv => lhs; cbv
  try rfl
theorem node6404_eq : Flapjack.WordAlloc.removeDeadStructural input6404 value5 value1 value2 = (output6404, value3206, value1) := by
  rw [input6404_def, output6404_def]
  try (conv => lhs; cbv)
  try rfl

def value3207 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16813, 16801)])).val
theorem input6405_def : input6405 = (Flapjack.WordLangProgHOL.move 0 [(16813, 16801)]) := by
  unfold input6405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16813, 16801)])).val
theorem output6405_def : output6405 = (Flapjack.WordLangProgHOL.move 0 [(16813, 16801)]) := by
  unfold output6405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6405_skip : Flapjack.WordAlloc.isSkip output6405 = false := by
  rw [output6405_def]
  conv => lhs; cbv
  try rfl
theorem node6405_eq : Flapjack.WordAlloc.removeDeadStructural input6405 value3206 value1 value2 = (output6405, value3207, value1) := by
  rw [input6405_def, output6405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6405 input6404)).val
theorem input6406_def : input6406 = (.seq input6405 input6404) := by
  unfold input6406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6405 output6404)).val
theorem output6406_def : output6406 = (.seq output6405 output6404) := by
  unfold output6406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6406_skip : Flapjack.WordAlloc.isSkip output6406 = false := by
  rw [output6406_def]
  conv => lhs; cbv
  try rfl
theorem node6406_eq : Flapjack.WordAlloc.removeDeadStructural input6406 value5 value1 value2 = (output6406, value3207, value1) := by
  rw [input6406_def, output6406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6404_eq]
  dsimp only
  rw [node6405_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3208 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16809 8247046336453711789#64))).val
theorem input6407_def : input6407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16809 8247046336453711789#64)) := by
  unfold input6407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16809 8247046336453711789#64))).val
theorem output6407_def : output6407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16809 8247046336453711789#64)) := by
  unfold output6407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6407_skip : Flapjack.WordAlloc.isSkip output6407 = false := by
  rw [output6407_def]
  conv => lhs; cbv
  try rfl
theorem node6407_eq : Flapjack.WordAlloc.removeDeadStructural input6407 value3207 value1 value2 = (output6407, value3208, value1) := by
  rw [input6407_def, output6407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16805 8247046336453711789#64))).val
theorem input6408_def : input6408 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16805 8247046336453711789#64)) := by
  unfold input6408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6408_def : output6408 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6408_skip : Flapjack.WordAlloc.isSkip output6408 = true := by
  rw [output6408_def]
  conv => lhs; cbv
  try rfl
theorem node6408_eq : Flapjack.WordAlloc.removeDeadStructural input6408 value3208 value1 value2 = (output6408, value3208, value1) := by
  rw [input6408_def, output6408_def]
  try (conv => lhs; cbv)
  try rfl

def value3209 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16801 16793 (Flapjack.WordRegImm.reg 16797))))).val
theorem input6409_def : input6409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16801 16793 (Flapjack.WordRegImm.reg 16797)))) := by
  unfold input6409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16801 16793 (Flapjack.WordRegImm.reg 16797))))).val
theorem output6409_def : output6409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16801 16793 (Flapjack.WordRegImm.reg 16797)))) := by
  unfold output6409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6409_skip : Flapjack.WordAlloc.isSkip output6409 = false := by
  rw [output6409_def]
  conv => lhs; cbv
  try rfl
theorem node6409_eq : Flapjack.WordAlloc.removeDeadStructural input6409 value3208 value1 value2 = (output6409, value3209, value1) := by
  rw [input6409_def, output6409_def]
  try (conv => lhs; cbv)
  try rfl

def value3210 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16797 3928#64))).val
theorem input6410_def : input6410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16797 3928#64)) := by
  unfold input6410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16797 3928#64))).val
theorem output6410_def : output6410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16797 3928#64)) := by
  unfold output6410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6410_skip : Flapjack.WordAlloc.isSkip output6410 = false := by
  rw [output6410_def]
  conv => lhs; cbv
  try rfl
theorem node6410_eq : Flapjack.WordAlloc.removeDeadStructural input6410 value3209 value1 value2 = (output6410, value3210, value1) := by
  rw [input6410_def, output6410_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6410 input6409)).val
theorem input6411_def : input6411 = (.seq input6410 input6409) := by
  unfold input6411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6410 output6409)).val
theorem output6411_def : output6411 = (.seq output6410 output6409) := by
  unfold output6411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6411_skip : Flapjack.WordAlloc.isSkip output6411 = false := by
  rw [output6411_def]
  conv => lhs; cbv
  try rfl
theorem node6411_eq : Flapjack.WordAlloc.removeDeadStructural input6411 value3208 value1 value2 = (output6411, value3210, value1) := by
  rw [input6411_def, output6411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6409_eq]
  dsimp only
  rw [node6410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3211 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16793 (Flapjack.WordLangAddr.addr 16789 18446744073709551104#64)))).val
theorem input6412_def : input6412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16793 (Flapjack.WordLangAddr.addr 16789 18446744073709551104#64))) := by
  unfold input6412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16793 (Flapjack.WordLangAddr.addr 16789 18446744073709551104#64)))).val
theorem output6412_def : output6412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16793 (Flapjack.WordLangAddr.addr 16789 18446744073709551104#64))) := by
  unfold output6412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6412_skip : Flapjack.WordAlloc.isSkip output6412 = false := by
  rw [output6412_def]
  conv => lhs; cbv
  try rfl
theorem node6412_eq : Flapjack.WordAlloc.removeDeadStructural input6412 value3210 value1 value2 = (output6412, value3211, value1) := by
  rw [input6412_def, output6412_def]
  try (conv => lhs; cbv)
  try rfl

def value3212 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16789 16785)).val
theorem input6413_def : input6413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16789 16785) := by
  unfold input6413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16789 16785)).val
theorem output6413_def : output6413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16789 16785) := by
  unfold output6413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6413_skip : Flapjack.WordAlloc.isSkip output6413 = false := by
  rw [output6413_def]
  conv => lhs; cbv
  try rfl
theorem node6413_eq : Flapjack.WordAlloc.removeDeadStructural input6413 value3211 value1 value2 = (output6413, value3212, value1) := by
  rw [input6413_def, output6413_def]
  try (conv => lhs; cbv)
  try rfl

def value3213 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16785 16781 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6414_def : input6414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16785 16781 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16785 16781 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6414_def : output6414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16785 16781 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6414_skip : Flapjack.WordAlloc.isSkip output6414 = false := by
  rw [output6414_def]
  conv => lhs; cbv
  try rfl
theorem node6414_eq : Flapjack.WordAlloc.removeDeadStructural input6414 value3212 value1 value2 = (output6414, value3213, value1) := by
  rw [input6414_def, output6414_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16781 Flapjack.WordStore.heapLength)).val
theorem input6415_def : input6415 = (Flapjack.WordLangProgHOL.get 16781 Flapjack.WordStore.heapLength) := by
  unfold input6415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16781 Flapjack.WordStore.heapLength)).val
theorem output6415_def : output6415 = (Flapjack.WordLangProgHOL.get 16781 Flapjack.WordStore.heapLength) := by
  unfold output6415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6415_skip : Flapjack.WordAlloc.isSkip output6415 = false := by
  rw [output6415_def]
  conv => lhs; cbv
  try rfl
theorem node6415_eq : Flapjack.WordAlloc.removeDeadStructural input6415 value3213 value1 value2 = (output6415, value5, value1) := by
  rw [input6415_def, output6415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6415 input6414)).val
theorem input6416_def : input6416 = (.seq input6415 input6414) := by
  unfold input6416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6415 output6414)).val
theorem output6416_def : output6416 = (.seq output6415 output6414) := by
  unfold output6416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6416_skip : Flapjack.WordAlloc.isSkip output6416 = false := by
  rw [output6416_def]
  conv => lhs; cbv
  try rfl
theorem node6416_eq : Flapjack.WordAlloc.removeDeadStructural input6416 value3212 value1 value2 = (output6416, value5, value1) := by
  rw [input6416_def, output6416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6414_eq]
  dsimp only
  rw [node6415_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6416 input6413)).val
theorem input6417_def : input6417 = (.seq input6416 input6413) := by
  unfold input6417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6416 output6413)).val
theorem output6417_def : output6417 = (.seq output6416 output6413) := by
  unfold output6417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6417_skip : Flapjack.WordAlloc.isSkip output6417 = false := by
  rw [output6417_def]
  conv => lhs; cbv
  try rfl
theorem node6417_eq : Flapjack.WordAlloc.removeDeadStructural input6417 value3211 value1 value2 = (output6417, value5, value1) := by
  rw [input6417_def, output6417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6413_eq]
  dsimp only
  rw [node6416_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6417 input6412)).val
theorem input6418_def : input6418 = (.seq input6417 input6412) := by
  unfold input6418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6417 output6412)).val
theorem output6418_def : output6418 = (.seq output6417 output6412) := by
  unfold output6418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6418_skip : Flapjack.WordAlloc.isSkip output6418 = false := by
  rw [output6418_def]
  conv => lhs; cbv
  try rfl
theorem node6418_eq : Flapjack.WordAlloc.removeDeadStructural input6418 value3210 value1 value2 = (output6418, value5, value1) := by
  rw [input6418_def, output6418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6412_eq]
  dsimp only
  rw [node6417_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6418 input6411)).val
theorem input6419_def : input6419 = (.seq input6418 input6411) := by
  unfold input6419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6418 output6411)).val
theorem output6419_def : output6419 = (.seq output6418 output6411) := by
  unfold output6419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6419_skip : Flapjack.WordAlloc.isSkip output6419 = false := by
  rw [output6419_def]
  conv => lhs; cbv
  try rfl
theorem node6419_eq : Flapjack.WordAlloc.removeDeadStructural input6419 value3208 value1 value2 = (output6419, value5, value1) := by
  rw [input6419_def, output6419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6411_eq]
  dsimp only
  rw [node6418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3214 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16773 (Flapjack.WordLangAddr.addr 16777 0#64)))).val
theorem input6420_def : input6420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16773 (Flapjack.WordLangAddr.addr 16777 0#64))) := by
  unfold input6420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16773 (Flapjack.WordLangAddr.addr 16777 0#64)))).val
theorem output6420_def : output6420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16773 (Flapjack.WordLangAddr.addr 16777 0#64))) := by
  unfold output6420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6420_skip : Flapjack.WordAlloc.isSkip output6420 = false := by
  rw [output6420_def]
  conv => lhs; cbv
  try rfl
theorem node6420_eq : Flapjack.WordAlloc.removeDeadStructural input6420 value5 value1 value2 = (output6420, value3214, value1) := by
  rw [input6420_def, output6420_def]
  try (conv => lhs; cbv)
  try rfl

def value3215 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16777, 16765)])).val
theorem input6421_def : input6421 = (Flapjack.WordLangProgHOL.move 0 [(16777, 16765)]) := by
  unfold input6421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16777, 16765)])).val
theorem output6421_def : output6421 = (Flapjack.WordLangProgHOL.move 0 [(16777, 16765)]) := by
  unfold output6421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6421_skip : Flapjack.WordAlloc.isSkip output6421 = false := by
  rw [output6421_def]
  conv => lhs; cbv
  try rfl
theorem node6421_eq : Flapjack.WordAlloc.removeDeadStructural input6421 value3214 value1 value2 = (output6421, value3215, value1) := by
  rw [input6421_def, output6421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6421 input6420)).val
theorem input6422_def : input6422 = (.seq input6421 input6420) := by
  unfold input6422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6421 output6420)).val
theorem output6422_def : output6422 = (.seq output6421 output6420) := by
  unfold output6422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6422_skip : Flapjack.WordAlloc.isSkip output6422 = false := by
  rw [output6422_def]
  conv => lhs; cbv
  try rfl
theorem node6422_eq : Flapjack.WordAlloc.removeDeadStructural input6422 value5 value1 value2 = (output6422, value3215, value1) := by
  rw [input6422_def, output6422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6420_eq]
  dsimp only
  rw [node6421_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3216 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16773 12164906044230685718#64))).val
theorem input6423_def : input6423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16773 12164906044230685718#64)) := by
  unfold input6423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16773 12164906044230685718#64))).val
theorem output6423_def : output6423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16773 12164906044230685718#64)) := by
  unfold output6423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6423_skip : Flapjack.WordAlloc.isSkip output6423 = false := by
  rw [output6423_def]
  conv => lhs; cbv
  try rfl
theorem node6423_eq : Flapjack.WordAlloc.removeDeadStructural input6423 value3215 value1 value2 = (output6423, value3216, value1) := by
  rw [input6423_def, output6423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16769 12164906044230685718#64))).val
theorem input6424_def : input6424 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16769 12164906044230685718#64)) := by
  unfold input6424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6424_def : output6424 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6424_skip : Flapjack.WordAlloc.isSkip output6424 = true := by
  rw [output6424_def]
  conv => lhs; cbv
  try rfl
theorem node6424_eq : Flapjack.WordAlloc.removeDeadStructural input6424 value3216 value1 value2 = (output6424, value3216, value1) := by
  rw [input6424_def, output6424_def]
  try (conv => lhs; cbv)
  try rfl

def value3217 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16765 16757 (Flapjack.WordRegImm.reg 16761))))).val
theorem input6425_def : input6425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16765 16757 (Flapjack.WordRegImm.reg 16761)))) := by
  unfold input6425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16765 16757 (Flapjack.WordRegImm.reg 16761))))).val
theorem output6425_def : output6425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16765 16757 (Flapjack.WordRegImm.reg 16761)))) := by
  unfold output6425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6425_skip : Flapjack.WordAlloc.isSkip output6425 = false := by
  rw [output6425_def]
  conv => lhs; cbv
  try rfl
theorem node6425_eq : Flapjack.WordAlloc.removeDeadStructural input6425 value3216 value1 value2 = (output6425, value3217, value1) := by
  rw [input6425_def, output6425_def]
  try (conv => lhs; cbv)
  try rfl

def value3218 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16761 3920#64))).val
theorem input6426_def : input6426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16761 3920#64)) := by
  unfold input6426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16761 3920#64))).val
theorem output6426_def : output6426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16761 3920#64)) := by
  unfold output6426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6426_skip : Flapjack.WordAlloc.isSkip output6426 = false := by
  rw [output6426_def]
  conv => lhs; cbv
  try rfl
theorem node6426_eq : Flapjack.WordAlloc.removeDeadStructural input6426 value3217 value1 value2 = (output6426, value3218, value1) := by
  rw [input6426_def, output6426_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6426 input6425)).val
theorem input6427_def : input6427 = (.seq input6426 input6425) := by
  unfold input6427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6426 output6425)).val
theorem output6427_def : output6427 = (.seq output6426 output6425) := by
  unfold output6427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6427_skip : Flapjack.WordAlloc.isSkip output6427 = false := by
  rw [output6427_def]
  conv => lhs; cbv
  try rfl
theorem node6427_eq : Flapjack.WordAlloc.removeDeadStructural input6427 value3216 value1 value2 = (output6427, value3218, value1) := by
  rw [input6427_def, output6427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6425_eq]
  dsimp only
  rw [node6426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3219 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16757 (Flapjack.WordLangAddr.addr 16753 18446744073709551104#64)))).val
theorem input6428_def : input6428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16757 (Flapjack.WordLangAddr.addr 16753 18446744073709551104#64))) := by
  unfold input6428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16757 (Flapjack.WordLangAddr.addr 16753 18446744073709551104#64)))).val
theorem output6428_def : output6428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16757 (Flapjack.WordLangAddr.addr 16753 18446744073709551104#64))) := by
  unfold output6428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6428_skip : Flapjack.WordAlloc.isSkip output6428 = false := by
  rw [output6428_def]
  conv => lhs; cbv
  try rfl
theorem node6428_eq : Flapjack.WordAlloc.removeDeadStructural input6428 value3218 value1 value2 = (output6428, value3219, value1) := by
  rw [input6428_def, output6428_def]
  try (conv => lhs; cbv)
  try rfl

def value3220 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16753 16749)).val
theorem input6429_def : input6429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16753 16749) := by
  unfold input6429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16753 16749)).val
theorem output6429_def : output6429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16753 16749) := by
  unfold output6429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6429_skip : Flapjack.WordAlloc.isSkip output6429 = false := by
  rw [output6429_def]
  conv => lhs; cbv
  try rfl
theorem node6429_eq : Flapjack.WordAlloc.removeDeadStructural input6429 value3219 value1 value2 = (output6429, value3220, value1) := by
  rw [input6429_def, output6429_def]
  try (conv => lhs; cbv)
  try rfl

def value3221 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16749 16745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6430_def : input6430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16749 16745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16749 16745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6430_def : output6430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16749 16745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6430_skip : Flapjack.WordAlloc.isSkip output6430 = false := by
  rw [output6430_def]
  conv => lhs; cbv
  try rfl
theorem node6430_eq : Flapjack.WordAlloc.removeDeadStructural input6430 value3220 value1 value2 = (output6430, value3221, value1) := by
  rw [input6430_def, output6430_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16745 Flapjack.WordStore.heapLength)).val
theorem input6431_def : input6431 = (Flapjack.WordLangProgHOL.get 16745 Flapjack.WordStore.heapLength) := by
  unfold input6431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16745 Flapjack.WordStore.heapLength)).val
theorem output6431_def : output6431 = (Flapjack.WordLangProgHOL.get 16745 Flapjack.WordStore.heapLength) := by
  unfold output6431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6431_skip : Flapjack.WordAlloc.isSkip output6431 = false := by
  rw [output6431_def]
  conv => lhs; cbv
  try rfl
theorem node6431_eq : Flapjack.WordAlloc.removeDeadStructural input6431 value3221 value1 value2 = (output6431, value5, value1) := by
  rw [input6431_def, output6431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6431 input6430)).val
theorem input6432_def : input6432 = (.seq input6431 input6430) := by
  unfold input6432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6431 output6430)).val
theorem output6432_def : output6432 = (.seq output6431 output6430) := by
  unfold output6432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6432_skip : Flapjack.WordAlloc.isSkip output6432 = false := by
  rw [output6432_def]
  conv => lhs; cbv
  try rfl
theorem node6432_eq : Flapjack.WordAlloc.removeDeadStructural input6432 value3220 value1 value2 = (output6432, value5, value1) := by
  rw [input6432_def, output6432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6430_eq]
  dsimp only
  rw [node6431_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6432 input6429)).val
theorem input6433_def : input6433 = (.seq input6432 input6429) := by
  unfold input6433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6432 output6429)).val
theorem output6433_def : output6433 = (.seq output6432 output6429) := by
  unfold output6433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6433_skip : Flapjack.WordAlloc.isSkip output6433 = false := by
  rw [output6433_def]
  conv => lhs; cbv
  try rfl
theorem node6433_eq : Flapjack.WordAlloc.removeDeadStructural input6433 value3219 value1 value2 = (output6433, value5, value1) := by
  rw [input6433_def, output6433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6429_eq]
  dsimp only
  rw [node6432_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6433 input6428)).val
theorem input6434_def : input6434 = (.seq input6433 input6428) := by
  unfold input6434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6433 output6428)).val
theorem output6434_def : output6434 = (.seq output6433 output6428) := by
  unfold output6434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6434_skip : Flapjack.WordAlloc.isSkip output6434 = false := by
  rw [output6434_def]
  conv => lhs; cbv
  try rfl
theorem node6434_eq : Flapjack.WordAlloc.removeDeadStructural input6434 value3218 value1 value2 = (output6434, value5, value1) := by
  rw [input6434_def, output6434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6428_eq]
  dsimp only
  rw [node6433_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6434 input6427)).val
theorem input6435_def : input6435 = (.seq input6434 input6427) := by
  unfold input6435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6434 output6427)).val
theorem output6435_def : output6435 = (.seq output6434 output6427) := by
  unfold output6435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6435_skip : Flapjack.WordAlloc.isSkip output6435 = false := by
  rw [output6435_def]
  conv => lhs; cbv
  try rfl
theorem node6435_eq : Flapjack.WordAlloc.removeDeadStructural input6435 value3216 value1 value2 = (output6435, value5, value1) := by
  rw [input6435_def, output6435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6427_eq]
  dsimp only
  rw [node6434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3222 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16737 (Flapjack.WordLangAddr.addr 16741 0#64)))).val
theorem input6436_def : input6436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16737 (Flapjack.WordLangAddr.addr 16741 0#64))) := by
  unfold input6436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16737 (Flapjack.WordLangAddr.addr 16741 0#64)))).val
theorem output6436_def : output6436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16737 (Flapjack.WordLangAddr.addr 16741 0#64))) := by
  unfold output6436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6436_skip : Flapjack.WordAlloc.isSkip output6436 = false := by
  rw [output6436_def]
  conv => lhs; cbv
  try rfl
theorem node6436_eq : Flapjack.WordAlloc.removeDeadStructural input6436 value5 value1 value2 = (output6436, value3222, value1) := by
  rw [input6436_def, output6436_def]
  try (conv => lhs; cbv)
  try rfl

def value3223 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16741, 16729)])).val
theorem input6437_def : input6437 = (Flapjack.WordLangProgHOL.move 0 [(16741, 16729)]) := by
  unfold input6437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16741, 16729)])).val
theorem output6437_def : output6437 = (Flapjack.WordLangProgHOL.move 0 [(16741, 16729)]) := by
  unfold output6437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6437_skip : Flapjack.WordAlloc.isSkip output6437 = false := by
  rw [output6437_def]
  conv => lhs; cbv
  try rfl
theorem node6437_eq : Flapjack.WordAlloc.removeDeadStructural input6437 value3222 value1 value2 = (output6437, value3223, value1) := by
  rw [input6437_def, output6437_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6437 input6436)).val
theorem input6438_def : input6438 = (.seq input6437 input6436) := by
  unfold input6438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6437 output6436)).val
theorem output6438_def : output6438 = (.seq output6437 output6436) := by
  unfold output6438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6438_skip : Flapjack.WordAlloc.isSkip output6438 = false := by
  rw [output6438_def]
  conv => lhs; cbv
  try rfl
theorem node6438_eq : Flapjack.WordAlloc.removeDeadStructural input6438 value5 value1 value2 = (output6438, value3223, value1) := by
  rw [input6438_def, output6438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6436_eq]
  dsimp only
  rw [node6437_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3224 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16737 400243331105348135#64))).val
theorem input6439_def : input6439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16737 400243331105348135#64)) := by
  unfold input6439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16737 400243331105348135#64))).val
theorem output6439_def : output6439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16737 400243331105348135#64)) := by
  unfold output6439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6439_skip : Flapjack.WordAlloc.isSkip output6439 = false := by
  rw [output6439_def]
  conv => lhs; cbv
  try rfl
theorem node6439_eq : Flapjack.WordAlloc.removeDeadStructural input6439 value3223 value1 value2 = (output6439, value3224, value1) := by
  rw [input6439_def, output6439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16733 400243331105348135#64))).val
theorem input6440_def : input6440 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16733 400243331105348135#64)) := by
  unfold input6440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6440_def : output6440 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6440_skip : Flapjack.WordAlloc.isSkip output6440 = true := by
  rw [output6440_def]
  conv => lhs; cbv
  try rfl
theorem node6440_eq : Flapjack.WordAlloc.removeDeadStructural input6440 value3224 value1 value2 = (output6440, value3224, value1) := by
  rw [input6440_def, output6440_def]
  try (conv => lhs; cbv)
  try rfl

def value3225 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16729 16721 (Flapjack.WordRegImm.reg 16725))))).val
theorem input6441_def : input6441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16729 16721 (Flapjack.WordRegImm.reg 16725)))) := by
  unfold input6441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16729 16721 (Flapjack.WordRegImm.reg 16725))))).val
theorem output6441_def : output6441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16729 16721 (Flapjack.WordRegImm.reg 16725)))) := by
  unfold output6441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6441_skip : Flapjack.WordAlloc.isSkip output6441 = false := by
  rw [output6441_def]
  conv => lhs; cbv
  try rfl
theorem node6441_eq : Flapjack.WordAlloc.removeDeadStructural input6441 value3224 value1 value2 = (output6441, value3225, value1) := by
  rw [input6441_def, output6441_def]
  try (conv => lhs; cbv)
  try rfl

def value3226 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16725 3912#64))).val
theorem input6442_def : input6442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16725 3912#64)) := by
  unfold input6442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16725 3912#64))).val
theorem output6442_def : output6442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16725 3912#64)) := by
  unfold output6442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6442_skip : Flapjack.WordAlloc.isSkip output6442 = false := by
  rw [output6442_def]
  conv => lhs; cbv
  try rfl
theorem node6442_eq : Flapjack.WordAlloc.removeDeadStructural input6442 value3225 value1 value2 = (output6442, value3226, value1) := by
  rw [input6442_def, output6442_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6442 input6441)).val
theorem input6443_def : input6443 = (.seq input6442 input6441) := by
  unfold input6443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6442 output6441)).val
theorem output6443_def : output6443 = (.seq output6442 output6441) := by
  unfold output6443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6443_skip : Flapjack.WordAlloc.isSkip output6443 = false := by
  rw [output6443_def]
  conv => lhs; cbv
  try rfl
theorem node6443_eq : Flapjack.WordAlloc.removeDeadStructural input6443 value3224 value1 value2 = (output6443, value3226, value1) := by
  rw [input6443_def, output6443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6441_eq]
  dsimp only
  rw [node6442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3227 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16721 (Flapjack.WordLangAddr.addr 16717 18446744073709551104#64)))).val
theorem input6444_def : input6444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16721 (Flapjack.WordLangAddr.addr 16717 18446744073709551104#64))) := by
  unfold input6444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16721 (Flapjack.WordLangAddr.addr 16717 18446744073709551104#64)))).val
theorem output6444_def : output6444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16721 (Flapjack.WordLangAddr.addr 16717 18446744073709551104#64))) := by
  unfold output6444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6444_skip : Flapjack.WordAlloc.isSkip output6444 = false := by
  rw [output6444_def]
  conv => lhs; cbv
  try rfl
theorem node6444_eq : Flapjack.WordAlloc.removeDeadStructural input6444 value3226 value1 value2 = (output6444, value3227, value1) := by
  rw [input6444_def, output6444_def]
  try (conv => lhs; cbv)
  try rfl

def value3228 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16717 16713)).val
theorem input6445_def : input6445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16717 16713) := by
  unfold input6445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16717 16713)).val
theorem output6445_def : output6445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16717 16713) := by
  unfold output6445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6445_skip : Flapjack.WordAlloc.isSkip output6445 = false := by
  rw [output6445_def]
  conv => lhs; cbv
  try rfl
theorem node6445_eq : Flapjack.WordAlloc.removeDeadStructural input6445 value3227 value1 value2 = (output6445, value3228, value1) := by
  rw [input6445_def, output6445_def]
  try (conv => lhs; cbv)
  try rfl

def value3229 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16713 16709 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6446_def : input6446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16713 16709 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16713 16709 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6446_def : output6446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16713 16709 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6446_skip : Flapjack.WordAlloc.isSkip output6446 = false := by
  rw [output6446_def]
  conv => lhs; cbv
  try rfl
theorem node6446_eq : Flapjack.WordAlloc.removeDeadStructural input6446 value3228 value1 value2 = (output6446, value3229, value1) := by
  rw [input6446_def, output6446_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16709 Flapjack.WordStore.heapLength)).val
theorem input6447_def : input6447 = (Flapjack.WordLangProgHOL.get 16709 Flapjack.WordStore.heapLength) := by
  unfold input6447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16709 Flapjack.WordStore.heapLength)).val
theorem output6447_def : output6447 = (Flapjack.WordLangProgHOL.get 16709 Flapjack.WordStore.heapLength) := by
  unfold output6447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6447_skip : Flapjack.WordAlloc.isSkip output6447 = false := by
  rw [output6447_def]
  conv => lhs; cbv
  try rfl
theorem node6447_eq : Flapjack.WordAlloc.removeDeadStructural input6447 value3229 value1 value2 = (output6447, value5, value1) := by
  rw [input6447_def, output6447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6447 input6446)).val
theorem input6448_def : input6448 = (.seq input6447 input6446) := by
  unfold input6448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6447 output6446)).val
theorem output6448_def : output6448 = (.seq output6447 output6446) := by
  unfold output6448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6448_skip : Flapjack.WordAlloc.isSkip output6448 = false := by
  rw [output6448_def]
  conv => lhs; cbv
  try rfl
theorem node6448_eq : Flapjack.WordAlloc.removeDeadStructural input6448 value3228 value1 value2 = (output6448, value5, value1) := by
  rw [input6448_def, output6448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6446_eq]
  dsimp only
  rw [node6447_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6448 input6445)).val
theorem input6449_def : input6449 = (.seq input6448 input6445) := by
  unfold input6449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6448 output6445)).val
theorem output6449_def : output6449 = (.seq output6448 output6445) := by
  unfold output6449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6449_skip : Flapjack.WordAlloc.isSkip output6449 = false := by
  rw [output6449_def]
  conv => lhs; cbv
  try rfl
theorem node6449_eq : Flapjack.WordAlloc.removeDeadStructural input6449 value3227 value1 value2 = (output6449, value5, value1) := by
  rw [input6449_def, output6449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6445_eq]
  dsimp only
  rw [node6448_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6449 input6444)).val
theorem input6450_def : input6450 = (.seq input6449 input6444) := by
  unfold input6450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6449 output6444)).val
theorem output6450_def : output6450 = (.seq output6449 output6444) := by
  unfold output6450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6450_skip : Flapjack.WordAlloc.isSkip output6450 = false := by
  rw [output6450_def]
  conv => lhs; cbv
  try rfl
theorem node6450_eq : Flapjack.WordAlloc.removeDeadStructural input6450 value3226 value1 value2 = (output6450, value5, value1) := by
  rw [input6450_def, output6450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6444_eq]
  dsimp only
  rw [node6449_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6450 input6443)).val
theorem input6451_def : input6451 = (.seq input6450 input6443) := by
  unfold input6451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6450 output6443)).val
theorem output6451_def : output6451 = (.seq output6450 output6443) := by
  unfold output6451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6451_skip : Flapjack.WordAlloc.isSkip output6451 = false := by
  rw [output6451_def]
  conv => lhs; cbv
  try rfl
theorem node6451_eq : Flapjack.WordAlloc.removeDeadStructural input6451 value3224 value1 value2 = (output6451, value5, value1) := by
  rw [input6451_def, output6451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6443_eq]
  dsimp only
  rw [node6450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3230 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16701 (Flapjack.WordLangAddr.addr 16705 0#64)))).val
theorem input6452_def : input6452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16701 (Flapjack.WordLangAddr.addr 16705 0#64))) := by
  unfold input6452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16701 (Flapjack.WordLangAddr.addr 16705 0#64)))).val
theorem output6452_def : output6452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16701 (Flapjack.WordLangAddr.addr 16705 0#64))) := by
  unfold output6452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6452_skip : Flapjack.WordAlloc.isSkip output6452 = false := by
  rw [output6452_def]
  conv => lhs; cbv
  try rfl
theorem node6452_eq : Flapjack.WordAlloc.removeDeadStructural input6452 value5 value1 value2 = (output6452, value3230, value1) := by
  rw [input6452_def, output6452_def]
  try (conv => lhs; cbv)
  try rfl

def value3231 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16705, 16693)])).val
theorem input6453_def : input6453 = (Flapjack.WordLangProgHOL.move 0 [(16705, 16693)]) := by
  unfold input6453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16705, 16693)])).val
theorem output6453_def : output6453 = (Flapjack.WordLangProgHOL.move 0 [(16705, 16693)]) := by
  unfold output6453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6453_skip : Flapjack.WordAlloc.isSkip output6453 = false := by
  rw [output6453_def]
  conv => lhs; cbv
  try rfl
theorem node6453_eq : Flapjack.WordAlloc.removeDeadStructural input6453 value3230 value1 value2 = (output6453, value3231, value1) := by
  rw [input6453_def, output6453_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6453 input6452)).val
theorem input6454_def : input6454 = (.seq input6453 input6452) := by
  unfold input6454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6453 output6452)).val
theorem output6454_def : output6454 = (.seq output6453 output6452) := by
  unfold output6454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6454_skip : Flapjack.WordAlloc.isSkip output6454 = false := by
  rw [output6454_def]
  conv => lhs; cbv
  try rfl
theorem node6454_eq : Flapjack.WordAlloc.removeDeadStructural input6454 value5 value1 value2 = (output6454, value3231, value1) := by
  rw [input6454_def, output6454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6452_eq]
  dsimp only
  rw [node6453_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3232 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16701 8046435537999802711#64))).val
theorem input6455_def : input6455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16701 8046435537999802711#64)) := by
  unfold input6455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16701 8046435537999802711#64))).val
theorem output6455_def : output6455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16701 8046435537999802711#64)) := by
  unfold output6455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6455_skip : Flapjack.WordAlloc.isSkip output6455 = false := by
  rw [output6455_def]
  conv => lhs; cbv
  try rfl
theorem node6455_eq : Flapjack.WordAlloc.removeDeadStructural input6455 value3231 value1 value2 = (output6455, value3232, value1) := by
  rw [input6455_def, output6455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16697 8046435537999802711#64))).val
theorem input6456_def : input6456 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16697 8046435537999802711#64)) := by
  unfold input6456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6456_def : output6456 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6456_skip : Flapjack.WordAlloc.isSkip output6456 = true := by
  rw [output6456_def]
  conv => lhs; cbv
  try rfl
theorem node6456_eq : Flapjack.WordAlloc.removeDeadStructural input6456 value3232 value1 value2 = (output6456, value3232, value1) := by
  rw [input6456_def, output6456_def]
  try (conv => lhs; cbv)
  try rfl

def value3233 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16693 16685 (Flapjack.WordRegImm.reg 16689))))).val
theorem input6457_def : input6457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16693 16685 (Flapjack.WordRegImm.reg 16689)))) := by
  unfold input6457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16693 16685 (Flapjack.WordRegImm.reg 16689))))).val
theorem output6457_def : output6457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16693 16685 (Flapjack.WordRegImm.reg 16689)))) := by
  unfold output6457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6457_skip : Flapjack.WordAlloc.isSkip output6457 = false := by
  rw [output6457_def]
  conv => lhs; cbv
  try rfl
theorem node6457_eq : Flapjack.WordAlloc.removeDeadStructural input6457 value3232 value1 value2 = (output6457, value3233, value1) := by
  rw [input6457_def, output6457_def]
  try (conv => lhs; cbv)
  try rfl

def value3234 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16689 3904#64))).val
theorem input6458_def : input6458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16689 3904#64)) := by
  unfold input6458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16689 3904#64))).val
theorem output6458_def : output6458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16689 3904#64)) := by
  unfold output6458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6458_skip : Flapjack.WordAlloc.isSkip output6458 = false := by
  rw [output6458_def]
  conv => lhs; cbv
  try rfl
theorem node6458_eq : Flapjack.WordAlloc.removeDeadStructural input6458 value3233 value1 value2 = (output6458, value3234, value1) := by
  rw [input6458_def, output6458_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6458 input6457)).val
theorem input6459_def : input6459 = (.seq input6458 input6457) := by
  unfold input6459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6458 output6457)).val
theorem output6459_def : output6459 = (.seq output6458 output6457) := by
  unfold output6459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6459_skip : Flapjack.WordAlloc.isSkip output6459 = false := by
  rw [output6459_def]
  conv => lhs; cbv
  try rfl
theorem node6459_eq : Flapjack.WordAlloc.removeDeadStructural input6459 value3232 value1 value2 = (output6459, value3234, value1) := by
  rw [input6459_def, output6459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6457_eq]
  dsimp only
  rw [node6458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3235 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16685 (Flapjack.WordLangAddr.addr 16681 18446744073709551104#64)))).val
theorem input6460_def : input6460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16685 (Flapjack.WordLangAddr.addr 16681 18446744073709551104#64))) := by
  unfold input6460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16685 (Flapjack.WordLangAddr.addr 16681 18446744073709551104#64)))).val
theorem output6460_def : output6460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16685 (Flapjack.WordLangAddr.addr 16681 18446744073709551104#64))) := by
  unfold output6460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6460_skip : Flapjack.WordAlloc.isSkip output6460 = false := by
  rw [output6460_def]
  conv => lhs; cbv
  try rfl
theorem node6460_eq : Flapjack.WordAlloc.removeDeadStructural input6460 value3234 value1 value2 = (output6460, value3235, value1) := by
  rw [input6460_def, output6460_def]
  try (conv => lhs; cbv)
  try rfl

def value3236 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16681 16677)).val
theorem input6461_def : input6461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16681 16677) := by
  unfold input6461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16681 16677)).val
theorem output6461_def : output6461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16681 16677) := by
  unfold output6461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6461_skip : Flapjack.WordAlloc.isSkip output6461 = false := by
  rw [output6461_def]
  conv => lhs; cbv
  try rfl
theorem node6461_eq : Flapjack.WordAlloc.removeDeadStructural input6461 value3235 value1 value2 = (output6461, value3236, value1) := by
  rw [input6461_def, output6461_def]
  try (conv => lhs; cbv)
  try rfl

def value3237 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16677 16673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6462_def : input6462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16677 16673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16677 16673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6462_def : output6462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16677 16673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6462_skip : Flapjack.WordAlloc.isSkip output6462 = false := by
  rw [output6462_def]
  conv => lhs; cbv
  try rfl
theorem node6462_eq : Flapjack.WordAlloc.removeDeadStructural input6462 value3236 value1 value2 = (output6462, value3237, value1) := by
  rw [input6462_def, output6462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16673 Flapjack.WordStore.heapLength)).val
theorem input6463_def : input6463 = (Flapjack.WordLangProgHOL.get 16673 Flapjack.WordStore.heapLength) := by
  unfold input6463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16673 Flapjack.WordStore.heapLength)).val
theorem output6463_def : output6463 = (Flapjack.WordLangProgHOL.get 16673 Flapjack.WordStore.heapLength) := by
  unfold output6463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6463_skip : Flapjack.WordAlloc.isSkip output6463 = false := by
  rw [output6463_def]
  conv => lhs; cbv
  try rfl
theorem node6463_eq : Flapjack.WordAlloc.removeDeadStructural input6463 value3237 value1 value2 = (output6463, value5, value1) := by
  rw [input6463_def, output6463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6463 input6462)).val
theorem input6464_def : input6464 = (.seq input6463 input6462) := by
  unfold input6464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6463 output6462)).val
theorem output6464_def : output6464 = (.seq output6463 output6462) := by
  unfold output6464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6464_skip : Flapjack.WordAlloc.isSkip output6464 = false := by
  rw [output6464_def]
  conv => lhs; cbv
  try rfl
theorem node6464_eq : Flapjack.WordAlloc.removeDeadStructural input6464 value3236 value1 value2 = (output6464, value5, value1) := by
  rw [input6464_def, output6464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6462_eq]
  dsimp only
  rw [node6463_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6464 input6461)).val
theorem input6465_def : input6465 = (.seq input6464 input6461) := by
  unfold input6465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6464 output6461)).val
theorem output6465_def : output6465 = (.seq output6464 output6461) := by
  unfold output6465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6465_skip : Flapjack.WordAlloc.isSkip output6465 = false := by
  rw [output6465_def]
  conv => lhs; cbv
  try rfl
theorem node6465_eq : Flapjack.WordAlloc.removeDeadStructural input6465 value3235 value1 value2 = (output6465, value5, value1) := by
  rw [input6465_def, output6465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6461_eq]
  dsimp only
  rw [node6464_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6465 input6460)).val
theorem input6466_def : input6466 = (.seq input6465 input6460) := by
  unfold input6466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6465 output6460)).val
theorem output6466_def : output6466 = (.seq output6465 output6460) := by
  unfold output6466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6466_skip : Flapjack.WordAlloc.isSkip output6466 = false := by
  rw [output6466_def]
  conv => lhs; cbv
  try rfl
theorem node6466_eq : Flapjack.WordAlloc.removeDeadStructural input6466 value3234 value1 value2 = (output6466, value5, value1) := by
  rw [input6466_def, output6466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6460_eq]
  dsimp only
  rw [node6465_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6466 input6459)).val
theorem input6467_def : input6467 = (.seq input6466 input6459) := by
  unfold input6467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6466 output6459)).val
theorem output6467_def : output6467 = (.seq output6466 output6459) := by
  unfold output6467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6467_skip : Flapjack.WordAlloc.isSkip output6467 = false := by
  rw [output6467_def]
  conv => lhs; cbv
  try rfl
theorem node6467_eq : Flapjack.WordAlloc.removeDeadStructural input6467 value3232 value1 value2 = (output6467, value5, value1) := by
  rw [input6467_def, output6467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6459_eq]
  dsimp only
  rw [node6466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3238 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16665 (Flapjack.WordLangAddr.addr 16669 0#64)))).val
theorem input6468_def : input6468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16665 (Flapjack.WordLangAddr.addr 16669 0#64))) := by
  unfold input6468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16665 (Flapjack.WordLangAddr.addr 16669 0#64)))).val
theorem output6468_def : output6468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16665 (Flapjack.WordLangAddr.addr 16669 0#64))) := by
  unfold output6468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6468_skip : Flapjack.WordAlloc.isSkip output6468 = false := by
  rw [output6468_def]
  conv => lhs; cbv
  try rfl
theorem node6468_eq : Flapjack.WordAlloc.removeDeadStructural input6468 value5 value1 value2 = (output6468, value3238, value1) := by
  rw [input6468_def, output6468_def]
  try (conv => lhs; cbv)
  try rfl

def value3239 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16669, 16657)])).val
theorem input6469_def : input6469 = (Flapjack.WordLangProgHOL.move 0 [(16669, 16657)]) := by
  unfold input6469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16669, 16657)])).val
theorem output6469_def : output6469 = (Flapjack.WordLangProgHOL.move 0 [(16669, 16657)]) := by
  unfold output6469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6469_skip : Flapjack.WordAlloc.isSkip output6469 = false := by
  rw [output6469_def]
  conv => lhs; cbv
  try rfl
theorem node6469_eq : Flapjack.WordAlloc.removeDeadStructural input6469 value3238 value1 value2 = (output6469, value3239, value1) := by
  rw [input6469_def, output6469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6469 input6468)).val
theorem input6470_def : input6470 = (.seq input6469 input6468) := by
  unfold input6470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6469 output6468)).val
theorem output6470_def : output6470 = (.seq output6469 output6468) := by
  unfold output6470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6470_skip : Flapjack.WordAlloc.isSkip output6470 = false := by
  rw [output6470_def]
  conv => lhs; cbv
  try rfl
theorem node6470_eq : Flapjack.WordAlloc.removeDeadStructural input6470 value5 value1 value2 = (output6470, value3239, value1) := by
  rw [input6470_def, output6470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6468_eq]
  dsimp only
  rw [node6469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3240 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16665 8702226981475745585#64))).val
theorem input6471_def : input6471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16665 8702226981475745585#64)) := by
  unfold input6471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16665 8702226981475745585#64))).val
theorem output6471_def : output6471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16665 8702226981475745585#64)) := by
  unfold output6471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6471_skip : Flapjack.WordAlloc.isSkip output6471 = false := by
  rw [output6471_def]
  conv => lhs; cbv
  try rfl
theorem node6471_eq : Flapjack.WordAlloc.removeDeadStructural input6471 value3239 value1 value2 = (output6471, value3240, value1) := by
  rw [input6471_def, output6471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16661 8702226981475745585#64))).val
theorem input6472_def : input6472 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16661 8702226981475745585#64)) := by
  unfold input6472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6472_def : output6472 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6472_skip : Flapjack.WordAlloc.isSkip output6472 = true := by
  rw [output6472_def]
  conv => lhs; cbv
  try rfl
theorem node6472_eq : Flapjack.WordAlloc.removeDeadStructural input6472 value3240 value1 value2 = (output6472, value3240, value1) := by
  rw [input6472_def, output6472_def]
  try (conv => lhs; cbv)
  try rfl

def value3241 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16657 16649 (Flapjack.WordRegImm.reg 16653))))).val
theorem input6473_def : input6473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16657 16649 (Flapjack.WordRegImm.reg 16653)))) := by
  unfold input6473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16657 16649 (Flapjack.WordRegImm.reg 16653))))).val
theorem output6473_def : output6473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16657 16649 (Flapjack.WordRegImm.reg 16653)))) := by
  unfold output6473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6473_skip : Flapjack.WordAlloc.isSkip output6473 = false := by
  rw [output6473_def]
  conv => lhs; cbv
  try rfl
theorem node6473_eq : Flapjack.WordAlloc.removeDeadStructural input6473 value3240 value1 value2 = (output6473, value3241, value1) := by
  rw [input6473_def, output6473_def]
  try (conv => lhs; cbv)
  try rfl

def value3242 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16653 3896#64))).val
theorem input6474_def : input6474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16653 3896#64)) := by
  unfold input6474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16653 3896#64))).val
theorem output6474_def : output6474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16653 3896#64)) := by
  unfold output6474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6474_skip : Flapjack.WordAlloc.isSkip output6474 = false := by
  rw [output6474_def]
  conv => lhs; cbv
  try rfl
theorem node6474_eq : Flapjack.WordAlloc.removeDeadStructural input6474 value3241 value1 value2 = (output6474, value3242, value1) := by
  rw [input6474_def, output6474_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6474 input6473)).val
theorem input6475_def : input6475 = (.seq input6474 input6473) := by
  unfold input6475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6474 output6473)).val
theorem output6475_def : output6475 = (.seq output6474 output6473) := by
  unfold output6475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6475_skip : Flapjack.WordAlloc.isSkip output6475 = false := by
  rw [output6475_def]
  conv => lhs; cbv
  try rfl
theorem node6475_eq : Flapjack.WordAlloc.removeDeadStructural input6475 value3240 value1 value2 = (output6475, value3242, value1) := by
  rw [input6475_def, output6475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6473_eq]
  dsimp only
  rw [node6474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3243 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16649 (Flapjack.WordLangAddr.addr 16645 18446744073709551104#64)))).val
theorem input6476_def : input6476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16649 (Flapjack.WordLangAddr.addr 16645 18446744073709551104#64))) := by
  unfold input6476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16649 (Flapjack.WordLangAddr.addr 16645 18446744073709551104#64)))).val
theorem output6476_def : output6476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16649 (Flapjack.WordLangAddr.addr 16645 18446744073709551104#64))) := by
  unfold output6476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6476_skip : Flapjack.WordAlloc.isSkip output6476 = false := by
  rw [output6476_def]
  conv => lhs; cbv
  try rfl
theorem node6476_eq : Flapjack.WordAlloc.removeDeadStructural input6476 value3242 value1 value2 = (output6476, value3243, value1) := by
  rw [input6476_def, output6476_def]
  try (conv => lhs; cbv)
  try rfl

def value3244 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16645 16641)).val
theorem input6477_def : input6477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16645 16641) := by
  unfold input6477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16645 16641)).val
theorem output6477_def : output6477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16645 16641) := by
  unfold output6477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6477_skip : Flapjack.WordAlloc.isSkip output6477 = false := by
  rw [output6477_def]
  conv => lhs; cbv
  try rfl
theorem node6477_eq : Flapjack.WordAlloc.removeDeadStructural input6477 value3243 value1 value2 = (output6477, value3244, value1) := by
  rw [input6477_def, output6477_def]
  try (conv => lhs; cbv)
  try rfl

def value3245 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16641 16637 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6478_def : input6478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16641 16637 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16641 16637 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6478_def : output6478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16641 16637 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6478_skip : Flapjack.WordAlloc.isSkip output6478 = false := by
  rw [output6478_def]
  conv => lhs; cbv
  try rfl
theorem node6478_eq : Flapjack.WordAlloc.removeDeadStructural input6478 value3244 value1 value2 = (output6478, value3245, value1) := by
  rw [input6478_def, output6478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16637 Flapjack.WordStore.heapLength)).val
theorem input6479_def : input6479 = (Flapjack.WordLangProgHOL.get 16637 Flapjack.WordStore.heapLength) := by
  unfold input6479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16637 Flapjack.WordStore.heapLength)).val
theorem output6479_def : output6479 = (Flapjack.WordLangProgHOL.get 16637 Flapjack.WordStore.heapLength) := by
  unfold output6479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6479_skip : Flapjack.WordAlloc.isSkip output6479 = false := by
  rw [output6479_def]
  conv => lhs; cbv
  try rfl
theorem node6479_eq : Flapjack.WordAlloc.removeDeadStructural input6479 value3245 value1 value2 = (output6479, value5, value1) := by
  rw [input6479_def, output6479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6479 input6478)).val
theorem input6480_def : input6480 = (.seq input6479 input6478) := by
  unfold input6480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6479 output6478)).val
theorem output6480_def : output6480 = (.seq output6479 output6478) := by
  unfold output6480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6480_skip : Flapjack.WordAlloc.isSkip output6480 = false := by
  rw [output6480_def]
  conv => lhs; cbv
  try rfl
theorem node6480_eq : Flapjack.WordAlloc.removeDeadStructural input6480 value3244 value1 value2 = (output6480, value5, value1) := by
  rw [input6480_def, output6480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6478_eq]
  dsimp only
  rw [node6479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6480 input6477)).val
theorem input6481_def : input6481 = (.seq input6480 input6477) := by
  unfold input6481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6480 output6477)).val
theorem output6481_def : output6481 = (.seq output6480 output6477) := by
  unfold output6481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6481_skip : Flapjack.WordAlloc.isSkip output6481 = false := by
  rw [output6481_def]
  conv => lhs; cbv
  try rfl
theorem node6481_eq : Flapjack.WordAlloc.removeDeadStructural input6481 value3243 value1 value2 = (output6481, value5, value1) := by
  rw [input6481_def, output6481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6477_eq]
  dsimp only
  rw [node6480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6481 input6476)).val
theorem input6482_def : input6482 = (.seq input6481 input6476) := by
  unfold input6482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6481 output6476)).val
theorem output6482_def : output6482 = (.seq output6481 output6476) := by
  unfold output6482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6482_skip : Flapjack.WordAlloc.isSkip output6482 = false := by
  rw [output6482_def]
  conv => lhs; cbv
  try rfl
theorem node6482_eq : Flapjack.WordAlloc.removeDeadStructural input6482 value3242 value1 value2 = (output6482, value5, value1) := by
  rw [input6482_def, output6482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6476_eq]
  dsimp only
  rw [node6481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6482 input6475)).val
theorem input6483_def : input6483 = (.seq input6482 input6475) := by
  unfold input6483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6482 output6475)).val
theorem output6483_def : output6483 = (.seq output6482 output6475) := by
  unfold output6483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6483_skip : Flapjack.WordAlloc.isSkip output6483 = false := by
  rw [output6483_def]
  conv => lhs; cbv
  try rfl
theorem node6483_eq : Flapjack.WordAlloc.removeDeadStructural input6483 value3240 value1 value2 = (output6483, value5, value1) := by
  rw [input6483_def, output6483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6475_eq]
  dsimp only
  rw [node6482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3246 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16629 (Flapjack.WordLangAddr.addr 16633 0#64)))).val
theorem input6484_def : input6484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16629 (Flapjack.WordLangAddr.addr 16633 0#64))) := by
  unfold input6484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16629 (Flapjack.WordLangAddr.addr 16633 0#64)))).val
theorem output6484_def : output6484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16629 (Flapjack.WordLangAddr.addr 16633 0#64))) := by
  unfold output6484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6484_skip : Flapjack.WordAlloc.isSkip output6484 = false := by
  rw [output6484_def]
  conv => lhs; cbv
  try rfl
theorem node6484_eq : Flapjack.WordAlloc.removeDeadStructural input6484 value5 value1 value2 = (output6484, value3246, value1) := by
  rw [input6484_def, output6484_def]
  try (conv => lhs; cbv)
  try rfl

def value3247 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16633, 16621)])).val
theorem input6485_def : input6485 = (Flapjack.WordLangProgHOL.move 0 [(16633, 16621)]) := by
  unfold input6485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16633, 16621)])).val
theorem output6485_def : output6485 = (Flapjack.WordLangProgHOL.move 0 [(16633, 16621)]) := by
  unfold output6485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6485_skip : Flapjack.WordAlloc.isSkip output6485 = false := by
  rw [output6485_def]
  conv => lhs; cbv
  try rfl
theorem node6485_eq : Flapjack.WordAlloc.removeDeadStructural input6485 value3246 value1 value2 = (output6485, value3247, value1) := by
  rw [input6485_def, output6485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6485 input6484)).val
theorem input6486_def : input6486 = (.seq input6485 input6484) := by
  unfold input6486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6485 output6484)).val
theorem output6486_def : output6486 = (.seq output6485 output6484) := by
  unfold output6486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6486_skip : Flapjack.WordAlloc.isSkip output6486 = false := by
  rw [output6486_def]
  conv => lhs; cbv
  try rfl
theorem node6486_eq : Flapjack.WordAlloc.removeDeadStructural input6486 value5 value1 value2 = (output6486, value3247, value1) := by
  rw [input6486_def, output6486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6484_eq]
  dsimp only
  rw [node6485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3248 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16629 879791671491744492#64))).val
theorem input6487_def : input6487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16629 879791671491744492#64)) := by
  unfold input6487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16629 879791671491744492#64))).val
theorem output6487_def : output6487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16629 879791671491744492#64)) := by
  unfold output6487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6487_skip : Flapjack.WordAlloc.isSkip output6487 = false := by
  rw [output6487_def]
  conv => lhs; cbv
  try rfl
theorem node6487_eq : Flapjack.WordAlloc.removeDeadStructural input6487 value3247 value1 value2 = (output6487, value3248, value1) := by
  rw [input6487_def, output6487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16625 879791671491744492#64))).val
theorem input6488_def : input6488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16625 879791671491744492#64)) := by
  unfold input6488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6488_def : output6488 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6488_skip : Flapjack.WordAlloc.isSkip output6488 = true := by
  rw [output6488_def]
  conv => lhs; cbv
  try rfl
theorem node6488_eq : Flapjack.WordAlloc.removeDeadStructural input6488 value3248 value1 value2 = (output6488, value3248, value1) := by
  rw [input6488_def, output6488_def]
  try (conv => lhs; cbv)
  try rfl

def value3249 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16621 16613 (Flapjack.WordRegImm.reg 16617))))).val
theorem input6489_def : input6489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16621 16613 (Flapjack.WordRegImm.reg 16617)))) := by
  unfold input6489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16621 16613 (Flapjack.WordRegImm.reg 16617))))).val
theorem output6489_def : output6489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16621 16613 (Flapjack.WordRegImm.reg 16617)))) := by
  unfold output6489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6489_skip : Flapjack.WordAlloc.isSkip output6489 = false := by
  rw [output6489_def]
  conv => lhs; cbv
  try rfl
theorem node6489_eq : Flapjack.WordAlloc.removeDeadStructural input6489 value3248 value1 value2 = (output6489, value3249, value1) := by
  rw [input6489_def, output6489_def]
  try (conv => lhs; cbv)
  try rfl

def value3250 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16617 3888#64))).val
theorem input6490_def : input6490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16617 3888#64)) := by
  unfold input6490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16617 3888#64))).val
theorem output6490_def : output6490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16617 3888#64)) := by
  unfold output6490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6490_skip : Flapjack.WordAlloc.isSkip output6490 = false := by
  rw [output6490_def]
  conv => lhs; cbv
  try rfl
theorem node6490_eq : Flapjack.WordAlloc.removeDeadStructural input6490 value3249 value1 value2 = (output6490, value3250, value1) := by
  rw [input6490_def, output6490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6490 input6489)).val
theorem input6491_def : input6491 = (.seq input6490 input6489) := by
  unfold input6491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6490 output6489)).val
theorem output6491_def : output6491 = (.seq output6490 output6489) := by
  unfold output6491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6491_skip : Flapjack.WordAlloc.isSkip output6491 = false := by
  rw [output6491_def]
  conv => lhs; cbv
  try rfl
theorem node6491_eq : Flapjack.WordAlloc.removeDeadStructural input6491 value3248 value1 value2 = (output6491, value3250, value1) := by
  rw [input6491_def, output6491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6489_eq]
  dsimp only
  rw [node6490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3251 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16613 (Flapjack.WordLangAddr.addr 16609 18446744073709551104#64)))).val
theorem input6492_def : input6492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16613 (Flapjack.WordLangAddr.addr 16609 18446744073709551104#64))) := by
  unfold input6492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16613 (Flapjack.WordLangAddr.addr 16609 18446744073709551104#64)))).val
theorem output6492_def : output6492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16613 (Flapjack.WordLangAddr.addr 16609 18446744073709551104#64))) := by
  unfold output6492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6492_skip : Flapjack.WordAlloc.isSkip output6492 = false := by
  rw [output6492_def]
  conv => lhs; cbv
  try rfl
theorem node6492_eq : Flapjack.WordAlloc.removeDeadStructural input6492 value3250 value1 value2 = (output6492, value3251, value1) := by
  rw [input6492_def, output6492_def]
  try (conv => lhs; cbv)
  try rfl

def value3252 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16609 16605)).val
theorem input6493_def : input6493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16609 16605) := by
  unfold input6493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16609 16605)).val
theorem output6493_def : output6493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16609 16605) := by
  unfold output6493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6493_skip : Flapjack.WordAlloc.isSkip output6493 = false := by
  rw [output6493_def]
  conv => lhs; cbv
  try rfl
theorem node6493_eq : Flapjack.WordAlloc.removeDeadStructural input6493 value3251 value1 value2 = (output6493, value3252, value1) := by
  rw [input6493_def, output6493_def]
  try (conv => lhs; cbv)
  try rfl

def value3253 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16605 16601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6494_def : input6494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16605 16601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16605 16601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6494_def : output6494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16605 16601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6494_skip : Flapjack.WordAlloc.isSkip output6494 = false := by
  rw [output6494_def]
  conv => lhs; cbv
  try rfl
theorem node6494_eq : Flapjack.WordAlloc.removeDeadStructural input6494 value3252 value1 value2 = (output6494, value3253, value1) := by
  rw [input6494_def, output6494_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16601 Flapjack.WordStore.heapLength)).val
theorem input6495_def : input6495 = (Flapjack.WordLangProgHOL.get 16601 Flapjack.WordStore.heapLength) := by
  unfold input6495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16601 Flapjack.WordStore.heapLength)).val
theorem output6495_def : output6495 = (Flapjack.WordLangProgHOL.get 16601 Flapjack.WordStore.heapLength) := by
  unfold output6495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6495_skip : Flapjack.WordAlloc.isSkip output6495 = false := by
  rw [output6495_def]
  conv => lhs; cbv
  try rfl
theorem node6495_eq : Flapjack.WordAlloc.removeDeadStructural input6495 value3253 value1 value2 = (output6495, value5, value1) := by
  rw [input6495_def, output6495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6495 input6494)).val
theorem input6496_def : input6496 = (.seq input6495 input6494) := by
  unfold input6496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6495 output6494)).val
theorem output6496_def : output6496 = (.seq output6495 output6494) := by
  unfold output6496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6496_skip : Flapjack.WordAlloc.isSkip output6496 = false := by
  rw [output6496_def]
  conv => lhs; cbv
  try rfl
theorem node6496_eq : Flapjack.WordAlloc.removeDeadStructural input6496 value3252 value1 value2 = (output6496, value5, value1) := by
  rw [input6496_def, output6496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6494_eq]
  dsimp only
  rw [node6495_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6496 input6493)).val
theorem input6497_def : input6497 = (.seq input6496 input6493) := by
  unfold input6497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6496 output6493)).val
theorem output6497_def : output6497 = (.seq output6496 output6493) := by
  unfold output6497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6497_skip : Flapjack.WordAlloc.isSkip output6497 = false := by
  rw [output6497_def]
  conv => lhs; cbv
  try rfl
theorem node6497_eq : Flapjack.WordAlloc.removeDeadStructural input6497 value3251 value1 value2 = (output6497, value5, value1) := by
  rw [input6497_def, output6497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6493_eq]
  dsimp only
  rw [node6496_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6497 input6492)).val
theorem input6498_def : input6498 = (.seq input6497 input6492) := by
  unfold input6498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6497 output6492)).val
theorem output6498_def : output6498 = (.seq output6497 output6492) := by
  unfold output6498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6498_skip : Flapjack.WordAlloc.isSkip output6498 = false := by
  rw [output6498_def]
  conv => lhs; cbv
  try rfl
theorem node6498_eq : Flapjack.WordAlloc.removeDeadStructural input6498 value3250 value1 value2 = (output6498, value5, value1) := by
  rw [input6498_def, output6498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6492_eq]
  dsimp only
  rw [node6497_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6498 input6491)).val
theorem input6499_def : input6499 = (.seq input6498 input6491) := by
  unfold input6499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6498 output6491)).val
theorem output6499_def : output6499 = (.seq output6498 output6491) := by
  unfold output6499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6499_skip : Flapjack.WordAlloc.isSkip output6499 = false := by
  rw [output6499_def]
  conv => lhs; cbv
  try rfl
theorem node6499_eq : Flapjack.WordAlloc.removeDeadStructural input6499 value3248 value1 value2 = (output6499, value5, value1) := by
  rw [input6499_def, output6499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6491_eq]
  dsimp only
  rw [node6498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3254 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16593 (Flapjack.WordLangAddr.addr 16597 0#64)))).val
theorem input6500_def : input6500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16593 (Flapjack.WordLangAddr.addr 16597 0#64))) := by
  unfold input6500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16593 (Flapjack.WordLangAddr.addr 16597 0#64)))).val
theorem output6500_def : output6500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16593 (Flapjack.WordLangAddr.addr 16597 0#64))) := by
  unfold output6500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6500_skip : Flapjack.WordAlloc.isSkip output6500 = false := by
  rw [output6500_def]
  conv => lhs; cbv
  try rfl
theorem node6500_eq : Flapjack.WordAlloc.removeDeadStructural input6500 value5 value1 value2 = (output6500, value3254, value1) := by
  rw [input6500_def, output6500_def]
  try (conv => lhs; cbv)
  try rfl

def value3255 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16597, 16585)])).val
theorem input6501_def : input6501 = (Flapjack.WordLangProgHOL.move 0 [(16597, 16585)]) := by
  unfold input6501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16597, 16585)])).val
theorem output6501_def : output6501 = (Flapjack.WordLangProgHOL.move 0 [(16597, 16585)]) := by
  unfold output6501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6501_skip : Flapjack.WordAlloc.isSkip output6501 = false := by
  rw [output6501_def]
  conv => lhs; cbv
  try rfl
theorem node6501_eq : Flapjack.WordAlloc.removeDeadStructural input6501 value3254 value1 value2 = (output6501, value3255, value1) := by
  rw [input6501_def, output6501_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6501 input6500)).val
theorem input6502_def : input6502 = (.seq input6501 input6500) := by
  unfold input6502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6501 output6500)).val
theorem output6502_def : output6502 = (.seq output6501 output6500) := by
  unfold output6502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6502_skip : Flapjack.WordAlloc.isSkip output6502 = false := by
  rw [output6502_def]
  conv => lhs; cbv
  try rfl
theorem node6502_eq : Flapjack.WordAlloc.removeDeadStructural input6502 value5 value1 value2 = (output6502, value3255, value1) := by
  rw [input6502_def, output6502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6500_eq]
  dsimp only
  rw [node6501_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3256 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16593 11994630442058346377#64))).val
theorem input6503_def : input6503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16593 11994630442058346377#64)) := by
  unfold input6503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16593 11994630442058346377#64))).val
theorem output6503_def : output6503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16593 11994630442058346377#64)) := by
  unfold output6503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6503_skip : Flapjack.WordAlloc.isSkip output6503 = false := by
  rw [output6503_def]
  conv => lhs; cbv
  try rfl
theorem node6503_eq : Flapjack.WordAlloc.removeDeadStructural input6503 value3255 value1 value2 = (output6503, value3256, value1) := by
  rw [input6503_def, output6503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16589 11994630442058346377#64))).val
theorem input6504_def : input6504 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16589 11994630442058346377#64)) := by
  unfold input6504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6504_def : output6504 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6504_skip : Flapjack.WordAlloc.isSkip output6504 = true := by
  rw [output6504_def]
  conv => lhs; cbv
  try rfl
theorem node6504_eq : Flapjack.WordAlloc.removeDeadStructural input6504 value3256 value1 value2 = (output6504, value3256, value1) := by
  rw [input6504_def, output6504_def]
  try (conv => lhs; cbv)
  try rfl

def value3257 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16585 16577 (Flapjack.WordRegImm.reg 16581))))).val
theorem input6505_def : input6505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16585 16577 (Flapjack.WordRegImm.reg 16581)))) := by
  unfold input6505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16585 16577 (Flapjack.WordRegImm.reg 16581))))).val
theorem output6505_def : output6505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16585 16577 (Flapjack.WordRegImm.reg 16581)))) := by
  unfold output6505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6505_skip : Flapjack.WordAlloc.isSkip output6505 = false := by
  rw [output6505_def]
  conv => lhs; cbv
  try rfl
theorem node6505_eq : Flapjack.WordAlloc.removeDeadStructural input6505 value3256 value1 value2 = (output6505, value3257, value1) := by
  rw [input6505_def, output6505_def]
  try (conv => lhs; cbv)
  try rfl

def value3258 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16581 3880#64))).val
theorem input6506_def : input6506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16581 3880#64)) := by
  unfold input6506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16581 3880#64))).val
theorem output6506_def : output6506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16581 3880#64)) := by
  unfold output6506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6506_skip : Flapjack.WordAlloc.isSkip output6506 = false := by
  rw [output6506_def]
  conv => lhs; cbv
  try rfl
theorem node6506_eq : Flapjack.WordAlloc.removeDeadStructural input6506 value3257 value1 value2 = (output6506, value3258, value1) := by
  rw [input6506_def, output6506_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6506 input6505)).val
theorem input6507_def : input6507 = (.seq input6506 input6505) := by
  unfold input6507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6506 output6505)).val
theorem output6507_def : output6507 = (.seq output6506 output6505) := by
  unfold output6507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6507_skip : Flapjack.WordAlloc.isSkip output6507 = false := by
  rw [output6507_def]
  conv => lhs; cbv
  try rfl
theorem node6507_eq : Flapjack.WordAlloc.removeDeadStructural input6507 value3256 value1 value2 = (output6507, value3258, value1) := by
  rw [input6507_def, output6507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6505_eq]
  dsimp only
  rw [node6506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3259 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16577 (Flapjack.WordLangAddr.addr 16573 18446744073709551104#64)))).val
theorem input6508_def : input6508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16577 (Flapjack.WordLangAddr.addr 16573 18446744073709551104#64))) := by
  unfold input6508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16577 (Flapjack.WordLangAddr.addr 16573 18446744073709551104#64)))).val
theorem output6508_def : output6508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16577 (Flapjack.WordLangAddr.addr 16573 18446744073709551104#64))) := by
  unfold output6508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6508_skip : Flapjack.WordAlloc.isSkip output6508 = false := by
  rw [output6508_def]
  conv => lhs; cbv
  try rfl
theorem node6508_eq : Flapjack.WordAlloc.removeDeadStructural input6508 value3258 value1 value2 = (output6508, value3259, value1) := by
  rw [input6508_def, output6508_def]
  try (conv => lhs; cbv)
  try rfl

def value3260 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16573 16569)).val
theorem input6509_def : input6509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16573 16569) := by
  unfold input6509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16573 16569)).val
theorem output6509_def : output6509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16573 16569) := by
  unfold output6509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6509_skip : Flapjack.WordAlloc.isSkip output6509 = false := by
  rw [output6509_def]
  conv => lhs; cbv
  try rfl
theorem node6509_eq : Flapjack.WordAlloc.removeDeadStructural input6509 value3259 value1 value2 = (output6509, value3260, value1) := by
  rw [input6509_def, output6509_def]
  try (conv => lhs; cbv)
  try rfl

def value3261 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16569 16565 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6510_def : input6510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16569 16565 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16569 16565 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6510_def : output6510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16569 16565 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6510_skip : Flapjack.WordAlloc.isSkip output6510 = false := by
  rw [output6510_def]
  conv => lhs; cbv
  try rfl
theorem node6510_eq : Flapjack.WordAlloc.removeDeadStructural input6510 value3260 value1 value2 = (output6510, value3261, value1) := by
  rw [input6510_def, output6510_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16565 Flapjack.WordStore.heapLength)).val
theorem input6511_def : input6511 = (Flapjack.WordLangProgHOL.get 16565 Flapjack.WordStore.heapLength) := by
  unfold input6511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16565 Flapjack.WordStore.heapLength)).val
theorem output6511_def : output6511 = (Flapjack.WordLangProgHOL.get 16565 Flapjack.WordStore.heapLength) := by
  unfold output6511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6511_skip : Flapjack.WordAlloc.isSkip output6511 = false := by
  rw [output6511_def]
  conv => lhs; cbv
  try rfl
theorem node6511_eq : Flapjack.WordAlloc.removeDeadStructural input6511 value3261 value1 value2 = (output6511, value5, value1) := by
  rw [input6511_def, output6511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6511 input6510)).val
theorem input6512_def : input6512 = (.seq input6511 input6510) := by
  unfold input6512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6511 output6510)).val
theorem output6512_def : output6512 = (.seq output6511 output6510) := by
  unfold output6512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6512_skip : Flapjack.WordAlloc.isSkip output6512 = false := by
  rw [output6512_def]
  conv => lhs; cbv
  try rfl
theorem node6512_eq : Flapjack.WordAlloc.removeDeadStructural input6512 value3260 value1 value2 = (output6512, value5, value1) := by
  rw [input6512_def, output6512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6510_eq]
  dsimp only
  rw [node6511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6512 input6509)).val
theorem input6513_def : input6513 = (.seq input6512 input6509) := by
  unfold input6513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6512 output6509)).val
theorem output6513_def : output6513 = (.seq output6512 output6509) := by
  unfold output6513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6513_skip : Flapjack.WordAlloc.isSkip output6513 = false := by
  rw [output6513_def]
  conv => lhs; cbv
  try rfl
theorem node6513_eq : Flapjack.WordAlloc.removeDeadStructural input6513 value3259 value1 value2 = (output6513, value5, value1) := by
  rw [input6513_def, output6513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6509_eq]
  dsimp only
  rw [node6512_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6513 input6508)).val
theorem input6514_def : input6514 = (.seq input6513 input6508) := by
  unfold input6514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6513 output6508)).val
theorem output6514_def : output6514 = (.seq output6513 output6508) := by
  unfold output6514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6514_skip : Flapjack.WordAlloc.isSkip output6514 = false := by
  rw [output6514_def]
  conv => lhs; cbv
  try rfl
theorem node6514_eq : Flapjack.WordAlloc.removeDeadStructural input6514 value3258 value1 value2 = (output6514, value5, value1) := by
  rw [input6514_def, output6514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6508_eq]
  dsimp only
  rw [node6513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6514 input6507)).val
theorem input6515_def : input6515 = (.seq input6514 input6507) := by
  unfold input6515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6514 output6507)).val
theorem output6515_def : output6515 = (.seq output6514 output6507) := by
  unfold output6515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6515_skip : Flapjack.WordAlloc.isSkip output6515 = false := by
  rw [output6515_def]
  conv => lhs; cbv
  try rfl
theorem node6515_eq : Flapjack.WordAlloc.removeDeadStructural input6515 value3256 value1 value2 = (output6515, value5, value1) := by
  rw [input6515_def, output6515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6507_eq]
  dsimp only
  rw [node6514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3262 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16557 (Flapjack.WordLangAddr.addr 16561 0#64)))).val
theorem input6516_def : input6516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16557 (Flapjack.WordLangAddr.addr 16561 0#64))) := by
  unfold input6516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16557 (Flapjack.WordLangAddr.addr 16561 0#64)))).val
theorem output6516_def : output6516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16557 (Flapjack.WordLangAddr.addr 16561 0#64))) := by
  unfold output6516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6516_skip : Flapjack.WordAlloc.isSkip output6516 = false := by
  rw [output6516_def]
  conv => lhs; cbv
  try rfl
theorem node6516_eq : Flapjack.WordAlloc.removeDeadStructural input6516 value5 value1 value2 = (output6516, value3262, value1) := by
  rw [input6516_def, output6516_def]
  try (conv => lhs; cbv)
  try rfl

def value3263 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16561, 16549)])).val
theorem input6517_def : input6517 = (Flapjack.WordLangProgHOL.move 0 [(16561, 16549)]) := by
  unfold input6517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16561, 16549)])).val
theorem output6517_def : output6517 = (Flapjack.WordLangProgHOL.move 0 [(16561, 16549)]) := by
  unfold output6517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6517_skip : Flapjack.WordAlloc.isSkip output6517 = false := by
  rw [output6517_def]
  conv => lhs; cbv
  try rfl
theorem node6517_eq : Flapjack.WordAlloc.removeDeadStructural input6517 value3262 value1 value2 = (output6517, value3263, value1) := by
  rw [input6517_def, output6517_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6517 input6516)).val
theorem input6518_def : input6518 = (.seq input6517 input6516) := by
  unfold input6518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6517 output6516)).val
theorem output6518_def : output6518 = (.seq output6517 output6516) := by
  unfold output6518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6518_skip : Flapjack.WordAlloc.isSkip output6518 = false := by
  rw [output6518_def]
  conv => lhs; cbv
  try rfl
theorem node6518_eq : Flapjack.WordAlloc.removeDeadStructural input6518 value5 value1 value2 = (output6518, value3263, value1) := by
  rw [input6518_def, output6518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6516_eq]
  dsimp only
  rw [node6517_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3264 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16557 2172204746352322546#64))).val
theorem input6519_def : input6519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16557 2172204746352322546#64)) := by
  unfold input6519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16557 2172204746352322546#64))).val
theorem output6519_def : output6519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16557 2172204746352322546#64)) := by
  unfold output6519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6519_skip : Flapjack.WordAlloc.isSkip output6519 = false := by
  rw [output6519_def]
  conv => lhs; cbv
  try rfl
theorem node6519_eq : Flapjack.WordAlloc.removeDeadStructural input6519 value3263 value1 value2 = (output6519, value3264, value1) := by
  rw [input6519_def, output6519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16553 2172204746352322546#64))).val
theorem input6520_def : input6520 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16553 2172204746352322546#64)) := by
  unfold input6520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6520_def : output6520 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6520_skip : Flapjack.WordAlloc.isSkip output6520 = true := by
  rw [output6520_def]
  conv => lhs; cbv
  try rfl
theorem node6520_eq : Flapjack.WordAlloc.removeDeadStructural input6520 value3264 value1 value2 = (output6520, value3264, value1) := by
  rw [input6520_def, output6520_def]
  try (conv => lhs; cbv)
  try rfl

def value3265 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16549 16541 (Flapjack.WordRegImm.reg 16545))))).val
theorem input6521_def : input6521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16549 16541 (Flapjack.WordRegImm.reg 16545)))) := by
  unfold input6521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16549 16541 (Flapjack.WordRegImm.reg 16545))))).val
theorem output6521_def : output6521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16549 16541 (Flapjack.WordRegImm.reg 16545)))) := by
  unfold output6521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6521_skip : Flapjack.WordAlloc.isSkip output6521 = false := by
  rw [output6521_def]
  conv => lhs; cbv
  try rfl
theorem node6521_eq : Flapjack.WordAlloc.removeDeadStructural input6521 value3264 value1 value2 = (output6521, value3265, value1) := by
  rw [input6521_def, output6521_def]
  try (conv => lhs; cbv)
  try rfl

def value3266 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16545 3872#64))).val
theorem input6522_def : input6522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16545 3872#64)) := by
  unfold input6522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16545 3872#64))).val
theorem output6522_def : output6522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16545 3872#64)) := by
  unfold output6522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6522_skip : Flapjack.WordAlloc.isSkip output6522 = false := by
  rw [output6522_def]
  conv => lhs; cbv
  try rfl
theorem node6522_eq : Flapjack.WordAlloc.removeDeadStructural input6522 value3265 value1 value2 = (output6522, value3266, value1) := by
  rw [input6522_def, output6522_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6522 input6521)).val
theorem input6523_def : input6523 = (.seq input6522 input6521) := by
  unfold input6523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6522 output6521)).val
theorem output6523_def : output6523 = (.seq output6522 output6521) := by
  unfold output6523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6523_skip : Flapjack.WordAlloc.isSkip output6523 = false := by
  rw [output6523_def]
  conv => lhs; cbv
  try rfl
theorem node6523_eq : Flapjack.WordAlloc.removeDeadStructural input6523 value3264 value1 value2 = (output6523, value3266, value1) := by
  rw [input6523_def, output6523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6521_eq]
  dsimp only
  rw [node6522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3267 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16541 (Flapjack.WordLangAddr.addr 16537 18446744073709551104#64)))).val
theorem input6524_def : input6524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16541 (Flapjack.WordLangAddr.addr 16537 18446744073709551104#64))) := by
  unfold input6524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16541 (Flapjack.WordLangAddr.addr 16537 18446744073709551104#64)))).val
theorem output6524_def : output6524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16541 (Flapjack.WordLangAddr.addr 16537 18446744073709551104#64))) := by
  unfold output6524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6524_skip : Flapjack.WordAlloc.isSkip output6524 = false := by
  rw [output6524_def]
  conv => lhs; cbv
  try rfl
theorem node6524_eq : Flapjack.WordAlloc.removeDeadStructural input6524 value3266 value1 value2 = (output6524, value3267, value1) := by
  rw [input6524_def, output6524_def]
  try (conv => lhs; cbv)
  try rfl

def value3268 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16537 16533)).val
theorem input6525_def : input6525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16537 16533) := by
  unfold input6525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16537 16533)).val
theorem output6525_def : output6525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16537 16533) := by
  unfold output6525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6525_skip : Flapjack.WordAlloc.isSkip output6525 = false := by
  rw [output6525_def]
  conv => lhs; cbv
  try rfl
theorem node6525_eq : Flapjack.WordAlloc.removeDeadStructural input6525 value3267 value1 value2 = (output6525, value3268, value1) := by
  rw [input6525_def, output6525_def]
  try (conv => lhs; cbv)
  try rfl

def value3269 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16533 16529 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6526_def : input6526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16533 16529 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16533 16529 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6526_def : output6526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16533 16529 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6526_skip : Flapjack.WordAlloc.isSkip output6526 = false := by
  rw [output6526_def]
  conv => lhs; cbv
  try rfl
theorem node6526_eq : Flapjack.WordAlloc.removeDeadStructural input6526 value3268 value1 value2 = (output6526, value3269, value1) := by
  rw [input6526_def, output6526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16529 Flapjack.WordStore.heapLength)).val
theorem input6527_def : input6527 = (Flapjack.WordLangProgHOL.get 16529 Flapjack.WordStore.heapLength) := by
  unfold input6527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16529 Flapjack.WordStore.heapLength)).val
theorem output6527_def : output6527 = (Flapjack.WordLangProgHOL.get 16529 Flapjack.WordStore.heapLength) := by
  unfold output6527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6527_skip : Flapjack.WordAlloc.isSkip output6527 = false := by
  rw [output6527_def]
  conv => lhs; cbv
  try rfl
theorem node6527_eq : Flapjack.WordAlloc.removeDeadStructural input6527 value3269 value1 value2 = (output6527, value5, value1) := by
  rw [input6527_def, output6527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6527 input6526)).val
theorem input6528_def : input6528 = (.seq input6527 input6526) := by
  unfold input6528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6527 output6526)).val
theorem output6528_def : output6528 = (.seq output6527 output6526) := by
  unfold output6528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6528_skip : Flapjack.WordAlloc.isSkip output6528 = false := by
  rw [output6528_def]
  conv => lhs; cbv
  try rfl
theorem node6528_eq : Flapjack.WordAlloc.removeDeadStructural input6528 value3268 value1 value2 = (output6528, value5, value1) := by
  rw [input6528_def, output6528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6526_eq]
  dsimp only
  rw [node6527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6528 input6525)).val
theorem input6529_def : input6529 = (.seq input6528 input6525) := by
  unfold input6529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6528 output6525)).val
theorem output6529_def : output6529 = (.seq output6528 output6525) := by
  unfold output6529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6529_skip : Flapjack.WordAlloc.isSkip output6529 = false := by
  rw [output6529_def]
  conv => lhs; cbv
  try rfl
theorem node6529_eq : Flapjack.WordAlloc.removeDeadStructural input6529 value3267 value1 value2 = (output6529, value5, value1) := by
  rw [input6529_def, output6529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6525_eq]
  dsimp only
  rw [node6528_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6529 input6524)).val
theorem input6530_def : input6530 = (.seq input6529 input6524) := by
  unfold input6530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6529 output6524)).val
theorem output6530_def : output6530 = (.seq output6529 output6524) := by
  unfold output6530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6530_skip : Flapjack.WordAlloc.isSkip output6530 = false := by
  rw [output6530_def]
  conv => lhs; cbv
  try rfl
theorem node6530_eq : Flapjack.WordAlloc.removeDeadStructural input6530 value3266 value1 value2 = (output6530, value5, value1) := by
  rw [input6530_def, output6530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6524_eq]
  dsimp only
  rw [node6529_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6530 input6523)).val
theorem input6531_def : input6531 = (.seq input6530 input6523) := by
  unfold input6531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6530 output6523)).val
theorem output6531_def : output6531 = (.seq output6530 output6523) := by
  unfold output6531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6531_skip : Flapjack.WordAlloc.isSkip output6531 = false := by
  rw [output6531_def]
  conv => lhs; cbv
  try rfl
theorem node6531_eq : Flapjack.WordAlloc.removeDeadStructural input6531 value3264 value1 value2 = (output6531, value5, value1) := by
  rw [input6531_def, output6531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6523_eq]
  dsimp only
  rw [node6530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3270 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16521 (Flapjack.WordLangAddr.addr 16525 0#64)))).val
theorem input6532_def : input6532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16521 (Flapjack.WordLangAddr.addr 16525 0#64))) := by
  unfold input6532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16521 (Flapjack.WordLangAddr.addr 16525 0#64)))).val
theorem output6532_def : output6532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16521 (Flapjack.WordLangAddr.addr 16525 0#64))) := by
  unfold output6532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6532_skip : Flapjack.WordAlloc.isSkip output6532 = false := by
  rw [output6532_def]
  conv => lhs; cbv
  try rfl
theorem node6532_eq : Flapjack.WordAlloc.removeDeadStructural input6532 value5 value1 value2 = (output6532, value3270, value1) := by
  rw [input6532_def, output6532_def]
  try (conv => lhs; cbv)
  try rfl

def value3271 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16525, 16513)])).val
theorem input6533_def : input6533 = (Flapjack.WordLangProgHOL.move 0 [(16525, 16513)]) := by
  unfold input6533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16525, 16513)])).val
theorem output6533_def : output6533 = (Flapjack.WordLangProgHOL.move 0 [(16525, 16513)]) := by
  unfold output6533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6533_skip : Flapjack.WordAlloc.isSkip output6533 = false := by
  rw [output6533_def]
  conv => lhs; cbv
  try rfl
theorem node6533_eq : Flapjack.WordAlloc.removeDeadStructural input6533 value3270 value1 value2 = (output6533, value3271, value1) := by
  rw [input6533_def, output6533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6533 input6532)).val
theorem input6534_def : input6534 = (.seq input6533 input6532) := by
  unfold input6534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6533 output6532)).val
theorem output6534_def : output6534 = (.seq output6533 output6532) := by
  unfold output6534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6534_skip : Flapjack.WordAlloc.isSkip output6534 = false := by
  rw [output6534_def]
  conv => lhs; cbv
  try rfl
theorem node6534_eq : Flapjack.WordAlloc.removeDeadStructural input6534 value5 value1 value2 = (output6534, value3271, value1) := by
  rw [input6534_def, output6534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6532_eq]
  dsimp only
  rw [node6533_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3272 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16521 1829261189398470686#64))).val
theorem input6535_def : input6535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16521 1829261189398470686#64)) := by
  unfold input6535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16521 1829261189398470686#64))).val
theorem output6535_def : output6535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16521 1829261189398470686#64)) := by
  unfold output6535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6535_skip : Flapjack.WordAlloc.isSkip output6535 = false := by
  rw [output6535_def]
  conv => lhs; cbv
  try rfl
theorem node6535_eq : Flapjack.WordAlloc.removeDeadStructural input6535 value3271 value1 value2 = (output6535, value3272, value1) := by
  rw [input6535_def, output6535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16517 1829261189398470686#64))).val
theorem input6536_def : input6536 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16517 1829261189398470686#64)) := by
  unfold input6536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6536_def : output6536 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6536_skip : Flapjack.WordAlloc.isSkip output6536 = true := by
  rw [output6536_def]
  conv => lhs; cbv
  try rfl
theorem node6536_eq : Flapjack.WordAlloc.removeDeadStructural input6536 value3272 value1 value2 = (output6536, value3272, value1) := by
  rw [input6536_def, output6536_def]
  try (conv => lhs; cbv)
  try rfl

def value3273 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16513 16505 (Flapjack.WordRegImm.reg 16509))))).val
theorem input6537_def : input6537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16513 16505 (Flapjack.WordRegImm.reg 16509)))) := by
  unfold input6537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16513 16505 (Flapjack.WordRegImm.reg 16509))))).val
theorem output6537_def : output6537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16513 16505 (Flapjack.WordRegImm.reg 16509)))) := by
  unfold output6537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6537_skip : Flapjack.WordAlloc.isSkip output6537 = false := by
  rw [output6537_def]
  conv => lhs; cbv
  try rfl
theorem node6537_eq : Flapjack.WordAlloc.removeDeadStructural input6537 value3272 value1 value2 = (output6537, value3273, value1) := by
  rw [input6537_def, output6537_def]
  try (conv => lhs; cbv)
  try rfl

def value3274 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16509 3864#64))).val
theorem input6538_def : input6538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16509 3864#64)) := by
  unfold input6538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16509 3864#64))).val
theorem output6538_def : output6538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16509 3864#64)) := by
  unfold output6538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6538_skip : Flapjack.WordAlloc.isSkip output6538 = false := by
  rw [output6538_def]
  conv => lhs; cbv
  try rfl
theorem node6538_eq : Flapjack.WordAlloc.removeDeadStructural input6538 value3273 value1 value2 = (output6538, value3274, value1) := by
  rw [input6538_def, output6538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6538 input6537)).val
theorem input6539_def : input6539 = (.seq input6538 input6537) := by
  unfold input6539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6538 output6537)).val
theorem output6539_def : output6539 = (.seq output6538 output6537) := by
  unfold output6539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6539_skip : Flapjack.WordAlloc.isSkip output6539 = false := by
  rw [output6539_def]
  conv => lhs; cbv
  try rfl
theorem node6539_eq : Flapjack.WordAlloc.removeDeadStructural input6539 value3272 value1 value2 = (output6539, value3274, value1) := by
  rw [input6539_def, output6539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6537_eq]
  dsimp only
  rw [node6538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3275 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16505 (Flapjack.WordLangAddr.addr 16501 18446744073709551104#64)))).val
theorem input6540_def : input6540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16505 (Flapjack.WordLangAddr.addr 16501 18446744073709551104#64))) := by
  unfold input6540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16505 (Flapjack.WordLangAddr.addr 16501 18446744073709551104#64)))).val
theorem output6540_def : output6540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16505 (Flapjack.WordLangAddr.addr 16501 18446744073709551104#64))) := by
  unfold output6540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6540_skip : Flapjack.WordAlloc.isSkip output6540 = false := by
  rw [output6540_def]
  conv => lhs; cbv
  try rfl
theorem node6540_eq : Flapjack.WordAlloc.removeDeadStructural input6540 value3274 value1 value2 = (output6540, value3275, value1) := by
  rw [input6540_def, output6540_def]
  try (conv => lhs; cbv)
  try rfl

def value3276 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16501 16497)).val
theorem input6541_def : input6541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16501 16497) := by
  unfold input6541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16501 16497)).val
theorem output6541_def : output6541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16501 16497) := by
  unfold output6541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6541_skip : Flapjack.WordAlloc.isSkip output6541 = false := by
  rw [output6541_def]
  conv => lhs; cbv
  try rfl
theorem node6541_eq : Flapjack.WordAlloc.removeDeadStructural input6541 value3275 value1 value2 = (output6541, value3276, value1) := by
  rw [input6541_def, output6541_def]
  try (conv => lhs; cbv)
  try rfl

def value3277 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16497 16493 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6542_def : input6542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16497 16493 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16497 16493 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6542_def : output6542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16497 16493 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6542_skip : Flapjack.WordAlloc.isSkip output6542 = false := by
  rw [output6542_def]
  conv => lhs; cbv
  try rfl
theorem node6542_eq : Flapjack.WordAlloc.removeDeadStructural input6542 value3276 value1 value2 = (output6542, value3277, value1) := by
  rw [input6542_def, output6542_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16493 Flapjack.WordStore.heapLength)).val
theorem input6543_def : input6543 = (Flapjack.WordLangProgHOL.get 16493 Flapjack.WordStore.heapLength) := by
  unfold input6543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16493 Flapjack.WordStore.heapLength)).val
theorem output6543_def : output6543 = (Flapjack.WordLangProgHOL.get 16493 Flapjack.WordStore.heapLength) := by
  unfold output6543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6543_skip : Flapjack.WordAlloc.isSkip output6543 = false := by
  rw [output6543_def]
  conv => lhs; cbv
  try rfl
theorem node6543_eq : Flapjack.WordAlloc.removeDeadStructural input6543 value3277 value1 value2 = (output6543, value5, value1) := by
  rw [input6543_def, output6543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6543 input6542)).val
theorem input6544_def : input6544 = (.seq input6543 input6542) := by
  unfold input6544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6543 output6542)).val
theorem output6544_def : output6544 = (.seq output6543 output6542) := by
  unfold output6544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6544_skip : Flapjack.WordAlloc.isSkip output6544 = false := by
  rw [output6544_def]
  conv => lhs; cbv
  try rfl
theorem node6544_eq : Flapjack.WordAlloc.removeDeadStructural input6544 value3276 value1 value2 = (output6544, value5, value1) := by
  rw [input6544_def, output6544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6542_eq]
  dsimp only
  rw [node6543_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6544 input6541)).val
theorem input6545_def : input6545 = (.seq input6544 input6541) := by
  unfold input6545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6544 output6541)).val
theorem output6545_def : output6545 = (.seq output6544 output6541) := by
  unfold output6545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6545_skip : Flapjack.WordAlloc.isSkip output6545 = false := by
  rw [output6545_def]
  conv => lhs; cbv
  try rfl
theorem node6545_eq : Flapjack.WordAlloc.removeDeadStructural input6545 value3275 value1 value2 = (output6545, value5, value1) := by
  rw [input6545_def, output6545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6541_eq]
  dsimp only
  rw [node6544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6545 input6540)).val
theorem input6546_def : input6546 = (.seq input6545 input6540) := by
  unfold input6546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6545 output6540)).val
theorem output6546_def : output6546 = (.seq output6545 output6540) := by
  unfold output6546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6546_skip : Flapjack.WordAlloc.isSkip output6546 = false := by
  rw [output6546_def]
  conv => lhs; cbv
  try rfl
theorem node6546_eq : Flapjack.WordAlloc.removeDeadStructural input6546 value3274 value1 value2 = (output6546, value5, value1) := by
  rw [input6546_def, output6546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6540_eq]
  dsimp only
  rw [node6545_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6546 input6539)).val
theorem input6547_def : input6547 = (.seq input6546 input6539) := by
  unfold input6547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6546 output6539)).val
theorem output6547_def : output6547 = (.seq output6546 output6539) := by
  unfold output6547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6547_skip : Flapjack.WordAlloc.isSkip output6547 = false := by
  rw [output6547_def]
  conv => lhs; cbv
  try rfl
theorem node6547_eq : Flapjack.WordAlloc.removeDeadStructural input6547 value3272 value1 value2 = (output6547, value5, value1) := by
  rw [input6547_def, output6547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6539_eq]
  dsimp only
  rw [node6546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3278 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16485 (Flapjack.WordLangAddr.addr 16489 0#64)))).val
theorem input6548_def : input6548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16485 (Flapjack.WordLangAddr.addr 16489 0#64))) := by
  unfold input6548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16485 (Flapjack.WordLangAddr.addr 16489 0#64)))).val
theorem output6548_def : output6548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16485 (Flapjack.WordLangAddr.addr 16489 0#64))) := by
  unfold output6548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6548_skip : Flapjack.WordAlloc.isSkip output6548 = false := by
  rw [output6548_def]
  conv => lhs; cbv
  try rfl
theorem node6548_eq : Flapjack.WordAlloc.removeDeadStructural input6548 value5 value1 value2 = (output6548, value3278, value1) := by
  rw [input6548_def, output6548_def]
  try (conv => lhs; cbv)
  try rfl

def value3279 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16489, 16477)])).val
theorem input6549_def : input6549 = (Flapjack.WordLangProgHOL.move 0 [(16489, 16477)]) := by
  unfold input6549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16489, 16477)])).val
theorem output6549_def : output6549 = (Flapjack.WordLangProgHOL.move 0 [(16489, 16477)]) := by
  unfold output6549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6549_skip : Flapjack.WordAlloc.isSkip output6549 = false := by
  rw [output6549_def]
  conv => lhs; cbv
  try rfl
theorem node6549_eq : Flapjack.WordAlloc.removeDeadStructural input6549 value3278 value1 value2 = (output6549, value3279, value1) := by
  rw [input6549_def, output6549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6549 input6548)).val
theorem input6550_def : input6550 = (.seq input6549 input6548) := by
  unfold input6550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6549 output6548)).val
theorem output6550_def : output6550 = (.seq output6549 output6548) := by
  unfold output6550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6550_skip : Flapjack.WordAlloc.isSkip output6550 = false := by
  rw [output6550_def]
  conv => lhs; cbv
  try rfl
theorem node6550_eq : Flapjack.WordAlloc.removeDeadStructural input6550 value5 value1 value2 = (output6550, value3279, value1) := by
  rw [input6550_def, output6550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6548_eq]
  dsimp only
  rw [node6549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3280 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16485 1877083417397643448#64))).val
theorem input6551_def : input6551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16485 1877083417397643448#64)) := by
  unfold input6551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16485 1877083417397643448#64))).val
theorem output6551_def : output6551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16485 1877083417397643448#64)) := by
  unfold output6551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6551_skip : Flapjack.WordAlloc.isSkip output6551 = false := by
  rw [output6551_def]
  conv => lhs; cbv
  try rfl
theorem node6551_eq : Flapjack.WordAlloc.removeDeadStructural input6551 value3279 value1 value2 = (output6551, value3280, value1) := by
  rw [input6551_def, output6551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16481 1877083417397643448#64))).val
theorem input6552_def : input6552 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16481 1877083417397643448#64)) := by
  unfold input6552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6552_def : output6552 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6552_skip : Flapjack.WordAlloc.isSkip output6552 = true := by
  rw [output6552_def]
  conv => lhs; cbv
  try rfl
theorem node6552_eq : Flapjack.WordAlloc.removeDeadStructural input6552 value3280 value1 value2 = (output6552, value3280, value1) := by
  rw [input6552_def, output6552_def]
  try (conv => lhs; cbv)
  try rfl

def value3281 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16477 16469 (Flapjack.WordRegImm.reg 16473))))).val
theorem input6553_def : input6553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16477 16469 (Flapjack.WordRegImm.reg 16473)))) := by
  unfold input6553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16477 16469 (Flapjack.WordRegImm.reg 16473))))).val
theorem output6553_def : output6553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16477 16469 (Flapjack.WordRegImm.reg 16473)))) := by
  unfold output6553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6553_skip : Flapjack.WordAlloc.isSkip output6553 = false := by
  rw [output6553_def]
  conv => lhs; cbv
  try rfl
theorem node6553_eq : Flapjack.WordAlloc.removeDeadStructural input6553 value3280 value1 value2 = (output6553, value3281, value1) := by
  rw [input6553_def, output6553_def]
  try (conv => lhs; cbv)
  try rfl

def value3282 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16473 3856#64))).val
theorem input6554_def : input6554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16473 3856#64)) := by
  unfold input6554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16473 3856#64))).val
theorem output6554_def : output6554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16473 3856#64)) := by
  unfold output6554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6554_skip : Flapjack.WordAlloc.isSkip output6554 = false := by
  rw [output6554_def]
  conv => lhs; cbv
  try rfl
theorem node6554_eq : Flapjack.WordAlloc.removeDeadStructural input6554 value3281 value1 value2 = (output6554, value3282, value1) := by
  rw [input6554_def, output6554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6554 input6553)).val
theorem input6555_def : input6555 = (.seq input6554 input6553) := by
  unfold input6555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6554 output6553)).val
theorem output6555_def : output6555 = (.seq output6554 output6553) := by
  unfold output6555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6555_skip : Flapjack.WordAlloc.isSkip output6555 = false := by
  rw [output6555_def]
  conv => lhs; cbv
  try rfl
theorem node6555_eq : Flapjack.WordAlloc.removeDeadStructural input6555 value3280 value1 value2 = (output6555, value3282, value1) := by
  rw [input6555_def, output6555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6553_eq]
  dsimp only
  rw [node6554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3283 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16469 (Flapjack.WordLangAddr.addr 16465 18446744073709551104#64)))).val
theorem input6556_def : input6556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16469 (Flapjack.WordLangAddr.addr 16465 18446744073709551104#64))) := by
  unfold input6556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16469 (Flapjack.WordLangAddr.addr 16465 18446744073709551104#64)))).val
theorem output6556_def : output6556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16469 (Flapjack.WordLangAddr.addr 16465 18446744073709551104#64))) := by
  unfold output6556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6556_skip : Flapjack.WordAlloc.isSkip output6556 = false := by
  rw [output6556_def]
  conv => lhs; cbv
  try rfl
theorem node6556_eq : Flapjack.WordAlloc.removeDeadStructural input6556 value3282 value1 value2 = (output6556, value3283, value1) := by
  rw [input6556_def, output6556_def]
  try (conv => lhs; cbv)
  try rfl

def value3284 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16465 16461)).val
theorem input6557_def : input6557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16465 16461) := by
  unfold input6557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16465 16461)).val
theorem output6557_def : output6557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16465 16461) := by
  unfold output6557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6557_skip : Flapjack.WordAlloc.isSkip output6557 = false := by
  rw [output6557_def]
  conv => lhs; cbv
  try rfl
theorem node6557_eq : Flapjack.WordAlloc.removeDeadStructural input6557 value3283 value1 value2 = (output6557, value3284, value1) := by
  rw [input6557_def, output6557_def]
  try (conv => lhs; cbv)
  try rfl

def value3285 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16461 16457 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6558_def : input6558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16461 16457 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16461 16457 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6558_def : output6558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16461 16457 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6558_skip : Flapjack.WordAlloc.isSkip output6558 = false := by
  rw [output6558_def]
  conv => lhs; cbv
  try rfl
theorem node6558_eq : Flapjack.WordAlloc.removeDeadStructural input6558 value3284 value1 value2 = (output6558, value3285, value1) := by
  rw [input6558_def, output6558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16457 Flapjack.WordStore.heapLength)).val
theorem input6559_def : input6559 = (Flapjack.WordLangProgHOL.get 16457 Flapjack.WordStore.heapLength) := by
  unfold input6559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16457 Flapjack.WordStore.heapLength)).val
theorem output6559_def : output6559 = (Flapjack.WordLangProgHOL.get 16457 Flapjack.WordStore.heapLength) := by
  unfold output6559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6559_skip : Flapjack.WordAlloc.isSkip output6559 = false := by
  rw [output6559_def]
  conv => lhs; cbv
  try rfl
theorem node6559_eq : Flapjack.WordAlloc.removeDeadStructural input6559 value3285 value1 value2 = (output6559, value5, value1) := by
  rw [input6559_def, output6559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6559 input6558)).val
theorem input6560_def : input6560 = (.seq input6559 input6558) := by
  unfold input6560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6559 output6558)).val
theorem output6560_def : output6560 = (.seq output6559 output6558) := by
  unfold output6560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6560_skip : Flapjack.WordAlloc.isSkip output6560 = false := by
  rw [output6560_def]
  conv => lhs; cbv
  try rfl
theorem node6560_eq : Flapjack.WordAlloc.removeDeadStructural input6560 value3284 value1 value2 = (output6560, value5, value1) := by
  rw [input6560_def, output6560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6558_eq]
  dsimp only
  rw [node6559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6560 input6557)).val
theorem input6561_def : input6561 = (.seq input6560 input6557) := by
  unfold input6561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6560 output6557)).val
theorem output6561_def : output6561 = (.seq output6560 output6557) := by
  unfold output6561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6561_skip : Flapjack.WordAlloc.isSkip output6561 = false := by
  rw [output6561_def]
  conv => lhs; cbv
  try rfl
theorem node6561_eq : Flapjack.WordAlloc.removeDeadStructural input6561 value3283 value1 value2 = (output6561, value5, value1) := by
  rw [input6561_def, output6561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6557_eq]
  dsimp only
  rw [node6560_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6561 input6556)).val
theorem input6562_def : input6562 = (.seq input6561 input6556) := by
  unfold input6562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6561 output6556)).val
theorem output6562_def : output6562 = (.seq output6561 output6556) := by
  unfold output6562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6562_skip : Flapjack.WordAlloc.isSkip output6562 = false := by
  rw [output6562_def]
  conv => lhs; cbv
  try rfl
theorem node6562_eq : Flapjack.WordAlloc.removeDeadStructural input6562 value3282 value1 value2 = (output6562, value5, value1) := by
  rw [input6562_def, output6562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6556_eq]
  dsimp only
  rw [node6561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6562 input6555)).val
theorem input6563_def : input6563 = (.seq input6562 input6555) := by
  unfold input6563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6562 output6555)).val
theorem output6563_def : output6563 = (.seq output6562 output6555) := by
  unfold output6563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6563_skip : Flapjack.WordAlloc.isSkip output6563 = false := by
  rw [output6563_def]
  conv => lhs; cbv
  try rfl
theorem node6563_eq : Flapjack.WordAlloc.removeDeadStructural input6563 value3280 value1 value2 = (output6563, value5, value1) := by
  rw [input6563_def, output6563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6555_eq]
  dsimp only
  rw [node6562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3286 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16449 (Flapjack.WordLangAddr.addr 16453 0#64)))).val
theorem input6564_def : input6564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16449 (Flapjack.WordLangAddr.addr 16453 0#64))) := by
  unfold input6564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16449 (Flapjack.WordLangAddr.addr 16453 0#64)))).val
theorem output6564_def : output6564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16449 (Flapjack.WordLangAddr.addr 16453 0#64))) := by
  unfold output6564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6564_skip : Flapjack.WordAlloc.isSkip output6564 = false := by
  rw [output6564_def]
  conv => lhs; cbv
  try rfl
theorem node6564_eq : Flapjack.WordAlloc.removeDeadStructural input6564 value5 value1 value2 = (output6564, value3286, value1) := by
  rw [input6564_def, output6564_def]
  try (conv => lhs; cbv)
  try rfl

def value3287 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16453, 16441)])).val
theorem input6565_def : input6565 = (Flapjack.WordLangProgHOL.move 0 [(16453, 16441)]) := by
  unfold input6565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16453, 16441)])).val
theorem output6565_def : output6565 = (Flapjack.WordLangProgHOL.move 0 [(16453, 16441)]) := by
  unfold output6565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6565_skip : Flapjack.WordAlloc.isSkip output6565 = false := by
  rw [output6565_def]
  conv => lhs; cbv
  try rfl
theorem node6565_eq : Flapjack.WordAlloc.removeDeadStructural input6565 value3286 value1 value2 = (output6565, value3287, value1) := by
  rw [input6565_def, output6565_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6565 input6564)).val
theorem input6566_def : input6566 = (.seq input6565 input6564) := by
  unfold input6566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6565 output6564)).val
theorem output6566_def : output6566 = (.seq output6565 output6564) := by
  unfold output6566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6566_skip : Flapjack.WordAlloc.isSkip output6566 = false := by
  rw [output6566_def]
  conv => lhs; cbv
  try rfl
theorem node6566_eq : Flapjack.WordAlloc.removeDeadStructural input6566 value5 value1 value2 = (output6566, value3287, value1) := by
  rw [input6566_def, output6566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6564_eq]
  dsimp only
  rw [node6565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3288 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16449 9640042925497046428#64))).val
theorem input6567_def : input6567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16449 9640042925497046428#64)) := by
  unfold input6567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16449 9640042925497046428#64))).val
theorem output6567_def : output6567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16449 9640042925497046428#64)) := by
  unfold output6567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6567_skip : Flapjack.WordAlloc.isSkip output6567 = false := by
  rw [output6567_def]
  conv => lhs; cbv
  try rfl
theorem node6567_eq : Flapjack.WordAlloc.removeDeadStructural input6567 value3287 value1 value2 = (output6567, value3288, value1) := by
  rw [input6567_def, output6567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16445 9640042925497046428#64))).val
theorem input6568_def : input6568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16445 9640042925497046428#64)) := by
  unfold input6568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6568_def : output6568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6568_skip : Flapjack.WordAlloc.isSkip output6568 = true := by
  rw [output6568_def]
  conv => lhs; cbv
  try rfl
theorem node6568_eq : Flapjack.WordAlloc.removeDeadStructural input6568 value3288 value1 value2 = (output6568, value3288, value1) := by
  rw [input6568_def, output6568_def]
  try (conv => lhs; cbv)
  try rfl

def value3289 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16441 16433 (Flapjack.WordRegImm.reg 16437))))).val
theorem input6569_def : input6569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16441 16433 (Flapjack.WordRegImm.reg 16437)))) := by
  unfold input6569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16441 16433 (Flapjack.WordRegImm.reg 16437))))).val
theorem output6569_def : output6569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16441 16433 (Flapjack.WordRegImm.reg 16437)))) := by
  unfold output6569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6569_skip : Flapjack.WordAlloc.isSkip output6569 = false := by
  rw [output6569_def]
  conv => lhs; cbv
  try rfl
theorem node6569_eq : Flapjack.WordAlloc.removeDeadStructural input6569 value3288 value1 value2 = (output6569, value3289, value1) := by
  rw [input6569_def, output6569_def]
  try (conv => lhs; cbv)
  try rfl

def value3290 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16437 3848#64))).val
theorem input6570_def : input6570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16437 3848#64)) := by
  unfold input6570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16437 3848#64))).val
theorem output6570_def : output6570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16437 3848#64)) := by
  unfold output6570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6570_skip : Flapjack.WordAlloc.isSkip output6570 = false := by
  rw [output6570_def]
  conv => lhs; cbv
  try rfl
theorem node6570_eq : Flapjack.WordAlloc.removeDeadStructural input6570 value3289 value1 value2 = (output6570, value3290, value1) := by
  rw [input6570_def, output6570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6570 input6569)).val
theorem input6571_def : input6571 = (.seq input6570 input6569) := by
  unfold input6571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6570 output6569)).val
theorem output6571_def : output6571 = (.seq output6570 output6569) := by
  unfold output6571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6571_skip : Flapjack.WordAlloc.isSkip output6571 = false := by
  rw [output6571_def]
  conv => lhs; cbv
  try rfl
theorem node6571_eq : Flapjack.WordAlloc.removeDeadStructural input6571 value3288 value1 value2 = (output6571, value3290, value1) := by
  rw [input6571_def, output6571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6569_eq]
  dsimp only
  rw [node6570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3291 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16433 (Flapjack.WordLangAddr.addr 16429 18446744073709551104#64)))).val
theorem input6572_def : input6572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16433 (Flapjack.WordLangAddr.addr 16429 18446744073709551104#64))) := by
  unfold input6572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16433 (Flapjack.WordLangAddr.addr 16429 18446744073709551104#64)))).val
theorem output6572_def : output6572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16433 (Flapjack.WordLangAddr.addr 16429 18446744073709551104#64))) := by
  unfold output6572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6572_skip : Flapjack.WordAlloc.isSkip output6572 = false := by
  rw [output6572_def]
  conv => lhs; cbv
  try rfl
theorem node6572_eq : Flapjack.WordAlloc.removeDeadStructural input6572 value3290 value1 value2 = (output6572, value3291, value1) := by
  rw [input6572_def, output6572_def]
  try (conv => lhs; cbv)
  try rfl

def value3292 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16429 16425)).val
theorem input6573_def : input6573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16429 16425) := by
  unfold input6573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16429 16425)).val
theorem output6573_def : output6573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16429 16425) := by
  unfold output6573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6573_skip : Flapjack.WordAlloc.isSkip output6573 = false := by
  rw [output6573_def]
  conv => lhs; cbv
  try rfl
theorem node6573_eq : Flapjack.WordAlloc.removeDeadStructural input6573 value3291 value1 value2 = (output6573, value3292, value1) := by
  rw [input6573_def, output6573_def]
  try (conv => lhs; cbv)
  try rfl

def value3293 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16425 16421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6574_def : input6574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16425 16421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16425 16421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6574_def : output6574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16425 16421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6574_skip : Flapjack.WordAlloc.isSkip output6574 = false := by
  rw [output6574_def]
  conv => lhs; cbv
  try rfl
theorem node6574_eq : Flapjack.WordAlloc.removeDeadStructural input6574 value3292 value1 value2 = (output6574, value3293, value1) := by
  rw [input6574_def, output6574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16421 Flapjack.WordStore.heapLength)).val
theorem input6575_def : input6575 = (Flapjack.WordLangProgHOL.get 16421 Flapjack.WordStore.heapLength) := by
  unfold input6575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16421 Flapjack.WordStore.heapLength)).val
theorem output6575_def : output6575 = (Flapjack.WordLangProgHOL.get 16421 Flapjack.WordStore.heapLength) := by
  unfold output6575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6575_skip : Flapjack.WordAlloc.isSkip output6575 = false := by
  rw [output6575_def]
  conv => lhs; cbv
  try rfl
theorem node6575_eq : Flapjack.WordAlloc.removeDeadStructural input6575 value3293 value1 value2 = (output6575, value5, value1) := by
  rw [input6575_def, output6575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6575 input6574)).val
theorem input6576_def : input6576 = (.seq input6575 input6574) := by
  unfold input6576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6575 output6574)).val
theorem output6576_def : output6576 = (.seq output6575 output6574) := by
  unfold output6576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6576_skip : Flapjack.WordAlloc.isSkip output6576 = false := by
  rw [output6576_def]
  conv => lhs; cbv
  try rfl
theorem node6576_eq : Flapjack.WordAlloc.removeDeadStructural input6576 value3292 value1 value2 = (output6576, value5, value1) := by
  rw [input6576_def, output6576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6574_eq]
  dsimp only
  rw [node6575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6576 input6573)).val
theorem input6577_def : input6577 = (.seq input6576 input6573) := by
  unfold input6577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6576 output6573)).val
theorem output6577_def : output6577 = (.seq output6576 output6573) := by
  unfold output6577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6577_skip : Flapjack.WordAlloc.isSkip output6577 = false := by
  rw [output6577_def]
  conv => lhs; cbv
  try rfl
theorem node6577_eq : Flapjack.WordAlloc.removeDeadStructural input6577 value3291 value1 value2 = (output6577, value5, value1) := by
  rw [input6577_def, output6577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6573_eq]
  dsimp only
  rw [node6576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6577 input6572)).val
theorem input6578_def : input6578 = (.seq input6577 input6572) := by
  unfold input6578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6577 output6572)).val
theorem output6578_def : output6578 = (.seq output6577 output6572) := by
  unfold output6578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6578_skip : Flapjack.WordAlloc.isSkip output6578 = false := by
  rw [output6578_def]
  conv => lhs; cbv
  try rfl
theorem node6578_eq : Flapjack.WordAlloc.removeDeadStructural input6578 value3290 value1 value2 = (output6578, value5, value1) := by
  rw [input6578_def, output6578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6572_eq]
  dsimp only
  rw [node6577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6578 input6571)).val
theorem input6579_def : input6579 = (.seq input6578 input6571) := by
  unfold input6579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6578 output6571)).val
theorem output6579_def : output6579 = (.seq output6578 output6571) := by
  unfold output6579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6579_skip : Flapjack.WordAlloc.isSkip output6579 = false := by
  rw [output6579_def]
  conv => lhs; cbv
  try rfl
theorem node6579_eq : Flapjack.WordAlloc.removeDeadStructural input6579 value3288 value1 value2 = (output6579, value5, value1) := by
  rw [input6579_def, output6579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6571_eq]
  dsimp only
  rw [node6578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3294 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
          Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16413 (Flapjack.WordLangAddr.addr 16417 0#64)))).val
theorem input6580_def : input6580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16413 (Flapjack.WordLangAddr.addr 16417 0#64))) := by
  unfold input6580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16413 (Flapjack.WordLangAddr.addr 16417 0#64)))).val
theorem output6580_def : output6580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16413 (Flapjack.WordLangAddr.addr 16417 0#64))) := by
  unfold output6580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6580_skip : Flapjack.WordAlloc.isSkip output6580 = false := by
  rw [output6580_def]
  conv => lhs; cbv
  try rfl
theorem node6580_eq : Flapjack.WordAlloc.removeDeadStructural input6580 value5 value1 value2 = (output6580, value3294, value1) := by
  rw [input6580_def, output6580_def]
  try (conv => lhs; cbv)
  try rfl

def value3295 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16417, 16405)])).val
theorem input6581_def : input6581 = (Flapjack.WordLangProgHOL.move 0 [(16417, 16405)]) := by
  unfold input6581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16417, 16405)])).val
theorem output6581_def : output6581 = (Flapjack.WordLangProgHOL.move 0 [(16417, 16405)]) := by
  unfold output6581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6581_skip : Flapjack.WordAlloc.isSkip output6581 = false := by
  rw [output6581_def]
  conv => lhs; cbv
  try rfl
theorem node6581_eq : Flapjack.WordAlloc.removeDeadStructural input6581 value3294 value1 value2 = (output6581, value3295, value1) := by
  rw [input6581_def, output6581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6581 input6580)).val
theorem input6582_def : input6582 = (.seq input6581 input6580) := by
  unfold input6582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6581 output6580)).val
theorem output6582_def : output6582 = (.seq output6581 output6580) := by
  unfold output6582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6582_skip : Flapjack.WordAlloc.isSkip output6582 = false := by
  rw [output6582_def]
  conv => lhs; cbv
  try rfl
theorem node6582_eq : Flapjack.WordAlloc.removeDeadStructural input6582 value5 value1 value2 = (output6582, value3295, value1) := by
  rw [input6582_def, output6582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6580_eq]
  dsimp only
  rw [node6581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3296 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16413 11862766565471805471#64))).val
theorem input6583_def : input6583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16413 11862766565471805471#64)) := by
  unfold input6583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16413 11862766565471805471#64))).val
theorem output6583_def : output6583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16413 11862766565471805471#64)) := by
  unfold output6583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6583_skip : Flapjack.WordAlloc.isSkip output6583 = false := by
  rw [output6583_def]
  conv => lhs; cbv
  try rfl
theorem node6583_eq : Flapjack.WordAlloc.removeDeadStructural input6583 value3295 value1 value2 = (output6583, value3296, value1) := by
  rw [input6583_def, output6583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16409 11862766565471805471#64))).val
theorem input6584_def : input6584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16409 11862766565471805471#64)) := by
  unfold input6584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6584_def : output6584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6584_skip : Flapjack.WordAlloc.isSkip output6584 = true := by
  rw [output6584_def]
  conv => lhs; cbv
  try rfl
theorem node6584_eq : Flapjack.WordAlloc.removeDeadStructural input6584 value3296 value1 value2 = (output6584, value3296, value1) := by
  rw [input6584_def, output6584_def]
  try (conv => lhs; cbv)
  try rfl

def value3297 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16405 16397 (Flapjack.WordRegImm.reg 16401))))).val
theorem input6585_def : input6585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16405 16397 (Flapjack.WordRegImm.reg 16401)))) := by
  unfold input6585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16405 16397 (Flapjack.WordRegImm.reg 16401))))).val
theorem output6585_def : output6585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16405 16397 (Flapjack.WordRegImm.reg 16401)))) := by
  unfold output6585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6585_skip : Flapjack.WordAlloc.isSkip output6585 = false := by
  rw [output6585_def]
  conv => lhs; cbv
  try rfl
theorem node6585_eq : Flapjack.WordAlloc.removeDeadStructural input6585 value3296 value1 value2 = (output6585, value3297, value1) := by
  rw [input6585_def, output6585_def]
  try (conv => lhs; cbv)
  try rfl

def value3298 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16401 3840#64))).val
theorem input6586_def : input6586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16401 3840#64)) := by
  unfold input6586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16401 3840#64))).val
theorem output6586_def : output6586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16401 3840#64)) := by
  unfold output6586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6586_skip : Flapjack.WordAlloc.isSkip output6586 = false := by
  rw [output6586_def]
  conv => lhs; cbv
  try rfl
theorem node6586_eq : Flapjack.WordAlloc.removeDeadStructural input6586 value3297 value1 value2 = (output6586, value3298, value1) := by
  rw [input6586_def, output6586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6586 input6585)).val
theorem input6587_def : input6587 = (.seq input6586 input6585) := by
  unfold input6587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6586 output6585)).val
theorem output6587_def : output6587 = (.seq output6586 output6585) := by
  unfold output6587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6587_skip : Flapjack.WordAlloc.isSkip output6587 = false := by
  rw [output6587_def]
  conv => lhs; cbv
  try rfl
theorem node6587_eq : Flapjack.WordAlloc.removeDeadStructural input6587 value3296 value1 value2 = (output6587, value3298, value1) := by
  rw [input6587_def, output6587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6585_eq]
  dsimp only
  rw [node6586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3299 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16397 (Flapjack.WordLangAddr.addr 16393 18446744073709551104#64)))).val
theorem input6588_def : input6588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16397 (Flapjack.WordLangAddr.addr 16393 18446744073709551104#64))) := by
  unfold input6588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16397 (Flapjack.WordLangAddr.addr 16393 18446744073709551104#64)))).val
theorem output6588_def : output6588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16397 (Flapjack.WordLangAddr.addr 16393 18446744073709551104#64))) := by
  unfold output6588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6588_skip : Flapjack.WordAlloc.isSkip output6588 = false := by
  rw [output6588_def]
  conv => lhs; cbv
  try rfl
theorem node6588_eq : Flapjack.WordAlloc.removeDeadStructural input6588 value3298 value1 value2 = (output6588, value3299, value1) := by
  rw [input6588_def, output6588_def]
  try (conv => lhs; cbv)
  try rfl

def value3300 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16393 16389)).val
theorem input6589_def : input6589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16393 16389) := by
  unfold input6589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16393 16389)).val
theorem output6589_def : output6589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16393 16389) := by
  unfold output6589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6589_skip : Flapjack.WordAlloc.isSkip output6589 = false := by
  rw [output6589_def]
  conv => lhs; cbv
  try rfl
theorem node6589_eq : Flapjack.WordAlloc.removeDeadStructural input6589 value3299 value1 value2 = (output6589, value3300, value1) := by
  rw [input6589_def, output6589_def]
  try (conv => lhs; cbv)
  try rfl

def value3301 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16389 16385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6590_def : input6590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16389 16385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16389 16385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6590_def : output6590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16389 16385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6590_skip : Flapjack.WordAlloc.isSkip output6590 = false := by
  rw [output6590_def]
  conv => lhs; cbv
  try rfl
theorem node6590_eq : Flapjack.WordAlloc.removeDeadStructural input6590 value3300 value1 value2 = (output6590, value3301, value1) := by
  rw [input6590_def, output6590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16385 Flapjack.WordStore.heapLength)).val
theorem input6591_def : input6591 = (Flapjack.WordLangProgHOL.get 16385 Flapjack.WordStore.heapLength) := by
  unfold input6591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16385 Flapjack.WordStore.heapLength)).val
theorem output6591_def : output6591 = (Flapjack.WordLangProgHOL.get 16385 Flapjack.WordStore.heapLength) := by
  unfold output6591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6591_skip : Flapjack.WordAlloc.isSkip output6591 = false := by
  rw [output6591_def]
  conv => lhs; cbv
  try rfl
theorem node6591_eq : Flapjack.WordAlloc.removeDeadStructural input6591 value3301 value1 value2 = (output6591, value5, value1) := by
  rw [input6591_def, output6591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6591 input6590)).val
theorem input6592_def : input6592 = (.seq input6591 input6590) := by
  unfold input6592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6591 output6590)).val
theorem output6592_def : output6592 = (.seq output6591 output6590) := by
  unfold output6592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6592_skip : Flapjack.WordAlloc.isSkip output6592 = false := by
  rw [output6592_def]
  conv => lhs; cbv
  try rfl
theorem node6592_eq : Flapjack.WordAlloc.removeDeadStructural input6592 value3300 value1 value2 = (output6592, value5, value1) := by
  rw [input6592_def, output6592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6590_eq]
  dsimp only
  rw [node6591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6592 input6589)).val
theorem input6593_def : input6593 = (.seq input6592 input6589) := by
  unfold input6593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6592 output6589)).val
theorem output6593_def : output6593 = (.seq output6592 output6589) := by
  unfold output6593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6593_skip : Flapjack.WordAlloc.isSkip output6593 = false := by
  rw [output6593_def]
  conv => lhs; cbv
  try rfl
theorem node6593_eq : Flapjack.WordAlloc.removeDeadStructural input6593 value3299 value1 value2 = (output6593, value5, value1) := by
  rw [input6593_def, output6593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6589_eq]
  dsimp only
  rw [node6592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6593 input6588)).val
theorem input6594_def : input6594 = (.seq input6593 input6588) := by
  unfold input6594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6593 output6588)).val
theorem output6594_def : output6594 = (.seq output6593 output6588) := by
  unfold output6594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6594_skip : Flapjack.WordAlloc.isSkip output6594 = false := by
  rw [output6594_def]
  conv => lhs; cbv
  try rfl
theorem node6594_eq : Flapjack.WordAlloc.removeDeadStructural input6594 value3298 value1 value2 = (output6594, value5, value1) := by
  rw [input6594_def, output6594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6588_eq]
  dsimp only
  rw [node6593_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6594 input6587)).val
theorem input6595_def : input6595 = (.seq input6594 input6587) := by
  unfold input6595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6594 output6587)).val
theorem output6595_def : output6595 = (.seq output6594 output6587) := by
  unfold output6595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6595_skip : Flapjack.WordAlloc.isSkip output6595 = false := by
  rw [output6595_def]
  conv => lhs; cbv
  try rfl
theorem node6595_eq : Flapjack.WordAlloc.removeDeadStructural input6595 value3296 value1 value2 = (output6595, value5, value1) := by
  rw [input6595_def, output6595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6587_eq]
  dsimp only
  rw [node6594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3302 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16377 (Flapjack.WordLangAddr.addr 16381 0#64)))).val
theorem input6596_def : input6596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16377 (Flapjack.WordLangAddr.addr 16381 0#64))) := by
  unfold input6596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16377 (Flapjack.WordLangAddr.addr 16381 0#64)))).val
theorem output6596_def : output6596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16377 (Flapjack.WordLangAddr.addr 16381 0#64))) := by
  unfold output6596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6596_skip : Flapjack.WordAlloc.isSkip output6596 = false := by
  rw [output6596_def]
  conv => lhs; cbv
  try rfl
theorem node6596_eq : Flapjack.WordAlloc.removeDeadStructural input6596 value5 value1 value2 = (output6596, value3302, value1) := by
  rw [input6596_def, output6596_def]
  try (conv => lhs; cbv)
  try rfl

def value3303 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16381, 16369)])).val
theorem input6597_def : input6597 = (Flapjack.WordLangProgHOL.move 0 [(16381, 16369)]) := by
  unfold input6597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16381, 16369)])).val
theorem output6597_def : output6597 = (Flapjack.WordLangProgHOL.move 0 [(16381, 16369)]) := by
  unfold output6597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6597_skip : Flapjack.WordAlloc.isSkip output6597 = false := by
  rw [output6597_def]
  conv => lhs; cbv
  try rfl
theorem node6597_eq : Flapjack.WordAlloc.removeDeadStructural input6597 value3302 value1 value2 = (output6597, value3303, value1) := by
  rw [input6597_def, output6597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6597 input6596)).val
theorem input6598_def : input6598 = (.seq input6597 input6596) := by
  unfold input6598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6597 output6596)).val
theorem output6598_def : output6598 = (.seq output6597 output6596) := by
  unfold output6598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6598_skip : Flapjack.WordAlloc.isSkip output6598 = false := by
  rw [output6598_def]
  conv => lhs; cbv
  try rfl
theorem node6598_eq : Flapjack.WordAlloc.removeDeadStructural input6598 value5 value1 value2 = (output6598, value3303, value1) := by
  rw [input6598_def, output6598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6596_eq]
  dsimp only
  rw [node6597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3304 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16377 8693114993904885301#64))).val
theorem input6599_def : input6599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16377 8693114993904885301#64)) := by
  unfold input6599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16377 8693114993904885301#64))).val
theorem output6599_def : output6599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16377 8693114993904885301#64)) := by
  unfold output6599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6599_skip : Flapjack.WordAlloc.isSkip output6599 = false := by
  rw [output6599_def]
  conv => lhs; cbv
  try rfl
theorem node6599_eq : Flapjack.WordAlloc.removeDeadStructural input6599 value3303 value1 value2 = (output6599, value3304, value1) := by
  rw [input6599_def, output6599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16373 8693114993904885301#64))).val
theorem input6600_def : input6600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16373 8693114993904885301#64)) := by
  unfold input6600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6600_def : output6600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6600_skip : Flapjack.WordAlloc.isSkip output6600 = true := by
  rw [output6600_def]
  conv => lhs; cbv
  try rfl
theorem node6600_eq : Flapjack.WordAlloc.removeDeadStructural input6600 value3304 value1 value2 = (output6600, value3304, value1) := by
  rw [input6600_def, output6600_def]
  try (conv => lhs; cbv)
  try rfl

def value3305 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16369 16361 (Flapjack.WordRegImm.reg 16365))))).val
theorem input6601_def : input6601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16369 16361 (Flapjack.WordRegImm.reg 16365)))) := by
  unfold input6601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16369 16361 (Flapjack.WordRegImm.reg 16365))))).val
theorem output6601_def : output6601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16369 16361 (Flapjack.WordRegImm.reg 16365)))) := by
  unfold output6601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6601_skip : Flapjack.WordAlloc.isSkip output6601 = false := by
  rw [output6601_def]
  conv => lhs; cbv
  try rfl
theorem node6601_eq : Flapjack.WordAlloc.removeDeadStructural input6601 value3304 value1 value2 = (output6601, value3305, value1) := by
  rw [input6601_def, output6601_def]
  try (conv => lhs; cbv)
  try rfl

def value3306 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16365 3832#64))).val
theorem input6602_def : input6602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16365 3832#64)) := by
  unfold input6602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16365 3832#64))).val
theorem output6602_def : output6602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16365 3832#64)) := by
  unfold output6602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6602_skip : Flapjack.WordAlloc.isSkip output6602 = false := by
  rw [output6602_def]
  conv => lhs; cbv
  try rfl
theorem node6602_eq : Flapjack.WordAlloc.removeDeadStructural input6602 value3305 value1 value2 = (output6602, value3306, value1) := by
  rw [input6602_def, output6602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6602 input6601)).val
theorem input6603_def : input6603 = (.seq input6602 input6601) := by
  unfold input6603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6602 output6601)).val
theorem output6603_def : output6603 = (.seq output6602 output6601) := by
  unfold output6603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6603_skip : Flapjack.WordAlloc.isSkip output6603 = false := by
  rw [output6603_def]
  conv => lhs; cbv
  try rfl
theorem node6603_eq : Flapjack.WordAlloc.removeDeadStructural input6603 value3304 value1 value2 = (output6603, value3306, value1) := by
  rw [input6603_def, output6603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6601_eq]
  dsimp only
  rw [node6602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3307 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16361 (Flapjack.WordLangAddr.addr 16357 18446744073709551104#64)))).val
theorem input6604_def : input6604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16361 (Flapjack.WordLangAddr.addr 16357 18446744073709551104#64))) := by
  unfold input6604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16361 (Flapjack.WordLangAddr.addr 16357 18446744073709551104#64)))).val
theorem output6604_def : output6604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16361 (Flapjack.WordLangAddr.addr 16357 18446744073709551104#64))) := by
  unfold output6604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6604_skip : Flapjack.WordAlloc.isSkip output6604 = false := by
  rw [output6604_def]
  conv => lhs; cbv
  try rfl
theorem node6604_eq : Flapjack.WordAlloc.removeDeadStructural input6604 value3306 value1 value2 = (output6604, value3307, value1) := by
  rw [input6604_def, output6604_def]
  try (conv => lhs; cbv)
  try rfl

def value3308 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16357 16353)).val
theorem input6605_def : input6605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16357 16353) := by
  unfold input6605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16357 16353)).val
theorem output6605_def : output6605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16357 16353) := by
  unfold output6605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6605_skip : Flapjack.WordAlloc.isSkip output6605 = false := by
  rw [output6605_def]
  conv => lhs; cbv
  try rfl
theorem node6605_eq : Flapjack.WordAlloc.removeDeadStructural input6605 value3307 value1 value2 = (output6605, value3308, value1) := by
  rw [input6605_def, output6605_def]
  try (conv => lhs; cbv)
  try rfl

def value3309 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16353 16349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6606_def : input6606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16353 16349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16353 16349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6606_def : output6606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16353 16349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6606_skip : Flapjack.WordAlloc.isSkip output6606 = false := by
  rw [output6606_def]
  conv => lhs; cbv
  try rfl
theorem node6606_eq : Flapjack.WordAlloc.removeDeadStructural input6606 value3308 value1 value2 = (output6606, value3309, value1) := by
  rw [input6606_def, output6606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16349 Flapjack.WordStore.heapLength)).val
theorem input6607_def : input6607 = (Flapjack.WordLangProgHOL.get 16349 Flapjack.WordStore.heapLength) := by
  unfold input6607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16349 Flapjack.WordStore.heapLength)).val
theorem output6607_def : output6607 = (Flapjack.WordLangProgHOL.get 16349 Flapjack.WordStore.heapLength) := by
  unfold output6607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6607_skip : Flapjack.WordAlloc.isSkip output6607 = false := by
  rw [output6607_def]
  conv => lhs; cbv
  try rfl
theorem node6607_eq : Flapjack.WordAlloc.removeDeadStructural input6607 value3309 value1 value2 = (output6607, value5, value1) := by
  rw [input6607_def, output6607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6607 input6606)).val
theorem input6608_def : input6608 = (.seq input6607 input6606) := by
  unfold input6608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6607 output6606)).val
theorem output6608_def : output6608 = (.seq output6607 output6606) := by
  unfold output6608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6608_skip : Flapjack.WordAlloc.isSkip output6608 = false := by
  rw [output6608_def]
  conv => lhs; cbv
  try rfl
theorem node6608_eq : Flapjack.WordAlloc.removeDeadStructural input6608 value3308 value1 value2 = (output6608, value5, value1) := by
  rw [input6608_def, output6608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6606_eq]
  dsimp only
  rw [node6607_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6608 input6605)).val
theorem input6609_def : input6609 = (.seq input6608 input6605) := by
  unfold input6609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6608 output6605)).val
theorem output6609_def : output6609 = (.seq output6608 output6605) := by
  unfold output6609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6609_skip : Flapjack.WordAlloc.isSkip output6609 = false := by
  rw [output6609_def]
  conv => lhs; cbv
  try rfl
theorem node6609_eq : Flapjack.WordAlloc.removeDeadStructural input6609 value3307 value1 value2 = (output6609, value5, value1) := by
  rw [input6609_def, output6609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6605_eq]
  dsimp only
  rw [node6608_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6609 input6604)).val
theorem input6610_def : input6610 = (.seq input6609 input6604) := by
  unfold input6610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6609 output6604)).val
theorem output6610_def : output6610 = (.seq output6609 output6604) := by
  unfold output6610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6610_skip : Flapjack.WordAlloc.isSkip output6610 = false := by
  rw [output6610_def]
  conv => lhs; cbv
  try rfl
theorem node6610_eq : Flapjack.WordAlloc.removeDeadStructural input6610 value3306 value1 value2 = (output6610, value5, value1) := by
  rw [input6610_def, output6610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6604_eq]
  dsimp only
  rw [node6609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6610 input6603)).val
theorem input6611_def : input6611 = (.seq input6610 input6603) := by
  unfold input6611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6610 output6603)).val
theorem output6611_def : output6611 = (.seq output6610 output6603) := by
  unfold output6611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6611_skip : Flapjack.WordAlloc.isSkip output6611 = false := by
  rw [output6611_def]
  conv => lhs; cbv
  try rfl
theorem node6611_eq : Flapjack.WordAlloc.removeDeadStructural input6611 value3304 value1 value2 = (output6611, value5, value1) := by
  rw [input6611_def, output6611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6603_eq]
  dsimp only
  rw [node6610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3310 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16341 (Flapjack.WordLangAddr.addr 16345 0#64)))).val
theorem input6612_def : input6612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16341 (Flapjack.WordLangAddr.addr 16345 0#64))) := by
  unfold input6612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16341 (Flapjack.WordLangAddr.addr 16345 0#64)))).val
theorem output6612_def : output6612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16341 (Flapjack.WordLangAddr.addr 16345 0#64))) := by
  unfold output6612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6612_skip : Flapjack.WordAlloc.isSkip output6612 = false := by
  rw [output6612_def]
  conv => lhs; cbv
  try rfl
theorem node6612_eq : Flapjack.WordAlloc.removeDeadStructural input6612 value5 value1 value2 = (output6612, value3310, value1) := by
  rw [input6612_def, output6612_def]
  try (conv => lhs; cbv)
  try rfl

def value3311 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16345, 16333)])).val
theorem input6613_def : input6613 = (Flapjack.WordLangProgHOL.move 0 [(16345, 16333)]) := by
  unfold input6613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16345, 16333)])).val
theorem output6613_def : output6613 = (Flapjack.WordLangProgHOL.move 0 [(16345, 16333)]) := by
  unfold output6613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6613_skip : Flapjack.WordAlloc.isSkip output6613 = false := by
  rw [output6613_def]
  conv => lhs; cbv
  try rfl
theorem node6613_eq : Flapjack.WordAlloc.removeDeadStructural input6613 value3310 value1 value2 = (output6613, value3311, value1) := by
  rw [input6613_def, output6613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6613 input6612)).val
theorem input6614_def : input6614 = (.seq input6613 input6612) := by
  unfold input6614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6613 output6612)).val
theorem output6614_def : output6614 = (.seq output6613 output6612) := by
  unfold output6614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6614_skip : Flapjack.WordAlloc.isSkip output6614 = false := by
  rw [output6614_def]
  conv => lhs; cbv
  try rfl
theorem node6614_eq : Flapjack.WordAlloc.removeDeadStructural input6614 value5 value1 value2 = (output6614, value3311, value1) := by
  rw [input6614_def, output6614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6612_eq]
  dsimp only
  rw [node6613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3312 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16341 3672140328108400701#64))).val
theorem input6615_def : input6615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16341 3672140328108400701#64)) := by
  unfold input6615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16341 3672140328108400701#64))).val
theorem output6615_def : output6615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16341 3672140328108400701#64)) := by
  unfold output6615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6615_skip : Flapjack.WordAlloc.isSkip output6615 = false := by
  rw [output6615_def]
  conv => lhs; cbv
  try rfl
theorem node6615_eq : Flapjack.WordAlloc.removeDeadStructural input6615 value3311 value1 value2 = (output6615, value3312, value1) := by
  rw [input6615_def, output6615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16337 3672140328108400701#64))).val
theorem input6616_def : input6616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16337 3672140328108400701#64)) := by
  unfold input6616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6616_def : output6616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6616_skip : Flapjack.WordAlloc.isSkip output6616 = true := by
  rw [output6616_def]
  conv => lhs; cbv
  try rfl
theorem node6616_eq : Flapjack.WordAlloc.removeDeadStructural input6616 value3312 value1 value2 = (output6616, value3312, value1) := by
  rw [input6616_def, output6616_def]
  try (conv => lhs; cbv)
  try rfl

def value3313 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16333 16325 (Flapjack.WordRegImm.reg 16329))))).val
theorem input6617_def : input6617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16333 16325 (Flapjack.WordRegImm.reg 16329)))) := by
  unfold input6617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16333 16325 (Flapjack.WordRegImm.reg 16329))))).val
theorem output6617_def : output6617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16333 16325 (Flapjack.WordRegImm.reg 16329)))) := by
  unfold output6617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6617_skip : Flapjack.WordAlloc.isSkip output6617 = false := by
  rw [output6617_def]
  conv => lhs; cbv
  try rfl
theorem node6617_eq : Flapjack.WordAlloc.removeDeadStructural input6617 value3312 value1 value2 = (output6617, value3313, value1) := by
  rw [input6617_def, output6617_def]
  try (conv => lhs; cbv)
  try rfl

def value3314 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16329 3824#64))).val
theorem input6618_def : input6618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16329 3824#64)) := by
  unfold input6618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16329 3824#64))).val
theorem output6618_def : output6618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16329 3824#64)) := by
  unfold output6618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6618_skip : Flapjack.WordAlloc.isSkip output6618 = false := by
  rw [output6618_def]
  conv => lhs; cbv
  try rfl
theorem node6618_eq : Flapjack.WordAlloc.removeDeadStructural input6618 value3313 value1 value2 = (output6618, value3314, value1) := by
  rw [input6618_def, output6618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6618 input6617)).val
theorem input6619_def : input6619 = (.seq input6618 input6617) := by
  unfold input6619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6618 output6617)).val
theorem output6619_def : output6619 = (.seq output6618 output6617) := by
  unfold output6619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6619_skip : Flapjack.WordAlloc.isSkip output6619 = false := by
  rw [output6619_def]
  conv => lhs; cbv
  try rfl
theorem node6619_eq : Flapjack.WordAlloc.removeDeadStructural input6619 value3312 value1 value2 = (output6619, value3314, value1) := by
  rw [input6619_def, output6619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6617_eq]
  dsimp only
  rw [node6618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3315 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16325 (Flapjack.WordLangAddr.addr 16321 18446744073709551104#64)))).val
theorem input6620_def : input6620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16325 (Flapjack.WordLangAddr.addr 16321 18446744073709551104#64))) := by
  unfold input6620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16325 (Flapjack.WordLangAddr.addr 16321 18446744073709551104#64)))).val
theorem output6620_def : output6620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16325 (Flapjack.WordLangAddr.addr 16321 18446744073709551104#64))) := by
  unfold output6620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6620_skip : Flapjack.WordAlloc.isSkip output6620 = false := by
  rw [output6620_def]
  conv => lhs; cbv
  try rfl
theorem node6620_eq : Flapjack.WordAlloc.removeDeadStructural input6620 value3314 value1 value2 = (output6620, value3315, value1) := by
  rw [input6620_def, output6620_def]
  try (conv => lhs; cbv)
  try rfl

def value3316 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16321 16317)).val
theorem input6621_def : input6621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16321 16317) := by
  unfold input6621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16321 16317)).val
theorem output6621_def : output6621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16321 16317) := by
  unfold output6621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6621_skip : Flapjack.WordAlloc.isSkip output6621 = false := by
  rw [output6621_def]
  conv => lhs; cbv
  try rfl
theorem node6621_eq : Flapjack.WordAlloc.removeDeadStructural input6621 value3315 value1 value2 = (output6621, value3316, value1) := by
  rw [input6621_def, output6621_def]
  try (conv => lhs; cbv)
  try rfl

def value3317 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16317 16313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6622_def : input6622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16317 16313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16317 16313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6622_def : output6622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16317 16313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6622_skip : Flapjack.WordAlloc.isSkip output6622 = false := by
  rw [output6622_def]
  conv => lhs; cbv
  try rfl
theorem node6622_eq : Flapjack.WordAlloc.removeDeadStructural input6622 value3316 value1 value2 = (output6622, value3317, value1) := by
  rw [input6622_def, output6622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16313 Flapjack.WordStore.heapLength)).val
theorem input6623_def : input6623 = (Flapjack.WordLangProgHOL.get 16313 Flapjack.WordStore.heapLength) := by
  unfold input6623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16313 Flapjack.WordStore.heapLength)).val
theorem output6623_def : output6623 = (Flapjack.WordLangProgHOL.get 16313 Flapjack.WordStore.heapLength) := by
  unfold output6623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6623_skip : Flapjack.WordAlloc.isSkip output6623 = false := by
  rw [output6623_def]
  conv => lhs; cbv
  try rfl
theorem node6623_eq : Flapjack.WordAlloc.removeDeadStructural input6623 value3317 value1 value2 = (output6623, value5, value1) := by
  rw [input6623_def, output6623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6623 input6622)).val
theorem input6624_def : input6624 = (.seq input6623 input6622) := by
  unfold input6624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6623 output6622)).val
theorem output6624_def : output6624 = (.seq output6623 output6622) := by
  unfold output6624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6624_skip : Flapjack.WordAlloc.isSkip output6624 = false := by
  rw [output6624_def]
  conv => lhs; cbv
  try rfl
theorem node6624_eq : Flapjack.WordAlloc.removeDeadStructural input6624 value3316 value1 value2 = (output6624, value5, value1) := by
  rw [input6624_def, output6624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6622_eq]
  dsimp only
  rw [node6623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6624 input6621)).val
theorem input6625_def : input6625 = (.seq input6624 input6621) := by
  unfold input6625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6624 output6621)).val
theorem output6625_def : output6625 = (.seq output6624 output6621) := by
  unfold output6625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6625_skip : Flapjack.WordAlloc.isSkip output6625 = false := by
  rw [output6625_def]
  conv => lhs; cbv
  try rfl
theorem node6625_eq : Flapjack.WordAlloc.removeDeadStructural input6625 value3315 value1 value2 = (output6625, value5, value1) := by
  rw [input6625_def, output6625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6621_eq]
  dsimp only
  rw [node6624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6625 input6620)).val
theorem input6626_def : input6626 = (.seq input6625 input6620) := by
  unfold input6626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6625 output6620)).val
theorem output6626_def : output6626 = (.seq output6625 output6620) := by
  unfold output6626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6626_skip : Flapjack.WordAlloc.isSkip output6626 = false := by
  rw [output6626_def]
  conv => lhs; cbv
  try rfl
theorem node6626_eq : Flapjack.WordAlloc.removeDeadStructural input6626 value3314 value1 value2 = (output6626, value5, value1) := by
  rw [input6626_def, output6626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6620_eq]
  dsimp only
  rw [node6625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6626 input6619)).val
theorem input6627_def : input6627 = (.seq input6626 input6619) := by
  unfold input6627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6626 output6619)).val
theorem output6627_def : output6627 = (.seq output6626 output6619) := by
  unfold output6627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6627_skip : Flapjack.WordAlloc.isSkip output6627 = false := by
  rw [output6627_def]
  conv => lhs; cbv
  try rfl
theorem node6627_eq : Flapjack.WordAlloc.removeDeadStructural input6627 value3312 value1 value2 = (output6627, value5, value1) := by
  rw [input6627_def, output6627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6619_eq]
  dsimp only
  rw [node6626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3318 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16305 (Flapjack.WordLangAddr.addr 16309 0#64)))).val
theorem input6628_def : input6628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16305 (Flapjack.WordLangAddr.addr 16309 0#64))) := by
  unfold input6628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16305 (Flapjack.WordLangAddr.addr 16309 0#64)))).val
theorem output6628_def : output6628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16305 (Flapjack.WordLangAddr.addr 16309 0#64))) := by
  unfold output6628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6628_skip : Flapjack.WordAlloc.isSkip output6628 = false := by
  rw [output6628_def]
  conv => lhs; cbv
  try rfl
theorem node6628_eq : Flapjack.WordAlloc.removeDeadStructural input6628 value5 value1 value2 = (output6628, value3318, value1) := by
  rw [input6628_def, output6628_def]
  try (conv => lhs; cbv)
  try rfl

def value3319 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16309, 16297)])).val
theorem input6629_def : input6629 = (Flapjack.WordLangProgHOL.move 0 [(16309, 16297)]) := by
  unfold input6629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16309, 16297)])).val
theorem output6629_def : output6629 = (Flapjack.WordLangProgHOL.move 0 [(16309, 16297)]) := by
  unfold output6629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6629_skip : Flapjack.WordAlloc.isSkip output6629 = false := by
  rw [output6629_def]
  conv => lhs; cbv
  try rfl
theorem node6629_eq : Flapjack.WordAlloc.removeDeadStructural input6629 value3318 value1 value2 = (output6629, value3319, value1) := by
  rw [input6629_def, output6629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6629 input6628)).val
theorem input6630_def : input6630 = (.seq input6629 input6628) := by
  unfold input6630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6629 output6628)).val
theorem output6630_def : output6630 = (.seq output6629 output6628) := by
  unfold output6630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6630_skip : Flapjack.WordAlloc.isSkip output6630 = false := by
  rw [output6630_def]
  conv => lhs; cbv
  try rfl
theorem node6630_eq : Flapjack.WordAlloc.removeDeadStructural input6630 value5 value1 value2 = (output6630, value3319, value1) := by
  rw [input6630_def, output6630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6628_eq]
  dsimp only
  rw [node6629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3320 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16305 1590100849350973618#64))).val
theorem input6631_def : input6631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16305 1590100849350973618#64)) := by
  unfold input6631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16305 1590100849350973618#64))).val
theorem output6631_def : output6631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16305 1590100849350973618#64)) := by
  unfold output6631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6631_skip : Flapjack.WordAlloc.isSkip output6631 = false := by
  rw [output6631_def]
  conv => lhs; cbv
  try rfl
theorem node6631_eq : Flapjack.WordAlloc.removeDeadStructural input6631 value3319 value1 value2 = (output6631, value3320, value1) := by
  rw [input6631_def, output6631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16301 1590100849350973618#64))).val
theorem input6632_def : input6632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16301 1590100849350973618#64)) := by
  unfold input6632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6632_def : output6632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6632_skip : Flapjack.WordAlloc.isSkip output6632 = true := by
  rw [output6632_def]
  conv => lhs; cbv
  try rfl
theorem node6632_eq : Flapjack.WordAlloc.removeDeadStructural input6632 value3320 value1 value2 = (output6632, value3320, value1) := by
  rw [input6632_def, output6632_def]
  try (conv => lhs; cbv)
  try rfl

def value3321 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16297 16289 (Flapjack.WordRegImm.reg 16293))))).val
theorem input6633_def : input6633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16297 16289 (Flapjack.WordRegImm.reg 16293)))) := by
  unfold input6633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16297 16289 (Flapjack.WordRegImm.reg 16293))))).val
theorem output6633_def : output6633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16297 16289 (Flapjack.WordRegImm.reg 16293)))) := by
  unfold output6633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6633_skip : Flapjack.WordAlloc.isSkip output6633 = false := by
  rw [output6633_def]
  conv => lhs; cbv
  try rfl
theorem node6633_eq : Flapjack.WordAlloc.removeDeadStructural input6633 value3320 value1 value2 = (output6633, value3321, value1) := by
  rw [input6633_def, output6633_def]
  try (conv => lhs; cbv)
  try rfl

def value3322 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16293 3816#64))).val
theorem input6634_def : input6634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16293 3816#64)) := by
  unfold input6634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16293 3816#64))).val
theorem output6634_def : output6634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16293 3816#64)) := by
  unfold output6634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6634_skip : Flapjack.WordAlloc.isSkip output6634 = false := by
  rw [output6634_def]
  conv => lhs; cbv
  try rfl
theorem node6634_eq : Flapjack.WordAlloc.removeDeadStructural input6634 value3321 value1 value2 = (output6634, value3322, value1) := by
  rw [input6634_def, output6634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6634 input6633)).val
theorem input6635_def : input6635 = (.seq input6634 input6633) := by
  unfold input6635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6634 output6633)).val
theorem output6635_def : output6635 = (.seq output6634 output6633) := by
  unfold output6635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6635_skip : Flapjack.WordAlloc.isSkip output6635 = false := by
  rw [output6635_def]
  conv => lhs; cbv
  try rfl
theorem node6635_eq : Flapjack.WordAlloc.removeDeadStructural input6635 value3320 value1 value2 = (output6635, value3322, value1) := by
  rw [input6635_def, output6635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6633_eq]
  dsimp only
  rw [node6634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3323 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16289 (Flapjack.WordLangAddr.addr 16285 18446744073709551104#64)))).val
theorem input6636_def : input6636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16289 (Flapjack.WordLangAddr.addr 16285 18446744073709551104#64))) := by
  unfold input6636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16289 (Flapjack.WordLangAddr.addr 16285 18446744073709551104#64)))).val
theorem output6636_def : output6636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16289 (Flapjack.WordLangAddr.addr 16285 18446744073709551104#64))) := by
  unfold output6636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6636_skip : Flapjack.WordAlloc.isSkip output6636 = false := by
  rw [output6636_def]
  conv => lhs; cbv
  try rfl
theorem node6636_eq : Flapjack.WordAlloc.removeDeadStructural input6636 value3322 value1 value2 = (output6636, value3323, value1) := by
  rw [input6636_def, output6636_def]
  try (conv => lhs; cbv)
  try rfl

def value3324 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16285 16281)).val
theorem input6637_def : input6637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16285 16281) := by
  unfold input6637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16285 16281)).val
theorem output6637_def : output6637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16285 16281) := by
  unfold output6637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6637_skip : Flapjack.WordAlloc.isSkip output6637 = false := by
  rw [output6637_def]
  conv => lhs; cbv
  try rfl
theorem node6637_eq : Flapjack.WordAlloc.removeDeadStructural input6637 value3323 value1 value2 = (output6637, value3324, value1) := by
  rw [input6637_def, output6637_def]
  try (conv => lhs; cbv)
  try rfl

def value3325 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16281 16277 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6638_def : input6638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16281 16277 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16281 16277 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6638_def : output6638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16281 16277 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6638_skip : Flapjack.WordAlloc.isSkip output6638 = false := by
  rw [output6638_def]
  conv => lhs; cbv
  try rfl
theorem node6638_eq : Flapjack.WordAlloc.removeDeadStructural input6638 value3324 value1 value2 = (output6638, value3325, value1) := by
  rw [input6638_def, output6638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16277 Flapjack.WordStore.heapLength)).val
theorem input6639_def : input6639 = (Flapjack.WordLangProgHOL.get 16277 Flapjack.WordStore.heapLength) := by
  unfold input6639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16277 Flapjack.WordStore.heapLength)).val
theorem output6639_def : output6639 = (Flapjack.WordLangProgHOL.get 16277 Flapjack.WordStore.heapLength) := by
  unfold output6639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6639_skip : Flapjack.WordAlloc.isSkip output6639 = false := by
  rw [output6639_def]
  conv => lhs; cbv
  try rfl
theorem node6639_eq : Flapjack.WordAlloc.removeDeadStructural input6639 value3325 value1 value2 = (output6639, value5, value1) := by
  rw [input6639_def, output6639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6639 input6638)).val
theorem input6640_def : input6640 = (.seq input6639 input6638) := by
  unfold input6640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6639 output6638)).val
theorem output6640_def : output6640 = (.seq output6639 output6638) := by
  unfold output6640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6640_skip : Flapjack.WordAlloc.isSkip output6640 = false := by
  rw [output6640_def]
  conv => lhs; cbv
  try rfl
theorem node6640_eq : Flapjack.WordAlloc.removeDeadStructural input6640 value3324 value1 value2 = (output6640, value5, value1) := by
  rw [input6640_def, output6640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6638_eq]
  dsimp only
  rw [node6639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6640 input6637)).val
theorem input6641_def : input6641 = (.seq input6640 input6637) := by
  unfold input6641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6640 output6637)).val
theorem output6641_def : output6641 = (.seq output6640 output6637) := by
  unfold output6641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6641_skip : Flapjack.WordAlloc.isSkip output6641 = false := by
  rw [output6641_def]
  conv => lhs; cbv
  try rfl
theorem node6641_eq : Flapjack.WordAlloc.removeDeadStructural input6641 value3323 value1 value2 = (output6641, value5, value1) := by
  rw [input6641_def, output6641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6637_eq]
  dsimp only
  rw [node6640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6641 input6636)).val
theorem input6642_def : input6642 = (.seq input6641 input6636) := by
  unfold input6642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6641 output6636)).val
theorem output6642_def : output6642 = (.seq output6641 output6636) := by
  unfold output6642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6642_skip : Flapjack.WordAlloc.isSkip output6642 = false := by
  rw [output6642_def]
  conv => lhs; cbv
  try rfl
theorem node6642_eq : Flapjack.WordAlloc.removeDeadStructural input6642 value3322 value1 value2 = (output6642, value5, value1) := by
  rw [input6642_def, output6642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6636_eq]
  dsimp only
  rw [node6641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6642 input6635)).val
theorem input6643_def : input6643 = (.seq input6642 input6635) := by
  unfold input6643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6642 output6635)).val
theorem output6643_def : output6643 = (.seq output6642 output6635) := by
  unfold output6643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6643_skip : Flapjack.WordAlloc.isSkip output6643 = false := by
  rw [output6643_def]
  conv => lhs; cbv
  try rfl
theorem node6643_eq : Flapjack.WordAlloc.removeDeadStructural input6643 value3320 value1 value2 = (output6643, value5, value1) := by
  rw [input6643_def, output6643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6635_eq]
  dsimp only
  rw [node6642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3326 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16269 (Flapjack.WordLangAddr.addr 16273 0#64)))).val
theorem input6644_def : input6644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16269 (Flapjack.WordLangAddr.addr 16273 0#64))) := by
  unfold input6644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16269 (Flapjack.WordLangAddr.addr 16273 0#64)))).val
theorem output6644_def : output6644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16269 (Flapjack.WordLangAddr.addr 16273 0#64))) := by
  unfold output6644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6644_skip : Flapjack.WordAlloc.isSkip output6644 = false := by
  rw [output6644_def]
  conv => lhs; cbv
  try rfl
theorem node6644_eq : Flapjack.WordAlloc.removeDeadStructural input6644 value5 value1 value2 = (output6644, value3326, value1) := by
  rw [input6644_def, output6644_def]
  try (conv => lhs; cbv)
  try rfl

def value3327 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16273, 16261)])).val
theorem input6645_def : input6645 = (Flapjack.WordLangProgHOL.move 0 [(16273, 16261)]) := by
  unfold input6645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16273, 16261)])).val
theorem output6645_def : output6645 = (Flapjack.WordLangProgHOL.move 0 [(16273, 16261)]) := by
  unfold output6645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6645_skip : Flapjack.WordAlloc.isSkip output6645 = false := by
  rw [output6645_def]
  conv => lhs; cbv
  try rfl
theorem node6645_eq : Flapjack.WordAlloc.removeDeadStructural input6645 value3326 value1 value2 = (output6645, value3327, value1) := by
  rw [input6645_def, output6645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6645 input6644)).val
theorem input6646_def : input6646 = (.seq input6645 input6644) := by
  unfold input6646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6645 output6644)).val
theorem output6646_def : output6646 = (.seq output6645 output6644) := by
  unfold output6646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6646_skip : Flapjack.WordAlloc.isSkip output6646 = false := by
  rw [output6646_def]
  conv => lhs; cbv
  try rfl
theorem node6646_eq : Flapjack.WordAlloc.removeDeadStructural input6646 value5 value1 value2 = (output6646, value3327, value1) := by
  rw [input6646_def, output6646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6644_eq]
  dsimp only
  rw [node6645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3328 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16269 5915497081334721257#64))).val
theorem input6647_def : input6647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16269 5915497081334721257#64)) := by
  unfold input6647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16269 5915497081334721257#64))).val
theorem output6647_def : output6647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16269 5915497081334721257#64)) := by
  unfold output6647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6647_skip : Flapjack.WordAlloc.isSkip output6647 = false := by
  rw [output6647_def]
  conv => lhs; cbv
  try rfl
theorem node6647_eq : Flapjack.WordAlloc.removeDeadStructural input6647 value3327 value1 value2 = (output6647, value3328, value1) := by
  rw [input6647_def, output6647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16265 5915497081334721257#64))).val
theorem input6648_def : input6648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16265 5915497081334721257#64)) := by
  unfold input6648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6648_def : output6648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6648_skip : Flapjack.WordAlloc.isSkip output6648 = true := by
  rw [output6648_def]
  conv => lhs; cbv
  try rfl
theorem node6648_eq : Flapjack.WordAlloc.removeDeadStructural input6648 value3328 value1 value2 = (output6648, value3328, value1) := by
  rw [input6648_def, output6648_def]
  try (conv => lhs; cbv)
  try rfl

def value3329 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16261 16253 (Flapjack.WordRegImm.reg 16257))))).val
theorem input6649_def : input6649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16261 16253 (Flapjack.WordRegImm.reg 16257)))) := by
  unfold input6649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16261 16253 (Flapjack.WordRegImm.reg 16257))))).val
theorem output6649_def : output6649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16261 16253 (Flapjack.WordRegImm.reg 16257)))) := by
  unfold output6649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6649_skip : Flapjack.WordAlloc.isSkip output6649 = false := by
  rw [output6649_def]
  conv => lhs; cbv
  try rfl
theorem node6649_eq : Flapjack.WordAlloc.removeDeadStructural input6649 value3328 value1 value2 = (output6649, value3329, value1) := by
  rw [input6649_def, output6649_def]
  try (conv => lhs; cbv)
  try rfl

def value3330 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16257 3808#64))).val
theorem input6650_def : input6650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16257 3808#64)) := by
  unfold input6650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16257 3808#64))).val
theorem output6650_def : output6650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16257 3808#64)) := by
  unfold output6650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6650_skip : Flapjack.WordAlloc.isSkip output6650 = false := by
  rw [output6650_def]
  conv => lhs; cbv
  try rfl
theorem node6650_eq : Flapjack.WordAlloc.removeDeadStructural input6650 value3329 value1 value2 = (output6650, value3330, value1) := by
  rw [input6650_def, output6650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6650 input6649)).val
theorem input6651_def : input6651 = (.seq input6650 input6649) := by
  unfold input6651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6650 output6649)).val
theorem output6651_def : output6651 = (.seq output6650 output6649) := by
  unfold output6651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6651_skip : Flapjack.WordAlloc.isSkip output6651 = false := by
  rw [output6651_def]
  conv => lhs; cbv
  try rfl
theorem node6651_eq : Flapjack.WordAlloc.removeDeadStructural input6651 value3328 value1 value2 = (output6651, value3330, value1) := by
  rw [input6651_def, output6651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6649_eq]
  dsimp only
  rw [node6650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3331 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16253 (Flapjack.WordLangAddr.addr 16249 18446744073709551104#64)))).val
theorem input6652_def : input6652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16253 (Flapjack.WordLangAddr.addr 16249 18446744073709551104#64))) := by
  unfold input6652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16253 (Flapjack.WordLangAddr.addr 16249 18446744073709551104#64)))).val
theorem output6652_def : output6652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16253 (Flapjack.WordLangAddr.addr 16249 18446744073709551104#64))) := by
  unfold output6652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6652_skip : Flapjack.WordAlloc.isSkip output6652 = false := by
  rw [output6652_def]
  conv => lhs; cbv
  try rfl
theorem node6652_eq : Flapjack.WordAlloc.removeDeadStructural input6652 value3330 value1 value2 = (output6652, value3331, value1) := by
  rw [input6652_def, output6652_def]
  try (conv => lhs; cbv)
  try rfl

def value3332 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16249 16245)).val
theorem input6653_def : input6653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16249 16245) := by
  unfold input6653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16249 16245)).val
theorem output6653_def : output6653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16249 16245) := by
  unfold output6653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6653_skip : Flapjack.WordAlloc.isSkip output6653 = false := by
  rw [output6653_def]
  conv => lhs; cbv
  try rfl
theorem node6653_eq : Flapjack.WordAlloc.removeDeadStructural input6653 value3331 value1 value2 = (output6653, value3332, value1) := by
  rw [input6653_def, output6653_def]
  try (conv => lhs; cbv)
  try rfl

def value3333 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16245 16241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6654_def : input6654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16245 16241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16245 16241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6654_def : output6654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16245 16241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6654_skip : Flapjack.WordAlloc.isSkip output6654 = false := by
  rw [output6654_def]
  conv => lhs; cbv
  try rfl
theorem node6654_eq : Flapjack.WordAlloc.removeDeadStructural input6654 value3332 value1 value2 = (output6654, value3333, value1) := by
  rw [input6654_def, output6654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16241 Flapjack.WordStore.heapLength)).val
theorem input6655_def : input6655 = (Flapjack.WordLangProgHOL.get 16241 Flapjack.WordStore.heapLength) := by
  unfold input6655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16241 Flapjack.WordStore.heapLength)).val
theorem output6655_def : output6655 = (Flapjack.WordLangProgHOL.get 16241 Flapjack.WordStore.heapLength) := by
  unfold output6655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6655_skip : Flapjack.WordAlloc.isSkip output6655 = false := by
  rw [output6655_def]
  conv => lhs; cbv
  try rfl
theorem node6655_eq : Flapjack.WordAlloc.removeDeadStructural input6655 value3333 value1 value2 = (output6655, value5, value1) := by
  rw [input6655_def, output6655_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node6655_eq
end InitECandidate.Proofs.DeadStages713
