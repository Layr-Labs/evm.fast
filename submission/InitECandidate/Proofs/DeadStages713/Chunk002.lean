import InitECandidate.Proofs.DeadStages713.Chunk001
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input511 input510)).val
theorem input512_def : input512 = (.seq input511 input510) := by
  unfold input512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output511 output510)).val
theorem output512_def : output512 = (.seq output511 output510) := by
  unfold output512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output512_skip : Flapjack.WordAlloc.isSkip output512 = false := by
  rw [output512_def]
  conv => lhs; cbv
  try rfl
theorem node512_eq : Flapjack.WordAlloc.removeDeadStructural input512 value260 value1 value2 = (output512, value5, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node510_eq]
  dsimp only
  rw [node511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input512 input509)).val
theorem input513_def : input513 = (.seq input512 input509) := by
  unfold input513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output512 output509)).val
theorem output513_def : output513 = (.seq output512 output509) := by
  unfold output513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output513_skip : Flapjack.WordAlloc.isSkip output513 = false := by
  rw [output513_def]
  conv => lhs; cbv
  try rfl
theorem node513_eq : Flapjack.WordAlloc.removeDeadStructural input513 value259 value1 value2 = (output513, value5, value1) := by
  rw [input513_def, output513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  dsimp only
  rw [node512_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input513 input508)).val
theorem input514_def : input514 = (.seq input513 input508) := by
  unfold input514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output513 output508)).val
theorem output514_def : output514 = (.seq output513 output508) := by
  unfold output514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output514_skip : Flapjack.WordAlloc.isSkip output514 = false := by
  rw [output514_def]
  conv => lhs; cbv
  try rfl
theorem node514_eq : Flapjack.WordAlloc.removeDeadStructural input514 value258 value1 value2 = (output514, value5, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node508_eq]
  dsimp only
  rw [node513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input514 input507)).val
theorem input515_def : input515 = (.seq input514 input507) := by
  unfold input515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output514 output507)).val
theorem output515_def : output515 = (.seq output514 output507) := by
  unfold output515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output515_skip : Flapjack.WordAlloc.isSkip output515 = false := by
  rw [output515_def]
  conv => lhs; cbv
  try rfl
theorem node515_eq : Flapjack.WordAlloc.removeDeadStructural input515 value256 value1 value2 = (output515, value5, value1) := by
  rw [input515_def, output515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  dsimp only
  rw [node514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value262 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30057 (Flapjack.WordLangAddr.addr 30061 0#64)))).val
theorem input516_def : input516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30057 (Flapjack.WordLangAddr.addr 30061 0#64))) := by
  unfold input516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30057 (Flapjack.WordLangAddr.addr 30061 0#64)))).val
theorem output516_def : output516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30057 (Flapjack.WordLangAddr.addr 30061 0#64))) := by
  unfold output516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output516_skip : Flapjack.WordAlloc.isSkip output516 = false := by
  rw [output516_def]
  conv => lhs; cbv
  try rfl
theorem node516_eq : Flapjack.WordAlloc.removeDeadStructural input516 value5 value1 value2 = (output516, value262, value1) := by
  rw [input516_def, output516_def]
  try (conv => lhs; cbv)
  try rfl

def value263 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(30061, 30049)])).val
theorem input517_def : input517 = (Flapjack.WordLangProgHOL.move 0 [(30061, 30049)]) := by
  unfold input517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(30061, 30049)])).val
theorem output517_def : output517 = (Flapjack.WordLangProgHOL.move 0 [(30061, 30049)]) := by
  unfold output517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output517_skip : Flapjack.WordAlloc.isSkip output517 = false := by
  rw [output517_def]
  conv => lhs; cbv
  try rfl
theorem node517_eq : Flapjack.WordAlloc.removeDeadStructural input517 value262 value1 value2 = (output517, value263, value1) := by
  rw [input517_def, output517_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input517 input516)).val
theorem input518_def : input518 = (.seq input517 input516) := by
  unfold input518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output517 output516)).val
theorem output518_def : output518 = (.seq output517 output516) := by
  unfold output518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output518_skip : Flapjack.WordAlloc.isSkip output518 = false := by
  rw [output518_def]
  conv => lhs; cbv
  try rfl
theorem node518_eq : Flapjack.WordAlloc.removeDeadStructural input518 value5 value1 value2 = (output518, value263, value1) := by
  rw [input518_def, output518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node516_eq]
  dsimp only
  rw [node517_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value264 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30057 0#64))).val
theorem input519_def : input519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30057 0#64)) := by
  unfold input519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30057 0#64))).val
theorem output519_def : output519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30057 0#64)) := by
  unfold output519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output519_skip : Flapjack.WordAlloc.isSkip output519 = false := by
  rw [output519_def]
  conv => lhs; cbv
  try rfl
theorem node519_eq : Flapjack.WordAlloc.removeDeadStructural input519 value263 value1 value2 = (output519, value264, value1) := by
  rw [input519_def, output519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30053 0#64))).val
theorem input520_def : input520 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30053 0#64)) := by
  unfold input520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output520_def : output520 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output520_skip : Flapjack.WordAlloc.isSkip output520 = true := by
  rw [output520_def]
  conv => lhs; cbv
  try rfl
theorem node520_eq : Flapjack.WordAlloc.removeDeadStructural input520 value264 value1 value2 = (output520, value264, value1) := by
  rw [input520_def, output520_def]
  try (conv => lhs; cbv)
  try rfl

def value265 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30049 30041 (Flapjack.WordRegImm.reg 30045))))).val
theorem input521_def : input521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30049 30041 (Flapjack.WordRegImm.reg 30045)))) := by
  unfold input521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30049 30041 (Flapjack.WordRegImm.reg 30045))))).val
theorem output521_def : output521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30049 30041 (Flapjack.WordRegImm.reg 30045)))) := by
  unfold output521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output521_skip : Flapjack.WordAlloc.isSkip output521 = false := by
  rw [output521_def]
  conv => lhs; cbv
  try rfl
theorem node521_eq : Flapjack.WordAlloc.removeDeadStructural input521 value264 value1 value2 = (output521, value265, value1) := by
  rw [input521_def, output521_def]
  try (conv => lhs; cbv)
  try rfl

def value266 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30045 6872#64))).val
theorem input522_def : input522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30045 6872#64)) := by
  unfold input522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30045 6872#64))).val
theorem output522_def : output522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30045 6872#64)) := by
  unfold output522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output522_skip : Flapjack.WordAlloc.isSkip output522 = false := by
  rw [output522_def]
  conv => lhs; cbv
  try rfl
theorem node522_eq : Flapjack.WordAlloc.removeDeadStructural input522 value265 value1 value2 = (output522, value266, value1) := by
  rw [input522_def, output522_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input522 input521)).val
theorem input523_def : input523 = (.seq input522 input521) := by
  unfold input523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output522 output521)).val
theorem output523_def : output523 = (.seq output522 output521) := by
  unfold output523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output523_skip : Flapjack.WordAlloc.isSkip output523 = false := by
  rw [output523_def]
  conv => lhs; cbv
  try rfl
theorem node523_eq : Flapjack.WordAlloc.removeDeadStructural input523 value264 value1 value2 = (output523, value266, value1) := by
  rw [input523_def, output523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node521_eq]
  dsimp only
  rw [node522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value267 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30041 (Flapjack.WordLangAddr.addr 30037 18446744073709551104#64)))).val
theorem input524_def : input524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30041 (Flapjack.WordLangAddr.addr 30037 18446744073709551104#64))) := by
  unfold input524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30041 (Flapjack.WordLangAddr.addr 30037 18446744073709551104#64)))).val
theorem output524_def : output524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30041 (Flapjack.WordLangAddr.addr 30037 18446744073709551104#64))) := by
  unfold output524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output524_skip : Flapjack.WordAlloc.isSkip output524 = false := by
  rw [output524_def]
  conv => lhs; cbv
  try rfl
theorem node524_eq : Flapjack.WordAlloc.removeDeadStructural input524 value266 value1 value2 = (output524, value267, value1) := by
  rw [input524_def, output524_def]
  try (conv => lhs; cbv)
  try rfl

def value268 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30037 30033)).val
theorem input525_def : input525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30037 30033) := by
  unfold input525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30037 30033)).val
theorem output525_def : output525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30037 30033) := by
  unfold output525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output525_skip : Flapjack.WordAlloc.isSkip output525 = false := by
  rw [output525_def]
  conv => lhs; cbv
  try rfl
theorem node525_eq : Flapjack.WordAlloc.removeDeadStructural input525 value267 value1 value2 = (output525, value268, value1) := by
  rw [input525_def, output525_def]
  try (conv => lhs; cbv)
  try rfl

def value269 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 30033 30029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input526_def : input526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 30033 30029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 30033 30029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output526_def : output526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 30033 30029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output526_skip : Flapjack.WordAlloc.isSkip output526 = false := by
  rw [output526_def]
  conv => lhs; cbv
  try rfl
theorem node526_eq : Flapjack.WordAlloc.removeDeadStructural input526 value268 value1 value2 = (output526, value269, value1) := by
  rw [input526_def, output526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 30029 Flapjack.WordStore.heapLength)).val
theorem input527_def : input527 = (Flapjack.WordLangProgHOL.get 30029 Flapjack.WordStore.heapLength) := by
  unfold input527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 30029 Flapjack.WordStore.heapLength)).val
theorem output527_def : output527 = (Flapjack.WordLangProgHOL.get 30029 Flapjack.WordStore.heapLength) := by
  unfold output527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output527_skip : Flapjack.WordAlloc.isSkip output527 = false := by
  rw [output527_def]
  conv => lhs; cbv
  try rfl
theorem node527_eq : Flapjack.WordAlloc.removeDeadStructural input527 value269 value1 value2 = (output527, value5, value1) := by
  rw [input527_def, output527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input527 input526)).val
theorem input528_def : input528 = (.seq input527 input526) := by
  unfold input528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output527 output526)).val
theorem output528_def : output528 = (.seq output527 output526) := by
  unfold output528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output528_skip : Flapjack.WordAlloc.isSkip output528 = false := by
  rw [output528_def]
  conv => lhs; cbv
  try rfl
theorem node528_eq : Flapjack.WordAlloc.removeDeadStructural input528 value268 value1 value2 = (output528, value5, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  dsimp only
  rw [node527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input528 input525)).val
theorem input529_def : input529 = (.seq input528 input525) := by
  unfold input529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output528 output525)).val
theorem output529_def : output529 = (.seq output528 output525) := by
  unfold output529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output529_skip : Flapjack.WordAlloc.isSkip output529 = false := by
  rw [output529_def]
  conv => lhs; cbv
  try rfl
theorem node529_eq : Flapjack.WordAlloc.removeDeadStructural input529 value267 value1 value2 = (output529, value5, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node525_eq]
  dsimp only
  rw [node528_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input529 input524)).val
theorem input530_def : input530 = (.seq input529 input524) := by
  unfold input530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output529 output524)).val
theorem output530_def : output530 = (.seq output529 output524) := by
  unfold output530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output530_skip : Flapjack.WordAlloc.isSkip output530 = false := by
  rw [output530_def]
  conv => lhs; cbv
  try rfl
theorem node530_eq : Flapjack.WordAlloc.removeDeadStructural input530 value266 value1 value2 = (output530, value5, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node524_eq]
  dsimp only
  rw [node529_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input530 input523)).val
theorem input531_def : input531 = (.seq input530 input523) := by
  unfold input531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output530 output523)).val
theorem output531_def : output531 = (.seq output530 output523) := by
  unfold output531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output531_skip : Flapjack.WordAlloc.isSkip output531 = false := by
  rw [output531_def]
  conv => lhs; cbv
  try rfl
theorem node531_eq : Flapjack.WordAlloc.removeDeadStructural input531 value264 value1 value2 = (output531, value5, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  dsimp only
  rw [node530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value270 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30021 (Flapjack.WordLangAddr.addr 30025 0#64)))).val
theorem input532_def : input532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30021 (Flapjack.WordLangAddr.addr 30025 0#64))) := by
  unfold input532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30021 (Flapjack.WordLangAddr.addr 30025 0#64)))).val
theorem output532_def : output532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30021 (Flapjack.WordLangAddr.addr 30025 0#64))) := by
  unfold output532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output532_skip : Flapjack.WordAlloc.isSkip output532 = false := by
  rw [output532_def]
  conv => lhs; cbv
  try rfl
theorem node532_eq : Flapjack.WordAlloc.removeDeadStructural input532 value5 value1 value2 = (output532, value270, value1) := by
  rw [input532_def, output532_def]
  try (conv => lhs; cbv)
  try rfl

def value271 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(30025, 30013)])).val
theorem input533_def : input533 = (Flapjack.WordLangProgHOL.move 0 [(30025, 30013)]) := by
  unfold input533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(30025, 30013)])).val
theorem output533_def : output533 = (Flapjack.WordLangProgHOL.move 0 [(30025, 30013)]) := by
  unfold output533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output533_skip : Flapjack.WordAlloc.isSkip output533 = false := by
  rw [output533_def]
  conv => lhs; cbv
  try rfl
theorem node533_eq : Flapjack.WordAlloc.removeDeadStructural input533 value270 value1 value2 = (output533, value271, value1) := by
  rw [input533_def, output533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input533 input532)).val
theorem input534_def : input534 = (.seq input533 input532) := by
  unfold input534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output533 output532)).val
theorem output534_def : output534 = (.seq output533 output532) := by
  unfold output534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output534_skip : Flapjack.WordAlloc.isSkip output534 = false := by
  rw [output534_def]
  conv => lhs; cbv
  try rfl
theorem node534_eq : Flapjack.WordAlloc.removeDeadStructural input534 value5 value1 value2 = (output534, value271, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node532_eq]
  dsimp only
  rw [node533_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value272 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30021 0#64))).val
theorem input535_def : input535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30021 0#64)) := by
  unfold input535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30021 0#64))).val
theorem output535_def : output535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30021 0#64)) := by
  unfold output535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output535_skip : Flapjack.WordAlloc.isSkip output535 = false := by
  rw [output535_def]
  conv => lhs; cbv
  try rfl
theorem node535_eq : Flapjack.WordAlloc.removeDeadStructural input535 value271 value1 value2 = (output535, value272, value1) := by
  rw [input535_def, output535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30017 0#64))).val
theorem input536_def : input536 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30017 0#64)) := by
  unfold input536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output536_def : output536 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output536_skip : Flapjack.WordAlloc.isSkip output536 = true := by
  rw [output536_def]
  conv => lhs; cbv
  try rfl
theorem node536_eq : Flapjack.WordAlloc.removeDeadStructural input536 value272 value1 value2 = (output536, value272, value1) := by
  rw [input536_def, output536_def]
  try (conv => lhs; cbv)
  try rfl

def value273 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30013 30005 (Flapjack.WordRegImm.reg 30009))))).val
theorem input537_def : input537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30013 30005 (Flapjack.WordRegImm.reg 30009)))) := by
  unfold input537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30013 30005 (Flapjack.WordRegImm.reg 30009))))).val
theorem output537_def : output537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30013 30005 (Flapjack.WordRegImm.reg 30009)))) := by
  unfold output537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output537_skip : Flapjack.WordAlloc.isSkip output537 = false := by
  rw [output537_def]
  conv => lhs; cbv
  try rfl
theorem node537_eq : Flapjack.WordAlloc.removeDeadStructural input537 value272 value1 value2 = (output537, value273, value1) := by
  rw [input537_def, output537_def]
  try (conv => lhs; cbv)
  try rfl

def value274 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30009 6864#64))).val
theorem input538_def : input538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30009 6864#64)) := by
  unfold input538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30009 6864#64))).val
theorem output538_def : output538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30009 6864#64)) := by
  unfold output538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output538_skip : Flapjack.WordAlloc.isSkip output538 = false := by
  rw [output538_def]
  conv => lhs; cbv
  try rfl
theorem node538_eq : Flapjack.WordAlloc.removeDeadStructural input538 value273 value1 value2 = (output538, value274, value1) := by
  rw [input538_def, output538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input538 input537)).val
theorem input539_def : input539 = (.seq input538 input537) := by
  unfold input539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output538 output537)).val
theorem output539_def : output539 = (.seq output538 output537) := by
  unfold output539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output539_skip : Flapjack.WordAlloc.isSkip output539 = false := by
  rw [output539_def]
  conv => lhs; cbv
  try rfl
theorem node539_eq : Flapjack.WordAlloc.removeDeadStructural input539 value272 value1 value2 = (output539, value274, value1) := by
  rw [input539_def, output539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node537_eq]
  dsimp only
  rw [node538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value275 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30005 (Flapjack.WordLangAddr.addr 30001 18446744073709551104#64)))).val
theorem input540_def : input540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30005 (Flapjack.WordLangAddr.addr 30001 18446744073709551104#64))) := by
  unfold input540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30005 (Flapjack.WordLangAddr.addr 30001 18446744073709551104#64)))).val
theorem output540_def : output540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30005 (Flapjack.WordLangAddr.addr 30001 18446744073709551104#64))) := by
  unfold output540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output540_skip : Flapjack.WordAlloc.isSkip output540 = false := by
  rw [output540_def]
  conv => lhs; cbv
  try rfl
theorem node540_eq : Flapjack.WordAlloc.removeDeadStructural input540 value274 value1 value2 = (output540, value275, value1) := by
  rw [input540_def, output540_def]
  try (conv => lhs; cbv)
  try rfl

def value276 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30001 29997)).val
theorem input541_def : input541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30001 29997) := by
  unfold input541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30001 29997)).val
theorem output541_def : output541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 30001 29997) := by
  unfold output541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output541_skip : Flapjack.WordAlloc.isSkip output541 = false := by
  rw [output541_def]
  conv => lhs; cbv
  try rfl
theorem node541_eq : Flapjack.WordAlloc.removeDeadStructural input541 value275 value1 value2 = (output541, value276, value1) := by
  rw [input541_def, output541_def]
  try (conv => lhs; cbv)
  try rfl

def value277 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29997 29993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input542_def : input542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29997 29993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29997 29993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output542_def : output542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29997 29993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output542_skip : Flapjack.WordAlloc.isSkip output542 = false := by
  rw [output542_def]
  conv => lhs; cbv
  try rfl
theorem node542_eq : Flapjack.WordAlloc.removeDeadStructural input542 value276 value1 value2 = (output542, value277, value1) := by
  rw [input542_def, output542_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29993 Flapjack.WordStore.heapLength)).val
theorem input543_def : input543 = (Flapjack.WordLangProgHOL.get 29993 Flapjack.WordStore.heapLength) := by
  unfold input543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29993 Flapjack.WordStore.heapLength)).val
theorem output543_def : output543 = (Flapjack.WordLangProgHOL.get 29993 Flapjack.WordStore.heapLength) := by
  unfold output543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output543_skip : Flapjack.WordAlloc.isSkip output543 = false := by
  rw [output543_def]
  conv => lhs; cbv
  try rfl
