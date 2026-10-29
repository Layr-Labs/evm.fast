import InitECandidate.Proofs.DeadStages713.Chunk017
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4607 input4606)).val
theorem input4608_def : input4608 = (.seq input4607 input4606) := by
  unfold input4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4607 output4606)).val
theorem output4608_def : output4608 = (.seq output4607 output4606) := by
  unfold output4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4608_skip : Flapjack.WordAlloc.isSkip output4608 = false := by
  rw [output4608_def]
  conv => lhs; cbv
  try rfl
theorem node4608_eq : Flapjack.WordAlloc.removeDeadStructural input4608 value2308 value1 value2 = (output4608, value5, value1) := by
  rw [input4608_def, output4608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4606_eq]
  dsimp only
  rw [node4607_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4608 input4605)).val
theorem input4609_def : input4609 = (.seq input4608 input4605) := by
  unfold input4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4608 output4605)).val
theorem output4609_def : output4609 = (.seq output4608 output4605) := by
  unfold output4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4609_skip : Flapjack.WordAlloc.isSkip output4609 = false := by
  rw [output4609_def]
  conv => lhs; cbv
  try rfl
theorem node4609_eq : Flapjack.WordAlloc.removeDeadStructural input4609 value2307 value1 value2 = (output4609, value5, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4605_eq]
  dsimp only
  rw [node4608_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4609 input4604)).val
theorem input4610_def : input4610 = (.seq input4609 input4604) := by
  unfold input4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4609 output4604)).val
theorem output4610_def : output4610 = (.seq output4609 output4604) := by
  unfold output4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4610_skip : Flapjack.WordAlloc.isSkip output4610 = false := by
  rw [output4610_def]
  conv => lhs; cbv
  try rfl
theorem node4610_eq : Flapjack.WordAlloc.removeDeadStructural input4610 value2306 value1 value2 = (output4610, value5, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4604_eq]
  dsimp only
  rw [node4609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4610 input4603)).val
theorem input4611_def : input4611 = (.seq input4610 input4603) := by
  unfold input4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4610 output4603)).val
theorem output4611_def : output4611 = (.seq output4610 output4603) := by
  unfold output4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4611_skip : Flapjack.WordAlloc.isSkip output4611 = false := by
  rw [output4611_def]
  conv => lhs; cbv
  try rfl
theorem node4611_eq : Flapjack.WordAlloc.removeDeadStructural input4611 value2304 value1 value2 = (output4611, value5, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4603_eq]
  dsimp only
  rw [node4610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2310 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20841 (Flapjack.WordLangAddr.addr 20845 0#64)))).val
theorem input4612_def : input4612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20841 (Flapjack.WordLangAddr.addr 20845 0#64))) := by
  unfold input4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20841 (Flapjack.WordLangAddr.addr 20845 0#64)))).val
theorem output4612_def : output4612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20841 (Flapjack.WordLangAddr.addr 20845 0#64))) := by
  unfold output4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4612_skip : Flapjack.WordAlloc.isSkip output4612 = false := by
  rw [output4612_def]
  conv => lhs; cbv
  try rfl
theorem node4612_eq : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value2310, value1) := by
  rw [input4612_def, output4612_def]
  try (conv => lhs; cbv)
  try rfl

def value2311 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20845, 20833)])).val
theorem input4613_def : input4613 = (Flapjack.WordLangProgHOL.move 0 [(20845, 20833)]) := by
  unfold input4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20845, 20833)])).val
theorem output4613_def : output4613 = (Flapjack.WordLangProgHOL.move 0 [(20845, 20833)]) := by
  unfold output4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4613_skip : Flapjack.WordAlloc.isSkip output4613 = false := by
  rw [output4613_def]
  conv => lhs; cbv
  try rfl
theorem node4613_eq : Flapjack.WordAlloc.removeDeadStructural input4613 value2310 value1 value2 = (output4613, value2311, value1) := by
  rw [input4613_def, output4613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4613 input4612)).val
theorem input4614_def : input4614 = (.seq input4613 input4612) := by
  unfold input4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4613 output4612)).val
theorem output4614_def : output4614 = (.seq output4613 output4612) := by
  unfold output4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4614_skip : Flapjack.WordAlloc.isSkip output4614 = false := by
  rw [output4614_def]
  conv => lhs; cbv
  try rfl
theorem node4614_eq : Flapjack.WordAlloc.removeDeadStructural input4614 value5 value1 value2 = (output4614, value2311, value1) := by
  rw [input4614_def, output4614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4612_eq]
  dsimp only
  rw [node4613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2312 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20841 1873798617647539866#64))).val
theorem input4615_def : input4615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20841 1873798617647539866#64)) := by
  unfold input4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20841 1873798617647539866#64))).val
theorem output4615_def : output4615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20841 1873798617647539866#64)) := by
  unfold output4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4615_skip : Flapjack.WordAlloc.isSkip output4615 = false := by
  rw [output4615_def]
  conv => lhs; cbv
  try rfl
theorem node4615_eq : Flapjack.WordAlloc.removeDeadStructural input4615 value2311 value1 value2 = (output4615, value2312, value1) := by
  rw [input4615_def, output4615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20837 1873798617647539866#64))).val
theorem input4616_def : input4616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20837 1873798617647539866#64)) := by
  unfold input4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4616_def : output4616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4616_skip : Flapjack.WordAlloc.isSkip output4616 = true := by
  rw [output4616_def]
  conv => lhs; cbv
  try rfl
theorem node4616_eq : Flapjack.WordAlloc.removeDeadStructural input4616 value2312 value1 value2 = (output4616, value2312, value1) := by
  rw [input4616_def, output4616_def]
  try (conv => lhs; cbv)
  try rfl

def value2313 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20833 20825 (Flapjack.WordRegImm.reg 20829))))).val
theorem input4617_def : input4617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20833 20825 (Flapjack.WordRegImm.reg 20829)))) := by
  unfold input4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20833 20825 (Flapjack.WordRegImm.reg 20829))))).val
theorem output4617_def : output4617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20833 20825 (Flapjack.WordRegImm.reg 20829)))) := by
  unfold output4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4617_skip : Flapjack.WordAlloc.isSkip output4617 = false := by
  rw [output4617_def]
  conv => lhs; cbv
  try rfl
theorem node4617_eq : Flapjack.WordAlloc.removeDeadStructural input4617 value2312 value1 value2 = (output4617, value2313, value1) := by
  rw [input4617_def, output4617_def]
  try (conv => lhs; cbv)
  try rfl

def value2314 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20829 4824#64))).val
theorem input4618_def : input4618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20829 4824#64)) := by
  unfold input4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20829 4824#64))).val
theorem output4618_def : output4618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20829 4824#64)) := by
  unfold output4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4618_skip : Flapjack.WordAlloc.isSkip output4618 = false := by
  rw [output4618_def]
  conv => lhs; cbv
  try rfl
theorem node4618_eq : Flapjack.WordAlloc.removeDeadStructural input4618 value2313 value1 value2 = (output4618, value2314, value1) := by
  rw [input4618_def, output4618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4618 input4617)).val
theorem input4619_def : input4619 = (.seq input4618 input4617) := by
  unfold input4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4618 output4617)).val
theorem output4619_def : output4619 = (.seq output4618 output4617) := by
  unfold output4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4619_skip : Flapjack.WordAlloc.isSkip output4619 = false := by
  rw [output4619_def]
  conv => lhs; cbv
  try rfl
theorem node4619_eq : Flapjack.WordAlloc.removeDeadStructural input4619 value2312 value1 value2 = (output4619, value2314, value1) := by
  rw [input4619_def, output4619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4617_eq]
  dsimp only
  rw [node4618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2315 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20825 (Flapjack.WordLangAddr.addr 20821 18446744073709551104#64)))).val
theorem input4620_def : input4620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20825 (Flapjack.WordLangAddr.addr 20821 18446744073709551104#64))) := by
  unfold input4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20825 (Flapjack.WordLangAddr.addr 20821 18446744073709551104#64)))).val
theorem output4620_def : output4620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20825 (Flapjack.WordLangAddr.addr 20821 18446744073709551104#64))) := by
  unfold output4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4620_skip : Flapjack.WordAlloc.isSkip output4620 = false := by
  rw [output4620_def]
  conv => lhs; cbv
  try rfl
theorem node4620_eq : Flapjack.WordAlloc.removeDeadStructural input4620 value2314 value1 value2 = (output4620, value2315, value1) := by
  rw [input4620_def, output4620_def]
  try (conv => lhs; cbv)
  try rfl

def value2316 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20821 20817)).val
theorem input4621_def : input4621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20821 20817) := by
  unfold input4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20821 20817)).val
theorem output4621_def : output4621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20821 20817) := by
  unfold output4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4621_skip : Flapjack.WordAlloc.isSkip output4621 = false := by
  rw [output4621_def]
  conv => lhs; cbv
  try rfl
theorem node4621_eq : Flapjack.WordAlloc.removeDeadStructural input4621 value2315 value1 value2 = (output4621, value2316, value1) := by
  rw [input4621_def, output4621_def]
  try (conv => lhs; cbv)
  try rfl

def value2317 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20817 20813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4622_def : input4622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20817 20813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20817 20813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4622_def : output4622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20817 20813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4622_skip : Flapjack.WordAlloc.isSkip output4622 = false := by
  rw [output4622_def]
  conv => lhs; cbv
  try rfl
theorem node4622_eq : Flapjack.WordAlloc.removeDeadStructural input4622 value2316 value1 value2 = (output4622, value2317, value1) := by
  rw [input4622_def, output4622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20813 Flapjack.WordStore.heapLength)).val
theorem input4623_def : input4623 = (Flapjack.WordLangProgHOL.get 20813 Flapjack.WordStore.heapLength) := by
  unfold input4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20813 Flapjack.WordStore.heapLength)).val
theorem output4623_def : output4623 = (Flapjack.WordLangProgHOL.get 20813 Flapjack.WordStore.heapLength) := by
  unfold output4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4623_skip : Flapjack.WordAlloc.isSkip output4623 = false := by
  rw [output4623_def]
  conv => lhs; cbv
  try rfl
theorem node4623_eq : Flapjack.WordAlloc.removeDeadStructural input4623 value2317 value1 value2 = (output4623, value5, value1) := by
  rw [input4623_def, output4623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4623 input4622)).val
theorem input4624_def : input4624 = (.seq input4623 input4622) := by
  unfold input4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4623 output4622)).val
theorem output4624_def : output4624 = (.seq output4623 output4622) := by
  unfold output4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4624_skip : Flapjack.WordAlloc.isSkip output4624 = false := by
  rw [output4624_def]
  conv => lhs; cbv
  try rfl
theorem node4624_eq : Flapjack.WordAlloc.removeDeadStructural input4624 value2316 value1 value2 = (output4624, value5, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4622_eq]
  dsimp only
  rw [node4623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4624 input4621)).val
theorem input4625_def : input4625 = (.seq input4624 input4621) := by
  unfold input4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4624 output4621)).val
theorem output4625_def : output4625 = (.seq output4624 output4621) := by
  unfold output4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4625_skip : Flapjack.WordAlloc.isSkip output4625 = false := by
  rw [output4625_def]
  conv => lhs; cbv
  try rfl
theorem node4625_eq : Flapjack.WordAlloc.removeDeadStructural input4625 value2315 value1 value2 = (output4625, value5, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4621_eq]
  dsimp only
  rw [node4624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4625 input4620)).val
theorem input4626_def : input4626 = (.seq input4625 input4620) := by
  unfold input4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4625 output4620)).val
theorem output4626_def : output4626 = (.seq output4625 output4620) := by
  unfold output4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4626_skip : Flapjack.WordAlloc.isSkip output4626 = false := by
  rw [output4626_def]
  conv => lhs; cbv
  try rfl
theorem node4626_eq : Flapjack.WordAlloc.removeDeadStructural input4626 value2314 value1 value2 = (output4626, value5, value1) := by
  rw [input4626_def, output4626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4620_eq]
  dsimp only
  rw [node4625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4626 input4619)).val
theorem input4627_def : input4627 = (.seq input4626 input4619) := by
  unfold input4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4626 output4619)).val
theorem output4627_def : output4627 = (.seq output4626 output4619) := by
  unfold output4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4627_skip : Flapjack.WordAlloc.isSkip output4627 = false := by
  rw [output4627_def]
  conv => lhs; cbv
  try rfl
theorem node4627_eq : Flapjack.WordAlloc.removeDeadStructural input4627 value2312 value1 value2 = (output4627, value5, value1) := by
  rw [input4627_def, output4627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4619_eq]
  dsimp only
  rw [node4626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2318 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20805 (Flapjack.WordLangAddr.addr 20809 0#64)))).val
theorem input4628_def : input4628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20805 (Flapjack.WordLangAddr.addr 20809 0#64))) := by
  unfold input4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20805 (Flapjack.WordLangAddr.addr 20809 0#64)))).val
theorem output4628_def : output4628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20805 (Flapjack.WordLangAddr.addr 20809 0#64))) := by
  unfold output4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4628_skip : Flapjack.WordAlloc.isSkip output4628 = false := by
  rw [output4628_def]
  conv => lhs; cbv
  try rfl
theorem node4628_eq : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value2318, value1) := by
  rw [input4628_def, output4628_def]
  try (conv => lhs; cbv)
  try rfl

def value2319 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20809, 20797)])).val
theorem input4629_def : input4629 = (Flapjack.WordLangProgHOL.move 0 [(20809, 20797)]) := by
  unfold input4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20809, 20797)])).val
theorem output4629_def : output4629 = (Flapjack.WordLangProgHOL.move 0 [(20809, 20797)]) := by
  unfold output4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4629_skip : Flapjack.WordAlloc.isSkip output4629 = false := by
  rw [output4629_def]
  conv => lhs; cbv
  try rfl
theorem node4629_eq : Flapjack.WordAlloc.removeDeadStructural input4629 value2318 value1 value2 = (output4629, value2319, value1) := by
  rw [input4629_def, output4629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4629 input4628)).val
theorem input4630_def : input4630 = (.seq input4629 input4628) := by
  unfold input4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4629 output4628)).val
theorem output4630_def : output4630 = (.seq output4629 output4628) := by
  unfold output4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4630_skip : Flapjack.WordAlloc.isSkip output4630 = false := by
  rw [output4630_def]
  conv => lhs; cbv
  try rfl
theorem node4630_eq : Flapjack.WordAlloc.removeDeadStructural input4630 value5 value1 value2 = (output4630, value2319, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4628_eq]
  dsimp only
  rw [node4629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2320 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20805 5412103778470702295#64))).val
theorem input4631_def : input4631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20805 5412103778470702295#64)) := by
  unfold input4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20805 5412103778470702295#64))).val
theorem output4631_def : output4631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20805 5412103778470702295#64)) := by
  unfold output4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4631_skip : Flapjack.WordAlloc.isSkip output4631 = false := by
  rw [output4631_def]
  conv => lhs; cbv
  try rfl
theorem node4631_eq : Flapjack.WordAlloc.removeDeadStructural input4631 value2319 value1 value2 = (output4631, value2320, value1) := by
  rw [input4631_def, output4631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20801 5412103778470702295#64))).val
theorem input4632_def : input4632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20801 5412103778470702295#64)) := by
  unfold input4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4632_def : output4632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4632_skip : Flapjack.WordAlloc.isSkip output4632 = true := by
  rw [output4632_def]
  conv => lhs; cbv
  try rfl
theorem node4632_eq : Flapjack.WordAlloc.removeDeadStructural input4632 value2320 value1 value2 = (output4632, value2320, value1) := by
  rw [input4632_def, output4632_def]
  try (conv => lhs; cbv)
  try rfl

def value2321 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20797 20789 (Flapjack.WordRegImm.reg 20793))))).val
theorem input4633_def : input4633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20797 20789 (Flapjack.WordRegImm.reg 20793)))) := by
  unfold input4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20797 20789 (Flapjack.WordRegImm.reg 20793))))).val
theorem output4633_def : output4633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20797 20789 (Flapjack.WordRegImm.reg 20793)))) := by
  unfold output4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4633_skip : Flapjack.WordAlloc.isSkip output4633 = false := by
  rw [output4633_def]
  conv => lhs; cbv
  try rfl
theorem node4633_eq : Flapjack.WordAlloc.removeDeadStructural input4633 value2320 value1 value2 = (output4633, value2321, value1) := by
  rw [input4633_def, output4633_def]
  try (conv => lhs; cbv)
  try rfl

def value2322 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20793 4816#64))).val
theorem input4634_def : input4634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20793 4816#64)) := by
  unfold input4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20793 4816#64))).val
theorem output4634_def : output4634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20793 4816#64)) := by
  unfold output4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4634_skip : Flapjack.WordAlloc.isSkip output4634 = false := by
  rw [output4634_def]
  conv => lhs; cbv
  try rfl
theorem node4634_eq : Flapjack.WordAlloc.removeDeadStructural input4634 value2321 value1 value2 = (output4634, value2322, value1) := by
  rw [input4634_def, output4634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4634 input4633)).val
theorem input4635_def : input4635 = (.seq input4634 input4633) := by
  unfold input4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4634 output4633)).val
theorem output4635_def : output4635 = (.seq output4634 output4633) := by
  unfold output4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4635_skip : Flapjack.WordAlloc.isSkip output4635 = false := by
  rw [output4635_def]
  conv => lhs; cbv
  try rfl
theorem node4635_eq : Flapjack.WordAlloc.removeDeadStructural input4635 value2320 value1 value2 = (output4635, value2322, value1) := by
  rw [input4635_def, output4635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4633_eq]
  dsimp only
  rw [node4634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2323 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20789 (Flapjack.WordLangAddr.addr 20785 18446744073709551104#64)))).val
theorem input4636_def : input4636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20789 (Flapjack.WordLangAddr.addr 20785 18446744073709551104#64))) := by
  unfold input4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20789 (Flapjack.WordLangAddr.addr 20785 18446744073709551104#64)))).val
theorem output4636_def : output4636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20789 (Flapjack.WordLangAddr.addr 20785 18446744073709551104#64))) := by
  unfold output4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4636_skip : Flapjack.WordAlloc.isSkip output4636 = false := by
  rw [output4636_def]
  conv => lhs; cbv
  try rfl
theorem node4636_eq : Flapjack.WordAlloc.removeDeadStructural input4636 value2322 value1 value2 = (output4636, value2323, value1) := by
  rw [input4636_def, output4636_def]
  try (conv => lhs; cbv)
  try rfl

def value2324 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20785 20781)).val
theorem input4637_def : input4637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20785 20781) := by
  unfold input4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20785 20781)).val
theorem output4637_def : output4637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20785 20781) := by
  unfold output4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4637_skip : Flapjack.WordAlloc.isSkip output4637 = false := by
  rw [output4637_def]
  conv => lhs; cbv
  try rfl
theorem node4637_eq : Flapjack.WordAlloc.removeDeadStructural input4637 value2323 value1 value2 = (output4637, value2324, value1) := by
  rw [input4637_def, output4637_def]
  try (conv => lhs; cbv)
  try rfl

def value2325 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20781 20777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4638_def : input4638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20781 20777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20781 20777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4638_def : output4638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20781 20777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4638_skip : Flapjack.WordAlloc.isSkip output4638 = false := by
  rw [output4638_def]
  conv => lhs; cbv
  try rfl
theorem node4638_eq : Flapjack.WordAlloc.removeDeadStructural input4638 value2324 value1 value2 = (output4638, value2325, value1) := by
  rw [input4638_def, output4638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20777 Flapjack.WordStore.heapLength)).val
theorem input4639_def : input4639 = (Flapjack.WordLangProgHOL.get 20777 Flapjack.WordStore.heapLength) := by
  unfold input4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20777 Flapjack.WordStore.heapLength)).val
theorem output4639_def : output4639 = (Flapjack.WordLangProgHOL.get 20777 Flapjack.WordStore.heapLength) := by
  unfold output4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4639_skip : Flapjack.WordAlloc.isSkip output4639 = false := by
  rw [output4639_def]
  conv => lhs; cbv
  try rfl
theorem node4639_eq : Flapjack.WordAlloc.removeDeadStructural input4639 value2325 value1 value2 = (output4639, value5, value1) := by
  rw [input4639_def, output4639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4639 input4638)).val
theorem input4640_def : input4640 = (.seq input4639 input4638) := by
  unfold input4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4639 output4638)).val
theorem output4640_def : output4640 = (.seq output4639 output4638) := by
  unfold output4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4640_skip : Flapjack.WordAlloc.isSkip output4640 = false := by
  rw [output4640_def]
  conv => lhs; cbv
  try rfl