theorem node543_eq : Flapjack.WordAlloc.removeDeadStructural input543 value277 value1 value2 = (output543, value5, value1) := by
  rw [input543_def, output543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input543 input542)).val
theorem input544_def : input544 = (.seq input543 input542) := by
  unfold input544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output543 output542)).val
theorem output544_def : output544 = (.seq output543 output542) := by
  unfold output544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output544_skip : Flapjack.WordAlloc.isSkip output544 = false := by
  rw [output544_def]
  conv => lhs; cbv
  try rfl
theorem node544_eq : Flapjack.WordAlloc.removeDeadStructural input544 value276 value1 value2 = (output544, value5, value1) := by
  rw [input544_def, output544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  dsimp only
  rw [node543_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input544 input541)).val
theorem input545_def : input545 = (.seq input544 input541) := by
  unfold input545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output544 output541)).val
theorem output545_def : output545 = (.seq output544 output541) := by
  unfold output545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output545_skip : Flapjack.WordAlloc.isSkip output545 = false := by
  rw [output545_def]
  conv => lhs; cbv
  try rfl
theorem node545_eq : Flapjack.WordAlloc.removeDeadStructural input545 value275 value1 value2 = (output545, value5, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node541_eq]
  dsimp only
  rw [node544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input545 input540)).val
theorem input546_def : input546 = (.seq input545 input540) := by
  unfold input546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output545 output540)).val
theorem output546_def : output546 = (.seq output545 output540) := by
  unfold output546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output546_skip : Flapjack.WordAlloc.isSkip output546 = false := by
  rw [output546_def]
  conv => lhs; cbv
  try rfl
theorem node546_eq : Flapjack.WordAlloc.removeDeadStructural input546 value274 value1 value2 = (output546, value5, value1) := by
  rw [input546_def, output546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node540_eq]
  dsimp only
  rw [node545_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input546 input539)).val
theorem input547_def : input547 = (.seq input546 input539) := by
  unfold input547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output546 output539)).val
theorem output547_def : output547 = (.seq output546 output539) := by
  unfold output547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output547_skip : Flapjack.WordAlloc.isSkip output547 = false := by
  rw [output547_def]
  conv => lhs; cbv
  try rfl
theorem node547_eq : Flapjack.WordAlloc.removeDeadStructural input547 value272 value1 value2 = (output547, value5, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node539_eq]
  dsimp only
  rw [node546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value278 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29985 (Flapjack.WordLangAddr.addr 29989 0#64)))).val
theorem input548_def : input548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29985 (Flapjack.WordLangAddr.addr 29989 0#64))) := by
  unfold input548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29985 (Flapjack.WordLangAddr.addr 29989 0#64)))).val
theorem output548_def : output548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29985 (Flapjack.WordLangAddr.addr 29989 0#64))) := by
  unfold output548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output548_skip : Flapjack.WordAlloc.isSkip output548 = false := by
  rw [output548_def]
  conv => lhs; cbv
  try rfl
theorem node548_eq : Flapjack.WordAlloc.removeDeadStructural input548 value5 value1 value2 = (output548, value278, value1) := by
  rw [input548_def, output548_def]
  try (conv => lhs; cbv)
  try rfl

def value279 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29989, 29977)])).val
theorem input549_def : input549 = (Flapjack.WordLangProgHOL.move 0 [(29989, 29977)]) := by
  unfold input549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29989, 29977)])).val
theorem output549_def : output549 = (Flapjack.WordLangProgHOL.move 0 [(29989, 29977)]) := by
  unfold output549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output549_skip : Flapjack.WordAlloc.isSkip output549 = false := by
  rw [output549_def]
  conv => lhs; cbv
  try rfl
theorem node549_eq : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1) := by
  rw [input549_def, output549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input549 input548)).val
theorem input550_def : input550 = (.seq input549 input548) := by
  unfold input550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output549 output548)).val
theorem output550_def : output550 = (.seq output549 output548) := by
  unfold output550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output550_skip : Flapjack.WordAlloc.isSkip output550 = false := by
  rw [output550_def]
  conv => lhs; cbv
  try rfl
theorem node550_eq : Flapjack.WordAlloc.removeDeadStructural input550 value5 value1 value2 = (output550, value279, value1) := by
  rw [input550_def, output550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node548_eq]
  dsimp only
  rw [node549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value280 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29985 0#64))).val
theorem input551_def : input551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29985 0#64)) := by
  unfold input551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29985 0#64))).val
theorem output551_def : output551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29985 0#64)) := by
  unfold output551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output551_skip : Flapjack.WordAlloc.isSkip output551 = false := by
  rw [output551_def]
  conv => lhs; cbv
  try rfl
theorem node551_eq : Flapjack.WordAlloc.removeDeadStructural input551 value279 value1 value2 = (output551, value280, value1) := by
  rw [input551_def, output551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29981 0#64))).val
theorem input552_def : input552 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29981 0#64)) := by
  unfold input552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output552_def : output552 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output552_skip : Flapjack.WordAlloc.isSkip output552 = true := by
  rw [output552_def]
  conv => lhs; cbv
  try rfl
theorem node552_eq : Flapjack.WordAlloc.removeDeadStructural input552 value280 value1 value2 = (output552, value280, value1) := by
  rw [input552_def, output552_def]
  try (conv => lhs; cbv)
  try rfl

def value281 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29977 29969 (Flapjack.WordRegImm.reg 29973))))).val
theorem input553_def : input553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29977 29969 (Flapjack.WordRegImm.reg 29973)))) := by
  unfold input553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29977 29969 (Flapjack.WordRegImm.reg 29973))))).val
theorem output553_def : output553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29977 29969 (Flapjack.WordRegImm.reg 29973)))) := by
  unfold output553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output553_skip : Flapjack.WordAlloc.isSkip output553 = false := by
  rw [output553_def]
  conv => lhs; cbv
  try rfl
theorem node553_eq : Flapjack.WordAlloc.removeDeadStructural input553 value280 value1 value2 = (output553, value281, value1) := by
  rw [input553_def, output553_def]
  try (conv => lhs; cbv)
  try rfl

def value282 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29973 6856#64))).val
theorem input554_def : input554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29973 6856#64)) := by
  unfold input554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29973 6856#64))).val
theorem output554_def : output554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29973 6856#64)) := by
  unfold output554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output554_skip : Flapjack.WordAlloc.isSkip output554 = false := by
  rw [output554_def]
  conv => lhs; cbv
  try rfl
theorem node554_eq : Flapjack.WordAlloc.removeDeadStructural input554 value281 value1 value2 = (output554, value282, value1) := by
  rw [input554_def, output554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input554 input553)).val
theorem input555_def : input555 = (.seq input554 input553) := by
  unfold input555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output554 output553)).val
theorem output555_def : output555 = (.seq output554 output553) := by
  unfold output555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output555_skip : Flapjack.WordAlloc.isSkip output555 = false := by
  rw [output555_def]
  conv => lhs; cbv
  try rfl
theorem node555_eq : Flapjack.WordAlloc.removeDeadStructural input555 value280 value1 value2 = (output555, value282, value1) := by
  rw [input555_def, output555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node553_eq]
  dsimp only
  rw [node554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value283 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29969 (Flapjack.WordLangAddr.addr 29965 18446744073709551104#64)))).val
theorem input556_def : input556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29969 (Flapjack.WordLangAddr.addr 29965 18446744073709551104#64))) := by
  unfold input556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29969 (Flapjack.WordLangAddr.addr 29965 18446744073709551104#64)))).val
theorem output556_def : output556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29969 (Flapjack.WordLangAddr.addr 29965 18446744073709551104#64))) := by
  unfold output556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output556_skip : Flapjack.WordAlloc.isSkip output556 = false := by
  rw [output556_def]
  conv => lhs; cbv
  try rfl
theorem node556_eq : Flapjack.WordAlloc.removeDeadStructural input556 value282 value1 value2 = (output556, value283, value1) := by
  rw [input556_def, output556_def]
  try (conv => lhs; cbv)
  try rfl

def value284 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29965 29961)).val
theorem input557_def : input557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29965 29961) := by
  unfold input557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29965 29961)).val
theorem output557_def : output557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29965 29961) := by
  unfold output557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output557_skip : Flapjack.WordAlloc.isSkip output557 = false := by
  rw [output557_def]
  conv => lhs; cbv
  try rfl
theorem node557_eq : Flapjack.WordAlloc.removeDeadStructural input557 value283 value1 value2 = (output557, value284, value1) := by
  rw [input557_def, output557_def]
  try (conv => lhs; cbv)
  try rfl

def value285 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29961 29957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input558_def : input558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29961 29957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29961 29957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output558_def : output558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29961 29957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output558_skip : Flapjack.WordAlloc.isSkip output558 = false := by
  rw [output558_def]
  conv => lhs; cbv
  try rfl
theorem node558_eq : Flapjack.WordAlloc.removeDeadStructural input558 value284 value1 value2 = (output558, value285, value1) := by
  rw [input558_def, output558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29957 Flapjack.WordStore.heapLength)).val
theorem input559_def : input559 = (Flapjack.WordLangProgHOL.get 29957 Flapjack.WordStore.heapLength) := by
  unfold input559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29957 Flapjack.WordStore.heapLength)).val
theorem output559_def : output559 = (Flapjack.WordLangProgHOL.get 29957 Flapjack.WordStore.heapLength) := by
  unfold output559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output559_skip : Flapjack.WordAlloc.isSkip output559 = false := by
  rw [output559_def]
  conv => lhs; cbv
  try rfl
theorem node559_eq : Flapjack.WordAlloc.removeDeadStructural input559 value285 value1 value2 = (output559, value5, value1) := by
  rw [input559_def, output559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input559 input558)).val
theorem input560_def : input560 = (.seq input559 input558) := by
  unfold input560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output559 output558)).val
theorem output560_def : output560 = (.seq output559 output558) := by
  unfold output560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output560_skip : Flapjack.WordAlloc.isSkip output560 = false := by
  rw [output560_def]
  conv => lhs; cbv
  try rfl
theorem node560_eq : Flapjack.WordAlloc.removeDeadStructural input560 value284 value1 value2 = (output560, value5, value1) := by
  rw [input560_def, output560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node558_eq]
  dsimp only
  rw [node559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input560 input557)).val
theorem input561_def : input561 = (.seq input560 input557) := by
  unfold input561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output560 output557)).val
theorem output561_def : output561 = (.seq output560 output557) := by
  unfold output561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output561_skip : Flapjack.WordAlloc.isSkip output561 = false := by
  rw [output561_def]
  conv => lhs; cbv
  try rfl
theorem node561_eq : Flapjack.WordAlloc.removeDeadStructural input561 value283 value1 value2 = (output561, value5, value1) := by
  rw [input561_def, output561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node557_eq]
  dsimp only
  rw [node560_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input561 input556)).val
theorem input562_def : input562 = (.seq input561 input556) := by
  unfold input562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output561 output556)).val
theorem output562_def : output562 = (.seq output561 output556) := by
  unfold output562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output562_skip : Flapjack.WordAlloc.isSkip output562 = false := by
  rw [output562_def]
  conv => lhs; cbv
  try rfl
theorem node562_eq : Flapjack.WordAlloc.removeDeadStructural input562 value282 value1 value2 = (output562, value5, value1) := by
  rw [input562_def, output562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node556_eq]
  dsimp only
  rw [node561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input562 input555)).val
theorem input563_def : input563 = (.seq input562 input555) := by
  unfold input563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output562 output555)).val
theorem output563_def : output563 = (.seq output562 output555) := by
  unfold output563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output563_skip : Flapjack.WordAlloc.isSkip output563 = false := by
  rw [output563_def]
  conv => lhs; cbv
  try rfl
theorem node563_eq : Flapjack.WordAlloc.removeDeadStructural input563 value280 value1 value2 = (output563, value5, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node555_eq]
  dsimp only
  rw [node562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value286 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29949 (Flapjack.WordLangAddr.addr 29953 0#64)))).val
theorem input564_def : input564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29949 (Flapjack.WordLangAddr.addr 29953 0#64))) := by
  unfold input564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29949 (Flapjack.WordLangAddr.addr 29953 0#64)))).val
theorem output564_def : output564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29949 (Flapjack.WordLangAddr.addr 29953 0#64))) := by
  unfold output564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output564_skip : Flapjack.WordAlloc.isSkip output564 = false := by
  rw [output564_def]
  conv => lhs; cbv
  try rfl
theorem node564_eq : Flapjack.WordAlloc.removeDeadStructural input564 value5 value1 value2 = (output564, value286, value1) := by
  rw [input564_def, output564_def]
  try (conv => lhs; cbv)
  try rfl

def value287 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29953, 29941)])).val
theorem input565_def : input565 = (Flapjack.WordLangProgHOL.move 0 [(29953, 29941)]) := by
  unfold input565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29953, 29941)])).val
theorem output565_def : output565 = (Flapjack.WordLangProgHOL.move 0 [(29953, 29941)]) := by
  unfold output565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output565_skip : Flapjack.WordAlloc.isSkip output565 = false := by
  rw [output565_def]
  conv => lhs; cbv
  try rfl
theorem node565_eq : Flapjack.WordAlloc.removeDeadStructural input565 value286 value1 value2 = (output565, value287, value1) := by
  rw [input565_def, output565_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input565 input564)).val
theorem input566_def : input566 = (.seq input565 input564) := by
  unfold input566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output565 output564)).val
theorem output566_def : output566 = (.seq output565 output564) := by
  unfold output566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output566_skip : Flapjack.WordAlloc.isSkip output566 = false := by
  rw [output566_def]
  conv => lhs; cbv
  try rfl
theorem node566_eq : Flapjack.WordAlloc.removeDeadStructural input566 value5 value1 value2 = (output566, value287, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node564_eq]
  dsimp only
  rw [node565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value288 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29949 0#64))).val
theorem input567_def : input567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29949 0#64)) := by
  unfold input567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29949 0#64))).val
theorem output567_def : output567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29949 0#64)) := by
  unfold output567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output567_skip : Flapjack.WordAlloc.isSkip output567 = false := by
  rw [output567_def]
  conv => lhs; cbv
  try rfl
theorem node567_eq : Flapjack.WordAlloc.removeDeadStructural input567 value287 value1 value2 = (output567, value288, value1) := by
  rw [input567_def, output567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29945 0#64))).val
theorem input568_def : input568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29945 0#64)) := by
  unfold input568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output568_def : output568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output568_skip : Flapjack.WordAlloc.isSkip output568 = true := by
  rw [output568_def]
  conv => lhs; cbv
  try rfl
theorem node568_eq : Flapjack.WordAlloc.removeDeadStructural input568 value288 value1 value2 = (output568, value288, value1) := by
  rw [input568_def, output568_def]
  try (conv => lhs; cbv)
  try rfl

def value289 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29941 29933 (Flapjack.WordRegImm.reg 29937))))).val
theorem input569_def : input569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29941 29933 (Flapjack.WordRegImm.reg 29937)))) := by
  unfold input569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29941 29933 (Flapjack.WordRegImm.reg 29937))))).val
theorem output569_def : output569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29941 29933 (Flapjack.WordRegImm.reg 29937)))) := by
  unfold output569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output569_skip : Flapjack.WordAlloc.isSkip output569 = false := by
  rw [output569_def]
  conv => lhs; cbv
  try rfl
theorem node569_eq : Flapjack.WordAlloc.removeDeadStructural input569 value288 value1 value2 = (output569, value289, value1) := by
  rw [input569_def, output569_def]
  try (conv => lhs; cbv)
  try rfl

def value290 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29937 6848#64))).val
theorem input570_def : input570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29937 6848#64)) := by
  unfold input570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29937 6848#64))).val
theorem output570_def : output570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29937 6848#64)) := by
  unfold output570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output570_skip : Flapjack.WordAlloc.isSkip output570 = false := by
  rw [output570_def]
  conv => lhs; cbv
  try rfl
theorem node570_eq : Flapjack.WordAlloc.removeDeadStructural input570 value289 value1 value2 = (output570, value290, value1) := by
  rw [input570_def, output570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input570 input569)).val
theorem input571_def : input571 = (.seq input570 input569) := by
  unfold input571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output570 output569)).val
theorem output571_def : output571 = (.seq output570 output569) := by
  unfold output571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output571_skip : Flapjack.WordAlloc.isSkip output571 = false := by
  rw [output571_def]
  conv => lhs; cbv
  try rfl
theorem node571_eq : Flapjack.WordAlloc.removeDeadStructural input571 value288 value1 value2 = (output571, value290, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  dsimp only
  rw [node570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value291 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29933 (Flapjack.WordLangAddr.addr 29929 18446744073709551104#64)))).val
theorem input572_def : input572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29933 (Flapjack.WordLangAddr.addr 29929 18446744073709551104#64))) := by
  unfold input572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29933 (Flapjack.WordLangAddr.addr 29929 18446744073709551104#64)))).val
theorem output572_def : output572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29933 (Flapjack.WordLangAddr.addr 29929 18446744073709551104#64))) := by
  unfold output572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output572_skip : Flapjack.WordAlloc.isSkip output572 = false := by
  rw [output572_def]
  conv => lhs; cbv
  try rfl
theorem node572_eq : Flapjack.WordAlloc.removeDeadStructural input572 value290 value1 value2 = (output572, value291, value1) := by
  rw [input572_def, output572_def]
  try (conv => lhs; cbv)
  try rfl

def value292 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29929 29925)).val
theorem input573_def : input573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29929 29925) := by
  unfold input573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29929 29925)).val
theorem output573_def : output573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29929 29925) := by
  unfold output573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output573_skip : Flapjack.WordAlloc.isSkip output573 = false := by
  rw [output573_def]
  conv => lhs; cbv
  try rfl
theorem node573_eq : Flapjack.WordAlloc.removeDeadStructural input573 value291 value1 value2 = (output573, value292, value1) := by
  rw [input573_def, output573_def]
  try (conv => lhs; cbv)
  try rfl

def value293 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29925 29921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input574_def : input574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29925 29921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29925 29921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output574_def : output574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29925 29921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output574_skip : Flapjack.WordAlloc.isSkip output574 = false := by
  rw [output574_def]
  conv => lhs; cbv
  try rfl
theorem node574_eq : Flapjack.WordAlloc.removeDeadStructural input574 value292 value1 value2 = (output574, value293, value1) := by
  rw [input574_def, output574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29921 Flapjack.WordStore.heapLength)).val
theorem input575_def : input575 = (Flapjack.WordLangProgHOL.get 29921 Flapjack.WordStore.heapLength) := by
  unfold input575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29921 Flapjack.WordStore.heapLength)).val
theorem output575_def : output575 = (Flapjack.WordLangProgHOL.get 29921 Flapjack.WordStore.heapLength) := by
  unfold output575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output575_skip : Flapjack.WordAlloc.isSkip output575 = false := by
  rw [output575_def]
  conv => lhs; cbv
  try rfl