theorem node4640_eq : Flapjack.WordAlloc.removeDeadStructural input4640 value2324 value1 value2 = (output4640, value5, value1) := by
  rw [input4640_def, output4640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4638_eq]
  dsimp only
  rw [node4639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4640 input4637)).val
theorem input4641_def : input4641 = (.seq input4640 input4637) := by
  unfold input4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4640 output4637)).val
theorem output4641_def : output4641 = (.seq output4640 output4637) := by
  unfold output4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4641_skip : Flapjack.WordAlloc.isSkip output4641 = false := by
  rw [output4641_def]
  conv => lhs; cbv
  try rfl
theorem node4641_eq : Flapjack.WordAlloc.removeDeadStructural input4641 value2323 value1 value2 = (output4641, value5, value1) := by
  rw [input4641_def, output4641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4637_eq]
  dsimp only
  rw [node4640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4641 input4636)).val
theorem input4642_def : input4642 = (.seq input4641 input4636) := by
  unfold input4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4641 output4636)).val
theorem output4642_def : output4642 = (.seq output4641 output4636) := by
  unfold output4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4642_skip : Flapjack.WordAlloc.isSkip output4642 = false := by
  rw [output4642_def]
  conv => lhs; cbv
  try rfl
theorem node4642_eq : Flapjack.WordAlloc.removeDeadStructural input4642 value2322 value1 value2 = (output4642, value5, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4636_eq]
  dsimp only
  rw [node4641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4642 input4635)).val
theorem input4643_def : input4643 = (.seq input4642 input4635) := by
  unfold input4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4642 output4635)).val
theorem output4643_def : output4643 = (.seq output4642 output4635) := by
  unfold output4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4643_skip : Flapjack.WordAlloc.isSkip output4643 = false := by
  rw [output4643_def]
  conv => lhs; cbv
  try rfl
theorem node4643_eq : Flapjack.WordAlloc.removeDeadStructural input4643 value2320 value1 value2 = (output4643, value5, value1) := by
  rw [input4643_def, output4643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4635_eq]
  dsimp only
  rw [node4642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2326 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20769 (Flapjack.WordLangAddr.addr 20773 0#64)))).val
theorem input4644_def : input4644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20769 (Flapjack.WordLangAddr.addr 20773 0#64))) := by
  unfold input4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20769 (Flapjack.WordLangAddr.addr 20773 0#64)))).val
theorem output4644_def : output4644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20769 (Flapjack.WordLangAddr.addr 20773 0#64))) := by
  unfold output4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4644_skip : Flapjack.WordAlloc.isSkip output4644 = false := by
  rw [output4644_def]
  conv => lhs; cbv
  try rfl
theorem node4644_eq : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value2326, value1) := by
  rw [input4644_def, output4644_def]
  try (conv => lhs; cbv)
  try rfl

def value2327 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20773, 20761)])).val
theorem input4645_def : input4645 = (Flapjack.WordLangProgHOL.move 0 [(20773, 20761)]) := by
  unfold input4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20773, 20761)])).val
theorem output4645_def : output4645 = (Flapjack.WordLangProgHOL.move 0 [(20773, 20761)]) := by
  unfold output4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4645_skip : Flapjack.WordAlloc.isSkip output4645 = false := by
  rw [output4645_def]
  conv => lhs; cbv
  try rfl
theorem node4645_eq : Flapjack.WordAlloc.removeDeadStructural input4645 value2326 value1 value2 = (output4645, value2327, value1) := by
  rw [input4645_def, output4645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4645 input4644)).val
theorem input4646_def : input4646 = (.seq input4645 input4644) := by
  unfold input4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4645 output4644)).val
theorem output4646_def : output4646 = (.seq output4645 output4644) := by
  unfold output4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4646_skip : Flapjack.WordAlloc.isSkip output4646 = false := by
  rw [output4646_def]
  conv => lhs; cbv
  try rfl
theorem node4646_eq : Flapjack.WordAlloc.removeDeadStructural input4646 value5 value1 value2 = (output4646, value2327, value1) := by
  rw [input4646_def, output4646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4644_eq]
  dsimp only
  rw [node4645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2328 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20769 7239337960414712511#64))).val
theorem input4647_def : input4647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20769 7239337960414712511#64)) := by
  unfold input4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20769 7239337960414712511#64))).val
theorem output4647_def : output4647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20769 7239337960414712511#64)) := by
  unfold output4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4647_skip : Flapjack.WordAlloc.isSkip output4647 = false := by
  rw [output4647_def]
  conv => lhs; cbv
  try rfl
theorem node4647_eq : Flapjack.WordAlloc.removeDeadStructural input4647 value2327 value1 value2 = (output4647, value2328, value1) := by
  rw [input4647_def, output4647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20765 7239337960414712511#64))).val
theorem input4648_def : input4648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20765 7239337960414712511#64)) := by
  unfold input4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4648_def : output4648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4648_skip : Flapjack.WordAlloc.isSkip output4648 = true := by
  rw [output4648_def]
  conv => lhs; cbv
  try rfl
theorem node4648_eq : Flapjack.WordAlloc.removeDeadStructural input4648 value2328 value1 value2 = (output4648, value2328, value1) := by
  rw [input4648_def, output4648_def]
  try (conv => lhs; cbv)
  try rfl

def value2329 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20761 20753 (Flapjack.WordRegImm.reg 20757))))).val
theorem input4649_def : input4649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20761 20753 (Flapjack.WordRegImm.reg 20757)))) := by
  unfold input4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20761 20753 (Flapjack.WordRegImm.reg 20757))))).val
theorem output4649_def : output4649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20761 20753 (Flapjack.WordRegImm.reg 20757)))) := by
  unfold output4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4649_skip : Flapjack.WordAlloc.isSkip output4649 = false := by
  rw [output4649_def]
  conv => lhs; cbv
  try rfl
theorem node4649_eq : Flapjack.WordAlloc.removeDeadStructural input4649 value2328 value1 value2 = (output4649, value2329, value1) := by
  rw [input4649_def, output4649_def]
  try (conv => lhs; cbv)
  try rfl

def value2330 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20757 4808#64))).val
theorem input4650_def : input4650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20757 4808#64)) := by
  unfold input4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20757 4808#64))).val
theorem output4650_def : output4650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20757 4808#64)) := by
  unfold output4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4650_skip : Flapjack.WordAlloc.isSkip output4650 = false := by
  rw [output4650_def]
  conv => lhs; cbv
  try rfl
theorem node4650_eq : Flapjack.WordAlloc.removeDeadStructural input4650 value2329 value1 value2 = (output4650, value2330, value1) := by
  rw [input4650_def, output4650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4650 input4649)).val
theorem input4651_def : input4651 = (.seq input4650 input4649) := by
  unfold input4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4650 output4649)).val
theorem output4651_def : output4651 = (.seq output4650 output4649) := by
  unfold output4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4651_skip : Flapjack.WordAlloc.isSkip output4651 = false := by
  rw [output4651_def]
  conv => lhs; cbv
  try rfl
theorem node4651_eq : Flapjack.WordAlloc.removeDeadStructural input4651 value2328 value1 value2 = (output4651, value2330, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4649_eq]
  dsimp only
  rw [node4650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2331 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20753 (Flapjack.WordLangAddr.addr 20749 18446744073709551104#64)))).val
theorem input4652_def : input4652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20753 (Flapjack.WordLangAddr.addr 20749 18446744073709551104#64))) := by
  unfold input4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20753 (Flapjack.WordLangAddr.addr 20749 18446744073709551104#64)))).val
theorem output4652_def : output4652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20753 (Flapjack.WordLangAddr.addr 20749 18446744073709551104#64))) := by
  unfold output4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4652_skip : Flapjack.WordAlloc.isSkip output4652 = false := by
  rw [output4652_def]
  conv => lhs; cbv
  try rfl
theorem node4652_eq : Flapjack.WordAlloc.removeDeadStructural input4652 value2330 value1 value2 = (output4652, value2331, value1) := by
  rw [input4652_def, output4652_def]
  try (conv => lhs; cbv)
  try rfl

def value2332 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20749 20745)).val
theorem input4653_def : input4653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20749 20745) := by
  unfold input4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20749 20745)).val
theorem output4653_def : output4653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20749 20745) := by
  unfold output4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4653_skip : Flapjack.WordAlloc.isSkip output4653 = false := by
  rw [output4653_def]
  conv => lhs; cbv
  try rfl
theorem node4653_eq : Flapjack.WordAlloc.removeDeadStructural input4653 value2331 value1 value2 = (output4653, value2332, value1) := by
  rw [input4653_def, output4653_def]
  try (conv => lhs; cbv)
  try rfl

def value2333 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20745 20741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4654_def : input4654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20745 20741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20745 20741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4654_def : output4654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20745 20741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4654_skip : Flapjack.WordAlloc.isSkip output4654 = false := by
  rw [output4654_def]
  conv => lhs; cbv
  try rfl
theorem node4654_eq : Flapjack.WordAlloc.removeDeadStructural input4654 value2332 value1 value2 = (output4654, value2333, value1) := by
  rw [input4654_def, output4654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20741 Flapjack.WordStore.heapLength)).val
theorem input4655_def : input4655 = (Flapjack.WordLangProgHOL.get 20741 Flapjack.WordStore.heapLength) := by
  unfold input4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20741 Flapjack.WordStore.heapLength)).val
theorem output4655_def : output4655 = (Flapjack.WordLangProgHOL.get 20741 Flapjack.WordStore.heapLength) := by
  unfold output4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4655_skip : Flapjack.WordAlloc.isSkip output4655 = false := by
  rw [output4655_def]
  conv => lhs; cbv
  try rfl
theorem node4655_eq : Flapjack.WordAlloc.removeDeadStructural input4655 value2333 value1 value2 = (output4655, value5, value1) := by
  rw [input4655_def, output4655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4655 input4654)).val
theorem input4656_def : input4656 = (.seq input4655 input4654) := by
  unfold input4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4655 output4654)).val
theorem output4656_def : output4656 = (.seq output4655 output4654) := by
  unfold output4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4656_skip : Flapjack.WordAlloc.isSkip output4656 = false := by
  rw [output4656_def]
  conv => lhs; cbv
  try rfl
theorem node4656_eq : Flapjack.WordAlloc.removeDeadStructural input4656 value2332 value1 value2 = (output4656, value5, value1) := by
  rw [input4656_def, output4656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4654_eq]
  dsimp only
  rw [node4655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4656 input4653)).val
theorem input4657_def : input4657 = (.seq input4656 input4653) := by
  unfold input4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4656 output4653)).val
theorem output4657_def : output4657 = (.seq output4656 output4653) := by
  unfold output4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4657_skip : Flapjack.WordAlloc.isSkip output4657 = false := by
  rw [output4657_def]
  conv => lhs; cbv
  try rfl
theorem node4657_eq : Flapjack.WordAlloc.removeDeadStructural input4657 value2331 value1 value2 = (output4657, value5, value1) := by
  rw [input4657_def, output4657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4653_eq]
  dsimp only
  rw [node4656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4657 input4652)).val
theorem input4658_def : input4658 = (.seq input4657 input4652) := by
  unfold input4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4657 output4652)).val
theorem output4658_def : output4658 = (.seq output4657 output4652) := by
  unfold output4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4658_skip : Flapjack.WordAlloc.isSkip output4658 = false := by
  rw [output4658_def]
  conv => lhs; cbv
  try rfl
theorem node4658_eq : Flapjack.WordAlloc.removeDeadStructural input4658 value2330 value1 value2 = (output4658, value5, value1) := by
  rw [input4658_def, output4658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4652_eq]
  dsimp only
  rw [node4657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4658 input4651)).val
theorem input4659_def : input4659 = (.seq input4658 input4651) := by
  unfold input4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4658 output4651)).val
theorem output4659_def : output4659 = (.seq output4658 output4651) := by
  unfold output4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4659_skip : Flapjack.WordAlloc.isSkip output4659 = false := by
  rw [output4659_def]
  conv => lhs; cbv
  try rfl
theorem node4659_eq : Flapjack.WordAlloc.removeDeadStructural input4659 value2328 value1 value2 = (output4659, value5, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4651_eq]
  dsimp only
  rw [node4658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2334 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20733 (Flapjack.WordLangAddr.addr 20737 0#64)))).val
theorem input4660_def : input4660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20733 (Flapjack.WordLangAddr.addr 20737 0#64))) := by
  unfold input4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20733 (Flapjack.WordLangAddr.addr 20737 0#64)))).val
theorem output4660_def : output4660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20733 (Flapjack.WordLangAddr.addr 20737 0#64))) := by
  unfold output4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4660_skip : Flapjack.WordAlloc.isSkip output4660 = false := by
  rw [output4660_def]
  conv => lhs; cbv
  try rfl
theorem node4660_eq : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value2334, value1) := by
  rw [input4660_def, output4660_def]
  try (conv => lhs; cbv)
  try rfl

def value2335 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20737, 20725)])).val
theorem input4661_def : input4661 = (Flapjack.WordLangProgHOL.move 0 [(20737, 20725)]) := by
  unfold input4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20737, 20725)])).val
theorem output4661_def : output4661 = (Flapjack.WordLangProgHOL.move 0 [(20737, 20725)]) := by
  unfold output4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4661_skip : Flapjack.WordAlloc.isSkip output4661 = false := by
  rw [output4661_def]
  conv => lhs; cbv
  try rfl
theorem node4661_eq : Flapjack.WordAlloc.removeDeadStructural input4661 value2334 value1 value2 = (output4661, value2335, value1) := by
  rw [input4661_def, output4661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4661 input4660)).val
theorem input4662_def : input4662 = (.seq input4661 input4660) := by
  unfold input4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4661 output4660)).val
theorem output4662_def : output4662 = (.seq output4661 output4660) := by
  unfold output4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4662_skip : Flapjack.WordAlloc.isSkip output4662 = false := by
  rw [output4662_def]
  conv => lhs; cbv
  try rfl
theorem node4662_eq : Flapjack.WordAlloc.removeDeadStructural input4662 value5 value1 value2 = (output4662, value2335, value1) := by
  rw [input4662_def, output4662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4660_eq]
  dsimp only
  rw [node4661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2336 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20733 7435674573564081700#64))).val
theorem input4663_def : input4663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20733 7435674573564081700#64)) := by
  unfold input4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20733 7435674573564081700#64))).val
theorem output4663_def : output4663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20733 7435674573564081700#64)) := by
  unfold output4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4663_skip : Flapjack.WordAlloc.isSkip output4663 = false := by
  rw [output4663_def]
  conv => lhs; cbv
  try rfl
theorem node4663_eq : Flapjack.WordAlloc.removeDeadStructural input4663 value2335 value1 value2 = (output4663, value2336, value1) := by
  rw [input4663_def, output4663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20729 7435674573564081700#64))).val
theorem input4664_def : input4664 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20729 7435674573564081700#64)) := by
  unfold input4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4664_def : output4664 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4664_skip : Flapjack.WordAlloc.isSkip output4664 = true := by
  rw [output4664_def]
  conv => lhs; cbv
  try rfl
theorem node4664_eq : Flapjack.WordAlloc.removeDeadStructural input4664 value2336 value1 value2 = (output4664, value2336, value1) := by
  rw [input4664_def, output4664_def]
  try (conv => lhs; cbv)
  try rfl

def value2337 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20725 20717 (Flapjack.WordRegImm.reg 20721))))).val
theorem input4665_def : input4665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20725 20717 (Flapjack.WordRegImm.reg 20721)))) := by
  unfold input4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20725 20717 (Flapjack.WordRegImm.reg 20721))))).val
theorem output4665_def : output4665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20725 20717 (Flapjack.WordRegImm.reg 20721)))) := by
  unfold output4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4665_skip : Flapjack.WordAlloc.isSkip output4665 = false := by
  rw [output4665_def]
  conv => lhs; cbv
  try rfl
theorem node4665_eq : Flapjack.WordAlloc.removeDeadStructural input4665 value2336 value1 value2 = (output4665, value2337, value1) := by
  rw [input4665_def, output4665_def]
  try (conv => lhs; cbv)
  try rfl

def value2338 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20721 4800#64))).val
theorem input4666_def : input4666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20721 4800#64)) := by
  unfold input4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20721 4800#64))).val
theorem output4666_def : output4666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20721 4800#64)) := by
  unfold output4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4666_skip : Flapjack.WordAlloc.isSkip output4666 = false := by
  rw [output4666_def]
  conv => lhs; cbv
  try rfl
theorem node4666_eq : Flapjack.WordAlloc.removeDeadStructural input4666 value2337 value1 value2 = (output4666, value2338, value1) := by
  rw [input4666_def, output4666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4666 input4665)).val
theorem input4667_def : input4667 = (.seq input4666 input4665) := by
  unfold input4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4666 output4665)).val
theorem output4667_def : output4667 = (.seq output4666 output4665) := by
  unfold output4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4667_skip : Flapjack.WordAlloc.isSkip output4667 = false := by
  rw [output4667_def]
  conv => lhs; cbv
  try rfl
theorem node4667_eq : Flapjack.WordAlloc.removeDeadStructural input4667 value2336 value1 value2 = (output4667, value2338, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4665_eq]
  dsimp only
  rw [node4666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2339 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20717 (Flapjack.WordLangAddr.addr 20713 18446744073709551104#64)))).val
theorem input4668_def : input4668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20717 (Flapjack.WordLangAddr.addr 20713 18446744073709551104#64))) := by
  unfold input4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20717 (Flapjack.WordLangAddr.addr 20713 18446744073709551104#64)))).val
theorem output4668_def : output4668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20717 (Flapjack.WordLangAddr.addr 20713 18446744073709551104#64))) := by
  unfold output4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4668_skip : Flapjack.WordAlloc.isSkip output4668 = false := by
  rw [output4668_def]
  conv => lhs; cbv
  try rfl
theorem node4668_eq : Flapjack.WordAlloc.removeDeadStructural input4668 value2338 value1 value2 = (output4668, value2339, value1) := by
  rw [input4668_def, output4668_def]
  try (conv => lhs; cbv)
  try rfl

def value2340 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20713 20709)).val
theorem input4669_def : input4669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20713 20709) := by
  unfold input4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20713 20709)).val
theorem output4669_def : output4669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20713 20709) := by
  unfold output4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4669_skip : Flapjack.WordAlloc.isSkip output4669 = false := by
  rw [output4669_def]
  conv => lhs; cbv
  try rfl
theorem node4669_eq : Flapjack.WordAlloc.removeDeadStructural input4669 value2339 value1 value2 = (output4669, value2340, value1) := by
  rw [input4669_def, output4669_def]
  try (conv => lhs; cbv)
  try rfl

def value2341 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20709 20705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4670_def : input4670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20709 20705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20709 20705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4670_def : output4670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20709 20705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4670_skip : Flapjack.WordAlloc.isSkip output4670 = false := by
  rw [output4670_def]
  conv => lhs; cbv
  try rfl
theorem node4670_eq : Flapjack.WordAlloc.removeDeadStructural input4670 value2340 value1 value2 = (output4670, value2341, value1) := by
  rw [input4670_def, output4670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20705 Flapjack.WordStore.heapLength)).val
theorem input4671_def : input4671 = (Flapjack.WordLangProgHOL.get 20705 Flapjack.WordStore.heapLength) := by
  unfold input4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20705 Flapjack.WordStore.heapLength)).val
theorem output4671_def : output4671 = (Flapjack.WordLangProgHOL.get 20705 Flapjack.WordStore.heapLength) := by
  unfold output4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4671_skip : Flapjack.WordAlloc.isSkip output4671 = false := by
  rw [output4671_def]
  conv => lhs; cbv
  try rfl
theorem node4671_eq : Flapjack.WordAlloc.removeDeadStructural input4671 value2341 value1 value2 = (output4671, value5, value1) := by
  rw [input4671_def, output4671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4671 input4670)).val
theorem input4672_def : input4672 = (.seq input4671 input4670) := by
  unfold input4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4671 output4670)).val
theorem output4672_def : output4672 = (.seq output4671 output4670) := by
  unfold output4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4672_skip : Flapjack.WordAlloc.isSkip output4672 = false := by
  rw [output4672_def]
  conv => lhs; cbv
  try rfl
theorem node4672_eq : Flapjack.WordAlloc.removeDeadStructural input4672 value2340 value1 value2 = (output4672, value5, value1) := by
  rw [input4672_def, output4672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4670_eq]
  dsimp only
  rw [node4671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4672 input4669)).val