theorem node575_eq : Flapjack.WordAlloc.removeDeadStructural input575 value293 value1 value2 = (output575, value5, value1) := by
  rw [input575_def, output575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input575 input574)).val
theorem input576_def : input576 = (.seq input575 input574) := by
  unfold input576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output575 output574)).val
theorem output576_def : output576 = (.seq output575 output574) := by
  unfold output576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output576_skip : Flapjack.WordAlloc.isSkip output576 = false := by
  rw [output576_def]
  conv => lhs; cbv
  try rfl
theorem node576_eq : Flapjack.WordAlloc.removeDeadStructural input576 value292 value1 value2 = (output576, value5, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node574_eq]
  dsimp only
  rw [node575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input576 input573)).val
theorem input577_def : input577 = (.seq input576 input573) := by
  unfold input577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output576 output573)).val
theorem output577_def : output577 = (.seq output576 output573) := by
  unfold output577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output577_skip : Flapjack.WordAlloc.isSkip output577 = false := by
  rw [output577_def]
  conv => lhs; cbv
  try rfl
theorem node577_eq : Flapjack.WordAlloc.removeDeadStructural input577 value291 value1 value2 = (output577, value5, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node573_eq]
  dsimp only
  rw [node576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input577 input572)).val
theorem input578_def : input578 = (.seq input577 input572) := by
  unfold input578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output577 output572)).val
theorem output578_def : output578 = (.seq output577 output572) := by
  unfold output578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output578_skip : Flapjack.WordAlloc.isSkip output578 = false := by
  rw [output578_def]
  conv => lhs; cbv
  try rfl
theorem node578_eq : Flapjack.WordAlloc.removeDeadStructural input578 value290 value1 value2 = (output578, value5, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node572_eq]
  dsimp only
  rw [node577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input578 input571)).val
theorem input579_def : input579 = (.seq input578 input571) := by
  unfold input579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output578 output571)).val
theorem output579_def : output579 = (.seq output578 output571) := by
  unfold output579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output579_skip : Flapjack.WordAlloc.isSkip output579 = false := by
  rw [output579_def]
  conv => lhs; cbv
  try rfl
theorem node579_eq : Flapjack.WordAlloc.removeDeadStructural input579 value288 value1 value2 = (output579, value5, value1) := by
  rw [input579_def, output579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node571_eq]
  dsimp only
  rw [node578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value294 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29913 (Flapjack.WordLangAddr.addr 29917 0#64)))).val
theorem input580_def : input580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29913 (Flapjack.WordLangAddr.addr 29917 0#64))) := by
  unfold input580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29913 (Flapjack.WordLangAddr.addr 29917 0#64)))).val
theorem output580_def : output580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29913 (Flapjack.WordLangAddr.addr 29917 0#64))) := by
  unfold output580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output580_skip : Flapjack.WordAlloc.isSkip output580 = false := by
  rw [output580_def]
  conv => lhs; cbv
  try rfl
theorem node580_eq : Flapjack.WordAlloc.removeDeadStructural input580 value5 value1 value2 = (output580, value294, value1) := by
  rw [input580_def, output580_def]
  try (conv => lhs; cbv)
  try rfl

def value295 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29917, 29905)])).val
theorem input581_def : input581 = (Flapjack.WordLangProgHOL.move 0 [(29917, 29905)]) := by
  unfold input581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29917, 29905)])).val
theorem output581_def : output581 = (Flapjack.WordLangProgHOL.move 0 [(29917, 29905)]) := by
  unfold output581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output581_skip : Flapjack.WordAlloc.isSkip output581 = false := by
  rw [output581_def]
  conv => lhs; cbv
  try rfl
theorem node581_eq : Flapjack.WordAlloc.removeDeadStructural input581 value294 value1 value2 = (output581, value295, value1) := by
  rw [input581_def, output581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input581 input580)).val
theorem input582_def : input582 = (.seq input581 input580) := by
  unfold input582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output581 output580)).val
theorem output582_def : output582 = (.seq output581 output580) := by
  unfold output582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output582_skip : Flapjack.WordAlloc.isSkip output582 = false := by
  rw [output582_def]
  conv => lhs; cbv
  try rfl
theorem node582_eq : Flapjack.WordAlloc.removeDeadStructural input582 value5 value1 value2 = (output582, value295, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node580_eq]
  dsimp only
  rw [node581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value296 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29913 1873798617647539866#64))).val
theorem input583_def : input583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29913 1873798617647539866#64)) := by
  unfold input583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29913 1873798617647539866#64))).val
theorem output583_def : output583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29913 1873798617647539866#64)) := by
  unfold output583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output583_skip : Flapjack.WordAlloc.isSkip output583 = false := by
  rw [output583_def]
  conv => lhs; cbv
  try rfl
theorem node583_eq : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value296, value1) := by
  rw [input583_def, output583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29909 1873798617647539866#64))).val
theorem input584_def : input584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29909 1873798617647539866#64)) := by
  unfold input584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output584_def : output584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output584_skip : Flapjack.WordAlloc.isSkip output584 = true := by
  rw [output584_def]
  conv => lhs; cbv
  try rfl
theorem node584_eq : Flapjack.WordAlloc.removeDeadStructural input584 value296 value1 value2 = (output584, value296, value1) := by
  rw [input584_def, output584_def]
  try (conv => lhs; cbv)
  try rfl

def value297 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29905 29897 (Flapjack.WordRegImm.reg 29901))))).val
theorem input585_def : input585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29905 29897 (Flapjack.WordRegImm.reg 29901)))) := by
  unfold input585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29905 29897 (Flapjack.WordRegImm.reg 29901))))).val
theorem output585_def : output585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29905 29897 (Flapjack.WordRegImm.reg 29901)))) := by
  unfold output585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output585_skip : Flapjack.WordAlloc.isSkip output585 = false := by
  rw [output585_def]
  conv => lhs; cbv
  try rfl
theorem node585_eq : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1) := by
  rw [input585_def, output585_def]
  try (conv => lhs; cbv)
  try rfl

def value298 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29901 6840#64))).val
theorem input586_def : input586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29901 6840#64)) := by
  unfold input586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29901 6840#64))).val
theorem output586_def : output586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29901 6840#64)) := by
  unfold output586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output586_skip : Flapjack.WordAlloc.isSkip output586 = false := by
  rw [output586_def]
  conv => lhs; cbv
  try rfl
theorem node586_eq : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1) := by
  rw [input586_def, output586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input586 input585)).val
theorem input587_def : input587 = (.seq input586 input585) := by
  unfold input587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output586 output585)).val
theorem output587_def : output587 = (.seq output586 output585) := by
  unfold output587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output587_skip : Flapjack.WordAlloc.isSkip output587 = false := by
  rw [output587_def]
  conv => lhs; cbv
  try rfl
theorem node587_eq : Flapjack.WordAlloc.removeDeadStructural input587 value296 value1 value2 = (output587, value298, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node585_eq]
  dsimp only
  rw [node586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value299 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29897 (Flapjack.WordLangAddr.addr 29893 18446744073709551104#64)))).val
theorem input588_def : input588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29897 (Flapjack.WordLangAddr.addr 29893 18446744073709551104#64))) := by
  unfold input588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29897 (Flapjack.WordLangAddr.addr 29893 18446744073709551104#64)))).val
theorem output588_def : output588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29897 (Flapjack.WordLangAddr.addr 29893 18446744073709551104#64))) := by
  unfold output588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output588_skip : Flapjack.WordAlloc.isSkip output588 = false := by
  rw [output588_def]
  conv => lhs; cbv
  try rfl
theorem node588_eq : Flapjack.WordAlloc.removeDeadStructural input588 value298 value1 value2 = (output588, value299, value1) := by
  rw [input588_def, output588_def]
  try (conv => lhs; cbv)
  try rfl

def value300 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29893 29889)).val
theorem input589_def : input589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29893 29889) := by
  unfold input589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29893 29889)).val
theorem output589_def : output589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29893 29889) := by
  unfold output589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output589_skip : Flapjack.WordAlloc.isSkip output589 = false := by
  rw [output589_def]
  conv => lhs; cbv
  try rfl
theorem node589_eq : Flapjack.WordAlloc.removeDeadStructural input589 value299 value1 value2 = (output589, value300, value1) := by
  rw [input589_def, output589_def]
  try (conv => lhs; cbv)
  try rfl

def value301 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29889 29885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input590_def : input590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29889 29885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29889 29885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output590_def : output590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29889 29885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output590_skip : Flapjack.WordAlloc.isSkip output590 = false := by
  rw [output590_def]
  conv => lhs; cbv
  try rfl
theorem node590_eq : Flapjack.WordAlloc.removeDeadStructural input590 value300 value1 value2 = (output590, value301, value1) := by
  rw [input590_def, output590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29885 Flapjack.WordStore.heapLength)).val
theorem input591_def : input591 = (Flapjack.WordLangProgHOL.get 29885 Flapjack.WordStore.heapLength) := by
  unfold input591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29885 Flapjack.WordStore.heapLength)).val
theorem output591_def : output591 = (Flapjack.WordLangProgHOL.get 29885 Flapjack.WordStore.heapLength) := by
  unfold output591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output591_skip : Flapjack.WordAlloc.isSkip output591 = false := by
  rw [output591_def]
  conv => lhs; cbv
  try rfl
theorem node591_eq : Flapjack.WordAlloc.removeDeadStructural input591 value301 value1 value2 = (output591, value5, value1) := by
  rw [input591_def, output591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input591 input590)).val
theorem input592_def : input592 = (.seq input591 input590) := by
  unfold input592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output591 output590)).val
theorem output592_def : output592 = (.seq output591 output590) := by
  unfold output592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output592_skip : Flapjack.WordAlloc.isSkip output592 = false := by
  rw [output592_def]
  conv => lhs; cbv
  try rfl
theorem node592_eq : Flapjack.WordAlloc.removeDeadStructural input592 value300 value1 value2 = (output592, value5, value1) := by
  rw [input592_def, output592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  dsimp only
  rw [node591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input592 input589)).val
theorem input593_def : input593 = (.seq input592 input589) := by
  unfold input593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output592 output589)).val
theorem output593_def : output593 = (.seq output592 output589) := by
  unfold output593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output593_skip : Flapjack.WordAlloc.isSkip output593 = false := by
  rw [output593_def]
  conv => lhs; cbv
  try rfl
theorem node593_eq : Flapjack.WordAlloc.removeDeadStructural input593 value299 value1 value2 = (output593, value5, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node589_eq]
  dsimp only
  rw [node592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input593 input588)).val
theorem input594_def : input594 = (.seq input593 input588) := by
  unfold input594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output593 output588)).val
theorem output594_def : output594 = (.seq output593 output588) := by
  unfold output594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output594_skip : Flapjack.WordAlloc.isSkip output594 = false := by
  rw [output594_def]
  conv => lhs; cbv
  try rfl
theorem node594_eq : Flapjack.WordAlloc.removeDeadStructural input594 value298 value1 value2 = (output594, value5, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node588_eq]
  dsimp only
  rw [node593_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input594 input587)).val
theorem input595_def : input595 = (.seq input594 input587) := by
  unfold input595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output594 output587)).val
theorem output595_def : output595 = (.seq output594 output587) := by
  unfold output595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output595_skip : Flapjack.WordAlloc.isSkip output595 = false := by
  rw [output595_def]
  conv => lhs; cbv
  try rfl
theorem node595_eq : Flapjack.WordAlloc.removeDeadStructural input595 value296 value1 value2 = (output595, value5, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node587_eq]
  dsimp only
  rw [node594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value302 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29877 (Flapjack.WordLangAddr.addr 29881 0#64)))).val
theorem input596_def : input596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29877 (Flapjack.WordLangAddr.addr 29881 0#64))) := by
  unfold input596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29877 (Flapjack.WordLangAddr.addr 29881 0#64)))).val
theorem output596_def : output596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29877 (Flapjack.WordLangAddr.addr 29881 0#64))) := by
  unfold output596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output596_skip : Flapjack.WordAlloc.isSkip output596 = false := by
  rw [output596_def]
  conv => lhs; cbv
  try rfl
theorem node596_eq : Flapjack.WordAlloc.removeDeadStructural input596 value5 value1 value2 = (output596, value302, value1) := by
  rw [input596_def, output596_def]
  try (conv => lhs; cbv)
  try rfl

def value303 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29881, 29869)])).val
theorem input597_def : input597 = (Flapjack.WordLangProgHOL.move 0 [(29881, 29869)]) := by
  unfold input597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29881, 29869)])).val
theorem output597_def : output597 = (Flapjack.WordLangProgHOL.move 0 [(29881, 29869)]) := by
  unfold output597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output597_skip : Flapjack.WordAlloc.isSkip output597 = false := by
  rw [output597_def]
  conv => lhs; cbv
  try rfl
theorem node597_eq : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1) := by
  rw [input597_def, output597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input597 input596)).val
theorem input598_def : input598 = (.seq input597 input596) := by
  unfold input598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output597 output596)).val
theorem output598_def : output598 = (.seq output597 output596) := by
  unfold output598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output598_skip : Flapjack.WordAlloc.isSkip output598 = false := by
  rw [output598_def]
  conv => lhs; cbv
  try rfl
theorem node598_eq : Flapjack.WordAlloc.removeDeadStructural input598 value5 value1 value2 = (output598, value303, value1) := by
  rw [input598_def, output598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node596_eq]
  dsimp only
  rw [node597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value304 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29877 5412103778470702295#64))).val
theorem input599_def : input599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29877 5412103778470702295#64)) := by
  unfold input599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29877 5412103778470702295#64))).val
theorem output599_def : output599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29877 5412103778470702295#64)) := by
  unfold output599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output599_skip : Flapjack.WordAlloc.isSkip output599 = false := by
  rw [output599_def]
  conv => lhs; cbv
  try rfl
theorem node599_eq : Flapjack.WordAlloc.removeDeadStructural input599 value303 value1 value2 = (output599, value304, value1) := by
  rw [input599_def, output599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29873 5412103778470702295#64))).val
theorem input600_def : input600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29873 5412103778470702295#64)) := by
  unfold input600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output600_def : output600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output600_skip : Flapjack.WordAlloc.isSkip output600 = true := by
  rw [output600_def]
  conv => lhs; cbv
  try rfl
theorem node600_eq : Flapjack.WordAlloc.removeDeadStructural input600 value304 value1 value2 = (output600, value304, value1) := by
  rw [input600_def, output600_def]
  try (conv => lhs; cbv)
  try rfl

def value305 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29869 29861 (Flapjack.WordRegImm.reg 29865))))).val
theorem input601_def : input601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29869 29861 (Flapjack.WordRegImm.reg 29865)))) := by
  unfold input601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29869 29861 (Flapjack.WordRegImm.reg 29865))))).val
theorem output601_def : output601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29869 29861 (Flapjack.WordRegImm.reg 29865)))) := by
  unfold output601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output601_skip : Flapjack.WordAlloc.isSkip output601 = false := by
  rw [output601_def]
  conv => lhs; cbv
  try rfl
theorem node601_eq : Flapjack.WordAlloc.removeDeadStructural input601 value304 value1 value2 = (output601, value305, value1) := by
  rw [input601_def, output601_def]
  try (conv => lhs; cbv)
  try rfl

def value306 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29865 6832#64))).val
theorem input602_def : input602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29865 6832#64)) := by
  unfold input602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29865 6832#64))).val
theorem output602_def : output602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29865 6832#64)) := by
  unfold output602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output602_skip : Flapjack.WordAlloc.isSkip output602 = false := by
  rw [output602_def]
  conv => lhs; cbv
  try rfl
theorem node602_eq : Flapjack.WordAlloc.removeDeadStructural input602 value305 value1 value2 = (output602, value306, value1) := by
  rw [input602_def, output602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input602 input601)).val
theorem input603_def : input603 = (.seq input602 input601) := by
  unfold input603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output602 output601)).val
theorem output603_def : output603 = (.seq output602 output601) := by
  unfold output603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output603_skip : Flapjack.WordAlloc.isSkip output603 = false := by
  rw [output603_def]
  conv => lhs; cbv
  try rfl
theorem node603_eq : Flapjack.WordAlloc.removeDeadStructural input603 value304 value1 value2 = (output603, value306, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node601_eq]
  dsimp only
  rw [node602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value307 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29861 (Flapjack.WordLangAddr.addr 29857 18446744073709551104#64)))).val
theorem input604_def : input604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29861 (Flapjack.WordLangAddr.addr 29857 18446744073709551104#64))) := by
  unfold input604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29861 (Flapjack.WordLangAddr.addr 29857 18446744073709551104#64)))).val
theorem output604_def : output604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29861 (Flapjack.WordLangAddr.addr 29857 18446744073709551104#64))) := by
  unfold output604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output604_skip : Flapjack.WordAlloc.isSkip output604 = false := by
  rw [output604_def]
  conv => lhs; cbv
  try rfl
theorem node604_eq : Flapjack.WordAlloc.removeDeadStructural input604 value306 value1 value2 = (output604, value307, value1) := by
  rw [input604_def, output604_def]
  try (conv => lhs; cbv)
  try rfl

def value308 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29857 29853)).val
theorem input605_def : input605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29857 29853) := by
  unfold input605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29857 29853)).val
theorem output605_def : output605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29857 29853) := by
  unfold output605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output605_skip : Flapjack.WordAlloc.isSkip output605 = false := by
  rw [output605_def]
  conv => lhs; cbv
  try rfl
theorem node605_eq : Flapjack.WordAlloc.removeDeadStructural input605 value307 value1 value2 = (output605, value308, value1) := by
  rw [input605_def, output605_def]
  try (conv => lhs; cbv)
  try rfl

def value309 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29853 29849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input606_def : input606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29853 29849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29853 29849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output606_def : output606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29853 29849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output606_skip : Flapjack.WordAlloc.isSkip output606 = false := by
  rw [output606_def]
  conv => lhs; cbv
  try rfl
theorem node606_eq : Flapjack.WordAlloc.removeDeadStructural input606 value308 value1 value2 = (output606, value309, value1) := by
  rw [input606_def, output606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29849 Flapjack.WordStore.heapLength)).val
theorem input607_def : input607 = (Flapjack.WordLangProgHOL.get 29849 Flapjack.WordStore.heapLength) := by
  unfold input607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29849 Flapjack.WordStore.heapLength)).val
theorem output607_def : output607 = (Flapjack.WordLangProgHOL.get 29849 Flapjack.WordStore.heapLength) := by
  unfold output607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output607_skip : Flapjack.WordAlloc.isSkip output607 = false := by
  rw [output607_def]
  conv => lhs; cbv
  try rfl
theorem node607_eq : Flapjack.WordAlloc.removeDeadStructural input607 value309 value1 value2 = (output607, value5, value1) := by
  rw [input607_def, output607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input607 input606)).val
theorem input608_def : input608 = (.seq input607 input606) := by
  unfold input608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output607 output606)).val