theorem input4673_def : input4673 = (.seq input4672 input4669) := by
  unfold input4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4672 output4669)).val
theorem output4673_def : output4673 = (.seq output4672 output4669) := by
  unfold output4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4673_skip : Flapjack.WordAlloc.isSkip output4673 = false := by
  rw [output4673_def]
  conv => lhs; cbv
  try rfl
theorem node4673_eq : Flapjack.WordAlloc.removeDeadStructural input4673 value2339 value1 value2 = (output4673, value5, value1) := by
  rw [input4673_def, output4673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4669_eq]
  dsimp only
  rw [node4672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4673 input4668)).val
theorem input4674_def : input4674 = (.seq input4673 input4668) := by
  unfold input4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4673 output4668)).val
theorem output4674_def : output4674 = (.seq output4673 output4668) := by
  unfold output4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4674_skip : Flapjack.WordAlloc.isSkip output4674 = false := by
  rw [output4674_def]
  conv => lhs; cbv
  try rfl
theorem node4674_eq : Flapjack.WordAlloc.removeDeadStructural input4674 value2338 value1 value2 = (output4674, value5, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4668_eq]
  dsimp only
  rw [node4673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4674 input4667)).val
theorem input4675_def : input4675 = (.seq input4674 input4667) := by
  unfold input4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4674 output4667)).val
theorem output4675_def : output4675 = (.seq output4674 output4667) := by
  unfold output4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4675_skip : Flapjack.WordAlloc.isSkip output4675 = false := by
  rw [output4675_def]
  conv => lhs; cbv
  try rfl
theorem node4675_eq : Flapjack.WordAlloc.removeDeadStructural input4675 value2336 value1 value2 = (output4675, value5, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4667_eq]
  dsimp only
  rw [node4674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2342 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20697 (Flapjack.WordLangAddr.addr 20701 0#64)))).val
theorem input4676_def : input4676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20697 (Flapjack.WordLangAddr.addr 20701 0#64))) := by
  unfold input4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20697 (Flapjack.WordLangAddr.addr 20701 0#64)))).val
theorem output4676_def : output4676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20697 (Flapjack.WordLangAddr.addr 20701 0#64))) := by
  unfold output4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4676_skip : Flapjack.WordAlloc.isSkip output4676 = false := by
  rw [output4676_def]
  conv => lhs; cbv
  try rfl
theorem node4676_eq : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value2342, value1) := by
  rw [input4676_def, output4676_def]
  try (conv => lhs; cbv)
  try rfl

def value2343 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20701, 20689)])).val
theorem input4677_def : input4677 = (Flapjack.WordLangProgHOL.move 0 [(20701, 20689)]) := by
  unfold input4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20701, 20689)])).val
theorem output4677_def : output4677 = (Flapjack.WordLangProgHOL.move 0 [(20701, 20689)]) := by
  unfold output4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4677_skip : Flapjack.WordAlloc.isSkip output4677 = false := by
  rw [output4677_def]
  conv => lhs; cbv
  try rfl
theorem node4677_eq : Flapjack.WordAlloc.removeDeadStructural input4677 value2342 value1 value2 = (output4677, value2343, value1) := by
  rw [input4677_def, output4677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4677 input4676)).val
theorem input4678_def : input4678 = (.seq input4677 input4676) := by
  unfold input4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4677 output4676)).val
theorem output4678_def : output4678 = (.seq output4677 output4676) := by
  unfold output4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4678_skip : Flapjack.WordAlloc.isSkip output4678 = false := by
  rw [output4678_def]
  conv => lhs; cbv
  try rfl
theorem node4678_eq : Flapjack.WordAlloc.removeDeadStructural input4678 value5 value1 value2 = (output4678, value2343, value1) := by
  rw [input4678_def, output4678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4676_eq]
  dsimp only
  rw [node4677_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2344 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20697 2210141511517208575#64))).val
theorem input4679_def : input4679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20697 2210141511517208575#64)) := by
  unfold input4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20697 2210141511517208575#64))).val
theorem output4679_def : output4679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20697 2210141511517208575#64)) := by
  unfold output4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4679_skip : Flapjack.WordAlloc.isSkip output4679 = false := by
  rw [output4679_def]
  conv => lhs; cbv
  try rfl
theorem node4679_eq : Flapjack.WordAlloc.removeDeadStructural input4679 value2343 value1 value2 = (output4679, value2344, value1) := by
  rw [input4679_def, output4679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20693 2210141511517208575#64))).val
theorem input4680_def : input4680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20693 2210141511517208575#64)) := by
  unfold input4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4680_def : output4680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4680_skip : Flapjack.WordAlloc.isSkip output4680 = true := by
  rw [output4680_def]
  conv => lhs; cbv
  try rfl
theorem node4680_eq : Flapjack.WordAlloc.removeDeadStructural input4680 value2344 value1 value2 = (output4680, value2344, value1) := by
  rw [input4680_def, output4680_def]
  try (conv => lhs; cbv)
  try rfl

def value2345 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20689 20681 (Flapjack.WordRegImm.reg 20685))))).val
theorem input4681_def : input4681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20689 20681 (Flapjack.WordRegImm.reg 20685)))) := by
  unfold input4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20689 20681 (Flapjack.WordRegImm.reg 20685))))).val
theorem output4681_def : output4681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20689 20681 (Flapjack.WordRegImm.reg 20685)))) := by
  unfold output4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4681_skip : Flapjack.WordAlloc.isSkip output4681 = false := by
  rw [output4681_def]
  conv => lhs; cbv
  try rfl
theorem node4681_eq : Flapjack.WordAlloc.removeDeadStructural input4681 value2344 value1 value2 = (output4681, value2345, value1) := by
  rw [input4681_def, output4681_def]
  try (conv => lhs; cbv)
  try rfl

def value2346 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20685 4792#64))).val
theorem input4682_def : input4682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20685 4792#64)) := by
  unfold input4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20685 4792#64))).val
theorem output4682_def : output4682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20685 4792#64)) := by
  unfold output4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4682_skip : Flapjack.WordAlloc.isSkip output4682 = false := by
  rw [output4682_def]
  conv => lhs; cbv
  try rfl
theorem node4682_eq : Flapjack.WordAlloc.removeDeadStructural input4682 value2345 value1 value2 = (output4682, value2346, value1) := by
  rw [input4682_def, output4682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4682 input4681)).val
theorem input4683_def : input4683 = (.seq input4682 input4681) := by
  unfold input4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4682 output4681)).val
theorem output4683_def : output4683 = (.seq output4682 output4681) := by
  unfold output4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4683_skip : Flapjack.WordAlloc.isSkip output4683 = false := by
  rw [output4683_def]
  conv => lhs; cbv
  try rfl
theorem node4683_eq : Flapjack.WordAlloc.removeDeadStructural input4683 value2344 value1 value2 = (output4683, value2346, value1) := by
  rw [input4683_def, output4683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4681_eq]
  dsimp only
  rw [node4682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2347 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20681 (Flapjack.WordLangAddr.addr 20677 18446744073709551104#64)))).val
theorem input4684_def : input4684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20681 (Flapjack.WordLangAddr.addr 20677 18446744073709551104#64))) := by
  unfold input4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20681 (Flapjack.WordLangAddr.addr 20677 18446744073709551104#64)))).val
theorem output4684_def : output4684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20681 (Flapjack.WordLangAddr.addr 20677 18446744073709551104#64))) := by
  unfold output4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4684_skip : Flapjack.WordAlloc.isSkip output4684 = false := by
  rw [output4684_def]
  conv => lhs; cbv
  try rfl
theorem node4684_eq : Flapjack.WordAlloc.removeDeadStructural input4684 value2346 value1 value2 = (output4684, value2347, value1) := by
  rw [input4684_def, output4684_def]
  try (conv => lhs; cbv)
  try rfl

def value2348 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20677 20673)).val
theorem input4685_def : input4685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20677 20673) := by
  unfold input4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20677 20673)).val
theorem output4685_def : output4685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20677 20673) := by
  unfold output4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4685_skip : Flapjack.WordAlloc.isSkip output4685 = false := by
  rw [output4685_def]
  conv => lhs; cbv
  try rfl
theorem node4685_eq : Flapjack.WordAlloc.removeDeadStructural input4685 value2347 value1 value2 = (output4685, value2348, value1) := by
  rw [input4685_def, output4685_def]
  try (conv => lhs; cbv)
  try rfl

def value2349 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20673 20669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4686_def : input4686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20673 20669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20673 20669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4686_def : output4686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20673 20669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4686_skip : Flapjack.WordAlloc.isSkip output4686 = false := by
  rw [output4686_def]
  conv => lhs; cbv
  try rfl
theorem node4686_eq : Flapjack.WordAlloc.removeDeadStructural input4686 value2348 value1 value2 = (output4686, value2349, value1) := by
  rw [input4686_def, output4686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20669 Flapjack.WordStore.heapLength)).val
theorem input4687_def : input4687 = (Flapjack.WordLangProgHOL.get 20669 Flapjack.WordStore.heapLength) := by
  unfold input4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20669 Flapjack.WordStore.heapLength)).val
theorem output4687_def : output4687 = (Flapjack.WordLangProgHOL.get 20669 Flapjack.WordStore.heapLength) := by
  unfold output4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4687_skip : Flapjack.WordAlloc.isSkip output4687 = false := by
  rw [output4687_def]
  conv => lhs; cbv
  try rfl
theorem node4687_eq : Flapjack.WordAlloc.removeDeadStructural input4687 value2349 value1 value2 = (output4687, value5, value1) := by
  rw [input4687_def, output4687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4687 input4686)).val
theorem input4688_def : input4688 = (.seq input4687 input4686) := by
  unfold input4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4687 output4686)).val
theorem output4688_def : output4688 = (.seq output4687 output4686) := by
  unfold output4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4688_skip : Flapjack.WordAlloc.isSkip output4688 = false := by
  rw [output4688_def]
  conv => lhs; cbv
  try rfl
theorem node4688_eq : Flapjack.WordAlloc.removeDeadStructural input4688 value2348 value1 value2 = (output4688, value5, value1) := by
  rw [input4688_def, output4688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4686_eq]
  dsimp only
  rw [node4687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4688 input4685)).val
theorem input4689_def : input4689 = (.seq input4688 input4685) := by
  unfold input4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4688 output4685)).val
theorem output4689_def : output4689 = (.seq output4688 output4685) := by
  unfold output4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4689_skip : Flapjack.WordAlloc.isSkip output4689 = false := by
  rw [output4689_def]
  conv => lhs; cbv
  try rfl
theorem node4689_eq : Flapjack.WordAlloc.removeDeadStructural input4689 value2347 value1 value2 = (output4689, value5, value1) := by
  rw [input4689_def, output4689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4685_eq]
  dsimp only
  rw [node4688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4689 input4684)).val
theorem input4690_def : input4690 = (.seq input4689 input4684) := by
  unfold input4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4689 output4684)).val
theorem output4690_def : output4690 = (.seq output4689 output4684) := by
  unfold output4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4690_skip : Flapjack.WordAlloc.isSkip output4690 = false := by
  rw [output4690_def]
  conv => lhs; cbv
  try rfl
theorem node4690_eq : Flapjack.WordAlloc.removeDeadStructural input4690 value2346 value1 value2 = (output4690, value5, value1) := by
  rw [input4690_def, output4690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4684_eq]
  dsimp only
  rw [node4689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4690 input4683)).val
theorem input4691_def : input4691 = (.seq input4690 input4683) := by
  unfold input4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4690 output4683)).val
theorem output4691_def : output4691 = (.seq output4690 output4683) := by
  unfold output4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4691_skip : Flapjack.WordAlloc.isSkip output4691 = false := by
  rw [output4691_def]
  conv => lhs; cbv
  try rfl
theorem node4691_eq : Flapjack.WordAlloc.removeDeadStructural input4691 value2344 value1 value2 = (output4691, value5, value1) := by
  rw [input4691_def, output4691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4683_eq]
  dsimp only
  rw [node4690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2350 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20661 (Flapjack.WordLangAddr.addr 20665 0#64)))).val
theorem input4692_def : input4692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20661 (Flapjack.WordLangAddr.addr 20665 0#64))) := by
  unfold input4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20661 (Flapjack.WordLangAddr.addr 20665 0#64)))).val
theorem output4692_def : output4692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20661 (Flapjack.WordLangAddr.addr 20665 0#64))) := by
  unfold output4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4692_skip : Flapjack.WordAlloc.isSkip output4692 = false := by
  rw [output4692_def]
  conv => lhs; cbv
  try rfl
theorem node4692_eq : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value2350, value1) := by
  rw [input4692_def, output4692_def]
  try (conv => lhs; cbv)
  try rfl

def value2351 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20665, 20653)])).val
theorem input4693_def : input4693 = (Flapjack.WordLangProgHOL.move 0 [(20665, 20653)]) := by
  unfold input4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20665, 20653)])).val
theorem output4693_def : output4693 = (Flapjack.WordLangProgHOL.move 0 [(20665, 20653)]) := by
  unfold output4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4693_skip : Flapjack.WordAlloc.isSkip output4693 = false := by
  rw [output4693_def]
  conv => lhs; cbv
  try rfl
theorem node4693_eq : Flapjack.WordAlloc.removeDeadStructural input4693 value2350 value1 value2 = (output4693, value2351, value1) := by
  rw [input4693_def, output4693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4693 input4692)).val
theorem input4694_def : input4694 = (.seq input4693 input4692) := by
  unfold input4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4693 output4692)).val
theorem output4694_def : output4694 = (.seq output4693 output4692) := by
  unfold output4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4694_skip : Flapjack.WordAlloc.isSkip output4694 = false := by
  rw [output4694_def]
  conv => lhs; cbv
  try rfl
theorem node4694_eq : Flapjack.WordAlloc.removeDeadStructural input4694 value5 value1 value2 = (output4694, value2351, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4692_eq]
  dsimp only
  rw [node4693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2352 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20661 13402431016077863594#64))).val
theorem input4695_def : input4695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20661 13402431016077863594#64)) := by
  unfold input4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20661 13402431016077863594#64))).val
theorem output4695_def : output4695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20661 13402431016077863594#64)) := by
  unfold output4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4695_skip : Flapjack.WordAlloc.isSkip output4695 = false := by
  rw [output4695_def]
  conv => lhs; cbv
  try rfl
theorem node4695_eq : Flapjack.WordAlloc.removeDeadStructural input4695 value2351 value1 value2 = (output4695, value2352, value1) := by
  rw [input4695_def, output4695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20657 13402431016077863594#64))).val
theorem input4696_def : input4696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20657 13402431016077863594#64)) := by
  unfold input4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4696_def : output4696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4696_skip : Flapjack.WordAlloc.isSkip output4696 = true := by
  rw [output4696_def]
  conv => lhs; cbv
  try rfl
theorem node4696_eq : Flapjack.WordAlloc.removeDeadStructural input4696 value2352 value1 value2 = (output4696, value2352, value1) := by
  rw [input4696_def, output4696_def]
  try (conv => lhs; cbv)
  try rfl

def value2353 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20653 20645 (Flapjack.WordRegImm.reg 20649))))).val
theorem input4697_def : input4697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20653 20645 (Flapjack.WordRegImm.reg 20649)))) := by
  unfold input4697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20653 20645 (Flapjack.WordRegImm.reg 20649))))).val
theorem output4697_def : output4697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20653 20645 (Flapjack.WordRegImm.reg 20649)))) := by
  unfold output4697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4697_skip : Flapjack.WordAlloc.isSkip output4697 = false := by
  rw [output4697_def]
  conv => lhs; cbv
  try rfl
theorem node4697_eq : Flapjack.WordAlloc.removeDeadStructural input4697 value2352 value1 value2 = (output4697, value2353, value1) := by
  rw [input4697_def, output4697_def]
  try (conv => lhs; cbv)
  try rfl

def value2354 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20649 4784#64))).val
theorem input4698_def : input4698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20649 4784#64)) := by
  unfold input4698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20649 4784#64))).val
theorem output4698_def : output4698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20649 4784#64)) := by
  unfold output4698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4698_skip : Flapjack.WordAlloc.isSkip output4698 = false := by
  rw [output4698_def]
  conv => lhs; cbv
  try rfl
theorem node4698_eq : Flapjack.WordAlloc.removeDeadStructural input4698 value2353 value1 value2 = (output4698, value2354, value1) := by
  rw [input4698_def, output4698_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4698 input4697)).val
theorem input4699_def : input4699 = (.seq input4698 input4697) := by
  unfold input4699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4698 output4697)).val
theorem output4699_def : output4699 = (.seq output4698 output4697) := by
  unfold output4699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4699_skip : Flapjack.WordAlloc.isSkip output4699 = false := by
  rw [output4699_def]
  conv => lhs; cbv
  try rfl
theorem node4699_eq : Flapjack.WordAlloc.removeDeadStructural input4699 value2352 value1 value2 = (output4699, value2354, value1) := by
  rw [input4699_def, output4699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4697_eq]
  dsimp only
  rw [node4698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2355 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20645 (Flapjack.WordLangAddr.addr 20641 18446744073709551104#64)))).val
theorem input4700_def : input4700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20645 (Flapjack.WordLangAddr.addr 20641 18446744073709551104#64))) := by
  unfold input4700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20645 (Flapjack.WordLangAddr.addr 20641 18446744073709551104#64)))).val
theorem output4700_def : output4700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20645 (Flapjack.WordLangAddr.addr 20641 18446744073709551104#64))) := by
  unfold output4700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4700_skip : Flapjack.WordAlloc.isSkip output4700 = false := by
  rw [output4700_def]
  conv => lhs; cbv
  try rfl
theorem node4700_eq : Flapjack.WordAlloc.removeDeadStructural input4700 value2354 value1 value2 = (output4700, value2355, value1) := by
  rw [input4700_def, output4700_def]
  try (conv => lhs; cbv)
  try rfl

def value2356 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20641 20637)).val
theorem input4701_def : input4701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20641 20637) := by
  unfold input4701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20641 20637)).val
theorem output4701_def : output4701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20641 20637) := by
  unfold output4701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4701_skip : Flapjack.WordAlloc.isSkip output4701 = false := by
  rw [output4701_def]
  conv => lhs; cbv
  try rfl
theorem node4701_eq : Flapjack.WordAlloc.removeDeadStructural input4701 value2355 value1 value2 = (output4701, value2356, value1) := by
  rw [input4701_def, output4701_def]
  try (conv => lhs; cbv)
  try rfl

def value2357 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20637 20633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4702_def : input4702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20637 20633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20637 20633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4702_def : output4702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20637 20633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4702_skip : Flapjack.WordAlloc.isSkip output4702 = false := by
  rw [output4702_def]
  conv => lhs; cbv
  try rfl
theorem node4702_eq : Flapjack.WordAlloc.removeDeadStructural input4702 value2356 value1 value2 = (output4702, value2357, value1) := by
  rw [input4702_def, output4702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20633 Flapjack.WordStore.heapLength)).val
theorem input4703_def : input4703 = (Flapjack.WordLangProgHOL.get 20633 Flapjack.WordStore.heapLength) := by
  unfold input4703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20633 Flapjack.WordStore.heapLength)).val
theorem output4703_def : output4703 = (Flapjack.WordLangProgHOL.get 20633 Flapjack.WordStore.heapLength) := by
  unfold output4703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4703_skip : Flapjack.WordAlloc.isSkip output4703 = false := by
  rw [output4703_def]
  conv => lhs; cbv
  try rfl
theorem node4703_eq : Flapjack.WordAlloc.removeDeadStructural input4703 value2357 value1 value2 = (output4703, value5, value1) := by
  rw [input4703_def, output4703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4703 input4702)).val
theorem input4704_def : input4704 = (.seq input4703 input4702) := by
  unfold input4704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4703 output4702)).val
theorem output4704_def : output4704 = (.seq output4703 output4702) := by
  unfold output4704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4704_skip : Flapjack.WordAlloc.isSkip output4704 = false := by
  rw [output4704_def]
  conv => lhs; cbv
  try rfl
theorem node4704_eq : Flapjack.WordAlloc.removeDeadStructural input4704 value2356 value1 value2 = (output4704, value5, value1) := by
  rw [input4704_def, output4704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4702_eq]
  dsimp only
  rw [node4703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4704 input4701)).val
theorem input4705_def : input4705 = (.seq input4704 input4701) := by
  unfold input4705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4704 output4701)).val
theorem output4705_def : output4705 = (.seq output4704 output4701) := by
  unfold output4705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4705_skip : Flapjack.WordAlloc.isSkip output4705 = false := by
  rw [output4705_def]
  conv => lhs; cbv
  try rfl
theorem node4705_eq : Flapjack.WordAlloc.removeDeadStructural input4705 value2355 value1 value2 = (output4705, value5, value1) := by
  rw [input4705_def, output4705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4701_eq]
  dsimp only
  rw [node4704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4705 input4700)).val
theorem input4706_def : input4706 = (.seq input4705 input4700) := by
  unfold input4706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4705 output4700)).val
theorem output4706_def : output4706 = (.seq output4705 output4700) := by
  unfold output4706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4706_skip : Flapjack.WordAlloc.isSkip output4706 = false := by
  rw [output4706_def]
  conv => lhs; cbv
  try rfl
theorem node4706_eq : Flapjack.WordAlloc.removeDeadStructural input4706 value2354 value1 value2 = (output4706, value5, value1) := by
  rw [input4706_def, output4706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4700_eq]
  dsimp only
  rw [node4705_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4706 input4699)).val
theorem input4707_def : input4707 = (.seq input4706 input4699) := by
  unfold input4707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4706 output4699)).val
theorem output4707_def : output4707 = (.seq output4706 output4699) := by
  unfold output4707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4707_skip : Flapjack.WordAlloc.isSkip output4707 = false := by
  rw [output4707_def]
  conv => lhs; cbv
  try rfl
theorem node4707_eq : Flapjack.WordAlloc.removeDeadStructural input4707 value2352 value1 value2 = (output4707, value5, value1) := by
  rw [input4707_def, output4707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4699_eq]
  dsimp only
  rw [node4706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2358 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20625 (Flapjack.WordLangAddr.addr 20629 0#64)))).val
theorem input4708_def : input4708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20625 (Flapjack.WordLangAddr.addr 20629 0#64))) := by
  unfold input4708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20625 (Flapjack.WordLangAddr.addr 20629 0#64)))).val
theorem output4708_def : output4708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20625 (Flapjack.WordLangAddr.addr 20629 0#64))) := by
  unfold output4708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4708_skip : Flapjack.WordAlloc.isSkip output4708 = false := by
  rw [output4708_def]
  conv => lhs; cbv
  try rfl
theorem node4708_eq : Flapjack.WordAlloc.removeDeadStructural input4708 value5 value1 value2 = (output4708, value2358, value1) := by
  rw [input4708_def, output4708_def]
  try (conv => lhs; cbv)
  try rfl

def value2359 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20629, 20617)])).val
theorem input4709_def : input4709 = (Flapjack.WordLangProgHOL.move 0 [(20629, 20617)]) := by
  unfold input4709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20629, 20617)])).val
theorem output4709_def : output4709 = (Flapjack.WordLangProgHOL.move 0 [(20629, 20617)]) := by
  unfold output4709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4709_skip : Flapjack.WordAlloc.isSkip output4709 = false := by
  rw [output4709_def]
  conv => lhs; cbv
  try rfl
theorem node4709_eq : Flapjack.WordAlloc.removeDeadStructural input4709 value2358 value1 value2 = (output4709, value2359, value1) := by
  rw [input4709_def, output4709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4709 input4708)).val
theorem input4710_def : input4710 = (.seq input4709 input4708) := by
  unfold input4710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4709 output4708)).val
theorem output4710_def : output4710 = (.seq output4709 output4708) := by
  unfold output4710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4710_skip : Flapjack.WordAlloc.isSkip output4710 = false := by
  rw [output4710_def]
  conv => lhs; cbv
  try rfl
theorem node4710_eq : Flapjack.WordAlloc.removeDeadStructural input4710 value5 value1 value2 = (output4710, value2359, value1) := by
  rw [input4710_def, output4710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4708_eq]
  dsimp only
  rw [node4709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2360 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20625 1873798617647539866#64))).val
theorem input4711_def : input4711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20625 1873798617647539866#64)) := by
  unfold input4711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20625 1873798617647539866#64))).val
theorem output4711_def : output4711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20625 1873798617647539866#64)) := by
  unfold output4711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4711_skip : Flapjack.WordAlloc.isSkip output4711 = false := by
  rw [output4711_def]
  conv => lhs; cbv
  try rfl
theorem node4711_eq : Flapjack.WordAlloc.removeDeadStructural input4711 value2359 value1 value2 = (output4711, value2360, value1) := by
  rw [input4711_def, output4711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20621 1873798617647539866#64))).val
theorem input4712_def : input4712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20621 1873798617647539866#64)) := by
  unfold input4712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4712_def : output4712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4712_skip : Flapjack.WordAlloc.isSkip output4712 = true := by
  rw [output4712_def]
  conv => lhs; cbv
  try rfl
theorem node4712_eq : Flapjack.WordAlloc.removeDeadStructural input4712 value2360 value1 value2 = (output4712, value2360, value1) := by
  rw [input4712_def, output4712_def]
  try (conv => lhs; cbv)
  try rfl

def value2361 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20617 20609 (Flapjack.WordRegImm.reg 20613))))).val
theorem input4713_def : input4713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20617 20609 (Flapjack.WordRegImm.reg 20613)))) := by
  unfold input4713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20617 20609 (Flapjack.WordRegImm.reg 20613))))).val
theorem output4713_def : output4713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20617 20609 (Flapjack.WordRegImm.reg 20613)))) := by
  unfold output4713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4713_skip : Flapjack.WordAlloc.isSkip output4713 = false := by
  rw [output4713_def]
  conv => lhs; cbv
  try rfl
theorem node4713_eq : Flapjack.WordAlloc.removeDeadStructural input4713 value2360 value1 value2 = (output4713, value2361, value1) := by
  rw [input4713_def, output4713_def]
  try (conv => lhs; cbv)
  try rfl

def value2362 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20613 4776#64))).val
theorem input4714_def : input4714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20613 4776#64)) := by
  unfold input4714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20613 4776#64))).val
theorem output4714_def : output4714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20613 4776#64)) := by
  unfold output4714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4714_skip : Flapjack.WordAlloc.isSkip output4714 = false := by
  rw [output4714_def]
  conv => lhs; cbv
  try rfl
theorem node4714_eq : Flapjack.WordAlloc.removeDeadStructural input4714 value2361 value1 value2 = (output4714, value2362, value1) := by
  rw [input4714_def, output4714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4714 input4713)).val
theorem input4715_def : input4715 = (.seq input4714 input4713) := by
  unfold input4715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4714 output4713)).val
theorem output4715_def : output4715 = (.seq output4714 output4713) := by
  unfold output4715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4715_skip : Flapjack.WordAlloc.isSkip output4715 = false := by
  rw [output4715_def]
  conv => lhs; cbv
  try rfl
theorem node4715_eq : Flapjack.WordAlloc.removeDeadStructural input4715 value2360 value1 value2 = (output4715, value2362, value1) := by
  rw [input4715_def, output4715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4713_eq]
  dsimp only
  rw [node4714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2363 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20609 (Flapjack.WordLangAddr.addr 20605 18446744073709551104#64)))).val
theorem input4716_def : input4716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20609 (Flapjack.WordLangAddr.addr 20605 18446744073709551104#64))) := by
  unfold input4716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20609 (Flapjack.WordLangAddr.addr 20605 18446744073709551104#64)))).val
theorem output4716_def : output4716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20609 (Flapjack.WordLangAddr.addr 20605 18446744073709551104#64))) := by
  unfold output4716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4716_skip : Flapjack.WordAlloc.isSkip output4716 = false := by
  rw [output4716_def]
  conv => lhs; cbv
  try rfl
theorem node4716_eq : Flapjack.WordAlloc.removeDeadStructural input4716 value2362 value1 value2 = (output4716, value2363, value1) := by
  rw [input4716_def, output4716_def]
  try (conv => lhs; cbv)
  try rfl

def value2364 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20605 20601)).val
theorem input4717_def : input4717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20605 20601) := by
  unfold input4717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20605 20601)).val
theorem output4717_def : output4717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20605 20601) := by
  unfold output4717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4717_skip : Flapjack.WordAlloc.isSkip output4717 = false := by
  rw [output4717_def]
  conv => lhs; cbv
  try rfl
theorem node4717_eq : Flapjack.WordAlloc.removeDeadStructural input4717 value2363 value1 value2 = (output4717, value2364, value1) := by
  rw [input4717_def, output4717_def]
  try (conv => lhs; cbv)
  try rfl

def value2365 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20601 20597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4718_def : input4718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20601 20597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20601 20597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4718_def : output4718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20601 20597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4718_skip : Flapjack.WordAlloc.isSkip output4718 = false := by
  rw [output4718_def]
  conv => lhs; cbv
  try rfl
theorem node4718_eq : Flapjack.WordAlloc.removeDeadStructural input4718 value2364 value1 value2 = (output4718, value2365, value1) := by
  rw [input4718_def, output4718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20597 Flapjack.WordStore.heapLength)).val
theorem input4719_def : input4719 = (Flapjack.WordLangProgHOL.get 20597 Flapjack.WordStore.heapLength) := by
  unfold input4719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20597 Flapjack.WordStore.heapLength)).val
theorem output4719_def : output4719 = (Flapjack.WordLangProgHOL.get 20597 Flapjack.WordStore.heapLength) := by
  unfold output4719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4719_skip : Flapjack.WordAlloc.isSkip output4719 = false := by
  rw [output4719_def]
  conv => lhs; cbv
  try rfl
theorem node4719_eq : Flapjack.WordAlloc.removeDeadStructural input4719 value2365 value1 value2 = (output4719, value5, value1) := by
  rw [input4719_def, output4719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4719 input4718)).val
theorem input4720_def : input4720 = (.seq input4719 input4718) := by
  unfold input4720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4719 output4718)).val
theorem output4720_def : output4720 = (.seq output4719 output4718) := by
  unfold output4720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4720_skip : Flapjack.WordAlloc.isSkip output4720 = false := by
  rw [output4720_def]
  conv => lhs; cbv
  try rfl
theorem node4720_eq : Flapjack.WordAlloc.removeDeadStructural input4720 value2364 value1 value2 = (output4720, value5, value1) := by
  rw [input4720_def, output4720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4718_eq]
  dsimp only
  rw [node4719_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4720 input4717)).val
theorem input4721_def : input4721 = (.seq input4720 input4717) := by
  unfold input4721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4720 output4717)).val
theorem output4721_def : output4721 = (.seq output4720 output4717) := by
  unfold output4721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4721_skip : Flapjack.WordAlloc.isSkip output4721 = false := by
  rw [output4721_def]
  conv => lhs; cbv
  try rfl
theorem node4721_eq : Flapjack.WordAlloc.removeDeadStructural input4721 value2363 value1 value2 = (output4721, value5, value1) := by
  rw [input4721_def, output4721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4717_eq]
  dsimp only
  rw [node4720_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4721 input4716)).val
theorem input4722_def : input4722 = (.seq input4721 input4716) := by
  unfold input4722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4721 output4716)).val
theorem output4722_def : output4722 = (.seq output4721 output4716) := by
  unfold output4722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4722_skip : Flapjack.WordAlloc.isSkip output4722 = false := by
  rw [output4722_def]
  conv => lhs; cbv
  try rfl
theorem node4722_eq : Flapjack.WordAlloc.removeDeadStructural input4722 value2362 value1 value2 = (output4722, value5, value1) := by
  rw [input4722_def, output4722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4716_eq]
  dsimp only
  rw [node4721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4722 input4715)).val
theorem input4723_def : input4723 = (.seq input4722 input4715) := by
  unfold input4723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4722 output4715)).val
theorem output4723_def : output4723 = (.seq output4722 output4715) := by
  unfold output4723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4723_skip : Flapjack.WordAlloc.isSkip output4723 = false := by
  rw [output4723_def]
  conv => lhs; cbv
  try rfl
theorem node4723_eq : Flapjack.WordAlloc.removeDeadStructural input4723 value2360 value1 value2 = (output4723, value5, value1) := by
  rw [input4723_def, output4723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4715_eq]
  dsimp only
  rw [node4722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2366 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20589 (Flapjack.WordLangAddr.addr 20593 0#64)))).val
theorem input4724_def : input4724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20589 (Flapjack.WordLangAddr.addr 20593 0#64))) := by
  unfold input4724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20589 (Flapjack.WordLangAddr.addr 20593 0#64)))).val
theorem output4724_def : output4724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20589 (Flapjack.WordLangAddr.addr 20593 0#64))) := by
  unfold output4724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4724_skip : Flapjack.WordAlloc.isSkip output4724 = false := by
  rw [output4724_def]
  conv => lhs; cbv
  try rfl
theorem node4724_eq : Flapjack.WordAlloc.removeDeadStructural input4724 value5 value1 value2 = (output4724, value2366, value1) := by
  rw [input4724_def, output4724_def]
  try (conv => lhs; cbv)
  try rfl

def value2367 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20593, 20581)])).val
theorem input4725_def : input4725 = (Flapjack.WordLangProgHOL.move 0 [(20593, 20581)]) := by
  unfold input4725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20593, 20581)])).val
theorem output4725_def : output4725 = (Flapjack.WordLangProgHOL.move 0 [(20593, 20581)]) := by
  unfold output4725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4725_skip : Flapjack.WordAlloc.isSkip output4725 = false := by
  rw [output4725_def]
  conv => lhs; cbv
  try rfl
theorem node4725_eq : Flapjack.WordAlloc.removeDeadStructural input4725 value2366 value1 value2 = (output4725, value2367, value1) := by
  rw [input4725_def, output4725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4725 input4724)).val
theorem input4726_def : input4726 = (.seq input4725 input4724) := by
  unfold input4726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4725 output4724)).val
theorem output4726_def : output4726 = (.seq output4725 output4724) := by
  unfold output4726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4726_skip : Flapjack.WordAlloc.isSkip output4726 = false := by
  rw [output4726_def]
  conv => lhs; cbv
  try rfl
theorem node4726_eq : Flapjack.WordAlloc.removeDeadStructural input4726 value5 value1 value2 = (output4726, value2367, value1) := by
  rw [input4726_def, output4726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4724_eq]
  dsimp only
  rw [node4725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2368 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20589 5412103778470702295#64))).val
theorem input4727_def : input4727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20589 5412103778470702295#64)) := by
  unfold input4727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20589 5412103778470702295#64))).val
theorem output4727_def : output4727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20589 5412103778470702295#64)) := by
  unfold output4727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4727_skip : Flapjack.WordAlloc.isSkip output4727 = false := by
  rw [output4727_def]
  conv => lhs; cbv
  try rfl
theorem node4727_eq : Flapjack.WordAlloc.removeDeadStructural input4727 value2367 value1 value2 = (output4727, value2368, value1) := by
  rw [input4727_def, output4727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20585 5412103778470702295#64))).val
theorem input4728_def : input4728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20585 5412103778470702295#64)) := by
  unfold input4728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4728_def : output4728 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4728_skip : Flapjack.WordAlloc.isSkip output4728 = true := by
  rw [output4728_def]
  conv => lhs; cbv
  try rfl
theorem node4728_eq : Flapjack.WordAlloc.removeDeadStructural input4728 value2368 value1 value2 = (output4728, value2368, value1) := by
  rw [input4728_def, output4728_def]
  try (conv => lhs; cbv)
  try rfl

def value2369 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20581 20573 (Flapjack.WordRegImm.reg 20577))))).val
theorem input4729_def : input4729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20581 20573 (Flapjack.WordRegImm.reg 20577)))) := by
  unfold input4729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20581 20573 (Flapjack.WordRegImm.reg 20577))))).val
theorem output4729_def : output4729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20581 20573 (Flapjack.WordRegImm.reg 20577)))) := by
  unfold output4729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4729_skip : Flapjack.WordAlloc.isSkip output4729 = false := by
  rw [output4729_def]
  conv => lhs; cbv
  try rfl
theorem node4729_eq : Flapjack.WordAlloc.removeDeadStructural input4729 value2368 value1 value2 = (output4729, value2369, value1) := by
  rw [input4729_def, output4729_def]
  try (conv => lhs; cbv)
  try rfl

def value2370 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20577 4768#64))).val
theorem input4730_def : input4730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20577 4768#64)) := by
  unfold input4730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20577 4768#64))).val
theorem output4730_def : output4730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20577 4768#64)) := by
  unfold output4730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4730_skip : Flapjack.WordAlloc.isSkip output4730 = false := by
  rw [output4730_def]
  conv => lhs; cbv
  try rfl
theorem node4730_eq : Flapjack.WordAlloc.removeDeadStructural input4730 value2369 value1 value2 = (output4730, value2370, value1) := by
  rw [input4730_def, output4730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4730 input4729)).val
theorem input4731_def : input4731 = (.seq input4730 input4729) := by
  unfold input4731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4730 output4729)).val
theorem output4731_def : output4731 = (.seq output4730 output4729) := by
  unfold output4731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4731_skip : Flapjack.WordAlloc.isSkip output4731 = false := by
  rw [output4731_def]
  conv => lhs; cbv
  try rfl
theorem node4731_eq : Flapjack.WordAlloc.removeDeadStructural input4731 value2368 value1 value2 = (output4731, value2370, value1) := by
  rw [input4731_def, output4731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4729_eq]
  dsimp only
  rw [node4730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2371 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20573 (Flapjack.WordLangAddr.addr 20569 18446744073709551104#64)))).val
theorem input4732_def : input4732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20573 (Flapjack.WordLangAddr.addr 20569 18446744073709551104#64))) := by
  unfold input4732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20573 (Flapjack.WordLangAddr.addr 20569 18446744073709551104#64)))).val
theorem output4732_def : output4732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20573 (Flapjack.WordLangAddr.addr 20569 18446744073709551104#64))) := by
  unfold output4732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4732_skip : Flapjack.WordAlloc.isSkip output4732 = false := by
  rw [output4732_def]
  conv => lhs; cbv
  try rfl
theorem node4732_eq : Flapjack.WordAlloc.removeDeadStructural input4732 value2370 value1 value2 = (output4732, value2371, value1) := by
  rw [input4732_def, output4732_def]
  try (conv => lhs; cbv)
  try rfl

def value2372 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20569 20565)).val
theorem input4733_def : input4733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20569 20565) := by
  unfold input4733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20569 20565)).val
theorem output4733_def : output4733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20569 20565) := by
  unfold output4733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4733_skip : Flapjack.WordAlloc.isSkip output4733 = false := by
  rw [output4733_def]
  conv => lhs; cbv
  try rfl
theorem node4733_eq : Flapjack.WordAlloc.removeDeadStructural input4733 value2371 value1 value2 = (output4733, value2372, value1) := by
  rw [input4733_def, output4733_def]
  try (conv => lhs; cbv)
  try rfl

def value2373 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20565 20561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4734_def : input4734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20565 20561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20565 20561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4734_def : output4734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20565 20561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4734_skip : Flapjack.WordAlloc.isSkip output4734 = false := by
  rw [output4734_def]
  conv => lhs; cbv
  try rfl
theorem node4734_eq : Flapjack.WordAlloc.removeDeadStructural input4734 value2372 value1 value2 = (output4734, value2373, value1) := by
  rw [input4734_def, output4734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20561 Flapjack.WordStore.heapLength)).val
theorem input4735_def : input4735 = (Flapjack.WordLangProgHOL.get 20561 Flapjack.WordStore.heapLength) := by
  unfold input4735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20561 Flapjack.WordStore.heapLength)).val
theorem output4735_def : output4735 = (Flapjack.WordLangProgHOL.get 20561 Flapjack.WordStore.heapLength) := by
  unfold output4735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4735_skip : Flapjack.WordAlloc.isSkip output4735 = false := by
  rw [output4735_def]
  conv => lhs; cbv
  try rfl
theorem node4735_eq : Flapjack.WordAlloc.removeDeadStructural input4735 value2373 value1 value2 = (output4735, value5, value1) := by
  rw [input4735_def, output4735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4735 input4734)).val
theorem input4736_def : input4736 = (.seq input4735 input4734) := by
  unfold input4736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4735 output4734)).val
theorem output4736_def : output4736 = (.seq output4735 output4734) := by
  unfold output4736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4736_skip : Flapjack.WordAlloc.isSkip output4736 = false := by
  rw [output4736_def]
  conv => lhs; cbv
  try rfl
theorem node4736_eq : Flapjack.WordAlloc.removeDeadStructural input4736 value2372 value1 value2 = (output4736, value5, value1) := by
  rw [input4736_def, output4736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4734_eq]
  dsimp only
  rw [node4735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4736 input4733)).val