theorem output608_def : output608 = (.seq output607 output606) := by
  unfold output608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output608_skip : Flapjack.WordAlloc.isSkip output608 = false := by
  rw [output608_def]
  conv => lhs; cbv
  try rfl
theorem node608_eq : Flapjack.WordAlloc.removeDeadStructural input608 value308 value1 value2 = (output608, value5, value1) := by
  rw [input608_def, output608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node606_eq]
  dsimp only
  rw [node607_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input608 input605)).val
theorem input609_def : input609 = (.seq input608 input605) := by
  unfold input609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output608 output605)).val
theorem output609_def : output609 = (.seq output608 output605) := by
  unfold output609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output609_skip : Flapjack.WordAlloc.isSkip output609 = false := by
  rw [output609_def]
  conv => lhs; cbv
  try rfl
theorem node609_eq : Flapjack.WordAlloc.removeDeadStructural input609 value307 value1 value2 = (output609, value5, value1) := by
  rw [input609_def, output609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node605_eq]
  dsimp only
  rw [node608_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input609 input604)).val
theorem input610_def : input610 = (.seq input609 input604) := by
  unfold input610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output609 output604)).val
theorem output610_def : output610 = (.seq output609 output604) := by
  unfold output610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output610_skip : Flapjack.WordAlloc.isSkip output610 = false := by
  rw [output610_def]
  conv => lhs; cbv
  try rfl
theorem node610_eq : Flapjack.WordAlloc.removeDeadStructural input610 value306 value1 value2 = (output610, value5, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node604_eq]
  dsimp only
  rw [node609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input610 input603)).val
theorem input611_def : input611 = (.seq input610 input603) := by
  unfold input611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output610 output603)).val
theorem output611_def : output611 = (.seq output610 output603) := by
  unfold output611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output611_skip : Flapjack.WordAlloc.isSkip output611 = false := by
  rw [output611_def]
  conv => lhs; cbv
  try rfl
theorem node611_eq : Flapjack.WordAlloc.removeDeadStructural input611 value304 value1 value2 = (output611, value5, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node603_eq]
  dsimp only
  rw [node610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value310 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29841 (Flapjack.WordLangAddr.addr 29845 0#64)))).val
theorem input612_def : input612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29841 (Flapjack.WordLangAddr.addr 29845 0#64))) := by
  unfold input612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29841 (Flapjack.WordLangAddr.addr 29845 0#64)))).val
theorem output612_def : output612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29841 (Flapjack.WordLangAddr.addr 29845 0#64))) := by
  unfold output612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output612_skip : Flapjack.WordAlloc.isSkip output612 = false := by
  rw [output612_def]
  conv => lhs; cbv
  try rfl
theorem node612_eq : Flapjack.WordAlloc.removeDeadStructural input612 value5 value1 value2 = (output612, value310, value1) := by
  rw [input612_def, output612_def]
  try (conv => lhs; cbv)
  try rfl

def value311 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29845, 29833)])).val
theorem input613_def : input613 = (Flapjack.WordLangProgHOL.move 0 [(29845, 29833)]) := by
  unfold input613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29845, 29833)])).val
theorem output613_def : output613 = (Flapjack.WordLangProgHOL.move 0 [(29845, 29833)]) := by
  unfold output613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output613_skip : Flapjack.WordAlloc.isSkip output613 = false := by
  rw [output613_def]
  conv => lhs; cbv
  try rfl
theorem node613_eq : Flapjack.WordAlloc.removeDeadStructural input613 value310 value1 value2 = (output613, value311, value1) := by
  rw [input613_def, output613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input613 input612)).val
theorem input614_def : input614 = (.seq input613 input612) := by
  unfold input614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output613 output612)).val
theorem output614_def : output614 = (.seq output613 output612) := by
  unfold output614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output614_skip : Flapjack.WordAlloc.isSkip output614 = false := by
  rw [output614_def]
  conv => lhs; cbv
  try rfl
theorem node614_eq : Flapjack.WordAlloc.removeDeadStructural input614 value5 value1 value2 = (output614, value311, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node612_eq]
  dsimp only
  rw [node613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value312 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29841 7239337960414712511#64))).val
theorem input615_def : input615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29841 7239337960414712511#64)) := by
  unfold input615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29841 7239337960414712511#64))).val
theorem output615_def : output615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29841 7239337960414712511#64)) := by
  unfold output615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output615_skip : Flapjack.WordAlloc.isSkip output615 = false := by
  rw [output615_def]
  conv => lhs; cbv
  try rfl
theorem node615_eq : Flapjack.WordAlloc.removeDeadStructural input615 value311 value1 value2 = (output615, value312, value1) := by
  rw [input615_def, output615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29837 7239337960414712511#64))).val
theorem input616_def : input616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29837 7239337960414712511#64)) := by
  unfold input616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output616_def : output616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output616_skip : Flapjack.WordAlloc.isSkip output616 = true := by
  rw [output616_def]
  conv => lhs; cbv
  try rfl
theorem node616_eq : Flapjack.WordAlloc.removeDeadStructural input616 value312 value1 value2 = (output616, value312, value1) := by
  rw [input616_def, output616_def]
  try (conv => lhs; cbv)
  try rfl

def value313 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29833 29825 (Flapjack.WordRegImm.reg 29829))))).val
theorem input617_def : input617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29833 29825 (Flapjack.WordRegImm.reg 29829)))) := by
  unfold input617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29833 29825 (Flapjack.WordRegImm.reg 29829))))).val
theorem output617_def : output617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29833 29825 (Flapjack.WordRegImm.reg 29829)))) := by
  unfold output617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output617_skip : Flapjack.WordAlloc.isSkip output617 = false := by
  rw [output617_def]
  conv => lhs; cbv
  try rfl
theorem node617_eq : Flapjack.WordAlloc.removeDeadStructural input617 value312 value1 value2 = (output617, value313, value1) := by
  rw [input617_def, output617_def]
  try (conv => lhs; cbv)
  try rfl

def value314 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29829 6824#64))).val
theorem input618_def : input618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29829 6824#64)) := by
  unfold input618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29829 6824#64))).val
theorem output618_def : output618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29829 6824#64)) := by
  unfold output618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output618_skip : Flapjack.WordAlloc.isSkip output618 = false := by
  rw [output618_def]
  conv => lhs; cbv
  try rfl
theorem node618_eq : Flapjack.WordAlloc.removeDeadStructural input618 value313 value1 value2 = (output618, value314, value1) := by
  rw [input618_def, output618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input618 input617)).val
theorem input619_def : input619 = (.seq input618 input617) := by
  unfold input619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output618 output617)).val
theorem output619_def : output619 = (.seq output618 output617) := by
  unfold output619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output619_skip : Flapjack.WordAlloc.isSkip output619 = false := by
  rw [output619_def]
  conv => lhs; cbv
  try rfl
theorem node619_eq : Flapjack.WordAlloc.removeDeadStructural input619 value312 value1 value2 = (output619, value314, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node617_eq]
  dsimp only
  rw [node618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value315 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29825 (Flapjack.WordLangAddr.addr 29821 18446744073709551104#64)))).val
theorem input620_def : input620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29825 (Flapjack.WordLangAddr.addr 29821 18446744073709551104#64))) := by
  unfold input620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29825 (Flapjack.WordLangAddr.addr 29821 18446744073709551104#64)))).val
theorem output620_def : output620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29825 (Flapjack.WordLangAddr.addr 29821 18446744073709551104#64))) := by
  unfold output620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output620_skip : Flapjack.WordAlloc.isSkip output620 = false := by
  rw [output620_def]
  conv => lhs; cbv
  try rfl
theorem node620_eq : Flapjack.WordAlloc.removeDeadStructural input620 value314 value1 value2 = (output620, value315, value1) := by
  rw [input620_def, output620_def]
  try (conv => lhs; cbv)
  try rfl

def value316 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29821 29817)).val
theorem input621_def : input621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29821 29817) := by
  unfold input621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29821 29817)).val
theorem output621_def : output621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29821 29817) := by
  unfold output621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output621_skip : Flapjack.WordAlloc.isSkip output621 = false := by
  rw [output621_def]
  conv => lhs; cbv
  try rfl
theorem node621_eq : Flapjack.WordAlloc.removeDeadStructural input621 value315 value1 value2 = (output621, value316, value1) := by
  rw [input621_def, output621_def]
  try (conv => lhs; cbv)
  try rfl

def value317 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29817 29813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input622_def : input622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29817 29813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29817 29813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output622_def : output622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29817 29813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output622_skip : Flapjack.WordAlloc.isSkip output622 = false := by
  rw [output622_def]
  conv => lhs; cbv
  try rfl
theorem node622_eq : Flapjack.WordAlloc.removeDeadStructural input622 value316 value1 value2 = (output622, value317, value1) := by
  rw [input622_def, output622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29813 Flapjack.WordStore.heapLength)).val
theorem input623_def : input623 = (Flapjack.WordLangProgHOL.get 29813 Flapjack.WordStore.heapLength) := by
  unfold input623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29813 Flapjack.WordStore.heapLength)).val
theorem output623_def : output623 = (Flapjack.WordLangProgHOL.get 29813 Flapjack.WordStore.heapLength) := by
  unfold output623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output623_skip : Flapjack.WordAlloc.isSkip output623 = false := by
  rw [output623_def]
  conv => lhs; cbv
  try rfl
theorem node623_eq : Flapjack.WordAlloc.removeDeadStructural input623 value317 value1 value2 = (output623, value5, value1) := by
  rw [input623_def, output623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input623 input622)).val
theorem input624_def : input624 = (.seq input623 input622) := by
  unfold input624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output623 output622)).val
theorem output624_def : output624 = (.seq output623 output622) := by
  unfold output624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output624_skip : Flapjack.WordAlloc.isSkip output624 = false := by
  rw [output624_def]
  conv => lhs; cbv
  try rfl
theorem node624_eq : Flapjack.WordAlloc.removeDeadStructural input624 value316 value1 value2 = (output624, value5, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node622_eq]
  dsimp only
  rw [node623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input624 input621)).val
theorem input625_def : input625 = (.seq input624 input621) := by
  unfold input625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output624 output621)).val
theorem output625_def : output625 = (.seq output624 output621) := by
  unfold output625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output625_skip : Flapjack.WordAlloc.isSkip output625 = false := by
  rw [output625_def]
  conv => lhs; cbv
  try rfl
theorem node625_eq : Flapjack.WordAlloc.removeDeadStructural input625 value315 value1 value2 = (output625, value5, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node621_eq]
  dsimp only
  rw [node624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input625 input620)).val
theorem input626_def : input626 = (.seq input625 input620) := by
  unfold input626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output625 output620)).val
theorem output626_def : output626 = (.seq output625 output620) := by
  unfold output626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output626_skip : Flapjack.WordAlloc.isSkip output626 = false := by
  rw [output626_def]
  conv => lhs; cbv
  try rfl
theorem node626_eq : Flapjack.WordAlloc.removeDeadStructural input626 value314 value1 value2 = (output626, value5, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node620_eq]
  dsimp only
  rw [node625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input626 input619)).val
theorem input627_def : input627 = (.seq input626 input619) := by
  unfold input627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output626 output619)).val
theorem output627_def : output627 = (.seq output626 output619) := by
  unfold output627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output627_skip : Flapjack.WordAlloc.isSkip output627 = false := by
  rw [output627_def]
  conv => lhs; cbv
  try rfl
theorem node627_eq : Flapjack.WordAlloc.removeDeadStructural input627 value312 value1 value2 = (output627, value5, value1) := by
  rw [input627_def, output627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node619_eq]
  dsimp only
  rw [node626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value318 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29805 (Flapjack.WordLangAddr.addr 29809 0#64)))).val
theorem input628_def : input628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29805 (Flapjack.WordLangAddr.addr 29809 0#64))) := by
  unfold input628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29805 (Flapjack.WordLangAddr.addr 29809 0#64)))).val
theorem output628_def : output628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29805 (Flapjack.WordLangAddr.addr 29809 0#64))) := by
  unfold output628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output628_skip : Flapjack.WordAlloc.isSkip output628 = false := by
  rw [output628_def]
  conv => lhs; cbv
  try rfl
theorem node628_eq : Flapjack.WordAlloc.removeDeadStructural input628 value5 value1 value2 = (output628, value318, value1) := by
  rw [input628_def, output628_def]
  try (conv => lhs; cbv)
  try rfl

def value319 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29809, 29797)])).val
theorem input629_def : input629 = (Flapjack.WordLangProgHOL.move 0 [(29809, 29797)]) := by
  unfold input629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29809, 29797)])).val
theorem output629_def : output629 = (Flapjack.WordLangProgHOL.move 0 [(29809, 29797)]) := by
  unfold output629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output629_skip : Flapjack.WordAlloc.isSkip output629 = false := by
  rw [output629_def]
  conv => lhs; cbv
  try rfl
theorem node629_eq : Flapjack.WordAlloc.removeDeadStructural input629 value318 value1 value2 = (output629, value319, value1) := by
  rw [input629_def, output629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input629 input628)).val
theorem input630_def : input630 = (.seq input629 input628) := by
  unfold input630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output629 output628)).val
theorem output630_def : output630 = (.seq output629 output628) := by
  unfold output630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output630_skip : Flapjack.WordAlloc.isSkip output630 = false := by
  rw [output630_def]
  conv => lhs; cbv
  try rfl
theorem node630_eq : Flapjack.WordAlloc.removeDeadStructural input630 value5 value1 value2 = (output630, value319, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node628_eq]
  dsimp only
  rw [node629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value320 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29805 7435674573564081700#64))).val
theorem input631_def : input631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29805 7435674573564081700#64)) := by
  unfold input631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29805 7435674573564081700#64))).val
theorem output631_def : output631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29805 7435674573564081700#64)) := by
  unfold output631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output631_skip : Flapjack.WordAlloc.isSkip output631 = false := by
  rw [output631_def]
  conv => lhs; cbv
  try rfl
theorem node631_eq : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value320, value1) := by
  rw [input631_def, output631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29801 7435674573564081700#64))).val
theorem input632_def : input632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29801 7435674573564081700#64)) := by
  unfold input632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output632_def : output632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output632_skip : Flapjack.WordAlloc.isSkip output632 = true := by
  rw [output632_def]
  conv => lhs; cbv
  try rfl
theorem node632_eq : Flapjack.WordAlloc.removeDeadStructural input632 value320 value1 value2 = (output632, value320, value1) := by
  rw [input632_def, output632_def]
  try (conv => lhs; cbv)
  try rfl

def value321 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29797 29789 (Flapjack.WordRegImm.reg 29793))))).val
theorem input633_def : input633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29797 29789 (Flapjack.WordRegImm.reg 29793)))) := by
  unfold input633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29797 29789 (Flapjack.WordRegImm.reg 29793))))).val
theorem output633_def : output633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29797 29789 (Flapjack.WordRegImm.reg 29793)))) := by
  unfold output633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output633_skip : Flapjack.WordAlloc.isSkip output633 = false := by
  rw [output633_def]
  conv => lhs; cbv
  try rfl
theorem node633_eq : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1) := by
  rw [input633_def, output633_def]
  try (conv => lhs; cbv)
  try rfl

def value322 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29793 6816#64))).val
theorem input634_def : input634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29793 6816#64)) := by
  unfold input634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29793 6816#64))).val
theorem output634_def : output634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29793 6816#64)) := by
  unfold output634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output634_skip : Flapjack.WordAlloc.isSkip output634 = false := by
  rw [output634_def]
  conv => lhs; cbv
  try rfl
theorem node634_eq : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1) := by
  rw [input634_def, output634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input634 input633)).val
theorem input635_def : input635 = (.seq input634 input633) := by
  unfold input635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output634 output633)).val
theorem output635_def : output635 = (.seq output634 output633) := by
  unfold output635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output635_skip : Flapjack.WordAlloc.isSkip output635 = false := by
  rw [output635_def]
  conv => lhs; cbv
  try rfl
theorem node635_eq : Flapjack.WordAlloc.removeDeadStructural input635 value320 value1 value2 = (output635, value322, value1) := by
  rw [input635_def, output635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node633_eq]
  dsimp only
  rw [node634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value323 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29789 (Flapjack.WordLangAddr.addr 29785 18446744073709551104#64)))).val
theorem input636_def : input636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29789 (Flapjack.WordLangAddr.addr 29785 18446744073709551104#64))) := by
  unfold input636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29789 (Flapjack.WordLangAddr.addr 29785 18446744073709551104#64)))).val
theorem output636_def : output636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29789 (Flapjack.WordLangAddr.addr 29785 18446744073709551104#64))) := by
  unfold output636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output636_skip : Flapjack.WordAlloc.isSkip output636 = false := by
  rw [output636_def]
  conv => lhs; cbv
  try rfl
theorem node636_eq : Flapjack.WordAlloc.removeDeadStructural input636 value322 value1 value2 = (output636, value323, value1) := by
  rw [input636_def, output636_def]
  try (conv => lhs; cbv)
  try rfl

def value324 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29785 29781)).val
theorem input637_def : input637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29785 29781) := by
  unfold input637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29785 29781)).val
theorem output637_def : output637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29785 29781) := by
  unfold output637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output637_skip : Flapjack.WordAlloc.isSkip output637 = false := by
  rw [output637_def]
  conv => lhs; cbv
  try rfl
theorem node637_eq : Flapjack.WordAlloc.removeDeadStructural input637 value323 value1 value2 = (output637, value324, value1) := by
  rw [input637_def, output637_def]
  try (conv => lhs; cbv)
  try rfl

def value325 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29781 29777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input638_def : input638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29781 29777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29781 29777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output638_def : output638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29781 29777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output638_skip : Flapjack.WordAlloc.isSkip output638 = false := by
  rw [output638_def]
  conv => lhs; cbv
  try rfl
theorem node638_eq : Flapjack.WordAlloc.removeDeadStructural input638 value324 value1 value2 = (output638, value325, value1) := by
  rw [input638_def, output638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29777 Flapjack.WordStore.heapLength)).val
theorem input639_def : input639 = (Flapjack.WordLangProgHOL.get 29777 Flapjack.WordStore.heapLength) := by
  unfold input639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29777 Flapjack.WordStore.heapLength)).val
theorem output639_def : output639 = (Flapjack.WordLangProgHOL.get 29777 Flapjack.WordStore.heapLength) := by
  unfold output639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output639_skip : Flapjack.WordAlloc.isSkip output639 = false := by
  rw [output639_def]
  conv => lhs; cbv
  try rfl
theorem node639_eq : Flapjack.WordAlloc.removeDeadStructural input639 value325 value1 value2 = (output639, value5, value1) := by
  rw [input639_def, output639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input639 input638)).val
theorem input640_def : input640 = (.seq input639 input638) := by
  unfold input640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output639 output638)).val
theorem output640_def : output640 = (.seq output639 output638) := by
  unfold output640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output640_skip : Flapjack.WordAlloc.isSkip output640 = false := by
  rw [output640_def]
  conv => lhs; cbv
  try rfl