theorem input4737_def : input4737 = (.seq input4736 input4733) := by
  unfold input4737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4736 output4733)).val
theorem output4737_def : output4737 = (.seq output4736 output4733) := by
  unfold output4737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4737_skip : Flapjack.WordAlloc.isSkip output4737 = false := by
  rw [output4737_def]
  conv => lhs; cbv
  try rfl
theorem node4737_eq : Flapjack.WordAlloc.removeDeadStructural input4737 value2371 value1 value2 = (output4737, value5, value1) := by
  rw [input4737_def, output4737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4733_eq]
  dsimp only
  rw [node4736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4737 input4732)).val
theorem input4738_def : input4738 = (.seq input4737 input4732) := by
  unfold input4738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4737 output4732)).val
theorem output4738_def : output4738 = (.seq output4737 output4732) := by
  unfold output4738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4738_skip : Flapjack.WordAlloc.isSkip output4738 = false := by
  rw [output4738_def]
  conv => lhs; cbv
  try rfl
theorem node4738_eq : Flapjack.WordAlloc.removeDeadStructural input4738 value2370 value1 value2 = (output4738, value5, value1) := by
  rw [input4738_def, output4738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4732_eq]
  dsimp only
  rw [node4737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4738 input4731)).val
theorem input4739_def : input4739 = (.seq input4738 input4731) := by
  unfold input4739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4738 output4731)).val
theorem output4739_def : output4739 = (.seq output4738 output4731) := by
  unfold output4739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4739_skip : Flapjack.WordAlloc.isSkip output4739 = false := by
  rw [output4739_def]
  conv => lhs; cbv
  try rfl
theorem node4739_eq : Flapjack.WordAlloc.removeDeadStructural input4739 value2368 value1 value2 = (output4739, value5, value1) := by
  rw [input4739_def, output4739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4731_eq]
  dsimp only
  rw [node4738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2374 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20553 (Flapjack.WordLangAddr.addr 20557 0#64)))).val
theorem input4740_def : input4740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20553 (Flapjack.WordLangAddr.addr 20557 0#64))) := by
  unfold input4740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20553 (Flapjack.WordLangAddr.addr 20557 0#64)))).val
theorem output4740_def : output4740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20553 (Flapjack.WordLangAddr.addr 20557 0#64))) := by
  unfold output4740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4740_skip : Flapjack.WordAlloc.isSkip output4740 = false := by
  rw [output4740_def]
  conv => lhs; cbv
  try rfl
theorem node4740_eq : Flapjack.WordAlloc.removeDeadStructural input4740 value5 value1 value2 = (output4740, value2374, value1) := by
  rw [input4740_def, output4740_def]
  try (conv => lhs; cbv)
  try rfl

def value2375 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20557, 20545)])).val
theorem input4741_def : input4741 = (Flapjack.WordLangProgHOL.move 0 [(20557, 20545)]) := by
  unfold input4741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20557, 20545)])).val
theorem output4741_def : output4741 = (Flapjack.WordLangProgHOL.move 0 [(20557, 20545)]) := by
  unfold output4741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4741_skip : Flapjack.WordAlloc.isSkip output4741 = false := by
  rw [output4741_def]
  conv => lhs; cbv
  try rfl
theorem node4741_eq : Flapjack.WordAlloc.removeDeadStructural input4741 value2374 value1 value2 = (output4741, value2375, value1) := by
  rw [input4741_def, output4741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4741 input4740)).val
theorem input4742_def : input4742 = (.seq input4741 input4740) := by
  unfold input4742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4741 output4740)).val
theorem output4742_def : output4742 = (.seq output4741 output4740) := by
  unfold output4742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4742_skip : Flapjack.WordAlloc.isSkip output4742 = false := by
  rw [output4742_def]
  conv => lhs; cbv
  try rfl
theorem node4742_eq : Flapjack.WordAlloc.removeDeadStructural input4742 value5 value1 value2 = (output4742, value2375, value1) := by
  rw [input4742_def, output4742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4740_eq]
  dsimp only
  rw [node4741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2376 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20553 7239337960414712511#64))).val
theorem input4743_def : input4743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20553 7239337960414712511#64)) := by
  unfold input4743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20553 7239337960414712511#64))).val
theorem output4743_def : output4743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20553 7239337960414712511#64)) := by
  unfold output4743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4743_skip : Flapjack.WordAlloc.isSkip output4743 = false := by
  rw [output4743_def]
  conv => lhs; cbv
  try rfl
theorem node4743_eq : Flapjack.WordAlloc.removeDeadStructural input4743 value2375 value1 value2 = (output4743, value2376, value1) := by
  rw [input4743_def, output4743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20549 7239337960414712511#64))).val
theorem input4744_def : input4744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20549 7239337960414712511#64)) := by
  unfold input4744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4744_def : output4744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4744_skip : Flapjack.WordAlloc.isSkip output4744 = true := by
  rw [output4744_def]
  conv => lhs; cbv
  try rfl
theorem node4744_eq : Flapjack.WordAlloc.removeDeadStructural input4744 value2376 value1 value2 = (output4744, value2376, value1) := by
  rw [input4744_def, output4744_def]
  try (conv => lhs; cbv)
  try rfl

def value2377 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20545 20537 (Flapjack.WordRegImm.reg 20541))))).val
theorem input4745_def : input4745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20545 20537 (Flapjack.WordRegImm.reg 20541)))) := by
  unfold input4745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20545 20537 (Flapjack.WordRegImm.reg 20541))))).val
theorem output4745_def : output4745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20545 20537 (Flapjack.WordRegImm.reg 20541)))) := by
  unfold output4745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4745_skip : Flapjack.WordAlloc.isSkip output4745 = false := by
  rw [output4745_def]
  conv => lhs; cbv
  try rfl
theorem node4745_eq : Flapjack.WordAlloc.removeDeadStructural input4745 value2376 value1 value2 = (output4745, value2377, value1) := by
  rw [input4745_def, output4745_def]
  try (conv => lhs; cbv)
  try rfl

def value2378 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20541 4760#64))).val
theorem input4746_def : input4746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20541 4760#64)) := by
  unfold input4746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20541 4760#64))).val
theorem output4746_def : output4746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20541 4760#64)) := by
  unfold output4746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4746_skip : Flapjack.WordAlloc.isSkip output4746 = false := by
  rw [output4746_def]
  conv => lhs; cbv
  try rfl
theorem node4746_eq : Flapjack.WordAlloc.removeDeadStructural input4746 value2377 value1 value2 = (output4746, value2378, value1) := by
  rw [input4746_def, output4746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4746 input4745)).val
theorem input4747_def : input4747 = (.seq input4746 input4745) := by
  unfold input4747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4746 output4745)).val
theorem output4747_def : output4747 = (.seq output4746 output4745) := by
  unfold output4747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4747_skip : Flapjack.WordAlloc.isSkip output4747 = false := by
  rw [output4747_def]
  conv => lhs; cbv
  try rfl
theorem node4747_eq : Flapjack.WordAlloc.removeDeadStructural input4747 value2376 value1 value2 = (output4747, value2378, value1) := by
  rw [input4747_def, output4747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4745_eq]
  dsimp only
  rw [node4746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2379 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20537 (Flapjack.WordLangAddr.addr 20533 18446744073709551104#64)))).val
theorem input4748_def : input4748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20537 (Flapjack.WordLangAddr.addr 20533 18446744073709551104#64))) := by
  unfold input4748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20537 (Flapjack.WordLangAddr.addr 20533 18446744073709551104#64)))).val
theorem output4748_def : output4748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20537 (Flapjack.WordLangAddr.addr 20533 18446744073709551104#64))) := by
  unfold output4748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4748_skip : Flapjack.WordAlloc.isSkip output4748 = false := by
  rw [output4748_def]
  conv => lhs; cbv
  try rfl
theorem node4748_eq : Flapjack.WordAlloc.removeDeadStructural input4748 value2378 value1 value2 = (output4748, value2379, value1) := by
  rw [input4748_def, output4748_def]
  try (conv => lhs; cbv)
  try rfl

def value2380 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20533 20529)).val
theorem input4749_def : input4749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20533 20529) := by
  unfold input4749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20533 20529)).val
theorem output4749_def : output4749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20533 20529) := by
  unfold output4749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4749_skip : Flapjack.WordAlloc.isSkip output4749 = false := by
  rw [output4749_def]
  conv => lhs; cbv
  try rfl
theorem node4749_eq : Flapjack.WordAlloc.removeDeadStructural input4749 value2379 value1 value2 = (output4749, value2380, value1) := by
  rw [input4749_def, output4749_def]
  try (conv => lhs; cbv)
  try rfl

def value2381 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20529 20525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4750_def : input4750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20529 20525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20529 20525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4750_def : output4750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20529 20525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4750_skip : Flapjack.WordAlloc.isSkip output4750 = false := by
  rw [output4750_def]
  conv => lhs; cbv
  try rfl
theorem node4750_eq : Flapjack.WordAlloc.removeDeadStructural input4750 value2380 value1 value2 = (output4750, value2381, value1) := by
  rw [input4750_def, output4750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20525 Flapjack.WordStore.heapLength)).val
theorem input4751_def : input4751 = (Flapjack.WordLangProgHOL.get 20525 Flapjack.WordStore.heapLength) := by
  unfold input4751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20525 Flapjack.WordStore.heapLength)).val
theorem output4751_def : output4751 = (Flapjack.WordLangProgHOL.get 20525 Flapjack.WordStore.heapLength) := by
  unfold output4751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4751_skip : Flapjack.WordAlloc.isSkip output4751 = false := by
  rw [output4751_def]
  conv => lhs; cbv
  try rfl
theorem node4751_eq : Flapjack.WordAlloc.removeDeadStructural input4751 value2381 value1 value2 = (output4751, value5, value1) := by
  rw [input4751_def, output4751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4751 input4750)).val
theorem input4752_def : input4752 = (.seq input4751 input4750) := by
  unfold input4752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4751 output4750)).val
theorem output4752_def : output4752 = (.seq output4751 output4750) := by
  unfold output4752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4752_skip : Flapjack.WordAlloc.isSkip output4752 = false := by
  rw [output4752_def]
  conv => lhs; cbv
  try rfl
theorem node4752_eq : Flapjack.WordAlloc.removeDeadStructural input4752 value2380 value1 value2 = (output4752, value5, value1) := by
  rw [input4752_def, output4752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4750_eq]
  dsimp only
  rw [node4751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4752 input4749)).val
theorem input4753_def : input4753 = (.seq input4752 input4749) := by
  unfold input4753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4752 output4749)).val
theorem output4753_def : output4753 = (.seq output4752 output4749) := by
  unfold output4753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4753_skip : Flapjack.WordAlloc.isSkip output4753 = false := by
  rw [output4753_def]
  conv => lhs; cbv
  try rfl
theorem node4753_eq : Flapjack.WordAlloc.removeDeadStructural input4753 value2379 value1 value2 = (output4753, value5, value1) := by
  rw [input4753_def, output4753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4749_eq]
  dsimp only
  rw [node4752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4753 input4748)).val
theorem input4754_def : input4754 = (.seq input4753 input4748) := by
  unfold input4754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4753 output4748)).val
theorem output4754_def : output4754 = (.seq output4753 output4748) := by
  unfold output4754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4754_skip : Flapjack.WordAlloc.isSkip output4754 = false := by
  rw [output4754_def]
  conv => lhs; cbv
  try rfl
theorem node4754_eq : Flapjack.WordAlloc.removeDeadStructural input4754 value2378 value1 value2 = (output4754, value5, value1) := by
  rw [input4754_def, output4754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4748_eq]
  dsimp only
  rw [node4753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4754 input4747)).val
theorem input4755_def : input4755 = (.seq input4754 input4747) := by
  unfold input4755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4754 output4747)).val
theorem output4755_def : output4755 = (.seq output4754 output4747) := by
  unfold output4755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4755_skip : Flapjack.WordAlloc.isSkip output4755 = false := by
  rw [output4755_def]
  conv => lhs; cbv
  try rfl
theorem node4755_eq : Flapjack.WordAlloc.removeDeadStructural input4755 value2376 value1 value2 = (output4755, value5, value1) := by
  rw [input4755_def, output4755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4747_eq]
  dsimp only
  rw [node4754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2382 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20517 (Flapjack.WordLangAddr.addr 20521 0#64)))).val
theorem input4756_def : input4756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20517 (Flapjack.WordLangAddr.addr 20521 0#64))) := by
  unfold input4756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20517 (Flapjack.WordLangAddr.addr 20521 0#64)))).val
theorem output4756_def : output4756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20517 (Flapjack.WordLangAddr.addr 20521 0#64))) := by
  unfold output4756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4756_skip : Flapjack.WordAlloc.isSkip output4756 = false := by
  rw [output4756_def]
  conv => lhs; cbv
  try rfl
theorem node4756_eq : Flapjack.WordAlloc.removeDeadStructural input4756 value5 value1 value2 = (output4756, value2382, value1) := by
  rw [input4756_def, output4756_def]
  try (conv => lhs; cbv)
  try rfl

def value2383 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20521, 20509)])).val
theorem input4757_def : input4757 = (Flapjack.WordLangProgHOL.move 0 [(20521, 20509)]) := by
  unfold input4757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20521, 20509)])).val
theorem output4757_def : output4757 = (Flapjack.WordLangProgHOL.move 0 [(20521, 20509)]) := by
  unfold output4757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4757_skip : Flapjack.WordAlloc.isSkip output4757 = false := by
  rw [output4757_def]
  conv => lhs; cbv
  try rfl
theorem node4757_eq : Flapjack.WordAlloc.removeDeadStructural input4757 value2382 value1 value2 = (output4757, value2383, value1) := by
  rw [input4757_def, output4757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4757 input4756)).val
theorem input4758_def : input4758 = (.seq input4757 input4756) := by
  unfold input4758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4757 output4756)).val
theorem output4758_def : output4758 = (.seq output4757 output4756) := by
  unfold output4758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4758_skip : Flapjack.WordAlloc.isSkip output4758 = false := by
  rw [output4758_def]
  conv => lhs; cbv
  try rfl
theorem node4758_eq : Flapjack.WordAlloc.removeDeadStructural input4758 value5 value1 value2 = (output4758, value2383, value1) := by
  rw [input4758_def, output4758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4756_eq]
  dsimp only
  rw [node4757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2384 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20517 7435674573564081700#64))).val
theorem input4759_def : input4759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20517 7435674573564081700#64)) := by
  unfold input4759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20517 7435674573564081700#64))).val
theorem output4759_def : output4759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20517 7435674573564081700#64)) := by
  unfold output4759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4759_skip : Flapjack.WordAlloc.isSkip output4759 = false := by
  rw [output4759_def]
  conv => lhs; cbv
  try rfl
theorem node4759_eq : Flapjack.WordAlloc.removeDeadStructural input4759 value2383 value1 value2 = (output4759, value2384, value1) := by
  rw [input4759_def, output4759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20513 7435674573564081700#64))).val
theorem input4760_def : input4760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20513 7435674573564081700#64)) := by
  unfold input4760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4760_def : output4760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4760_skip : Flapjack.WordAlloc.isSkip output4760 = true := by
  rw [output4760_def]
  conv => lhs; cbv
  try rfl
theorem node4760_eq : Flapjack.WordAlloc.removeDeadStructural input4760 value2384 value1 value2 = (output4760, value2384, value1) := by
  rw [input4760_def, output4760_def]
  try (conv => lhs; cbv)
  try rfl

def value2385 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20509 20501 (Flapjack.WordRegImm.reg 20505))))).val
theorem input4761_def : input4761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20509 20501 (Flapjack.WordRegImm.reg 20505)))) := by
  unfold input4761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20509 20501 (Flapjack.WordRegImm.reg 20505))))).val
theorem output4761_def : output4761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20509 20501 (Flapjack.WordRegImm.reg 20505)))) := by
  unfold output4761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4761_skip : Flapjack.WordAlloc.isSkip output4761 = false := by
  rw [output4761_def]
  conv => lhs; cbv
  try rfl
theorem node4761_eq : Flapjack.WordAlloc.removeDeadStructural input4761 value2384 value1 value2 = (output4761, value2385, value1) := by
  rw [input4761_def, output4761_def]
  try (conv => lhs; cbv)
  try rfl

def value2386 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20505 4752#64))).val
theorem input4762_def : input4762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20505 4752#64)) := by
  unfold input4762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20505 4752#64))).val
theorem output4762_def : output4762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20505 4752#64)) := by
  unfold output4762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4762_skip : Flapjack.WordAlloc.isSkip output4762 = false := by
  rw [output4762_def]
  conv => lhs; cbv
  try rfl
theorem node4762_eq : Flapjack.WordAlloc.removeDeadStructural input4762 value2385 value1 value2 = (output4762, value2386, value1) := by
  rw [input4762_def, output4762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4762 input4761)).val
theorem input4763_def : input4763 = (.seq input4762 input4761) := by
  unfold input4763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4762 output4761)).val
theorem output4763_def : output4763 = (.seq output4762 output4761) := by
  unfold output4763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4763_skip : Flapjack.WordAlloc.isSkip output4763 = false := by
  rw [output4763_def]
  conv => lhs; cbv
  try rfl
theorem node4763_eq : Flapjack.WordAlloc.removeDeadStructural input4763 value2384 value1 value2 = (output4763, value2386, value1) := by
  rw [input4763_def, output4763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4761_eq]
  dsimp only
  rw [node4762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2387 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20501 (Flapjack.WordLangAddr.addr 20497 18446744073709551104#64)))).val
theorem input4764_def : input4764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20501 (Flapjack.WordLangAddr.addr 20497 18446744073709551104#64))) := by
  unfold input4764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20501 (Flapjack.WordLangAddr.addr 20497 18446744073709551104#64)))).val
theorem output4764_def : output4764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20501 (Flapjack.WordLangAddr.addr 20497 18446744073709551104#64))) := by
  unfold output4764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4764_skip : Flapjack.WordAlloc.isSkip output4764 = false := by
  rw [output4764_def]
  conv => lhs; cbv
  try rfl
theorem node4764_eq : Flapjack.WordAlloc.removeDeadStructural input4764 value2386 value1 value2 = (output4764, value2387, value1) := by
  rw [input4764_def, output4764_def]
  try (conv => lhs; cbv)
  try rfl

def value2388 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20497 20493)).val
theorem input4765_def : input4765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20497 20493) := by
  unfold input4765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20497 20493)).val
theorem output4765_def : output4765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20497 20493) := by
  unfold output4765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4765_skip : Flapjack.WordAlloc.isSkip output4765 = false := by
  rw [output4765_def]
  conv => lhs; cbv
  try rfl
theorem node4765_eq : Flapjack.WordAlloc.removeDeadStructural input4765 value2387 value1 value2 = (output4765, value2388, value1) := by
  rw [input4765_def, output4765_def]
  try (conv => lhs; cbv)
  try rfl

def value2389 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20493 20489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4766_def : input4766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20493 20489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20493 20489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4766_def : output4766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20493 20489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4766_skip : Flapjack.WordAlloc.isSkip output4766 = false := by
  rw [output4766_def]
  conv => lhs; cbv
  try rfl
theorem node4766_eq : Flapjack.WordAlloc.removeDeadStructural input4766 value2388 value1 value2 = (output4766, value2389, value1) := by
  rw [input4766_def, output4766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20489 Flapjack.WordStore.heapLength)).val
theorem input4767_def : input4767 = (Flapjack.WordLangProgHOL.get 20489 Flapjack.WordStore.heapLength) := by
  unfold input4767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20489 Flapjack.WordStore.heapLength)).val
theorem output4767_def : output4767 = (Flapjack.WordLangProgHOL.get 20489 Flapjack.WordStore.heapLength) := by
  unfold output4767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4767_skip : Flapjack.WordAlloc.isSkip output4767 = false := by
  rw [output4767_def]
  conv => lhs; cbv
  try rfl
theorem node4767_eq : Flapjack.WordAlloc.removeDeadStructural input4767 value2389 value1 value2 = (output4767, value5, value1) := by
  rw [input4767_def, output4767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4767 input4766)).val
theorem input4768_def : input4768 = (.seq input4767 input4766) := by
  unfold input4768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4767 output4766)).val
theorem output4768_def : output4768 = (.seq output4767 output4766) := by
  unfold output4768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4768_skip : Flapjack.WordAlloc.isSkip output4768 = false := by
  rw [output4768_def]
  conv => lhs; cbv
  try rfl