theorem node640_eq : Flapjack.WordAlloc.removeDeadStructural input640 value324 value1 value2 = (output640, value5, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node638_eq]
  dsimp only
  rw [node639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input640 input637)).val
theorem input641_def : input641 = (.seq input640 input637) := by
  unfold input641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output640 output637)).val
theorem output641_def : output641 = (.seq output640 output637) := by
  unfold output641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output641_skip : Flapjack.WordAlloc.isSkip output641 = false := by
  rw [output641_def]
  conv => lhs; cbv
  try rfl
theorem node641_eq : Flapjack.WordAlloc.removeDeadStructural input641 value323 value1 value2 = (output641, value5, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node637_eq]
  dsimp only
  rw [node640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input641 input636)).val
theorem input642_def : input642 = (.seq input641 input636) := by
  unfold input642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output641 output636)).val
theorem output642_def : output642 = (.seq output641 output636) := by
  unfold output642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output642_skip : Flapjack.WordAlloc.isSkip output642 = false := by
  rw [output642_def]
  conv => lhs; cbv
  try rfl
theorem node642_eq : Flapjack.WordAlloc.removeDeadStructural input642 value322 value1 value2 = (output642, value5, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node636_eq]
  dsimp only
  rw [node641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input642 input635)).val
theorem input643_def : input643 = (.seq input642 input635) := by
  unfold input643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output642 output635)).val
theorem output643_def : output643 = (.seq output642 output635) := by
  unfold output643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output643_skip : Flapjack.WordAlloc.isSkip output643 = false := by
  rw [output643_def]
  conv => lhs; cbv
  try rfl
theorem node643_eq : Flapjack.WordAlloc.removeDeadStructural input643 value320 value1 value2 = (output643, value5, value1) := by
  rw [input643_def, output643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node635_eq]
  dsimp only
  rw [node642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value326 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29769 (Flapjack.WordLangAddr.addr 29773 0#64)))).val
theorem input644_def : input644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29769 (Flapjack.WordLangAddr.addr 29773 0#64))) := by
  unfold input644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29769 (Flapjack.WordLangAddr.addr 29773 0#64)))).val
theorem output644_def : output644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29769 (Flapjack.WordLangAddr.addr 29773 0#64))) := by
  unfold output644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output644_skip : Flapjack.WordAlloc.isSkip output644 = false := by
  rw [output644_def]
  conv => lhs; cbv
  try rfl
theorem node644_eq : Flapjack.WordAlloc.removeDeadStructural input644 value5 value1 value2 = (output644, value326, value1) := by
  rw [input644_def, output644_def]
  try (conv => lhs; cbv)
  try rfl

def value327 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29773, 29761)])).val
theorem input645_def : input645 = (Flapjack.WordLangProgHOL.move 0 [(29773, 29761)]) := by
  unfold input645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29773, 29761)])).val
theorem output645_def : output645 = (Flapjack.WordLangProgHOL.move 0 [(29773, 29761)]) := by
  unfold output645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output645_skip : Flapjack.WordAlloc.isSkip output645 = false := by
  rw [output645_def]
  conv => lhs; cbv
  try rfl
theorem node645_eq : Flapjack.WordAlloc.removeDeadStructural input645 value326 value1 value2 = (output645, value327, value1) := by
  rw [input645_def, output645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input645 input644)).val
theorem input646_def : input646 = (.seq input645 input644) := by
  unfold input646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output645 output644)).val
theorem output646_def : output646 = (.seq output645 output644) := by
  unfold output646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output646_skip : Flapjack.WordAlloc.isSkip output646 = false := by
  rw [output646_def]
  conv => lhs; cbv
  try rfl
theorem node646_eq : Flapjack.WordAlloc.removeDeadStructural input646 value5 value1 value2 = (output646, value327, value1) := by
  rw [input646_def, output646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node644_eq]
  dsimp only
  rw [node645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value328 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29769 2210141511517208575#64))).val
theorem input647_def : input647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29769 2210141511517208575#64)) := by
  unfold input647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29769 2210141511517208575#64))).val
theorem output647_def : output647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29769 2210141511517208575#64)) := by
  unfold output647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output647_skip : Flapjack.WordAlloc.isSkip output647 = false := by
  rw [output647_def]
  conv => lhs; cbv
  try rfl
theorem node647_eq : Flapjack.WordAlloc.removeDeadStructural input647 value327 value1 value2 = (output647, value328, value1) := by
  rw [input647_def, output647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29765 2210141511517208575#64))).val
theorem input648_def : input648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29765 2210141511517208575#64)) := by
  unfold input648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output648_def : output648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output648_skip : Flapjack.WordAlloc.isSkip output648 = true := by
  rw [output648_def]
  conv => lhs; cbv
  try rfl
theorem node648_eq : Flapjack.WordAlloc.removeDeadStructural input648 value328 value1 value2 = (output648, value328, value1) := by
  rw [input648_def, output648_def]
  try (conv => lhs; cbv)
  try rfl

def value329 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29761 29753 (Flapjack.WordRegImm.reg 29757))))).val
theorem input649_def : input649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29761 29753 (Flapjack.WordRegImm.reg 29757)))) := by
  unfold input649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29761 29753 (Flapjack.WordRegImm.reg 29757))))).val
theorem output649_def : output649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29761 29753 (Flapjack.WordRegImm.reg 29757)))) := by
  unfold output649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output649_skip : Flapjack.WordAlloc.isSkip output649 = false := by
  rw [output649_def]
  conv => lhs; cbv
  try rfl
theorem node649_eq : Flapjack.WordAlloc.removeDeadStructural input649 value328 value1 value2 = (output649, value329, value1) := by
  rw [input649_def, output649_def]
  try (conv => lhs; cbv)
  try rfl

def value330 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29757 6808#64))).val
theorem input650_def : input650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29757 6808#64)) := by
  unfold input650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29757 6808#64))).val
theorem output650_def : output650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29757 6808#64)) := by
  unfold output650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output650_skip : Flapjack.WordAlloc.isSkip output650 = false := by
  rw [output650_def]
  conv => lhs; cbv
  try rfl
theorem node650_eq : Flapjack.WordAlloc.removeDeadStructural input650 value329 value1 value2 = (output650, value330, value1) := by
  rw [input650_def, output650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input650 input649)).val
theorem input651_def : input651 = (.seq input650 input649) := by
  unfold input651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output650 output649)).val
theorem output651_def : output651 = (.seq output650 output649) := by
  unfold output651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output651_skip : Flapjack.WordAlloc.isSkip output651 = false := by
  rw [output651_def]
  conv => lhs; cbv
  try rfl
theorem node651_eq : Flapjack.WordAlloc.removeDeadStructural input651 value328 value1 value2 = (output651, value330, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node649_eq]
  dsimp only
  rw [node650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value331 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29753 (Flapjack.WordLangAddr.addr 29749 18446744073709551104#64)))).val
theorem input652_def : input652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29753 (Flapjack.WordLangAddr.addr 29749 18446744073709551104#64))) := by
  unfold input652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29753 (Flapjack.WordLangAddr.addr 29749 18446744073709551104#64)))).val
theorem output652_def : output652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29753 (Flapjack.WordLangAddr.addr 29749 18446744073709551104#64))) := by
  unfold output652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output652_skip : Flapjack.WordAlloc.isSkip output652 = false := by
  rw [output652_def]
  conv => lhs; cbv
  try rfl
theorem node652_eq : Flapjack.WordAlloc.removeDeadStructural input652 value330 value1 value2 = (output652, value331, value1) := by
  rw [input652_def, output652_def]
  try (conv => lhs; cbv)
  try rfl

def value332 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29749 29745)).val
theorem input653_def : input653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29749 29745) := by
  unfold input653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29749 29745)).val
theorem output653_def : output653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29749 29745) := by
  unfold output653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output653_skip : Flapjack.WordAlloc.isSkip output653 = false := by
  rw [output653_def]
  conv => lhs; cbv
  try rfl
theorem node653_eq : Flapjack.WordAlloc.removeDeadStructural input653 value331 value1 value2 = (output653, value332, value1) := by
  rw [input653_def, output653_def]
  try (conv => lhs; cbv)
  try rfl

def value333 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29745 29741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input654_def : input654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29745 29741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29745 29741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output654_def : output654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29745 29741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output654_skip : Flapjack.WordAlloc.isSkip output654 = false := by
  rw [output654_def]
  conv => lhs; cbv
  try rfl
theorem node654_eq : Flapjack.WordAlloc.removeDeadStructural input654 value332 value1 value2 = (output654, value333, value1) := by
  rw [input654_def, output654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29741 Flapjack.WordStore.heapLength)).val
theorem input655_def : input655 = (Flapjack.WordLangProgHOL.get 29741 Flapjack.WordStore.heapLength) := by
  unfold input655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29741 Flapjack.WordStore.heapLength)).val
theorem output655_def : output655 = (Flapjack.WordLangProgHOL.get 29741 Flapjack.WordStore.heapLength) := by
  unfold output655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output655_skip : Flapjack.WordAlloc.isSkip output655 = false := by
  rw [output655_def]
  conv => lhs; cbv
  try rfl
theorem node655_eq : Flapjack.WordAlloc.removeDeadStructural input655 value333 value1 value2 = (output655, value5, value1) := by
  rw [input655_def, output655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input655 input654)).val
theorem input656_def : input656 = (.seq input655 input654) := by
  unfold input656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output655 output654)).val
theorem output656_def : output656 = (.seq output655 output654) := by
  unfold output656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output656_skip : Flapjack.WordAlloc.isSkip output656 = false := by
  rw [output656_def]
  conv => lhs; cbv
  try rfl
theorem node656_eq : Flapjack.WordAlloc.removeDeadStructural input656 value332 value1 value2 = (output656, value5, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node654_eq]
  dsimp only
  rw [node655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input656 input653)).val
theorem input657_def : input657 = (.seq input656 input653) := by
  unfold input657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output656 output653)).val
theorem output657_def : output657 = (.seq output656 output653) := by
  unfold output657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output657_skip : Flapjack.WordAlloc.isSkip output657 = false := by
  rw [output657_def]
  conv => lhs; cbv
  try rfl
theorem node657_eq : Flapjack.WordAlloc.removeDeadStructural input657 value331 value1 value2 = (output657, value5, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node653_eq]
  dsimp only
  rw [node656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input657 input652)).val
theorem input658_def : input658 = (.seq input657 input652) := by
  unfold input658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output657 output652)).val
theorem output658_def : output658 = (.seq output657 output652) := by
  unfold output658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output658_skip : Flapjack.WordAlloc.isSkip output658 = false := by
  rw [output658_def]
  conv => lhs; cbv
  try rfl
theorem node658_eq : Flapjack.WordAlloc.removeDeadStructural input658 value330 value1 value2 = (output658, value5, value1) := by
  rw [input658_def, output658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node652_eq]
  dsimp only
  rw [node657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input658 input651)).val
theorem input659_def : input659 = (.seq input658 input651) := by
  unfold input659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output658 output651)).val
theorem output659_def : output659 = (.seq output658 output651) := by
  unfold output659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output659_skip : Flapjack.WordAlloc.isSkip output659 = false := by
  rw [output659_def]
  conv => lhs; cbv
  try rfl
theorem node659_eq : Flapjack.WordAlloc.removeDeadStructural input659 value328 value1 value2 = (output659, value5, value1) := by
  rw [input659_def, output659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node651_eq]
  dsimp only
  rw [node658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value334 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29733 (Flapjack.WordLangAddr.addr 29737 0#64)))).val
theorem input660_def : input660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29733 (Flapjack.WordLangAddr.addr 29737 0#64))) := by
  unfold input660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29733 (Flapjack.WordLangAddr.addr 29737 0#64)))).val
theorem output660_def : output660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29733 (Flapjack.WordLangAddr.addr 29737 0#64))) := by
  unfold output660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output660_skip : Flapjack.WordAlloc.isSkip output660 = false := by
  rw [output660_def]
  conv => lhs; cbv
  try rfl
theorem node660_eq : Flapjack.WordAlloc.removeDeadStructural input660 value5 value1 value2 = (output660, value334, value1) := by
  rw [input660_def, output660_def]
  try (conv => lhs; cbv)
  try rfl

def value335 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29737, 29725)])).val
theorem input661_def : input661 = (Flapjack.WordLangProgHOL.move 0 [(29737, 29725)]) := by
  unfold input661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29737, 29725)])).val
theorem output661_def : output661 = (Flapjack.WordLangProgHOL.move 0 [(29737, 29725)]) := by
  unfold output661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output661_skip : Flapjack.WordAlloc.isSkip output661 = false := by
  rw [output661_def]
  conv => lhs; cbv
  try rfl
theorem node661_eq : Flapjack.WordAlloc.removeDeadStructural input661 value334 value1 value2 = (output661, value335, value1) := by
  rw [input661_def, output661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input661 input660)).val
theorem input662_def : input662 = (.seq input661 input660) := by
  unfold input662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output661 output660)).val
theorem output662_def : output662 = (.seq output661 output660) := by
  unfold output662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output662_skip : Flapjack.WordAlloc.isSkip output662 = false := by
  rw [output662_def]
  conv => lhs; cbv
  try rfl
theorem node662_eq : Flapjack.WordAlloc.removeDeadStructural input662 value5 value1 value2 = (output662, value335, value1) := by
  rw [input662_def, output662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node660_eq]
  dsimp only
  rw [node661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value336 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29733 13402431016077863163#64))).val
theorem input663_def : input663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29733 13402431016077863163#64)) := by
  unfold input663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29733 13402431016077863163#64))).val
theorem output663_def : output663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29733 13402431016077863163#64)) := by
  unfold output663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output663_skip : Flapjack.WordAlloc.isSkip output663 = false := by
  rw [output663_def]
  conv => lhs; cbv
  try rfl
theorem node663_eq : Flapjack.WordAlloc.removeDeadStructural input663 value335 value1 value2 = (output663, value336, value1) := by
  rw [input663_def, output663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29729 13402431016077863163#64))).val
theorem input664_def : input664 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29729 13402431016077863163#64)) := by
  unfold input664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output664_def : output664 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output664_skip : Flapjack.WordAlloc.isSkip output664 = true := by
  rw [output664_def]
  conv => lhs; cbv
  try rfl
theorem node664_eq : Flapjack.WordAlloc.removeDeadStructural input664 value336 value1 value2 = (output664, value336, value1) := by
  rw [input664_def, output664_def]
  try (conv => lhs; cbv)
  try rfl

def value337 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29725 29717 (Flapjack.WordRegImm.reg 29721))))).val
theorem input665_def : input665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29725 29717 (Flapjack.WordRegImm.reg 29721)))) := by
  unfold input665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29725 29717 (Flapjack.WordRegImm.reg 29721))))).val
theorem output665_def : output665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29725 29717 (Flapjack.WordRegImm.reg 29721)))) := by
  unfold output665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output665_skip : Flapjack.WordAlloc.isSkip output665 = false := by
  rw [output665_def]
  conv => lhs; cbv
  try rfl
theorem node665_eq : Flapjack.WordAlloc.removeDeadStructural input665 value336 value1 value2 = (output665, value337, value1) := by
  rw [input665_def, output665_def]
  try (conv => lhs; cbv)
  try rfl

def value338 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29721 6800#64))).val
theorem input666_def : input666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29721 6800#64)) := by
  unfold input666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29721 6800#64))).val
theorem output666_def : output666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29721 6800#64)) := by
  unfold output666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output666_skip : Flapjack.WordAlloc.isSkip output666 = false := by
  rw [output666_def]
  conv => lhs; cbv
  try rfl
theorem node666_eq : Flapjack.WordAlloc.removeDeadStructural input666 value337 value1 value2 = (output666, value338, value1) := by
  rw [input666_def, output666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input666 input665)).val
theorem input667_def : input667 = (.seq input666 input665) := by
  unfold input667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output666 output665)).val
theorem output667_def : output667 = (.seq output666 output665) := by
  unfold output667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output667_skip : Flapjack.WordAlloc.isSkip output667 = false := by
  rw [output667_def]
  conv => lhs; cbv
  try rfl
theorem node667_eq : Flapjack.WordAlloc.removeDeadStructural input667 value336 value1 value2 = (output667, value338, value1) := by
  rw [input667_def, output667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  dsimp only
  rw [node666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value339 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29717 (Flapjack.WordLangAddr.addr 29713 18446744073709551104#64)))).val
theorem input668_def : input668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29717 (Flapjack.WordLangAddr.addr 29713 18446744073709551104#64))) := by
  unfold input668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29717 (Flapjack.WordLangAddr.addr 29713 18446744073709551104#64)))).val
theorem output668_def : output668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29717 (Flapjack.WordLangAddr.addr 29713 18446744073709551104#64))) := by
  unfold output668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output668_skip : Flapjack.WordAlloc.isSkip output668 = false := by
  rw [output668_def]
  conv => lhs; cbv
  try rfl
theorem node668_eq : Flapjack.WordAlloc.removeDeadStructural input668 value338 value1 value2 = (output668, value339, value1) := by
  rw [input668_def, output668_def]
  try (conv => lhs; cbv)
  try rfl

def value340 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29713 29709)).val
theorem input669_def : input669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29713 29709) := by
  unfold input669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29713 29709)).val
theorem output669_def : output669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29713 29709) := by
  unfold output669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output669_skip : Flapjack.WordAlloc.isSkip output669 = false := by
  rw [output669_def]
  conv => lhs; cbv
  try rfl
theorem node669_eq : Flapjack.WordAlloc.removeDeadStructural input669 value339 value1 value2 = (output669, value340, value1) := by
  rw [input669_def, output669_def]
  try (conv => lhs; cbv)
  try rfl

def value341 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29709 29705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input670_def : input670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29709 29705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29709 29705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output670_def : output670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29709 29705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output670_skip : Flapjack.WordAlloc.isSkip output670 = false := by
  rw [output670_def]
  conv => lhs; cbv
  try rfl
theorem node670_eq : Flapjack.WordAlloc.removeDeadStructural input670 value340 value1 value2 = (output670, value341, value1) := by
  rw [input670_def, output670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29705 Flapjack.WordStore.heapLength)).val
theorem input671_def : input671 = (Flapjack.WordLangProgHOL.get 29705 Flapjack.WordStore.heapLength) := by
  unfold input671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29705 Flapjack.WordStore.heapLength)).val
theorem output671_def : output671 = (Flapjack.WordLangProgHOL.get 29705 Flapjack.WordStore.heapLength) := by
  unfold output671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output671_skip : Flapjack.WordAlloc.isSkip output671 = false := by
  rw [output671_def]
  conv => lhs; cbv
  try rfl
theorem node671_eq : Flapjack.WordAlloc.removeDeadStructural input671 value341 value1 value2 = (output671, value5, value1) := by
  rw [input671_def, output671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input671 input670)).val
theorem input672_def : input672 = (.seq input671 input670) := by
  unfold input672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output671 output670)).val