theorem node4768_eq : Flapjack.WordAlloc.removeDeadStructural input4768 value2388 value1 value2 = (output4768, value5, value1) := by
  rw [input4768_def, output4768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4766_eq]
  dsimp only
  rw [node4767_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4768 input4765)).val
theorem input4769_def : input4769 = (.seq input4768 input4765) := by
  unfold input4769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4768 output4765)).val
theorem output4769_def : output4769 = (.seq output4768 output4765) := by
  unfold output4769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4769_skip : Flapjack.WordAlloc.isSkip output4769 = false := by
  rw [output4769_def]
  conv => lhs; cbv
  try rfl
theorem node4769_eq : Flapjack.WordAlloc.removeDeadStructural input4769 value2387 value1 value2 = (output4769, value5, value1) := by
  rw [input4769_def, output4769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4765_eq]
  dsimp only
  rw [node4768_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4769 input4764)).val
theorem input4770_def : input4770 = (.seq input4769 input4764) := by
  unfold input4770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4769 output4764)).val
theorem output4770_def : output4770 = (.seq output4769 output4764) := by
  unfold output4770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4770_skip : Flapjack.WordAlloc.isSkip output4770 = false := by
  rw [output4770_def]
  conv => lhs; cbv
  try rfl
theorem node4770_eq : Flapjack.WordAlloc.removeDeadStructural input4770 value2386 value1 value2 = (output4770, value5, value1) := by
  rw [input4770_def, output4770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4764_eq]
  dsimp only
  rw [node4769_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4770 input4763)).val
theorem input4771_def : input4771 = (.seq input4770 input4763) := by
  unfold input4771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4770 output4763)).val
theorem output4771_def : output4771 = (.seq output4770 output4763) := by
  unfold output4771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4771_skip : Flapjack.WordAlloc.isSkip output4771 = false := by
  rw [output4771_def]
  conv => lhs; cbv
  try rfl
theorem node4771_eq : Flapjack.WordAlloc.removeDeadStructural input4771 value2384 value1 value2 = (output4771, value5, value1) := by
  rw [input4771_def, output4771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4763_eq]
  dsimp only
  rw [node4770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2390 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20481 (Flapjack.WordLangAddr.addr 20485 0#64)))).val
theorem input4772_def : input4772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20481 (Flapjack.WordLangAddr.addr 20485 0#64))) := by
  unfold input4772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20481 (Flapjack.WordLangAddr.addr 20485 0#64)))).val
theorem output4772_def : output4772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20481 (Flapjack.WordLangAddr.addr 20485 0#64))) := by
  unfold output4772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4772_skip : Flapjack.WordAlloc.isSkip output4772 = false := by
  rw [output4772_def]
  conv => lhs; cbv
  try rfl
theorem node4772_eq : Flapjack.WordAlloc.removeDeadStructural input4772 value5 value1 value2 = (output4772, value2390, value1) := by
  rw [input4772_def, output4772_def]
  try (conv => lhs; cbv)
  try rfl

def value2391 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20485, 20473)])).val
theorem input4773_def : input4773 = (Flapjack.WordLangProgHOL.move 0 [(20485, 20473)]) := by
  unfold input4773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20485, 20473)])).val
theorem output4773_def : output4773 = (Flapjack.WordLangProgHOL.move 0 [(20485, 20473)]) := by
  unfold output4773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4773_skip : Flapjack.WordAlloc.isSkip output4773 = false := by
  rw [output4773_def]
  conv => lhs; cbv
  try rfl
theorem node4773_eq : Flapjack.WordAlloc.removeDeadStructural input4773 value2390 value1 value2 = (output4773, value2391, value1) := by
  rw [input4773_def, output4773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4773 input4772)).val
theorem input4774_def : input4774 = (.seq input4773 input4772) := by
  unfold input4774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4773 output4772)).val
theorem output4774_def : output4774 = (.seq output4773 output4772) := by
  unfold output4774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4774_skip : Flapjack.WordAlloc.isSkip output4774 = false := by
  rw [output4774_def]
  conv => lhs; cbv
  try rfl
theorem node4774_eq : Flapjack.WordAlloc.removeDeadStructural input4774 value5 value1 value2 = (output4774, value2391, value1) := by
  rw [input4774_def, output4774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4772_eq]
  dsimp only
  rw [node4773_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2392 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20481 2210141511517208575#64))).val
theorem input4775_def : input4775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20481 2210141511517208575#64)) := by
  unfold input4775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20481 2210141511517208575#64))).val
theorem output4775_def : output4775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20481 2210141511517208575#64)) := by
  unfold output4775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4775_skip : Flapjack.WordAlloc.isSkip output4775 = false := by
  rw [output4775_def]
  conv => lhs; cbv
  try rfl
theorem node4775_eq : Flapjack.WordAlloc.removeDeadStructural input4775 value2391 value1 value2 = (output4775, value2392, value1) := by
  rw [input4775_def, output4775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20477 2210141511517208575#64))).val
theorem input4776_def : input4776 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20477 2210141511517208575#64)) := by
  unfold input4776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4776_def : output4776 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4776_skip : Flapjack.WordAlloc.isSkip output4776 = true := by
  rw [output4776_def]
  conv => lhs; cbv
  try rfl
theorem node4776_eq : Flapjack.WordAlloc.removeDeadStructural input4776 value2392 value1 value2 = (output4776, value2392, value1) := by
  rw [input4776_def, output4776_def]
  try (conv => lhs; cbv)
  try rfl

def value2393 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20473 20465 (Flapjack.WordRegImm.reg 20469))))).val
theorem input4777_def : input4777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20473 20465 (Flapjack.WordRegImm.reg 20469)))) := by
  unfold input4777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20473 20465 (Flapjack.WordRegImm.reg 20469))))).val
theorem output4777_def : output4777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20473 20465 (Flapjack.WordRegImm.reg 20469)))) := by
  unfold output4777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4777_skip : Flapjack.WordAlloc.isSkip output4777 = false := by
  rw [output4777_def]
  conv => lhs; cbv
  try rfl
theorem node4777_eq : Flapjack.WordAlloc.removeDeadStructural input4777 value2392 value1 value2 = (output4777, value2393, value1) := by
  rw [input4777_def, output4777_def]
  try (conv => lhs; cbv)
  try rfl

def value2394 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20469 4744#64))).val
theorem input4778_def : input4778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20469 4744#64)) := by
  unfold input4778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20469 4744#64))).val
theorem output4778_def : output4778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20469 4744#64)) := by
  unfold output4778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4778_skip : Flapjack.WordAlloc.isSkip output4778 = false := by
  rw [output4778_def]
  conv => lhs; cbv
  try rfl
theorem node4778_eq : Flapjack.WordAlloc.removeDeadStructural input4778 value2393 value1 value2 = (output4778, value2394, value1) := by
  rw [input4778_def, output4778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4778 input4777)).val
theorem input4779_def : input4779 = (.seq input4778 input4777) := by
  unfold input4779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4778 output4777)).val
theorem output4779_def : output4779 = (.seq output4778 output4777) := by
  unfold output4779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4779_skip : Flapjack.WordAlloc.isSkip output4779 = false := by
  rw [output4779_def]
  conv => lhs; cbv
  try rfl
theorem node4779_eq : Flapjack.WordAlloc.removeDeadStructural input4779 value2392 value1 value2 = (output4779, value2394, value1) := by
  rw [input4779_def, output4779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4777_eq]
  dsimp only
  rw [node4778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2395 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20465 (Flapjack.WordLangAddr.addr 20461 18446744073709551104#64)))).val
theorem input4780_def : input4780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20465 (Flapjack.WordLangAddr.addr 20461 18446744073709551104#64))) := by
  unfold input4780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20465 (Flapjack.WordLangAddr.addr 20461 18446744073709551104#64)))).val
theorem output4780_def : output4780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20465 (Flapjack.WordLangAddr.addr 20461 18446744073709551104#64))) := by
  unfold output4780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4780_skip : Flapjack.WordAlloc.isSkip output4780 = false := by
  rw [output4780_def]
  conv => lhs; cbv
  try rfl
theorem node4780_eq : Flapjack.WordAlloc.removeDeadStructural input4780 value2394 value1 value2 = (output4780, value2395, value1) := by
  rw [input4780_def, output4780_def]
  try (conv => lhs; cbv)
  try rfl

def value2396 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20461 20457)).val
theorem input4781_def : input4781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20461 20457) := by
  unfold input4781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20461 20457)).val
theorem output4781_def : output4781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20461 20457) := by
  unfold output4781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4781_skip : Flapjack.WordAlloc.isSkip output4781 = false := by
  rw [output4781_def]
  conv => lhs; cbv
  try rfl
theorem node4781_eq : Flapjack.WordAlloc.removeDeadStructural input4781 value2395 value1 value2 = (output4781, value2396, value1) := by
  rw [input4781_def, output4781_def]
  try (conv => lhs; cbv)
  try rfl

def value2397 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20457 20453 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4782_def : input4782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20457 20453 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20457 20453 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4782_def : output4782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20457 20453 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4782_skip : Flapjack.WordAlloc.isSkip output4782 = false := by
  rw [output4782_def]
  conv => lhs; cbv
  try rfl
theorem node4782_eq : Flapjack.WordAlloc.removeDeadStructural input4782 value2396 value1 value2 = (output4782, value2397, value1) := by
  rw [input4782_def, output4782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20453 Flapjack.WordStore.heapLength)).val
theorem input4783_def : input4783 = (Flapjack.WordLangProgHOL.get 20453 Flapjack.WordStore.heapLength) := by
  unfold input4783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20453 Flapjack.WordStore.heapLength)).val
theorem output4783_def : output4783 = (Flapjack.WordLangProgHOL.get 20453 Flapjack.WordStore.heapLength) := by
  unfold output4783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4783_skip : Flapjack.WordAlloc.isSkip output4783 = false := by
  rw [output4783_def]
  conv => lhs; cbv
  try rfl
theorem node4783_eq : Flapjack.WordAlloc.removeDeadStructural input4783 value2397 value1 value2 = (output4783, value5, value1) := by
  rw [input4783_def, output4783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4783 input4782)).val
theorem input4784_def : input4784 = (.seq input4783 input4782) := by
  unfold input4784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4783 output4782)).val
theorem output4784_def : output4784 = (.seq output4783 output4782) := by
  unfold output4784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4784_skip : Flapjack.WordAlloc.isSkip output4784 = false := by
  rw [output4784_def]
  conv => lhs; cbv
  try rfl
theorem node4784_eq : Flapjack.WordAlloc.removeDeadStructural input4784 value2396 value1 value2 = (output4784, value5, value1) := by
  rw [input4784_def, output4784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4782_eq]
  dsimp only
  rw [node4783_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4784 input4781)).val
theorem input4785_def : input4785 = (.seq input4784 input4781) := by
  unfold input4785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4784 output4781)).val
theorem output4785_def : output4785 = (.seq output4784 output4781) := by
  unfold output4785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4785_skip : Flapjack.WordAlloc.isSkip output4785 = false := by
  rw [output4785_def]
  conv => lhs; cbv
  try rfl
theorem node4785_eq : Flapjack.WordAlloc.removeDeadStructural input4785 value2395 value1 value2 = (output4785, value5, value1) := by
  rw [input4785_def, output4785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4781_eq]
  dsimp only
  rw [node4784_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4785 input4780)).val
theorem input4786_def : input4786 = (.seq input4785 input4780) := by
  unfold input4786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4785 output4780)).val
theorem output4786_def : output4786 = (.seq output4785 output4780) := by
  unfold output4786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4786_skip : Flapjack.WordAlloc.isSkip output4786 = false := by
  rw [output4786_def]
  conv => lhs; cbv
  try rfl
theorem node4786_eq : Flapjack.WordAlloc.removeDeadStructural input4786 value2394 value1 value2 = (output4786, value5, value1) := by
  rw [input4786_def, output4786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4780_eq]
  dsimp only
  rw [node4785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4786 input4779)).val
theorem input4787_def : input4787 = (.seq input4786 input4779) := by
  unfold input4787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4786 output4779)).val
theorem output4787_def : output4787 = (.seq output4786 output4779) := by
  unfold output4787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4787_skip : Flapjack.WordAlloc.isSkip output4787 = false := by
  rw [output4787_def]
  conv => lhs; cbv
  try rfl
theorem node4787_eq : Flapjack.WordAlloc.removeDeadStructural input4787 value2392 value1 value2 = (output4787, value5, value1) := by
  rw [input4787_def, output4787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4779_eq]
  dsimp only
  rw [node4786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2398 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20445 (Flapjack.WordLangAddr.addr 20449 0#64)))).val
theorem input4788_def : input4788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20445 (Flapjack.WordLangAddr.addr 20449 0#64))) := by
  unfold input4788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20445 (Flapjack.WordLangAddr.addr 20449 0#64)))).val
theorem output4788_def : output4788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20445 (Flapjack.WordLangAddr.addr 20449 0#64))) := by
  unfold output4788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4788_skip : Flapjack.WordAlloc.isSkip output4788 = false := by
  rw [output4788_def]
  conv => lhs; cbv
  try rfl
theorem node4788_eq : Flapjack.WordAlloc.removeDeadStructural input4788 value5 value1 value2 = (output4788, value2398, value1) := by
  rw [input4788_def, output4788_def]
  try (conv => lhs; cbv)
  try rfl

def value2399 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20449, 20437)])).val
theorem input4789_def : input4789 = (Flapjack.WordLangProgHOL.move 0 [(20449, 20437)]) := by
  unfold input4789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20449, 20437)])).val
theorem output4789_def : output4789 = (Flapjack.WordLangProgHOL.move 0 [(20449, 20437)]) := by
  unfold output4789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4789_skip : Flapjack.WordAlloc.isSkip output4789 = false := by
  rw [output4789_def]
  conv => lhs; cbv
  try rfl
theorem node4789_eq : Flapjack.WordAlloc.removeDeadStructural input4789 value2398 value1 value2 = (output4789, value2399, value1) := by
  rw [input4789_def, output4789_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4789 input4788)).val
theorem input4790_def : input4790 = (.seq input4789 input4788) := by
  unfold input4790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4789 output4788)).val
theorem output4790_def : output4790 = (.seq output4789 output4788) := by
  unfold output4790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4790_skip : Flapjack.WordAlloc.isSkip output4790 = false := by
  rw [output4790_def]
  conv => lhs; cbv
  try rfl
theorem node4790_eq : Flapjack.WordAlloc.removeDeadStructural input4790 value5 value1 value2 = (output4790, value2399, value1) := by
  rw [input4790_def, output4790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4788_eq]
  dsimp only
  rw [node4789_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2400 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20445 13402431016077863593#64))).val
theorem input4791_def : input4791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20445 13402431016077863593#64)) := by
  unfold input4791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20445 13402431016077863593#64))).val
theorem output4791_def : output4791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20445 13402431016077863593#64)) := by
  unfold output4791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4791_skip : Flapjack.WordAlloc.isSkip output4791 = false := by
  rw [output4791_def]
  conv => lhs; cbv
  try rfl
theorem node4791_eq : Flapjack.WordAlloc.removeDeadStructural input4791 value2399 value1 value2 = (output4791, value2400, value1) := by
  rw [input4791_def, output4791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20441 13402431016077863593#64))).val
theorem input4792_def : input4792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20441 13402431016077863593#64)) := by
  unfold input4792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4792_def : output4792 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4792_skip : Flapjack.WordAlloc.isSkip output4792 = true := by
  rw [output4792_def]
  conv => lhs; cbv
  try rfl
theorem node4792_eq : Flapjack.WordAlloc.removeDeadStructural input4792 value2400 value1 value2 = (output4792, value2400, value1) := by
  rw [input4792_def, output4792_def]
  try (conv => lhs; cbv)
  try rfl

def value2401 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20437 20429 (Flapjack.WordRegImm.reg 20433))))).val
theorem input4793_def : input4793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20437 20429 (Flapjack.WordRegImm.reg 20433)))) := by
  unfold input4793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20437 20429 (Flapjack.WordRegImm.reg 20433))))).val
theorem output4793_def : output4793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20437 20429 (Flapjack.WordRegImm.reg 20433)))) := by
  unfold output4793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4793_skip : Flapjack.WordAlloc.isSkip output4793 = false := by
  rw [output4793_def]
  conv => lhs; cbv
  try rfl
theorem node4793_eq : Flapjack.WordAlloc.removeDeadStructural input4793 value2400 value1 value2 = (output4793, value2401, value1) := by
  rw [input4793_def, output4793_def]
  try (conv => lhs; cbv)
  try rfl

def value2402 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20433 4736#64))).val
theorem input4794_def : input4794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20433 4736#64)) := by
  unfold input4794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20433 4736#64))).val
theorem output4794_def : output4794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20433 4736#64)) := by
  unfold output4794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4794_skip : Flapjack.WordAlloc.isSkip output4794 = false := by
  rw [output4794_def]
  conv => lhs; cbv
  try rfl
theorem node4794_eq : Flapjack.WordAlloc.removeDeadStructural input4794 value2401 value1 value2 = (output4794, value2402, value1) := by
  rw [input4794_def, output4794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4794 input4793)).val
theorem input4795_def : input4795 = (.seq input4794 input4793) := by
  unfold input4795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4794 output4793)).val
theorem output4795_def : output4795 = (.seq output4794 output4793) := by
  unfold output4795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4795_skip : Flapjack.WordAlloc.isSkip output4795 = false := by
  rw [output4795_def]
  conv => lhs; cbv
  try rfl
theorem node4795_eq : Flapjack.WordAlloc.removeDeadStructural input4795 value2400 value1 value2 = (output4795, value2402, value1) := by
  rw [input4795_def, output4795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4793_eq]
  dsimp only
  rw [node4794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2403 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20429 (Flapjack.WordLangAddr.addr 20425 18446744073709551104#64)))).val
theorem input4796_def : input4796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20429 (Flapjack.WordLangAddr.addr 20425 18446744073709551104#64))) := by
  unfold input4796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20429 (Flapjack.WordLangAddr.addr 20425 18446744073709551104#64)))).val
theorem output4796_def : output4796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20429 (Flapjack.WordLangAddr.addr 20425 18446744073709551104#64))) := by
  unfold output4796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4796_skip : Flapjack.WordAlloc.isSkip output4796 = false := by
  rw [output4796_def]
  conv => lhs; cbv
  try rfl
theorem node4796_eq : Flapjack.WordAlloc.removeDeadStructural input4796 value2402 value1 value2 = (output4796, value2403, value1) := by
  rw [input4796_def, output4796_def]
  try (conv => lhs; cbv)
  try rfl

def value2404 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20425 20421)).val
theorem input4797_def : input4797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20425 20421) := by
  unfold input4797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20425 20421)).val
theorem output4797_def : output4797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20425 20421) := by
  unfold output4797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4797_skip : Flapjack.WordAlloc.isSkip output4797 = false := by
  rw [output4797_def]
  conv => lhs; cbv
  try rfl
theorem node4797_eq : Flapjack.WordAlloc.removeDeadStructural input4797 value2403 value1 value2 = (output4797, value2404, value1) := by
  rw [input4797_def, output4797_def]
  try (conv => lhs; cbv)
  try rfl

def value2405 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20421 20417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4798_def : input4798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20421 20417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20421 20417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4798_def : output4798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20421 20417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4798_skip : Flapjack.WordAlloc.isSkip output4798 = false := by
  rw [output4798_def]
  conv => lhs; cbv
  try rfl
theorem node4798_eq : Flapjack.WordAlloc.removeDeadStructural input4798 value2404 value1 value2 = (output4798, value2405, value1) := by
  rw [input4798_def, output4798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20417 Flapjack.WordStore.heapLength)).val
theorem input4799_def : input4799 = (Flapjack.WordLangProgHOL.get 20417 Flapjack.WordStore.heapLength) := by
  unfold input4799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20417 Flapjack.WordStore.heapLength)).val
theorem output4799_def : output4799 = (Flapjack.WordLangProgHOL.get 20417 Flapjack.WordStore.heapLength) := by
  unfold output4799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4799_skip : Flapjack.WordAlloc.isSkip output4799 = false := by
  rw [output4799_def]
  conv => lhs; cbv
  try rfl
theorem node4799_eq : Flapjack.WordAlloc.removeDeadStructural input4799 value2405 value1 value2 = (output4799, value5, value1) := by
  rw [input4799_def, output4799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4799 input4798)).val
theorem input4800_def : input4800 = (.seq input4799 input4798) := by
  unfold input4800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4799 output4798)).val