theorem output672_def : output672 = (.seq output671 output670) := by
  unfold output672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output672_skip : Flapjack.WordAlloc.isSkip output672 = false := by
  rw [output672_def]
  conv => lhs; cbv
  try rfl
theorem node672_eq : Flapjack.WordAlloc.removeDeadStructural input672 value340 value1 value2 = (output672, value5, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node670_eq]
  dsimp only
  rw [node671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input672 input669)).val
theorem input673_def : input673 = (.seq input672 input669) := by
  unfold input673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output672 output669)).val
theorem output673_def : output673 = (.seq output672 output669) := by
  unfold output673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output673_skip : Flapjack.WordAlloc.isSkip output673 = false := by
  rw [output673_def]
  conv => lhs; cbv
  try rfl
theorem node673_eq : Flapjack.WordAlloc.removeDeadStructural input673 value339 value1 value2 = (output673, value5, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  dsimp only
  rw [node672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input673 input668)).val
theorem input674_def : input674 = (.seq input673 input668) := by
  unfold input674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output673 output668)).val
theorem output674_def : output674 = (.seq output673 output668) := by
  unfold output674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output674_skip : Flapjack.WordAlloc.isSkip output674 = false := by
  rw [output674_def]
  conv => lhs; cbv
  try rfl
theorem node674_eq : Flapjack.WordAlloc.removeDeadStructural input674 value338 value1 value2 = (output674, value5, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node668_eq]
  dsimp only
  rw [node673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input674 input667)).val
theorem input675_def : input675 = (.seq input674 input667) := by
  unfold input675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output674 output667)).val
theorem output675_def : output675 = (.seq output674 output667) := by
  unfold output675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output675_skip : Flapjack.WordAlloc.isSkip output675 = false := by
  rw [output675_def]
  conv => lhs; cbv
  try rfl
theorem node675_eq : Flapjack.WordAlloc.removeDeadStructural input675 value336 value1 value2 = (output675, value5, value1) := by
  rw [input675_def, output675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node667_eq]
  dsimp only
  rw [node674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value342 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29697 (Flapjack.WordLangAddr.addr 29701 0#64)))).val
theorem input676_def : input676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29697 (Flapjack.WordLangAddr.addr 29701 0#64))) := by
  unfold input676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29697 (Flapjack.WordLangAddr.addr 29701 0#64)))).val
theorem output676_def : output676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29697 (Flapjack.WordLangAddr.addr 29701 0#64))) := by
  unfold output676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output676_skip : Flapjack.WordAlloc.isSkip output676 = false := by
  rw [output676_def]
  conv => lhs; cbv
  try rfl
theorem node676_eq : Flapjack.WordAlloc.removeDeadStructural input676 value5 value1 value2 = (output676, value342, value1) := by
  rw [input676_def, output676_def]
  try (conv => lhs; cbv)
  try rfl

def value343 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29701, 29689)])).val
theorem input677_def : input677 = (Flapjack.WordLangProgHOL.move 0 [(29701, 29689)]) := by
  unfold input677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29701, 29689)])).val
theorem output677_def : output677 = (Flapjack.WordLangProgHOL.move 0 [(29701, 29689)]) := by
  unfold output677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output677_skip : Flapjack.WordAlloc.isSkip output677 = false := by
  rw [output677_def]
  conv => lhs; cbv
  try rfl
theorem node677_eq : Flapjack.WordAlloc.removeDeadStructural input677 value342 value1 value2 = (output677, value343, value1) := by
  rw [input677_def, output677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input677 input676)).val
theorem input678_def : input678 = (.seq input677 input676) := by
  unfold input678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output677 output676)).val
theorem output678_def : output678 = (.seq output677 output676) := by
  unfold output678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output678_skip : Flapjack.WordAlloc.isSkip output678 = false := by
  rw [output678_def]
  conv => lhs; cbv
  try rfl
theorem node678_eq : Flapjack.WordAlloc.removeDeadStructural input678 value5 value1 value2 = (output678, value343, value1) := by
  rw [input678_def, output678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node676_eq]
  dsimp only
  rw [node677_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value344 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29697 1873798617647539866#64))).val
theorem input679_def : input679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29697 1873798617647539866#64)) := by
  unfold input679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29697 1873798617647539866#64))).val
theorem output679_def : output679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29697 1873798617647539866#64)) := by
  unfold output679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output679_skip : Flapjack.WordAlloc.isSkip output679 = false := by
  rw [output679_def]
  conv => lhs; cbv
  try rfl
theorem node679_eq : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value344, value1) := by
  rw [input679_def, output679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29693 1873798617647539866#64))).val
theorem input680_def : input680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29693 1873798617647539866#64)) := by
  unfold input680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output680_def : output680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output680_skip : Flapjack.WordAlloc.isSkip output680 = true := by
  rw [output680_def]
  conv => lhs; cbv
  try rfl
theorem node680_eq : Flapjack.WordAlloc.removeDeadStructural input680 value344 value1 value2 = (output680, value344, value1) := by
  rw [input680_def, output680_def]
  try (conv => lhs; cbv)
  try rfl

def value345 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29689 29681 (Flapjack.WordRegImm.reg 29685))))).val
theorem input681_def : input681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29689 29681 (Flapjack.WordRegImm.reg 29685)))) := by
  unfold input681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29689 29681 (Flapjack.WordRegImm.reg 29685))))).val
theorem output681_def : output681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29689 29681 (Flapjack.WordRegImm.reg 29685)))) := by
  unfold output681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output681_skip : Flapjack.WordAlloc.isSkip output681 = false := by
  rw [output681_def]
  conv => lhs; cbv
  try rfl
theorem node681_eq : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1) := by
  rw [input681_def, output681_def]
  try (conv => lhs; cbv)
  try rfl

def value346 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29685 6792#64))).val
theorem input682_def : input682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29685 6792#64)) := by
  unfold input682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29685 6792#64))).val
theorem output682_def : output682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29685 6792#64)) := by
  unfold output682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output682_skip : Flapjack.WordAlloc.isSkip output682 = false := by
  rw [output682_def]
  conv => lhs; cbv
  try rfl
theorem node682_eq : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1) := by
  rw [input682_def, output682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input682 input681)).val
theorem input683_def : input683 = (.seq input682 input681) := by
  unfold input683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output682 output681)).val
theorem output683_def : output683 = (.seq output682 output681) := by
  unfold output683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output683_skip : Flapjack.WordAlloc.isSkip output683 = false := by
  rw [output683_def]
  conv => lhs; cbv
  try rfl
theorem node683_eq : Flapjack.WordAlloc.removeDeadStructural input683 value344 value1 value2 = (output683, value346, value1) := by
  rw [input683_def, output683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node681_eq]
  dsimp only
  rw [node682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value347 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29681 (Flapjack.WordLangAddr.addr 29677 18446744073709551104#64)))).val
theorem input684_def : input684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29681 (Flapjack.WordLangAddr.addr 29677 18446744073709551104#64))) := by
  unfold input684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29681 (Flapjack.WordLangAddr.addr 29677 18446744073709551104#64)))).val
theorem output684_def : output684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29681 (Flapjack.WordLangAddr.addr 29677 18446744073709551104#64))) := by
  unfold output684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output684_skip : Flapjack.WordAlloc.isSkip output684 = false := by
  rw [output684_def]
  conv => lhs; cbv
  try rfl
theorem node684_eq : Flapjack.WordAlloc.removeDeadStructural input684 value346 value1 value2 = (output684, value347, value1) := by
  rw [input684_def, output684_def]
  try (conv => lhs; cbv)
  try rfl

def value348 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29677 29673)).val
theorem input685_def : input685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29677 29673) := by
  unfold input685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29677 29673)).val
theorem output685_def : output685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29677 29673) := by
  unfold output685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output685_skip : Flapjack.WordAlloc.isSkip output685 = false := by
  rw [output685_def]
  conv => lhs; cbv
  try rfl
theorem node685_eq : Flapjack.WordAlloc.removeDeadStructural input685 value347 value1 value2 = (output685, value348, value1) := by
  rw [input685_def, output685_def]
  try (conv => lhs; cbv)
  try rfl

def value349 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29673 29669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input686_def : input686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29673 29669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29673 29669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output686_def : output686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29673 29669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output686_skip : Flapjack.WordAlloc.isSkip output686 = false := by
  rw [output686_def]
  conv => lhs; cbv
  try rfl
theorem node686_eq : Flapjack.WordAlloc.removeDeadStructural input686 value348 value1 value2 = (output686, value349, value1) := by
  rw [input686_def, output686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29669 Flapjack.WordStore.heapLength)).val
theorem input687_def : input687 = (Flapjack.WordLangProgHOL.get 29669 Flapjack.WordStore.heapLength) := by
  unfold input687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29669 Flapjack.WordStore.heapLength)).val
theorem output687_def : output687 = (Flapjack.WordLangProgHOL.get 29669 Flapjack.WordStore.heapLength) := by
  unfold output687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output687_skip : Flapjack.WordAlloc.isSkip output687 = false := by
  rw [output687_def]
  conv => lhs; cbv
  try rfl
theorem node687_eq : Flapjack.WordAlloc.removeDeadStructural input687 value349 value1 value2 = (output687, value5, value1) := by
  rw [input687_def, output687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input687 input686)).val
theorem input688_def : input688 = (.seq input687 input686) := by
  unfold input688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output687 output686)).val
theorem output688_def : output688 = (.seq output687 output686) := by
  unfold output688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output688_skip : Flapjack.WordAlloc.isSkip output688 = false := by
  rw [output688_def]
  conv => lhs; cbv
  try rfl
theorem node688_eq : Flapjack.WordAlloc.removeDeadStructural input688 value348 value1 value2 = (output688, value5, value1) := by
  rw [input688_def, output688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node686_eq]
  dsimp only
  rw [node687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input688 input685)).val
theorem input689_def : input689 = (.seq input688 input685) := by
  unfold input689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output688 output685)).val
theorem output689_def : output689 = (.seq output688 output685) := by
  unfold output689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output689_skip : Flapjack.WordAlloc.isSkip output689 = false := by
  rw [output689_def]
  conv => lhs; cbv
  try rfl
theorem node689_eq : Flapjack.WordAlloc.removeDeadStructural input689 value347 value1 value2 = (output689, value5, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node685_eq]
  dsimp only
  rw [node688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input689 input684)).val
theorem input690_def : input690 = (.seq input689 input684) := by
  unfold input690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output689 output684)).val
theorem output690_def : output690 = (.seq output689 output684) := by
  unfold output690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output690_skip : Flapjack.WordAlloc.isSkip output690 = false := by
  rw [output690_def]
  conv => lhs; cbv
  try rfl
theorem node690_eq : Flapjack.WordAlloc.removeDeadStructural input690 value346 value1 value2 = (output690, value5, value1) := by
  rw [input690_def, output690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node684_eq]
  dsimp only
  rw [node689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input690 input683)).val
theorem input691_def : input691 = (.seq input690 input683) := by
  unfold input691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output690 output683)).val
theorem output691_def : output691 = (.seq output690 output683) := by
  unfold output691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output691_skip : Flapjack.WordAlloc.isSkip output691 = false := by
  rw [output691_def]
  conv => lhs; cbv
  try rfl
theorem node691_eq : Flapjack.WordAlloc.removeDeadStructural input691 value344 value1 value2 = (output691, value5, value1) := by
  rw [input691_def, output691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node683_eq]
  dsimp only
  rw [node690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value350 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29661 (Flapjack.WordLangAddr.addr 29665 0#64)))).val
theorem input692_def : input692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29661 (Flapjack.WordLangAddr.addr 29665 0#64))) := by
  unfold input692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29661 (Flapjack.WordLangAddr.addr 29665 0#64)))).val
theorem output692_def : output692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29661 (Flapjack.WordLangAddr.addr 29665 0#64))) := by
  unfold output692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output692_skip : Flapjack.WordAlloc.isSkip output692 = false := by
  rw [output692_def]
  conv => lhs; cbv
  try rfl
theorem node692_eq : Flapjack.WordAlloc.removeDeadStructural input692 value5 value1 value2 = (output692, value350, value1) := by
  rw [input692_def, output692_def]
  try (conv => lhs; cbv)
  try rfl

def value351 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29665, 29653)])).val
theorem input693_def : input693 = (Flapjack.WordLangProgHOL.move 0 [(29665, 29653)]) := by
  unfold input693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29665, 29653)])).val
theorem output693_def : output693 = (Flapjack.WordLangProgHOL.move 0 [(29665, 29653)]) := by
  unfold output693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output693_skip : Flapjack.WordAlloc.isSkip output693 = false := by
  rw [output693_def]
  conv => lhs; cbv
  try rfl
theorem node693_eq : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1) := by
  rw [input693_def, output693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input693 input692)).val
theorem input694_def : input694 = (.seq input693 input692) := by
  unfold input694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output693 output692)).val
theorem output694_def : output694 = (.seq output693 output692) := by
  unfold output694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output694_skip : Flapjack.WordAlloc.isSkip output694 = false := by
  rw [output694_def]
  conv => lhs; cbv
  try rfl
theorem node694_eq : Flapjack.WordAlloc.removeDeadStructural input694 value5 value1 value2 = (output694, value351, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  dsimp only
  rw [node693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value352 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29661 5412103778470702295#64))).val
theorem input695_def : input695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29661 5412103778470702295#64)) := by
  unfold input695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29661 5412103778470702295#64))).val
theorem output695_def : output695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29661 5412103778470702295#64)) := by
  unfold output695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output695_skip : Flapjack.WordAlloc.isSkip output695 = false := by
  rw [output695_def]
  conv => lhs; cbv
  try rfl
theorem node695_eq : Flapjack.WordAlloc.removeDeadStructural input695 value351 value1 value2 = (output695, value352, value1) := by
  rw [input695_def, output695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29657 5412103778470702295#64))).val
theorem input696_def : input696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29657 5412103778470702295#64)) := by
  unfold input696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output696_def : output696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output696_skip : Flapjack.WordAlloc.isSkip output696 = true := by
  rw [output696_def]
  conv => lhs; cbv
  try rfl
theorem node696_eq : Flapjack.WordAlloc.removeDeadStructural input696 value352 value1 value2 = (output696, value352, value1) := by
  rw [input696_def, output696_def]
  try (conv => lhs; cbv)
  try rfl

def value353 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29653 29645 (Flapjack.WordRegImm.reg 29649))))).val
theorem input697_def : input697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29653 29645 (Flapjack.WordRegImm.reg 29649)))) := by
  unfold input697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29653 29645 (Flapjack.WordRegImm.reg 29649))))).val
theorem output697_def : output697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29653 29645 (Flapjack.WordRegImm.reg 29649)))) := by
  unfold output697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output697_skip : Flapjack.WordAlloc.isSkip output697 = false := by
  rw [output697_def]
  conv => lhs; cbv
  try rfl
theorem node697_eq : Flapjack.WordAlloc.removeDeadStructural input697 value352 value1 value2 = (output697, value353, value1) := by
  rw [input697_def, output697_def]
  try (conv => lhs; cbv)
  try rfl

def value354 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29649 6784#64))).val
theorem input698_def : input698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29649 6784#64)) := by
  unfold input698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29649 6784#64))).val
theorem output698_def : output698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29649 6784#64)) := by
  unfold output698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output698_skip : Flapjack.WordAlloc.isSkip output698 = false := by
  rw [output698_def]
  conv => lhs; cbv
  try rfl
theorem node698_eq : Flapjack.WordAlloc.removeDeadStructural input698 value353 value1 value2 = (output698, value354, value1) := by
  rw [input698_def, output698_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input698 input697)).val
theorem input699_def : input699 = (.seq input698 input697) := by
  unfold input699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output698 output697)).val
theorem output699_def : output699 = (.seq output698 output697) := by
  unfold output699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output699_skip : Flapjack.WordAlloc.isSkip output699 = false := by
  rw [output699_def]
  conv => lhs; cbv
  try rfl
theorem node699_eq : Flapjack.WordAlloc.removeDeadStructural input699 value352 value1 value2 = (output699, value354, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node697_eq]
  dsimp only
  rw [node698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value355 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29645 (Flapjack.WordLangAddr.addr 29641 18446744073709551104#64)))).val
theorem input700_def : input700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29645 (Flapjack.WordLangAddr.addr 29641 18446744073709551104#64))) := by
  unfold input700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29645 (Flapjack.WordLangAddr.addr 29641 18446744073709551104#64)))).val
theorem output700_def : output700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29645 (Flapjack.WordLangAddr.addr 29641 18446744073709551104#64))) := by
  unfold output700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output700_skip : Flapjack.WordAlloc.isSkip output700 = false := by
  rw [output700_def]
  conv => lhs; cbv
  try rfl
theorem node700_eq : Flapjack.WordAlloc.removeDeadStructural input700 value354 value1 value2 = (output700, value355, value1) := by
  rw [input700_def, output700_def]
  try (conv => lhs; cbv)
  try rfl

def value356 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29641 29637)).val
theorem input701_def : input701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29641 29637) := by
  unfold input701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29641 29637)).val
theorem output701_def : output701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29641 29637) := by
  unfold output701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output701_skip : Flapjack.WordAlloc.isSkip output701 = false := by
  rw [output701_def]
  conv => lhs; cbv
  try rfl
theorem node701_eq : Flapjack.WordAlloc.removeDeadStructural input701 value355 value1 value2 = (output701, value356, value1) := by
  rw [input701_def, output701_def]
  try (conv => lhs; cbv)
  try rfl

def value357 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29637 29633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input702_def : input702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29637 29633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29637 29633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output702_def : output702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29637 29633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output702_skip : Flapjack.WordAlloc.isSkip output702 = false := by
  rw [output702_def]
  conv => lhs; cbv
  try rfl
theorem node702_eq : Flapjack.WordAlloc.removeDeadStructural input702 value356 value1 value2 = (output702, value357, value1) := by
  rw [input702_def, output702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29633 Flapjack.WordStore.heapLength)).val
theorem input703_def : input703 = (Flapjack.WordLangProgHOL.get 29633 Flapjack.WordStore.heapLength) := by
  unfold input703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29633 Flapjack.WordStore.heapLength)).val
theorem output703_def : output703 = (Flapjack.WordLangProgHOL.get 29633 Flapjack.WordStore.heapLength) := by
  unfold output703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output703_skip : Flapjack.WordAlloc.isSkip output703 = false := by
  rw [output703_def]
  conv => lhs; cbv
  try rfl
theorem node703_eq : Flapjack.WordAlloc.removeDeadStructural input703 value357 value1 value2 = (output703, value5, value1) := by
  rw [input703_def, output703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input703 input702)).val
theorem input704_def : input704 = (.seq input703 input702) := by
  unfold input704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output703 output702)).val
theorem output704_def : output704 = (.seq output703 output702) := by
  unfold output704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output704_skip : Flapjack.WordAlloc.isSkip output704 = false := by
  rw [output704_def]
  conv => lhs; cbv
  try rfl
theorem node704_eq : Flapjack.WordAlloc.removeDeadStructural input704 value356 value1 value2 = (output704, value5, value1) := by
  rw [input704_def, output704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  dsimp only
  rw [node703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input704 input701)).val
theorem input705_def : input705 = (.seq input704 input701) := by
  unfold input705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output704 output701)).val
theorem output705_def : output705 = (.seq output704 output701) := by
  unfold output705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output705_skip : Flapjack.WordAlloc.isSkip output705 = false := by
  rw [output705_def]
  conv => lhs; cbv
  try rfl
theorem node705_eq : Flapjack.WordAlloc.removeDeadStructural input705 value355 value1 value2 = (output705, value5, value1) := by
  rw [input705_def, output705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node701_eq]
  dsimp only
  rw [node704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input705 input700)).val
theorem input706_def : input706 = (.seq input705 input700) := by
  unfold input706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output705 output700)).val
theorem output706_def : output706 = (.seq output705 output700) := by
  unfold output706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output706_skip : Flapjack.WordAlloc.isSkip output706 = false := by
  rw [output706_def]
  conv => lhs; cbv
  try rfl
theorem node706_eq : Flapjack.WordAlloc.removeDeadStructural input706 value354 value1 value2 = (output706, value5, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node700_eq]
  dsimp only
  rw [node705_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input706 input699)).val
theorem input707_def : input707 = (.seq input706 input699) := by
  unfold input707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output706 output699)).val
theorem output707_def : output707 = (.seq output706 output699) := by
  unfold output707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output707_skip : Flapjack.WordAlloc.isSkip output707 = false := by
  rw [output707_def]
  conv => lhs; cbv
  try rfl
theorem node707_eq : Flapjack.WordAlloc.removeDeadStructural input707 value352 value1 value2 = (output707, value5, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node699_eq]
  dsimp only
  rw [node706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value358 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29625 (Flapjack.WordLangAddr.addr 29629 0#64)))).val
theorem input708_def : input708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29625 (Flapjack.WordLangAddr.addr 29629 0#64))) := by
  unfold input708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29625 (Flapjack.WordLangAddr.addr 29629 0#64)))).val
theorem output708_def : output708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29625 (Flapjack.WordLangAddr.addr 29629 0#64))) := by
  unfold output708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output708_skip : Flapjack.WordAlloc.isSkip output708 = false := by
  rw [output708_def]
  conv => lhs; cbv
  try rfl
theorem node708_eq : Flapjack.WordAlloc.removeDeadStructural input708 value5 value1 value2 = (output708, value358, value1) := by
  rw [input708_def, output708_def]
  try (conv => lhs; cbv)
  try rfl

def value359 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29629, 29617)])).val
theorem input709_def : input709 = (Flapjack.WordLangProgHOL.move 0 [(29629, 29617)]) := by
  unfold input709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29629, 29617)])).val
theorem output709_def : output709 = (Flapjack.WordLangProgHOL.move 0 [(29629, 29617)]) := by
  unfold output709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output709_skip : Flapjack.WordAlloc.isSkip output709 = false := by
  rw [output709_def]
  conv => lhs; cbv
  try rfl
theorem node709_eq : Flapjack.WordAlloc.removeDeadStructural input709 value358 value1 value2 = (output709, value359, value1) := by
  rw [input709_def, output709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input709 input708)).val
theorem input710_def : input710 = (.seq input709 input708) := by
  unfold input710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output709 output708)).val
theorem output710_def : output710 = (.seq output709 output708) := by
  unfold output710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output710_skip : Flapjack.WordAlloc.isSkip output710 = false := by
  rw [output710_def]
  conv => lhs; cbv
  try rfl
theorem node710_eq : Flapjack.WordAlloc.removeDeadStructural input710 value5 value1 value2 = (output710, value359, value1) := by
  rw [input710_def, output710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node708_eq]
  dsimp only
  rw [node709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value360 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29625 7239337960414712511#64))).val
theorem input711_def : input711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29625 7239337960414712511#64)) := by
  unfold input711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29625 7239337960414712511#64))).val
theorem output711_def : output711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29625 7239337960414712511#64)) := by
  unfold output711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output711_skip : Flapjack.WordAlloc.isSkip output711 = false := by
  rw [output711_def]
  conv => lhs; cbv
  try rfl
theorem node711_eq : Flapjack.WordAlloc.removeDeadStructural input711 value359 value1 value2 = (output711, value360, value1) := by
  rw [input711_def, output711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29621 7239337960414712511#64))).val
theorem input712_def : input712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29621 7239337960414712511#64)) := by
  unfold input712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output712_def : output712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output712_skip : Flapjack.WordAlloc.isSkip output712 = true := by
  rw [output712_def]
  conv => lhs; cbv
  try rfl
theorem node712_eq : Flapjack.WordAlloc.removeDeadStructural input712 value360 value1 value2 = (output712, value360, value1) := by
  rw [input712_def, output712_def]
  try (conv => lhs; cbv)
  try rfl

def value361 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29617 29609 (Flapjack.WordRegImm.reg 29613))))).val
theorem input713_def : input713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29617 29609 (Flapjack.WordRegImm.reg 29613)))) := by
  unfold input713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29617 29609 (Flapjack.WordRegImm.reg 29613))))).val
theorem output713_def : output713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29617 29609 (Flapjack.WordRegImm.reg 29613)))) := by
  unfold output713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output713_skip : Flapjack.WordAlloc.isSkip output713 = false := by
  rw [output713_def]
  conv => lhs; cbv
  try rfl
theorem node713_eq : Flapjack.WordAlloc.removeDeadStructural input713 value360 value1 value2 = (output713, value361, value1) := by
  rw [input713_def, output713_def]
  try (conv => lhs; cbv)
  try rfl

def value362 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29613 6776#64))).val
theorem input714_def : input714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29613 6776#64)) := by
  unfold input714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29613 6776#64))).val
theorem output714_def : output714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29613 6776#64)) := by
  unfold output714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output714_skip : Flapjack.WordAlloc.isSkip output714 = false := by
  rw [output714_def]
  conv => lhs; cbv
  try rfl
theorem node714_eq : Flapjack.WordAlloc.removeDeadStructural input714 value361 value1 value2 = (output714, value362, value1) := by
  rw [input714_def, output714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input714 input713)).val
theorem input715_def : input715 = (.seq input714 input713) := by
  unfold input715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output714 output713)).val
theorem output715_def : output715 = (.seq output714 output713) := by
  unfold output715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output715_skip : Flapjack.WordAlloc.isSkip output715 = false := by
  rw [output715_def]
  conv => lhs; cbv
  try rfl
theorem node715_eq : Flapjack.WordAlloc.removeDeadStructural input715 value360 value1 value2 = (output715, value362, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node713_eq]
  dsimp only
  rw [node714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value363 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29609 (Flapjack.WordLangAddr.addr 29605 18446744073709551104#64)))).val
theorem input716_def : input716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29609 (Flapjack.WordLangAddr.addr 29605 18446744073709551104#64))) := by
  unfold input716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29609 (Flapjack.WordLangAddr.addr 29605 18446744073709551104#64)))).val
theorem output716_def : output716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29609 (Flapjack.WordLangAddr.addr 29605 18446744073709551104#64))) := by
  unfold output716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output716_skip : Flapjack.WordAlloc.isSkip output716 = false := by
  rw [output716_def]
  conv => lhs; cbv
  try rfl
theorem node716_eq : Flapjack.WordAlloc.removeDeadStructural input716 value362 value1 value2 = (output716, value363, value1) := by
  rw [input716_def, output716_def]
  try (conv => lhs; cbv)
  try rfl

def value364 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29605 29601)).val
theorem input717_def : input717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29605 29601) := by
  unfold input717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29605 29601)).val
theorem output717_def : output717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29605 29601) := by
  unfold output717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output717_skip : Flapjack.WordAlloc.isSkip output717 = false := by
  rw [output717_def]
  conv => lhs; cbv
  try rfl
theorem node717_eq : Flapjack.WordAlloc.removeDeadStructural input717 value363 value1 value2 = (output717, value364, value1) := by
  rw [input717_def, output717_def]
  try (conv => lhs; cbv)
  try rfl

def value365 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29601 29597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input718_def : input718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29601 29597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29601 29597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output718_def : output718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29601 29597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output718_skip : Flapjack.WordAlloc.isSkip output718 = false := by
  rw [output718_def]
  conv => lhs; cbv
  try rfl
theorem node718_eq : Flapjack.WordAlloc.removeDeadStructural input718 value364 value1 value2 = (output718, value365, value1) := by
  rw [input718_def, output718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29597 Flapjack.WordStore.heapLength)).val
theorem input719_def : input719 = (Flapjack.WordLangProgHOL.get 29597 Flapjack.WordStore.heapLength) := by
  unfold input719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29597 Flapjack.WordStore.heapLength)).val
theorem output719_def : output719 = (Flapjack.WordLangProgHOL.get 29597 Flapjack.WordStore.heapLength) := by
  unfold output719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output719_skip : Flapjack.WordAlloc.isSkip output719 = false := by
  rw [output719_def]
  conv => lhs; cbv
  try rfl
theorem node719_eq : Flapjack.WordAlloc.removeDeadStructural input719 value365 value1 value2 = (output719, value5, value1) := by
  rw [input719_def, output719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input719 input718)).val
theorem input720_def : input720 = (.seq input719 input718) := by
  unfold input720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output719 output718)).val
theorem output720_def : output720 = (.seq output719 output718) := by
  unfold output720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output720_skip : Flapjack.WordAlloc.isSkip output720 = false := by
  rw [output720_def]
  conv => lhs; cbv
  try rfl
theorem node720_eq : Flapjack.WordAlloc.removeDeadStructural input720 value364 value1 value2 = (output720, value5, value1) := by
  rw [input720_def, output720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node718_eq]
  dsimp only
  rw [node719_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input720 input717)).val
theorem input721_def : input721 = (.seq input720 input717) := by
  unfold input721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output720 output717)).val
theorem output721_def : output721 = (.seq output720 output717) := by
  unfold output721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output721_skip : Flapjack.WordAlloc.isSkip output721 = false := by
  rw [output721_def]
  conv => lhs; cbv
  try rfl
theorem node721_eq : Flapjack.WordAlloc.removeDeadStructural input721 value363 value1 value2 = (output721, value5, value1) := by
  rw [input721_def, output721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node717_eq]
  dsimp only
  rw [node720_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input721 input716)).val
theorem input722_def : input722 = (.seq input721 input716) := by
  unfold input722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output721 output716)).val
theorem output722_def : output722 = (.seq output721 output716) := by
  unfold output722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output722_skip : Flapjack.WordAlloc.isSkip output722 = false := by
  rw [output722_def]
  conv => lhs; cbv
  try rfl
theorem node722_eq : Flapjack.WordAlloc.removeDeadStructural input722 value362 value1 value2 = (output722, value5, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node716_eq]
  dsimp only
  rw [node721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input722 input715)).val
theorem input723_def : input723 = (.seq input722 input715) := by
  unfold input723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output722 output715)).val
theorem output723_def : output723 = (.seq output722 output715) := by
  unfold output723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output723_skip : Flapjack.WordAlloc.isSkip output723 = false := by
  rw [output723_def]
  conv => lhs; cbv
  try rfl
theorem node723_eq : Flapjack.WordAlloc.removeDeadStructural input723 value360 value1 value2 = (output723, value5, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node715_eq]
  dsimp only
  rw [node722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value366 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29589 (Flapjack.WordLangAddr.addr 29593 0#64)))).val
theorem input724_def : input724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29589 (Flapjack.WordLangAddr.addr 29593 0#64))) := by
  unfold input724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29589 (Flapjack.WordLangAddr.addr 29593 0#64)))).val
theorem output724_def : output724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29589 (Flapjack.WordLangAddr.addr 29593 0#64))) := by
  unfold output724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output724_skip : Flapjack.WordAlloc.isSkip output724 = false := by
  rw [output724_def]
  conv => lhs; cbv
  try rfl
theorem node724_eq : Flapjack.WordAlloc.removeDeadStructural input724 value5 value1 value2 = (output724, value366, value1) := by
  rw [input724_def, output724_def]
  try (conv => lhs; cbv)
  try rfl

def value367 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29593, 29581)])).val
theorem input725_def : input725 = (Flapjack.WordLangProgHOL.move 0 [(29593, 29581)]) := by
  unfold input725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29593, 29581)])).val
theorem output725_def : output725 = (Flapjack.WordLangProgHOL.move 0 [(29593, 29581)]) := by
  unfold output725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output725_skip : Flapjack.WordAlloc.isSkip output725 = false := by
  rw [output725_def]
  conv => lhs; cbv
  try rfl
theorem node725_eq : Flapjack.WordAlloc.removeDeadStructural input725 value366 value1 value2 = (output725, value367, value1) := by
  rw [input725_def, output725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input725 input724)).val
theorem input726_def : input726 = (.seq input725 input724) := by
  unfold input726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output725 output724)).val
theorem output726_def : output726 = (.seq output725 output724) := by
  unfold output726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output726_skip : Flapjack.WordAlloc.isSkip output726 = false := by
  rw [output726_def]
  conv => lhs; cbv
  try rfl
theorem node726_eq : Flapjack.WordAlloc.removeDeadStructural input726 value5 value1 value2 = (output726, value367, value1) := by
  rw [input726_def, output726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node724_eq]
  dsimp only
  rw [node725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value368 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29589 7435674573564081700#64))).val
theorem input727_def : input727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29589 7435674573564081700#64)) := by
  unfold input727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29589 7435674573564081700#64))).val
theorem output727_def : output727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29589 7435674573564081700#64)) := by
  unfold output727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output727_skip : Flapjack.WordAlloc.isSkip output727 = false := by
  rw [output727_def]
  conv => lhs; cbv
  try rfl
theorem node727_eq : Flapjack.WordAlloc.removeDeadStructural input727 value367 value1 value2 = (output727, value368, value1) := by
  rw [input727_def, output727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29585 7435674573564081700#64))).val
theorem input728_def : input728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29585 7435674573564081700#64)) := by
  unfold input728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output728_def : output728 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output728_skip : Flapjack.WordAlloc.isSkip output728 = true := by
  rw [output728_def]
  conv => lhs; cbv
  try rfl
theorem node728_eq : Flapjack.WordAlloc.removeDeadStructural input728 value368 value1 value2 = (output728, value368, value1) := by
  rw [input728_def, output728_def]
  try (conv => lhs; cbv)
  try rfl

def value369 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29581 29573 (Flapjack.WordRegImm.reg 29577))))).val
theorem input729_def : input729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29581 29573 (Flapjack.WordRegImm.reg 29577)))) := by
  unfold input729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29581 29573 (Flapjack.WordRegImm.reg 29577))))).val
theorem output729_def : output729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29581 29573 (Flapjack.WordRegImm.reg 29577)))) := by
  unfold output729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output729_skip : Flapjack.WordAlloc.isSkip output729 = false := by
  rw [output729_def]
  conv => lhs; cbv
  try rfl
theorem node729_eq : Flapjack.WordAlloc.removeDeadStructural input729 value368 value1 value2 = (output729, value369, value1) := by
  rw [input729_def, output729_def]
  try (conv => lhs; cbv)
  try rfl

def value370 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29577 6768#64))).val
theorem input730_def : input730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29577 6768#64)) := by
  unfold input730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29577 6768#64))).val
theorem output730_def : output730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29577 6768#64)) := by
  unfold output730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output730_skip : Flapjack.WordAlloc.isSkip output730 = false := by
  rw [output730_def]
  conv => lhs; cbv
  try rfl
theorem node730_eq : Flapjack.WordAlloc.removeDeadStructural input730 value369 value1 value2 = (output730, value370, value1) := by
  rw [input730_def, output730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input730 input729)).val
theorem input731_def : input731 = (.seq input730 input729) := by
  unfold input731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output730 output729)).val
theorem output731_def : output731 = (.seq output730 output729) := by
  unfold output731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output731_skip : Flapjack.WordAlloc.isSkip output731 = false := by
  rw [output731_def]
  conv => lhs; cbv
  try rfl
theorem node731_eq : Flapjack.WordAlloc.removeDeadStructural input731 value368 value1 value2 = (output731, value370, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node729_eq]
  dsimp only
  rw [node730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value371 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29573 (Flapjack.WordLangAddr.addr 29569 18446744073709551104#64)))).val
theorem input732_def : input732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29573 (Flapjack.WordLangAddr.addr 29569 18446744073709551104#64))) := by
  unfold input732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29573 (Flapjack.WordLangAddr.addr 29569 18446744073709551104#64)))).val
theorem output732_def : output732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29573 (Flapjack.WordLangAddr.addr 29569 18446744073709551104#64))) := by
  unfold output732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output732_skip : Flapjack.WordAlloc.isSkip output732 = false := by
  rw [output732_def]
  conv => lhs; cbv
  try rfl
theorem node732_eq : Flapjack.WordAlloc.removeDeadStructural input732 value370 value1 value2 = (output732, value371, value1) := by
  rw [input732_def, output732_def]
  try (conv => lhs; cbv)
  try rfl

def value372 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29569 29565)).val
theorem input733_def : input733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29569 29565) := by
  unfold input733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29569 29565)).val
theorem output733_def : output733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29569 29565) := by
  unfold output733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output733_skip : Flapjack.WordAlloc.isSkip output733 = false := by
  rw [output733_def]
  conv => lhs; cbv
  try rfl
theorem node733_eq : Flapjack.WordAlloc.removeDeadStructural input733 value371 value1 value2 = (output733, value372, value1) := by
  rw [input733_def, output733_def]
  try (conv => lhs; cbv)
  try rfl

def value373 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29565 29561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input734_def : input734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29565 29561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29565 29561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output734_def : output734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29565 29561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output734_skip : Flapjack.WordAlloc.isSkip output734 = false := by
  rw [output734_def]
  conv => lhs; cbv
  try rfl
theorem node734_eq : Flapjack.WordAlloc.removeDeadStructural input734 value372 value1 value2 = (output734, value373, value1) := by
  rw [input734_def, output734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29561 Flapjack.WordStore.heapLength)).val
theorem input735_def : input735 = (Flapjack.WordLangProgHOL.get 29561 Flapjack.WordStore.heapLength) := by
  unfold input735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29561 Flapjack.WordStore.heapLength)).val
theorem output735_def : output735 = (Flapjack.WordLangProgHOL.get 29561 Flapjack.WordStore.heapLength) := by
  unfold output735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output735_skip : Flapjack.WordAlloc.isSkip output735 = false := by
  rw [output735_def]
  conv => lhs; cbv
  try rfl
theorem node735_eq : Flapjack.WordAlloc.removeDeadStructural input735 value373 value1 value2 = (output735, value5, value1) := by
  rw [input735_def, output735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input735 input734)).val
theorem input736_def : input736 = (.seq input735 input734) := by
  unfold input736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output735 output734)).val