theorem output4800_def : output4800 = (.seq output4799 output4798) := by
  unfold output4800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4800_skip : Flapjack.WordAlloc.isSkip output4800 = false := by
  rw [output4800_def]
  conv => lhs; cbv
  try rfl
theorem node4800_eq : Flapjack.WordAlloc.removeDeadStructural input4800 value2404 value1 value2 = (output4800, value5, value1) := by
  rw [input4800_def, output4800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4798_eq]
  dsimp only
  rw [node4799_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4800 input4797)).val
theorem input4801_def : input4801 = (.seq input4800 input4797) := by
  unfold input4801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4800 output4797)).val
theorem output4801_def : output4801 = (.seq output4800 output4797) := by
  unfold output4801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4801_skip : Flapjack.WordAlloc.isSkip output4801 = false := by
  rw [output4801_def]
  conv => lhs; cbv
  try rfl
theorem node4801_eq : Flapjack.WordAlloc.removeDeadStructural input4801 value2403 value1 value2 = (output4801, value5, value1) := by
  rw [input4801_def, output4801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4797_eq]
  dsimp only
  rw [node4800_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4801 input4796)).val
theorem input4802_def : input4802 = (.seq input4801 input4796) := by
  unfold input4802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4801 output4796)).val
theorem output4802_def : output4802 = (.seq output4801 output4796) := by
  unfold output4802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4802_skip : Flapjack.WordAlloc.isSkip output4802 = false := by
  rw [output4802_def]
  conv => lhs; cbv
  try rfl
theorem node4802_eq : Flapjack.WordAlloc.removeDeadStructural input4802 value2402 value1 value2 = (output4802, value5, value1) := by
  rw [input4802_def, output4802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4796_eq]
  dsimp only
  rw [node4801_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4802 input4795)).val
theorem input4803_def : input4803 = (.seq input4802 input4795) := by
  unfold input4803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4802 output4795)).val
theorem output4803_def : output4803 = (.seq output4802 output4795) := by
  unfold output4803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4803_skip : Flapjack.WordAlloc.isSkip output4803 = false := by
  rw [output4803_def]
  conv => lhs; cbv
  try rfl
theorem node4803_eq : Flapjack.WordAlloc.removeDeadStructural input4803 value2400 value1 value2 = (output4803, value5, value1) := by
  rw [input4803_def, output4803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4795_eq]
  dsimp only
  rw [node4802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2406 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20409 (Flapjack.WordLangAddr.addr 20413 0#64)))).val
theorem input4804_def : input4804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20409 (Flapjack.WordLangAddr.addr 20413 0#64))) := by
  unfold input4804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20409 (Flapjack.WordLangAddr.addr 20413 0#64)))).val
theorem output4804_def : output4804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20409 (Flapjack.WordLangAddr.addr 20413 0#64))) := by
  unfold output4804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4804_skip : Flapjack.WordAlloc.isSkip output4804 = false := by
  rw [output4804_def]
  conv => lhs; cbv
  try rfl
theorem node4804_eq : Flapjack.WordAlloc.removeDeadStructural input4804 value5 value1 value2 = (output4804, value2406, value1) := by
  rw [input4804_def, output4804_def]
  try (conv => lhs; cbv)
  try rfl

def value2407 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20413, 20401)])).val
theorem input4805_def : input4805 = (Flapjack.WordLangProgHOL.move 0 [(20413, 20401)]) := by
  unfold input4805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20413, 20401)])).val
theorem output4805_def : output4805 = (Flapjack.WordLangProgHOL.move 0 [(20413, 20401)]) := by
  unfold output4805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4805_skip : Flapjack.WordAlloc.isSkip output4805 = false := by
  rw [output4805_def]
  conv => lhs; cbv
  try rfl
theorem node4805_eq : Flapjack.WordAlloc.removeDeadStructural input4805 value2406 value1 value2 = (output4805, value2407, value1) := by
  rw [input4805_def, output4805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4805 input4804)).val
theorem input4806_def : input4806 = (.seq input4805 input4804) := by
  unfold input4806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4805 output4804)).val
theorem output4806_def : output4806 = (.seq output4805 output4804) := by
  unfold output4806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4806_skip : Flapjack.WordAlloc.isSkip output4806 = false := by
  rw [output4806_def]
  conv => lhs; cbv
  try rfl
theorem node4806_eq : Flapjack.WordAlloc.removeDeadStructural input4806 value5 value1 value2 = (output4806, value2407, value1) := by
  rw [input4806_def, output4806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4804_eq]
  dsimp only
  rw [node4805_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2408 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20409 0#64))).val
theorem input4807_def : input4807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20409 0#64)) := by
  unfold input4807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20409 0#64))).val
theorem output4807_def : output4807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20409 0#64)) := by
  unfold output4807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4807_skip : Flapjack.WordAlloc.isSkip output4807 = false := by
  rw [output4807_def]
  conv => lhs; cbv
  try rfl
theorem node4807_eq : Flapjack.WordAlloc.removeDeadStructural input4807 value2407 value1 value2 = (output4807, value2408, value1) := by
  rw [input4807_def, output4807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20405 0#64))).val
theorem input4808_def : input4808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20405 0#64)) := by
  unfold input4808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4808_def : output4808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4808_skip : Flapjack.WordAlloc.isSkip output4808 = true := by
  rw [output4808_def]
  conv => lhs; cbv
  try rfl
theorem node4808_eq : Flapjack.WordAlloc.removeDeadStructural input4808 value2408 value1 value2 = (output4808, value2408, value1) := by
  rw [input4808_def, output4808_def]
  try (conv => lhs; cbv)
  try rfl

def value2409 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20401 20393 (Flapjack.WordRegImm.reg 20397))))).val
theorem input4809_def : input4809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20401 20393 (Flapjack.WordRegImm.reg 20397)))) := by
  unfold input4809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20401 20393 (Flapjack.WordRegImm.reg 20397))))).val
theorem output4809_def : output4809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20401 20393 (Flapjack.WordRegImm.reg 20397)))) := by
  unfold output4809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4809_skip : Flapjack.WordAlloc.isSkip output4809 = false := by
  rw [output4809_def]
  conv => lhs; cbv
  try rfl
theorem node4809_eq : Flapjack.WordAlloc.removeDeadStructural input4809 value2408 value1 value2 = (output4809, value2409, value1) := by
  rw [input4809_def, output4809_def]
  try (conv => lhs; cbv)
  try rfl

def value2410 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20397 4728#64))).val
theorem input4810_def : input4810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20397 4728#64)) := by
  unfold input4810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20397 4728#64))).val
theorem output4810_def : output4810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20397 4728#64)) := by
  unfold output4810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4810_skip : Flapjack.WordAlloc.isSkip output4810 = false := by
  rw [output4810_def]
  conv => lhs; cbv
  try rfl
theorem node4810_eq : Flapjack.WordAlloc.removeDeadStructural input4810 value2409 value1 value2 = (output4810, value2410, value1) := by
  rw [input4810_def, output4810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4810 input4809)).val
theorem input4811_def : input4811 = (.seq input4810 input4809) := by
  unfold input4811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4810 output4809)).val
theorem output4811_def : output4811 = (.seq output4810 output4809) := by
  unfold output4811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4811_skip : Flapjack.WordAlloc.isSkip output4811 = false := by
  rw [output4811_def]
  conv => lhs; cbv
  try rfl
theorem node4811_eq : Flapjack.WordAlloc.removeDeadStructural input4811 value2408 value1 value2 = (output4811, value2410, value1) := by
  rw [input4811_def, output4811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4809_eq]
  dsimp only
  rw [node4810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2411 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20393 (Flapjack.WordLangAddr.addr 20389 18446744073709551104#64)))).val
theorem input4812_def : input4812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20393 (Flapjack.WordLangAddr.addr 20389 18446744073709551104#64))) := by
  unfold input4812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20393 (Flapjack.WordLangAddr.addr 20389 18446744073709551104#64)))).val
theorem output4812_def : output4812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20393 (Flapjack.WordLangAddr.addr 20389 18446744073709551104#64))) := by
  unfold output4812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4812_skip : Flapjack.WordAlloc.isSkip output4812 = false := by
  rw [output4812_def]
  conv => lhs; cbv
  try rfl
theorem node4812_eq : Flapjack.WordAlloc.removeDeadStructural input4812 value2410 value1 value2 = (output4812, value2411, value1) := by
  rw [input4812_def, output4812_def]
  try (conv => lhs; cbv)
  try rfl

def value2412 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20389 20385)).val
theorem input4813_def : input4813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20389 20385) := by
  unfold input4813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20389 20385)).val
theorem output4813_def : output4813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20389 20385) := by
  unfold output4813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4813_skip : Flapjack.WordAlloc.isSkip output4813 = false := by
  rw [output4813_def]
  conv => lhs; cbv
  try rfl
theorem node4813_eq : Flapjack.WordAlloc.removeDeadStructural input4813 value2411 value1 value2 = (output4813, value2412, value1) := by
  rw [input4813_def, output4813_def]
  try (conv => lhs; cbv)
  try rfl

def value2413 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20385 20381 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4814_def : input4814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20385 20381 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20385 20381 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4814_def : output4814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20385 20381 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4814_skip : Flapjack.WordAlloc.isSkip output4814 = false := by
  rw [output4814_def]
  conv => lhs; cbv
  try rfl
theorem node4814_eq : Flapjack.WordAlloc.removeDeadStructural input4814 value2412 value1 value2 = (output4814, value2413, value1) := by
  rw [input4814_def, output4814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20381 Flapjack.WordStore.heapLength)).val
theorem input4815_def : input4815 = (Flapjack.WordLangProgHOL.get 20381 Flapjack.WordStore.heapLength) := by
  unfold input4815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20381 Flapjack.WordStore.heapLength)).val
theorem output4815_def : output4815 = (Flapjack.WordLangProgHOL.get 20381 Flapjack.WordStore.heapLength) := by
  unfold output4815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4815_skip : Flapjack.WordAlloc.isSkip output4815 = false := by
  rw [output4815_def]
  conv => lhs; cbv
  try rfl
theorem node4815_eq : Flapjack.WordAlloc.removeDeadStructural input4815 value2413 value1 value2 = (output4815, value5, value1) := by
  rw [input4815_def, output4815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4815 input4814)).val
theorem input4816_def : input4816 = (.seq input4815 input4814) := by
  unfold input4816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4815 output4814)).val
theorem output4816_def : output4816 = (.seq output4815 output4814) := by
  unfold output4816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4816_skip : Flapjack.WordAlloc.isSkip output4816 = false := by
  rw [output4816_def]
  conv => lhs; cbv
  try rfl
theorem node4816_eq : Flapjack.WordAlloc.removeDeadStructural input4816 value2412 value1 value2 = (output4816, value5, value1) := by
  rw [input4816_def, output4816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4814_eq]
  dsimp only
  rw [node4815_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4816 input4813)).val
theorem input4817_def : input4817 = (.seq input4816 input4813) := by
  unfold input4817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4816 output4813)).val
theorem output4817_def : output4817 = (.seq output4816 output4813) := by
  unfold output4817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4817_skip : Flapjack.WordAlloc.isSkip output4817 = false := by
  rw [output4817_def]
  conv => lhs; cbv
  try rfl
theorem node4817_eq : Flapjack.WordAlloc.removeDeadStructural input4817 value2411 value1 value2 = (output4817, value5, value1) := by
  rw [input4817_def, output4817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4813_eq]
  dsimp only
  rw [node4816_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4817 input4812)).val
theorem input4818_def : input4818 = (.seq input4817 input4812) := by
  unfold input4818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4817 output4812)).val
theorem output4818_def : output4818 = (.seq output4817 output4812) := by
  unfold output4818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4818_skip : Flapjack.WordAlloc.isSkip output4818 = false := by
  rw [output4818_def]
  conv => lhs; cbv
  try rfl
theorem node4818_eq : Flapjack.WordAlloc.removeDeadStructural input4818 value2410 value1 value2 = (output4818, value5, value1) := by
  rw [input4818_def, output4818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4812_eq]
  dsimp only
  rw [node4817_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4818 input4811)).val
theorem input4819_def : input4819 = (.seq input4818 input4811) := by
  unfold input4819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4818 output4811)).val
theorem output4819_def : output4819 = (.seq output4818 output4811) := by
  unfold output4819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4819_skip : Flapjack.WordAlloc.isSkip output4819 = false := by
  rw [output4819_def]
  conv => lhs; cbv
  try rfl
theorem node4819_eq : Flapjack.WordAlloc.removeDeadStructural input4819 value2408 value1 value2 = (output4819, value5, value1) := by
  rw [input4819_def, output4819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4811_eq]
  dsimp only
  rw [node4818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2414 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20373 (Flapjack.WordLangAddr.addr 20377 0#64)))).val
theorem input4820_def : input4820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20373 (Flapjack.WordLangAddr.addr 20377 0#64))) := by
  unfold input4820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20373 (Flapjack.WordLangAddr.addr 20377 0#64)))).val
theorem output4820_def : output4820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20373 (Flapjack.WordLangAddr.addr 20377 0#64))) := by
  unfold output4820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4820_skip : Flapjack.WordAlloc.isSkip output4820 = false := by
  rw [output4820_def]
  conv => lhs; cbv
  try rfl
theorem node4820_eq : Flapjack.WordAlloc.removeDeadStructural input4820 value5 value1 value2 = (output4820, value2414, value1) := by
  rw [input4820_def, output4820_def]
  try (conv => lhs; cbv)
  try rfl

def value2415 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20377, 20365)])).val
theorem input4821_def : input4821 = (Flapjack.WordLangProgHOL.move 0 [(20377, 20365)]) := by
  unfold input4821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20377, 20365)])).val
theorem output4821_def : output4821 = (Flapjack.WordLangProgHOL.move 0 [(20377, 20365)]) := by
  unfold output4821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4821_skip : Flapjack.WordAlloc.isSkip output4821 = false := by
  rw [output4821_def]
  conv => lhs; cbv
  try rfl
theorem node4821_eq : Flapjack.WordAlloc.removeDeadStructural input4821 value2414 value1 value2 = (output4821, value2415, value1) := by
  rw [input4821_def, output4821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4821 input4820)).val
theorem input4822_def : input4822 = (.seq input4821 input4820) := by
  unfold input4822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4821 output4820)).val
theorem output4822_def : output4822 = (.seq output4821 output4820) := by
  unfold output4822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4822_skip : Flapjack.WordAlloc.isSkip output4822 = false := by
  rw [output4822_def]
  conv => lhs; cbv
  try rfl
theorem node4822_eq : Flapjack.WordAlloc.removeDeadStructural input4822 value5 value1 value2 = (output4822, value2415, value1) := by
  rw [input4822_def, output4822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4820_eq]
  dsimp only
  rw [node4821_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2416 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20373 0#64))).val
theorem input4823_def : input4823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20373 0#64)) := by
  unfold input4823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20373 0#64))).val
theorem output4823_def : output4823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20373 0#64)) := by
  unfold output4823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4823_skip : Flapjack.WordAlloc.isSkip output4823 = false := by
  rw [output4823_def]
  conv => lhs; cbv
  try rfl
theorem node4823_eq : Flapjack.WordAlloc.removeDeadStructural input4823 value2415 value1 value2 = (output4823, value2416, value1) := by
  rw [input4823_def, output4823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20369 0#64))).val
theorem input4824_def : input4824 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20369 0#64)) := by
  unfold input4824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4824_def : output4824 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4824_skip : Flapjack.WordAlloc.isSkip output4824 = true := by
  rw [output4824_def]
  conv => lhs; cbv
  try rfl
theorem node4824_eq : Flapjack.WordAlloc.removeDeadStructural input4824 value2416 value1 value2 = (output4824, value2416, value1) := by
  rw [input4824_def, output4824_def]
  try (conv => lhs; cbv)
  try rfl

def value2417 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20365 20357 (Flapjack.WordRegImm.reg 20361))))).val
theorem input4825_def : input4825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20365 20357 (Flapjack.WordRegImm.reg 20361)))) := by
  unfold input4825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20365 20357 (Flapjack.WordRegImm.reg 20361))))).val
theorem output4825_def : output4825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20365 20357 (Flapjack.WordRegImm.reg 20361)))) := by
  unfold output4825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4825_skip : Flapjack.WordAlloc.isSkip output4825 = false := by
  rw [output4825_def]
  conv => lhs; cbv
  try rfl
theorem node4825_eq : Flapjack.WordAlloc.removeDeadStructural input4825 value2416 value1 value2 = (output4825, value2417, value1) := by
  rw [input4825_def, output4825_def]
  try (conv => lhs; cbv)
  try rfl

def value2418 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20361 4720#64))).val
theorem input4826_def : input4826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20361 4720#64)) := by
  unfold input4826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20361 4720#64))).val
theorem output4826_def : output4826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20361 4720#64)) := by
  unfold output4826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4826_skip : Flapjack.WordAlloc.isSkip output4826 = false := by
  rw [output4826_def]
  conv => lhs; cbv
  try rfl
theorem node4826_eq : Flapjack.WordAlloc.removeDeadStructural input4826 value2417 value1 value2 = (output4826, value2418, value1) := by
  rw [input4826_def, output4826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4826 input4825)).val
theorem input4827_def : input4827 = (.seq input4826 input4825) := by
  unfold input4827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4826 output4825)).val
theorem output4827_def : output4827 = (.seq output4826 output4825) := by
  unfold output4827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4827_skip : Flapjack.WordAlloc.isSkip output4827 = false := by
  rw [output4827_def]
  conv => lhs; cbv
  try rfl
theorem node4827_eq : Flapjack.WordAlloc.removeDeadStructural input4827 value2416 value1 value2 = (output4827, value2418, value1) := by
  rw [input4827_def, output4827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4825_eq]
  dsimp only
  rw [node4826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2419 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20357 (Flapjack.WordLangAddr.addr 20353 18446744073709551104#64)))).val
theorem input4828_def : input4828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20357 (Flapjack.WordLangAddr.addr 20353 18446744073709551104#64))) := by
  unfold input4828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20357 (Flapjack.WordLangAddr.addr 20353 18446744073709551104#64)))).val
theorem output4828_def : output4828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20357 (Flapjack.WordLangAddr.addr 20353 18446744073709551104#64))) := by
  unfold output4828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4828_skip : Flapjack.WordAlloc.isSkip output4828 = false := by
  rw [output4828_def]
  conv => lhs; cbv
  try rfl
theorem node4828_eq : Flapjack.WordAlloc.removeDeadStructural input4828 value2418 value1 value2 = (output4828, value2419, value1) := by
  rw [input4828_def, output4828_def]
  try (conv => lhs; cbv)
  try rfl

def value2420 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20353 20349)).val
theorem input4829_def : input4829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20353 20349) := by
  unfold input4829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20353 20349)).val
theorem output4829_def : output4829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20353 20349) := by
  unfold output4829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4829_skip : Flapjack.WordAlloc.isSkip output4829 = false := by
  rw [output4829_def]
  conv => lhs; cbv
  try rfl
theorem node4829_eq : Flapjack.WordAlloc.removeDeadStructural input4829 value2419 value1 value2 = (output4829, value2420, value1) := by
  rw [input4829_def, output4829_def]
  try (conv => lhs; cbv)
  try rfl

def value2421 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20349 20345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4830_def : input4830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20349 20345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20349 20345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4830_def : output4830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20349 20345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4830_skip : Flapjack.WordAlloc.isSkip output4830 = false := by
  rw [output4830_def]
  conv => lhs; cbv
  try rfl
theorem node4830_eq : Flapjack.WordAlloc.removeDeadStructural input4830 value2420 value1 value2 = (output4830, value2421, value1) := by
  rw [input4830_def, output4830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20345 Flapjack.WordStore.heapLength)).val
theorem input4831_def : input4831 = (Flapjack.WordLangProgHOL.get 20345 Flapjack.WordStore.heapLength) := by
  unfold input4831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20345 Flapjack.WordStore.heapLength)).val
theorem output4831_def : output4831 = (Flapjack.WordLangProgHOL.get 20345 Flapjack.WordStore.heapLength) := by
  unfold output4831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4831_skip : Flapjack.WordAlloc.isSkip output4831 = false := by
  rw [output4831_def]
  conv => lhs; cbv
  try rfl
theorem node4831_eq : Flapjack.WordAlloc.removeDeadStructural input4831 value2421 value1 value2 = (output4831, value5, value1) := by
  rw [input4831_def, output4831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4831 input4830)).val
theorem input4832_def : input4832 = (.seq input4831 input4830) := by
  unfold input4832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4831 output4830)).val