theorem output736_def : output736 = (.seq output735 output734) := by
  unfold output736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output736_skip : Flapjack.WordAlloc.isSkip output736 = false := by
  rw [output736_def]
  conv => lhs; cbv
  try rfl
theorem node736_eq : Flapjack.WordAlloc.removeDeadStructural input736 value372 value1 value2 = (output736, value5, value1) := by
  rw [input736_def, output736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node734_eq]
  dsimp only
  rw [node735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input736 input733)).val
theorem input737_def : input737 = (.seq input736 input733) := by
  unfold input737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output736 output733)).val
theorem output737_def : output737 = (.seq output736 output733) := by
  unfold output737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output737_skip : Flapjack.WordAlloc.isSkip output737 = false := by
  rw [output737_def]
  conv => lhs; cbv
  try rfl
theorem node737_eq : Flapjack.WordAlloc.removeDeadStructural input737 value371 value1 value2 = (output737, value5, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node733_eq]
  dsimp only
  rw [node736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input737 input732)).val
theorem input738_def : input738 = (.seq input737 input732) := by
  unfold input738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output737 output732)).val
theorem output738_def : output738 = (.seq output737 output732) := by
  unfold output738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output738_skip : Flapjack.WordAlloc.isSkip output738 = false := by
  rw [output738_def]
  conv => lhs; cbv
  try rfl
theorem node738_eq : Flapjack.WordAlloc.removeDeadStructural input738 value370 value1 value2 = (output738, value5, value1) := by
  rw [input738_def, output738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node732_eq]
  dsimp only
  rw [node737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input738 input731)).val
theorem input739_def : input739 = (.seq input738 input731) := by
  unfold input739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output738 output731)).val
theorem output739_def : output739 = (.seq output738 output731) := by
  unfold output739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output739_skip : Flapjack.WordAlloc.isSkip output739 = false := by
  rw [output739_def]
  conv => lhs; cbv
  try rfl
theorem node739_eq : Flapjack.WordAlloc.removeDeadStructural input739 value368 value1 value2 = (output739, value5, value1) := by
  rw [input739_def, output739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node731_eq]
  dsimp only
  rw [node738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value374 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29553 (Flapjack.WordLangAddr.addr 29557 0#64)))).val
theorem input740_def : input740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29553 (Flapjack.WordLangAddr.addr 29557 0#64))) := by
  unfold input740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29553 (Flapjack.WordLangAddr.addr 29557 0#64)))).val
theorem output740_def : output740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29553 (Flapjack.WordLangAddr.addr 29557 0#64))) := by
  unfold output740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output740_skip : Flapjack.WordAlloc.isSkip output740 = false := by
  rw [output740_def]
  conv => lhs; cbv
  try rfl
theorem node740_eq : Flapjack.WordAlloc.removeDeadStructural input740 value5 value1 value2 = (output740, value374, value1) := by
  rw [input740_def, output740_def]
  try (conv => lhs; cbv)
  try rfl

def value375 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29557, 29545)])).val
theorem input741_def : input741 = (Flapjack.WordLangProgHOL.move 0 [(29557, 29545)]) := by
  unfold input741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29557, 29545)])).val
theorem output741_def : output741 = (Flapjack.WordLangProgHOL.move 0 [(29557, 29545)]) := by
  unfold output741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output741_skip : Flapjack.WordAlloc.isSkip output741 = false := by
  rw [output741_def]
  conv => lhs; cbv
  try rfl
theorem node741_eq : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1) := by
  rw [input741_def, output741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input741 input740)).val
theorem input742_def : input742 = (.seq input741 input740) := by
  unfold input742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output741 output740)).val
theorem output742_def : output742 = (.seq output741 output740) := by
  unfold output742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output742_skip : Flapjack.WordAlloc.isSkip output742 = false := by
  rw [output742_def]
  conv => lhs; cbv
  try rfl
theorem node742_eq : Flapjack.WordAlloc.removeDeadStructural input742 value5 value1 value2 = (output742, value375, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  dsimp only
  rw [node741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value376 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29553 2210141511517208575#64))).val
theorem input743_def : input743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29553 2210141511517208575#64)) := by
  unfold input743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29553 2210141511517208575#64))).val
theorem output743_def : output743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29553 2210141511517208575#64)) := by
  unfold output743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output743_skip : Flapjack.WordAlloc.isSkip output743 = false := by
  rw [output743_def]
  conv => lhs; cbv
  try rfl
theorem node743_eq : Flapjack.WordAlloc.removeDeadStructural input743 value375 value1 value2 = (output743, value376, value1) := by
  rw [input743_def, output743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29549 2210141511517208575#64))).val
theorem input744_def : input744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29549 2210141511517208575#64)) := by
  unfold input744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output744_def : output744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output744_skip : Flapjack.WordAlloc.isSkip output744 = true := by
  rw [output744_def]
  conv => lhs; cbv
  try rfl
theorem node744_eq : Flapjack.WordAlloc.removeDeadStructural input744 value376 value1 value2 = (output744, value376, value1) := by
  rw [input744_def, output744_def]
  try (conv => lhs; cbv)
  try rfl

def value377 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29545 29537 (Flapjack.WordRegImm.reg 29541))))).val
theorem input745_def : input745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29545 29537 (Flapjack.WordRegImm.reg 29541)))) := by
  unfold input745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29545 29537 (Flapjack.WordRegImm.reg 29541))))).val
theorem output745_def : output745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29545 29537 (Flapjack.WordRegImm.reg 29541)))) := by
  unfold output745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output745_skip : Flapjack.WordAlloc.isSkip output745 = false := by
  rw [output745_def]
  conv => lhs; cbv
  try rfl
theorem node745_eq : Flapjack.WordAlloc.removeDeadStructural input745 value376 value1 value2 = (output745, value377, value1) := by
  rw [input745_def, output745_def]
  try (conv => lhs; cbv)
  try rfl

def value378 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29541 6760#64))).val
theorem input746_def : input746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29541 6760#64)) := by
  unfold input746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29541 6760#64))).val
theorem output746_def : output746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29541 6760#64)) := by
  unfold output746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output746_skip : Flapjack.WordAlloc.isSkip output746 = false := by
  rw [output746_def]
  conv => lhs; cbv
  try rfl
theorem node746_eq : Flapjack.WordAlloc.removeDeadStructural input746 value377 value1 value2 = (output746, value378, value1) := by
  rw [input746_def, output746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input746 input745)).val
theorem input747_def : input747 = (.seq input746 input745) := by
  unfold input747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output746 output745)).val
theorem output747_def : output747 = (.seq output746 output745) := by
  unfold output747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output747_skip : Flapjack.WordAlloc.isSkip output747 = false := by
  rw [output747_def]
  conv => lhs; cbv
  try rfl
theorem node747_eq : Flapjack.WordAlloc.removeDeadStructural input747 value376 value1 value2 = (output747, value378, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node745_eq]
  dsimp only
  rw [node746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value379 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29537 (Flapjack.WordLangAddr.addr 29533 18446744073709551104#64)))).val
theorem input748_def : input748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29537 (Flapjack.WordLangAddr.addr 29533 18446744073709551104#64))) := by
  unfold input748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29537 (Flapjack.WordLangAddr.addr 29533 18446744073709551104#64)))).val
theorem output748_def : output748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29537 (Flapjack.WordLangAddr.addr 29533 18446744073709551104#64))) := by
  unfold output748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output748_skip : Flapjack.WordAlloc.isSkip output748 = false := by
  rw [output748_def]
  conv => lhs; cbv
  try rfl
theorem node748_eq : Flapjack.WordAlloc.removeDeadStructural input748 value378 value1 value2 = (output748, value379, value1) := by
  rw [input748_def, output748_def]
  try (conv => lhs; cbv)
  try rfl

def value380 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29533 29529)).val
theorem input749_def : input749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29533 29529) := by
  unfold input749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29533 29529)).val
theorem output749_def : output749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29533 29529) := by
  unfold output749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output749_skip : Flapjack.WordAlloc.isSkip output749 = false := by
  rw [output749_def]
  conv => lhs; cbv
  try rfl
theorem node749_eq : Flapjack.WordAlloc.removeDeadStructural input749 value379 value1 value2 = (output749, value380, value1) := by
  rw [input749_def, output749_def]
  try (conv => lhs; cbv)
  try rfl

def value381 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29529 29525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input750_def : input750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29529 29525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29529 29525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output750_def : output750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29529 29525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output750_skip : Flapjack.WordAlloc.isSkip output750 = false := by
  rw [output750_def]
  conv => lhs; cbv
  try rfl
theorem node750_eq : Flapjack.WordAlloc.removeDeadStructural input750 value380 value1 value2 = (output750, value381, value1) := by
  rw [input750_def, output750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29525 Flapjack.WordStore.heapLength)).val
theorem input751_def : input751 = (Flapjack.WordLangProgHOL.get 29525 Flapjack.WordStore.heapLength) := by
  unfold input751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29525 Flapjack.WordStore.heapLength)).val
theorem output751_def : output751 = (Flapjack.WordLangProgHOL.get 29525 Flapjack.WordStore.heapLength) := by
  unfold output751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output751_skip : Flapjack.WordAlloc.isSkip output751 = false := by
  rw [output751_def]
  conv => lhs; cbv
  try rfl
theorem node751_eq : Flapjack.WordAlloc.removeDeadStructural input751 value381 value1 value2 = (output751, value5, value1) := by
  rw [input751_def, output751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input751 input750)).val
theorem input752_def : input752 = (.seq input751 input750) := by
  unfold input752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output751 output750)).val
theorem output752_def : output752 = (.seq output751 output750) := by
  unfold output752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output752_skip : Flapjack.WordAlloc.isSkip output752 = false := by
  rw [output752_def]
  conv => lhs; cbv
  try rfl
theorem node752_eq : Flapjack.WordAlloc.removeDeadStructural input752 value380 value1 value2 = (output752, value5, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node750_eq]
  dsimp only
  rw [node751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input752 input749)).val
theorem input753_def : input753 = (.seq input752 input749) := by
  unfold input753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output752 output749)).val
theorem output753_def : output753 = (.seq output752 output749) := by
  unfold output753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output753_skip : Flapjack.WordAlloc.isSkip output753 = false := by
  rw [output753_def]
  conv => lhs; cbv
  try rfl
theorem node753_eq : Flapjack.WordAlloc.removeDeadStructural input753 value379 value1 value2 = (output753, value5, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node749_eq]
  dsimp only
  rw [node752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input753 input748)).val
theorem input754_def : input754 = (.seq input753 input748) := by
  unfold input754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output753 output748)).val
theorem output754_def : output754 = (.seq output753 output748) := by
  unfold output754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output754_skip : Flapjack.WordAlloc.isSkip output754 = false := by
  rw [output754_def]
  conv => lhs; cbv
  try rfl
theorem node754_eq : Flapjack.WordAlloc.removeDeadStructural input754 value378 value1 value2 = (output754, value5, value1) := by
  rw [input754_def, output754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node748_eq]
  dsimp only
  rw [node753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input754 input747)).val
theorem input755_def : input755 = (.seq input754 input747) := by
  unfold input755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output754 output747)).val
theorem output755_def : output755 = (.seq output754 output747) := by
  unfold output755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output755_skip : Flapjack.WordAlloc.isSkip output755 = false := by
  rw [output755_def]
  conv => lhs; cbv
  try rfl
theorem node755_eq : Flapjack.WordAlloc.removeDeadStructural input755 value376 value1 value2 = (output755, value5, value1) := by
  rw [input755_def, output755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node747_eq]
  dsimp only
  rw [node754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value382 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29517 (Flapjack.WordLangAddr.addr 29521 0#64)))).val
theorem input756_def : input756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29517 (Flapjack.WordLangAddr.addr 29521 0#64))) := by
  unfold input756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29517 (Flapjack.WordLangAddr.addr 29521 0#64)))).val
theorem output756_def : output756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 29517 (Flapjack.WordLangAddr.addr 29521 0#64))) := by
  unfold output756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output756_skip : Flapjack.WordAlloc.isSkip output756 = false := by
  rw [output756_def]
  conv => lhs; cbv
  try rfl
theorem node756_eq : Flapjack.WordAlloc.removeDeadStructural input756 value5 value1 value2 = (output756, value382, value1) := by
  rw [input756_def, output756_def]
  try (conv => lhs; cbv)
  try rfl

def value383 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29521, 29509)])).val
theorem input757_def : input757 = (Flapjack.WordLangProgHOL.move 0 [(29521, 29509)]) := by
  unfold input757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(29521, 29509)])).val
theorem output757_def : output757 = (Flapjack.WordLangProgHOL.move 0 [(29521, 29509)]) := by
  unfold output757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output757_skip : Flapjack.WordAlloc.isSkip output757 = false := by
  rw [output757_def]
  conv => lhs; cbv
  try rfl
theorem node757_eq : Flapjack.WordAlloc.removeDeadStructural input757 value382 value1 value2 = (output757, value383, value1) := by
  rw [input757_def, output757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input757 input756)).val
theorem input758_def : input758 = (.seq input757 input756) := by
  unfold input758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output757 output756)).val
theorem output758_def : output758 = (.seq output757 output756) := by
  unfold output758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output758_skip : Flapjack.WordAlloc.isSkip output758 = false := by
  rw [output758_def]
  conv => lhs; cbv
  try rfl
theorem node758_eq : Flapjack.WordAlloc.removeDeadStructural input758 value5 value1 value2 = (output758, value383, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node756_eq]
  dsimp only
  rw [node757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value384 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29517 13402431016077863163#64))).val
theorem input759_def : input759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29517 13402431016077863163#64)) := by
  unfold input759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29517 13402431016077863163#64))).val
theorem output759_def : output759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29517 13402431016077863163#64)) := by
  unfold output759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output759_skip : Flapjack.WordAlloc.isSkip output759 = false := by
  rw [output759_def]
  conv => lhs; cbv
  try rfl
theorem node759_eq : Flapjack.WordAlloc.removeDeadStructural input759 value383 value1 value2 = (output759, value384, value1) := by
  rw [input759_def, output759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29513 13402431016077863163#64))).val
theorem input760_def : input760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29513 13402431016077863163#64)) := by
  unfold input760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output760_def : output760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output760_skip : Flapjack.WordAlloc.isSkip output760 = true := by
  rw [output760_def]
  conv => lhs; cbv
  try rfl
theorem node760_eq : Flapjack.WordAlloc.removeDeadStructural input760 value384 value1 value2 = (output760, value384, value1) := by
  rw [input760_def, output760_def]
  try (conv => lhs; cbv)
  try rfl

def value385 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29509 29501 (Flapjack.WordRegImm.reg 29505))))).val
theorem input761_def : input761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29509 29501 (Flapjack.WordRegImm.reg 29505)))) := by
  unfold input761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29509 29501 (Flapjack.WordRegImm.reg 29505))))).val
theorem output761_def : output761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 29509 29501 (Flapjack.WordRegImm.reg 29505)))) := by
  unfold output761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output761_skip : Flapjack.WordAlloc.isSkip output761 = false := by
  rw [output761_def]
  conv => lhs; cbv
  try rfl
theorem node761_eq : Flapjack.WordAlloc.removeDeadStructural input761 value384 value1 value2 = (output761, value385, value1) := by
  rw [input761_def, output761_def]
  try (conv => lhs; cbv)
  try rfl

def value386 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29505 6752#64))).val
theorem input762_def : input762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29505 6752#64)) := by
  unfold input762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29505 6752#64))).val
theorem output762_def : output762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29505 6752#64)) := by
  unfold output762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output762_skip : Flapjack.WordAlloc.isSkip output762 = false := by
  rw [output762_def]
  conv => lhs; cbv
  try rfl
theorem node762_eq : Flapjack.WordAlloc.removeDeadStructural input762 value385 value1 value2 = (output762, value386, value1) := by
  rw [input762_def, output762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input762 input761)).val
theorem input763_def : input763 = (.seq input762 input761) := by
  unfold input763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output762 output761)).val
theorem output763_def : output763 = (.seq output762 output761) := by
  unfold output763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output763_skip : Flapjack.WordAlloc.isSkip output763 = false := by
  rw [output763_def]
  conv => lhs; cbv
  try rfl
theorem node763_eq : Flapjack.WordAlloc.removeDeadStructural input763 value384 value1 value2 = (output763, value386, value1) := by
  rw [input763_def, output763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node761_eq]
  dsimp only
  rw [node762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value387 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29501 (Flapjack.WordLangAddr.addr 29497 18446744073709551104#64)))).val
theorem input764_def : input764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29501 (Flapjack.WordLangAddr.addr 29497 18446744073709551104#64))) := by
  unfold input764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29501 (Flapjack.WordLangAddr.addr 29497 18446744073709551104#64)))).val
theorem output764_def : output764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29501 (Flapjack.WordLangAddr.addr 29497 18446744073709551104#64))) := by
  unfold output764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output764_skip : Flapjack.WordAlloc.isSkip output764 = false := by
  rw [output764_def]
  conv => lhs; cbv
  try rfl
theorem node764_eq : Flapjack.WordAlloc.removeDeadStructural input764 value386 value1 value2 = (output764, value387, value1) := by
  rw [input764_def, output764_def]
  try (conv => lhs; cbv)
  try rfl

def value388 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29497 29493)).val
theorem input765_def : input765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29497 29493) := by
  unfold input765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29497 29493)).val
theorem output765_def : output765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29497 29493) := by
  unfold output765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output765_skip : Flapjack.WordAlloc.isSkip output765 = false := by
  rw [output765_def]
  conv => lhs; cbv
  try rfl
theorem node765_eq : Flapjack.WordAlloc.removeDeadStructural input765 value387 value1 value2 = (output765, value388, value1) := by
  rw [input765_def, output765_def]
  try (conv => lhs; cbv)
  try rfl

def value389 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29493 29489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input766_def : input766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29493 29489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29493 29489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output766_def : output766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 29493 29489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output766_skip : Flapjack.WordAlloc.isSkip output766 = false := by
  rw [output766_def]
  conv => lhs; cbv
  try rfl
theorem node766_eq : Flapjack.WordAlloc.removeDeadStructural input766 value388 value1 value2 = (output766, value389, value1) := by
  rw [input766_def, output766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29489 Flapjack.WordStore.heapLength)).val
theorem input767_def : input767 = (Flapjack.WordLangProgHOL.get 29489 Flapjack.WordStore.heapLength) := by
  unfold input767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 29489 Flapjack.WordStore.heapLength)).val
theorem output767_def : output767 = (Flapjack.WordLangProgHOL.get 29489 Flapjack.WordStore.heapLength) := by
  unfold output767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output767_skip : Flapjack.WordAlloc.isSkip output767 = false := by
  rw [output767_def]
  conv => lhs; cbv
  try rfl
theorem node767_eq : Flapjack.WordAlloc.removeDeadStructural input767 value389 value1 value2 = (output767, value5, value1) := by
  rw [input767_def, output767_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node767_eq
end InitECandidate.Proofs.DeadStages713