theorem output4832_def : output4832 = (.seq output4831 output4830) := by
  unfold output4832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4832_skip : Flapjack.WordAlloc.isSkip output4832 = false := by
  rw [output4832_def]
  conv => lhs; cbv
  try rfl
theorem node4832_eq : Flapjack.WordAlloc.removeDeadStructural input4832 value2420 value1 value2 = (output4832, value5, value1) := by
  rw [input4832_def, output4832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4830_eq]
  dsimp only
  rw [node4831_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4832 input4829)).val
theorem input4833_def : input4833 = (.seq input4832 input4829) := by
  unfold input4833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4832 output4829)).val
theorem output4833_def : output4833 = (.seq output4832 output4829) := by
  unfold output4833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4833_skip : Flapjack.WordAlloc.isSkip output4833 = false := by
  rw [output4833_def]
  conv => lhs; cbv
  try rfl
theorem node4833_eq : Flapjack.WordAlloc.removeDeadStructural input4833 value2419 value1 value2 = (output4833, value5, value1) := by
  rw [input4833_def, output4833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4829_eq]
  dsimp only
  rw [node4832_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4833 input4828)).val
theorem input4834_def : input4834 = (.seq input4833 input4828) := by
  unfold input4834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4833 output4828)).val
theorem output4834_def : output4834 = (.seq output4833 output4828) := by
  unfold output4834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4834_skip : Flapjack.WordAlloc.isSkip output4834 = false := by
  rw [output4834_def]
  conv => lhs; cbv
  try rfl
theorem node4834_eq : Flapjack.WordAlloc.removeDeadStructural input4834 value2418 value1 value2 = (output4834, value5, value1) := by
  rw [input4834_def, output4834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4828_eq]
  dsimp only
  rw [node4833_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4834 input4827)).val
theorem input4835_def : input4835 = (.seq input4834 input4827) := by
  unfold input4835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4834 output4827)).val
theorem output4835_def : output4835 = (.seq output4834 output4827) := by
  unfold output4835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4835_skip : Flapjack.WordAlloc.isSkip output4835 = false := by
  rw [output4835_def]
  conv => lhs; cbv
  try rfl
theorem node4835_eq : Flapjack.WordAlloc.removeDeadStructural input4835 value2416 value1 value2 = (output4835, value5, value1) := by
  rw [input4835_def, output4835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4827_eq]
  dsimp only
  rw [node4834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2422 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20337 (Flapjack.WordLangAddr.addr 20341 0#64)))).val
theorem input4836_def : input4836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20337 (Flapjack.WordLangAddr.addr 20341 0#64))) := by
  unfold input4836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20337 (Flapjack.WordLangAddr.addr 20341 0#64)))).val
theorem output4836_def : output4836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20337 (Flapjack.WordLangAddr.addr 20341 0#64))) := by
  unfold output4836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4836_skip : Flapjack.WordAlloc.isSkip output4836 = false := by
  rw [output4836_def]
  conv => lhs; cbv
  try rfl
theorem node4836_eq : Flapjack.WordAlloc.removeDeadStructural input4836 value5 value1 value2 = (output4836, value2422, value1) := by
  rw [input4836_def, output4836_def]
  try (conv => lhs; cbv)
  try rfl

def value2423 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20341, 20329)])).val
theorem input4837_def : input4837 = (Flapjack.WordLangProgHOL.move 0 [(20341, 20329)]) := by
  unfold input4837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20341, 20329)])).val
theorem output4837_def : output4837 = (Flapjack.WordLangProgHOL.move 0 [(20341, 20329)]) := by
  unfold output4837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4837_skip : Flapjack.WordAlloc.isSkip output4837 = false := by
  rw [output4837_def]
  conv => lhs; cbv
  try rfl
theorem node4837_eq : Flapjack.WordAlloc.removeDeadStructural input4837 value2422 value1 value2 = (output4837, value2423, value1) := by
  rw [input4837_def, output4837_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4837 input4836)).val
theorem input4838_def : input4838 = (.seq input4837 input4836) := by
  unfold input4838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4837 output4836)).val
theorem output4838_def : output4838 = (.seq output4837 output4836) := by
  unfold output4838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4838_skip : Flapjack.WordAlloc.isSkip output4838 = false := by
  rw [output4838_def]
  conv => lhs; cbv
  try rfl
theorem node4838_eq : Flapjack.WordAlloc.removeDeadStructural input4838 value5 value1 value2 = (output4838, value2423, value1) := by
  rw [input4838_def, output4838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4836_eq]
  dsimp only
  rw [node4837_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2424 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20337 0#64))).val
theorem input4839_def : input4839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20337 0#64)) := by
  unfold input4839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20337 0#64))).val
theorem output4839_def : output4839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20337 0#64)) := by
  unfold output4839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4839_skip : Flapjack.WordAlloc.isSkip output4839 = false := by
  rw [output4839_def]
  conv => lhs; cbv
  try rfl
theorem node4839_eq : Flapjack.WordAlloc.removeDeadStructural input4839 value2423 value1 value2 = (output4839, value2424, value1) := by
  rw [input4839_def, output4839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20333 0#64))).val
theorem input4840_def : input4840 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20333 0#64)) := by
  unfold input4840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4840_def : output4840 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4840_skip : Flapjack.WordAlloc.isSkip output4840 = true := by
  rw [output4840_def]
  conv => lhs; cbv
  try rfl
theorem node4840_eq : Flapjack.WordAlloc.removeDeadStructural input4840 value2424 value1 value2 = (output4840, value2424, value1) := by
  rw [input4840_def, output4840_def]
  try (conv => lhs; cbv)
  try rfl

def value2425 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20329 20321 (Flapjack.WordRegImm.reg 20325))))).val
theorem input4841_def : input4841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20329 20321 (Flapjack.WordRegImm.reg 20325)))) := by
  unfold input4841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20329 20321 (Flapjack.WordRegImm.reg 20325))))).val
theorem output4841_def : output4841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20329 20321 (Flapjack.WordRegImm.reg 20325)))) := by
  unfold output4841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4841_skip : Flapjack.WordAlloc.isSkip output4841 = false := by
  rw [output4841_def]
  conv => lhs; cbv
  try rfl
theorem node4841_eq : Flapjack.WordAlloc.removeDeadStructural input4841 value2424 value1 value2 = (output4841, value2425, value1) := by
  rw [input4841_def, output4841_def]
  try (conv => lhs; cbv)
  try rfl

def value2426 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20325 4712#64))).val
theorem input4842_def : input4842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20325 4712#64)) := by
  unfold input4842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20325 4712#64))).val
theorem output4842_def : output4842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20325 4712#64)) := by
  unfold output4842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4842_skip : Flapjack.WordAlloc.isSkip output4842 = false := by
  rw [output4842_def]
  conv => lhs; cbv
  try rfl
theorem node4842_eq : Flapjack.WordAlloc.removeDeadStructural input4842 value2425 value1 value2 = (output4842, value2426, value1) := by
  rw [input4842_def, output4842_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4842 input4841)).val
theorem input4843_def : input4843 = (.seq input4842 input4841) := by
  unfold input4843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4842 output4841)).val
theorem output4843_def : output4843 = (.seq output4842 output4841) := by
  unfold output4843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4843_skip : Flapjack.WordAlloc.isSkip output4843 = false := by
  rw [output4843_def]
  conv => lhs; cbv
  try rfl
theorem node4843_eq : Flapjack.WordAlloc.removeDeadStructural input4843 value2424 value1 value2 = (output4843, value2426, value1) := by
  rw [input4843_def, output4843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4841_eq]
  dsimp only
  rw [node4842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2427 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20321 (Flapjack.WordLangAddr.addr 20317 18446744073709551104#64)))).val
theorem input4844_def : input4844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20321 (Flapjack.WordLangAddr.addr 20317 18446744073709551104#64))) := by
  unfold input4844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20321 (Flapjack.WordLangAddr.addr 20317 18446744073709551104#64)))).val
theorem output4844_def : output4844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20321 (Flapjack.WordLangAddr.addr 20317 18446744073709551104#64))) := by
  unfold output4844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4844_skip : Flapjack.WordAlloc.isSkip output4844 = false := by
  rw [output4844_def]
  conv => lhs; cbv
  try rfl
theorem node4844_eq : Flapjack.WordAlloc.removeDeadStructural input4844 value2426 value1 value2 = (output4844, value2427, value1) := by
  rw [input4844_def, output4844_def]
  try (conv => lhs; cbv)
  try rfl

def value2428 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20317 20313)).val
theorem input4845_def : input4845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20317 20313) := by
  unfold input4845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20317 20313)).val
theorem output4845_def : output4845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20317 20313) := by
  unfold output4845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4845_skip : Flapjack.WordAlloc.isSkip output4845 = false := by
  rw [output4845_def]
  conv => lhs; cbv
  try rfl
theorem node4845_eq : Flapjack.WordAlloc.removeDeadStructural input4845 value2427 value1 value2 = (output4845, value2428, value1) := by
  rw [input4845_def, output4845_def]
  try (conv => lhs; cbv)
  try rfl

def value2429 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20313 20309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4846_def : input4846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20313 20309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20313 20309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4846_def : output4846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20313 20309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4846_skip : Flapjack.WordAlloc.isSkip output4846 = false := by
  rw [output4846_def]
  conv => lhs; cbv
  try rfl
theorem node4846_eq : Flapjack.WordAlloc.removeDeadStructural input4846 value2428 value1 value2 = (output4846, value2429, value1) := by
  rw [input4846_def, output4846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20309 Flapjack.WordStore.heapLength)).val
theorem input4847_def : input4847 = (Flapjack.WordLangProgHOL.get 20309 Flapjack.WordStore.heapLength) := by
  unfold input4847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20309 Flapjack.WordStore.heapLength)).val
theorem output4847_def : output4847 = (Flapjack.WordLangProgHOL.get 20309 Flapjack.WordStore.heapLength) := by
  unfold output4847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4847_skip : Flapjack.WordAlloc.isSkip output4847 = false := by
  rw [output4847_def]
  conv => lhs; cbv
  try rfl
theorem node4847_eq : Flapjack.WordAlloc.removeDeadStructural input4847 value2429 value1 value2 = (output4847, value5, value1) := by
  rw [input4847_def, output4847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4847 input4846)).val
theorem input4848_def : input4848 = (.seq input4847 input4846) := by
  unfold input4848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4847 output4846)).val
theorem output4848_def : output4848 = (.seq output4847 output4846) := by
  unfold output4848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4848_skip : Flapjack.WordAlloc.isSkip output4848 = false := by
  rw [output4848_def]
  conv => lhs; cbv
  try rfl
theorem node4848_eq : Flapjack.WordAlloc.removeDeadStructural input4848 value2428 value1 value2 = (output4848, value5, value1) := by
  rw [input4848_def, output4848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4846_eq]
  dsimp only
  rw [node4847_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4848 input4845)).val
theorem input4849_def : input4849 = (.seq input4848 input4845) := by
  unfold input4849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4848 output4845)).val
theorem output4849_def : output4849 = (.seq output4848 output4845) := by
  unfold output4849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4849_skip : Flapjack.WordAlloc.isSkip output4849 = false := by
  rw [output4849_def]
  conv => lhs; cbv
  try rfl
theorem node4849_eq : Flapjack.WordAlloc.removeDeadStructural input4849 value2427 value1 value2 = (output4849, value5, value1) := by
  rw [input4849_def, output4849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4845_eq]
  dsimp only
  rw [node4848_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4849 input4844)).val
theorem input4850_def : input4850 = (.seq input4849 input4844) := by
  unfold input4850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4849 output4844)).val
theorem output4850_def : output4850 = (.seq output4849 output4844) := by
  unfold output4850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4850_skip : Flapjack.WordAlloc.isSkip output4850 = false := by
  rw [output4850_def]
  conv => lhs; cbv
  try rfl
theorem node4850_eq : Flapjack.WordAlloc.removeDeadStructural input4850 value2426 value1 value2 = (output4850, value5, value1) := by
  rw [input4850_def, output4850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4844_eq]
  dsimp only
  rw [node4849_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4850 input4843)).val
theorem input4851_def : input4851 = (.seq input4850 input4843) := by
  unfold input4851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4850 output4843)).val
theorem output4851_def : output4851 = (.seq output4850 output4843) := by
  unfold output4851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4851_skip : Flapjack.WordAlloc.isSkip output4851 = false := by
  rw [output4851_def]
  conv => lhs; cbv
  try rfl
theorem node4851_eq : Flapjack.WordAlloc.removeDeadStructural input4851 value2424 value1 value2 = (output4851, value5, value1) := by
  rw [input4851_def, output4851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4843_eq]
  dsimp only
  rw [node4850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2430 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20301 (Flapjack.WordLangAddr.addr 20305 0#64)))).val
theorem input4852_def : input4852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20301 (Flapjack.WordLangAddr.addr 20305 0#64))) := by
  unfold input4852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20301 (Flapjack.WordLangAddr.addr 20305 0#64)))).val
theorem output4852_def : output4852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20301 (Flapjack.WordLangAddr.addr 20305 0#64))) := by
  unfold output4852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4852_skip : Flapjack.WordAlloc.isSkip output4852 = false := by
  rw [output4852_def]
  conv => lhs; cbv
  try rfl
theorem node4852_eq : Flapjack.WordAlloc.removeDeadStructural input4852 value5 value1 value2 = (output4852, value2430, value1) := by
  rw [input4852_def, output4852_def]
  try (conv => lhs; cbv)
  try rfl

def value2431 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20305, 20293)])).val
theorem input4853_def : input4853 = (Flapjack.WordLangProgHOL.move 0 [(20305, 20293)]) := by
  unfold input4853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20305, 20293)])).val
theorem output4853_def : output4853 = (Flapjack.WordLangProgHOL.move 0 [(20305, 20293)]) := by
  unfold output4853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4853_skip : Flapjack.WordAlloc.isSkip output4853 = false := by
  rw [output4853_def]
  conv => lhs; cbv
  try rfl
theorem node4853_eq : Flapjack.WordAlloc.removeDeadStructural input4853 value2430 value1 value2 = (output4853, value2431, value1) := by
  rw [input4853_def, output4853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4853 input4852)).val
theorem input4854_def : input4854 = (.seq input4853 input4852) := by
  unfold input4854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4853 output4852)).val
theorem output4854_def : output4854 = (.seq output4853 output4852) := by
  unfold output4854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4854_skip : Flapjack.WordAlloc.isSkip output4854 = false := by
  rw [output4854_def]
  conv => lhs; cbv
  try rfl
theorem node4854_eq : Flapjack.WordAlloc.removeDeadStructural input4854 value5 value1 value2 = (output4854, value2431, value1) := by
  rw [input4854_def, output4854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4852_eq]
  dsimp only
  rw [node4853_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2432 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20301 0#64))).val
theorem input4855_def : input4855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20301 0#64)) := by
  unfold input4855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20301 0#64))).val
theorem output4855_def : output4855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20301 0#64)) := by
  unfold output4855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4855_skip : Flapjack.WordAlloc.isSkip output4855 = false := by
  rw [output4855_def]
  conv => lhs; cbv
  try rfl
theorem node4855_eq : Flapjack.WordAlloc.removeDeadStructural input4855 value2431 value1 value2 = (output4855, value2432, value1) := by
  rw [input4855_def, output4855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20297 0#64))).val
theorem input4856_def : input4856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20297 0#64)) := by
  unfold input4856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4856_def : output4856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4856_skip : Flapjack.WordAlloc.isSkip output4856 = true := by
  rw [output4856_def]
  conv => lhs; cbv
  try rfl
theorem node4856_eq : Flapjack.WordAlloc.removeDeadStructural input4856 value2432 value1 value2 = (output4856, value2432, value1) := by
  rw [input4856_def, output4856_def]
  try (conv => lhs; cbv)
  try rfl

def value2433 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20293 20285 (Flapjack.WordRegImm.reg 20289))))).val
theorem input4857_def : input4857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20293 20285 (Flapjack.WordRegImm.reg 20289)))) := by
  unfold input4857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20293 20285 (Flapjack.WordRegImm.reg 20289))))).val
theorem output4857_def : output4857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20293 20285 (Flapjack.WordRegImm.reg 20289)))) := by
  unfold output4857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4857_skip : Flapjack.WordAlloc.isSkip output4857 = false := by
  rw [output4857_def]
  conv => lhs; cbv
  try rfl
theorem node4857_eq : Flapjack.WordAlloc.removeDeadStructural input4857 value2432 value1 value2 = (output4857, value2433, value1) := by
  rw [input4857_def, output4857_def]
  try (conv => lhs; cbv)
  try rfl

def value2434 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20289 4704#64))).val
theorem input4858_def : input4858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20289 4704#64)) := by
  unfold input4858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20289 4704#64))).val
theorem output4858_def : output4858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20289 4704#64)) := by
  unfold output4858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4858_skip : Flapjack.WordAlloc.isSkip output4858 = false := by
  rw [output4858_def]
  conv => lhs; cbv
  try rfl
theorem node4858_eq : Flapjack.WordAlloc.removeDeadStructural input4858 value2433 value1 value2 = (output4858, value2434, value1) := by
  rw [input4858_def, output4858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4858 input4857)).val
theorem input4859_def : input4859 = (.seq input4858 input4857) := by
  unfold input4859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4858 output4857)).val
theorem output4859_def : output4859 = (.seq output4858 output4857) := by
  unfold output4859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4859_skip : Flapjack.WordAlloc.isSkip output4859 = false := by
  rw [output4859_def]
  conv => lhs; cbv
  try rfl
theorem node4859_eq : Flapjack.WordAlloc.removeDeadStructural input4859 value2432 value1 value2 = (output4859, value2434, value1) := by
  rw [input4859_def, output4859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4857_eq]
  dsimp only
  rw [node4858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2435 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20285 (Flapjack.WordLangAddr.addr 20281 18446744073709551104#64)))).val
theorem input4860_def : input4860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20285 (Flapjack.WordLangAddr.addr 20281 18446744073709551104#64))) := by
  unfold input4860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20285 (Flapjack.WordLangAddr.addr 20281 18446744073709551104#64)))).val
theorem output4860_def : output4860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20285 (Flapjack.WordLangAddr.addr 20281 18446744073709551104#64))) := by
  unfold output4860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4860_skip : Flapjack.WordAlloc.isSkip output4860 = false := by
  rw [output4860_def]
  conv => lhs; cbv
  try rfl
theorem node4860_eq : Flapjack.WordAlloc.removeDeadStructural input4860 value2434 value1 value2 = (output4860, value2435, value1) := by
  rw [input4860_def, output4860_def]
  try (conv => lhs; cbv)
  try rfl

def value2436 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20281 20277)).val
theorem input4861_def : input4861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20281 20277) := by
  unfold input4861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20281 20277)).val
theorem output4861_def : output4861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20281 20277) := by
  unfold output4861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4861_skip : Flapjack.WordAlloc.isSkip output4861 = false := by
  rw [output4861_def]
  conv => lhs; cbv
  try rfl
theorem node4861_eq : Flapjack.WordAlloc.removeDeadStructural input4861 value2435 value1 value2 = (output4861, value2436, value1) := by
  rw [input4861_def, output4861_def]
  try (conv => lhs; cbv)
  try rfl

def value2437 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20277 20273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4862_def : input4862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20277 20273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20277 20273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4862_def : output4862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20277 20273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4862_skip : Flapjack.WordAlloc.isSkip output4862 = false := by
  rw [output4862_def]
  conv => lhs; cbv
  try rfl
theorem node4862_eq : Flapjack.WordAlloc.removeDeadStructural input4862 value2436 value1 value2 = (output4862, value2437, value1) := by
  rw [input4862_def, output4862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20273 Flapjack.WordStore.heapLength)).val
theorem input4863_def : input4863 = (Flapjack.WordLangProgHOL.get 20273 Flapjack.WordStore.heapLength) := by
  unfold input4863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20273 Flapjack.WordStore.heapLength)).val
theorem output4863_def : output4863 = (Flapjack.WordLangProgHOL.get 20273 Flapjack.WordStore.heapLength) := by
  unfold output4863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4863_skip : Flapjack.WordAlloc.isSkip output4863 = false := by
  rw [output4863_def]
  conv => lhs; cbv
  try rfl
theorem node4863_eq : Flapjack.WordAlloc.removeDeadStructural input4863 value2437 value1 value2 = (output4863, value5, value1) := by
  rw [input4863_def, output4863_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4863_eq
end InitECandidate.Proofs.DeadStages713
