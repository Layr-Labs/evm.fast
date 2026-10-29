import InitECandidate.Proofs.DeadStages597.Chunk017
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4608_def : input4608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4608_def : output4608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4608_skip : Flapjack.WordAlloc.isSkip output4608 = true := by
  rw [output4608_def]
  conv => lhs; cbv
  try rfl
theorem node4608_eq : Flapjack.WordAlloc.removeDeadStructural input4608 value841 value1 value2 = (output4608, value841, value1) := by
  rw [input4608_def, output4608_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4608 input4607)).val
theorem input4609_def : input4609 = (.seq input4608 input4607) := by
  unfold input4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4607)).val
theorem output4609_def : output4609 = (output4607) := by
  unfold output4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4609_skip : Flapjack.WordAlloc.isSkip output4609 = false := by
  rw [output4609_def]
  conv => lhs; cbv
  try rfl
theorem node4609_eq : Flapjack.WordAlloc.removeDeadStructural input4609 value835 value1 value2 = (output4609, value841, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4607_eq]
  try dsimp only
  rw [node4608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4609 input4606)).val
theorem input4610_def : input4610 = (.seq input4609 input4606) := by
  unfold input4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4609)).val
theorem output4610_def : output4610 = (output4609) := by
  unfold output4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4610_skip : Flapjack.WordAlloc.isSkip output4610 = false := by
  rw [output4610_def]
  conv => lhs; cbv
  try rfl
theorem node4610_eq : Flapjack.WordAlloc.removeDeadStructural input4610 value835 value1 value2 = (output4610, value841, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4606_eq]
  try dsimp only
  rw [node4609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4610 input4605)).val
theorem input4611_def : input4611 = (.seq input4610 input4605) := by
  unfold input4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4610)).val
theorem output4611_def : output4611 = (output4610) := by
  unfold output4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4611_skip : Flapjack.WordAlloc.isSkip output4611 = false := by
  rw [output4611_def]
  conv => lhs; cbv
  try rfl
theorem node4611_eq : Flapjack.WordAlloc.removeDeadStructural input4611 value835 value1 value2 = (output4611, value841, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4605_eq]
  try dsimp only
  rw [node4610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value842 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1717, 1637), (1713, 1661), (1709, 1629)])).val
theorem input4612_def : input4612 = (Flapjack.WordLangProgHOL.move 2 [(1717, 1637), (1713, 1661), (1709, 1629)]) := by
  unfold input4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1717, 1637)])).val
theorem output4612_def : output4612 = (Flapjack.WordLangProgHOL.move 2 [(1717, 1637)]) := by
  unfold output4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4612_skip : Flapjack.WordAlloc.isSkip output4612 = false := by
  rw [output4612_def]
  conv => lhs; cbv
  try rfl
theorem node4612_eq : Flapjack.WordAlloc.removeDeadStructural input4612 value841 value1 value2 = (output4612, value842, value1) := by
  rw [input4612_def, output4612_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4612 input4611)).val
theorem input4613_def : input4613 = (.seq input4612 input4611) := by
  unfold input4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4612 output4611)).val
theorem output4613_def : output4613 = (.seq output4612 output4611) := by
  unfold output4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4613_skip : Flapjack.WordAlloc.isSkip output4613 = false := by
  rw [output4613_def]
  conv => lhs; cbv
  try rfl
theorem node4613_eq : Flapjack.WordAlloc.removeDeadStructural input4613 value835 value1 value2 = (output4613, value842, value1) := by
  rw [input4613_def, output4613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4611_eq]
  try dsimp only
  rw [node4612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4614_def : input4614 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4614_def : output4614 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4614_skip : Flapjack.WordAlloc.isSkip output4614 = true := by
  rw [output4614_def]
  conv => lhs; cbv
  try rfl
theorem node4614_eq : Flapjack.WordAlloc.removeDeadStructural input4614 value842 value1 value2 = (output4614, value842, value1) := by
  rw [input4614_def, output4614_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4614 input4613)).val
theorem input4615_def : input4615 = (.seq input4614 input4613) := by
  unfold input4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4613)).val
theorem output4615_def : output4615 = (output4613) := by
  unfold output4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4615_skip : Flapjack.WordAlloc.isSkip output4615 = false := by
  rw [output4615_def]
  conv => lhs; cbv
  try rfl
theorem node4615_eq : Flapjack.WordAlloc.removeDeadStructural input4615 value835 value1 value2 = (output4615, value842, value1) := by
  rw [input4615_def, output4615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4613_eq]
  try dsimp only
  rw [node4614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value843 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1665

def value844 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1661 value843 input4604 input4615)).val
theorem input4616_def : input4616 = (.ite value15 1661 value843 input4604 input4615) := by
  unfold input4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1661 value843 output4604 output4615)).val
theorem output4616_def : output4616 = (.ite value15 1661 value843 output4604 output4615) := by
  unfold output4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4616_skip : Flapjack.WordAlloc.isSkip output4616 = false := by
  rw [output4616_def]
  conv => lhs; cbv
  try rfl
theorem node4616_eq : Flapjack.WordAlloc.removeDeadStructural input4616 value835 value1 value2 = (output4616, value844, value1) := by
  rw [input4616_def, output4616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4604_eq]
  try dsimp only
  rw [node4615_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4616 input4575)).val
theorem input4617_def : input4617 = (.seq input4616 input4575) := by
  unfold input4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4616 output4575)).val
theorem output4617_def : output4617 = (.seq output4616 output4575) := by
  unfold output4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4617_skip : Flapjack.WordAlloc.isSkip output4617 = false := by
  rw [output4617_def]
  conv => lhs; cbv
  try rfl
theorem node4617_eq : Flapjack.WordAlloc.removeDeadStructural input4617 value835 value1 value2 = (output4617, value844, value1) := by
  rw [input4617_def, output4617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4575_eq]
  try dsimp only
  rw [node4616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1665 24#64))).val
theorem input4618_def : input4618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1665 24#64)) := by
  unfold input4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1665 24#64))).val
theorem output4618_def : output4618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1665 24#64)) := by
  unfold output4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4618_skip : Flapjack.WordAlloc.isSkip output4618 = false := by
  rw [output4618_def]
  conv => lhs; cbv
  try rfl
theorem node4618_eq : Flapjack.WordAlloc.removeDeadStructural input4618 value844 value1 value2 = (output4618, value842, value1) := by
  rw [input4618_def, output4618_def]
  try (conv => lhs; cbv)
  try rfl

def value845 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1661, 1641)])).val
theorem input4619_def : input4619 = (Flapjack.WordLangProgHOL.move 0 [(1661, 1641)]) := by
  unfold input4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1661, 1641)])).val
theorem output4619_def : output4619 = (Flapjack.WordLangProgHOL.move 0 [(1661, 1641)]) := by
  unfold output4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4619_skip : Flapjack.WordAlloc.isSkip output4619 = false := by
  rw [output4619_def]
  conv => lhs; cbv
  try rfl
theorem node4619_eq : Flapjack.WordAlloc.removeDeadStructural input4619 value842 value1 value2 = (output4619, value845, value1) := by
  rw [input4619_def, output4619_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4620_def : input4620 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4620_def : output4620 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4620_skip : Flapjack.WordAlloc.isSkip output4620 = false := by
  rw [output4620_def]
  conv => lhs; cbv
  try rfl
theorem node4620_eq : Flapjack.WordAlloc.removeDeadStructural input4620 value845 value1 value2 = (output4620, value845, value1) := by
  rw [input4620_def, output4620_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64))).val
theorem input4621_def : input4621 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64)) := by
  unfold input4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4621_def : output4621 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4621_skip : Flapjack.WordAlloc.isSkip output4621 = true := by
  rw [output4621_def]
  conv => lhs; cbv
  try rfl
theorem node4621_eq : Flapjack.WordAlloc.removeDeadStructural input4621 value845 value1 value2 = (output4621, value845, value1) := by
  rw [input4621_def, output4621_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4622_def : input4622 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4622_def : output4622 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4622_skip : Flapjack.WordAlloc.isSkip output4622 = false := by
  rw [output4622_def]
  conv => lhs; cbv
  try rfl
theorem node4622_eq : Flapjack.WordAlloc.removeDeadStructural input4622 value845 value1 value2 = (output4622, value845, value1) := by
  rw [input4622_def, output4622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 0#64))).val
theorem input4623_def : input4623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 0#64)) := by
  unfold input4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4623_def : output4623 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4623_skip : Flapjack.WordAlloc.isSkip output4623 = true := by
  rw [output4623_def]
  conv => lhs; cbv
  try rfl
theorem node4623_eq : Flapjack.WordAlloc.removeDeadStructural input4623 value845 value1 value2 = (output4623, value845, value1) := by
  rw [input4623_def, output4623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4623 input4622)).val
theorem input4624_def : input4624 = (.seq input4623 input4622) := by
  unfold input4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4622)).val
theorem output4624_def : output4624 = (output4622) := by
  unfold output4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4624_skip : Flapjack.WordAlloc.isSkip output4624 = false := by
  rw [output4624_def]
  conv => lhs; cbv
  try rfl
theorem node4624_eq : Flapjack.WordAlloc.removeDeadStructural input4624 value845 value1 value2 = (output4624, value845, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4622_eq]
  try dsimp only
  rw [node4623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4624 input4621)).val
theorem input4625_def : input4625 = (.seq input4624 input4621) := by
  unfold input4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4624)).val
theorem output4625_def : output4625 = (output4624) := by
  unfold output4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4625_skip : Flapjack.WordAlloc.isSkip output4625 = false := by
  rw [output4625_def]
  conv => lhs; cbv
  try rfl
theorem node4625_eq : Flapjack.WordAlloc.removeDeadStructural input4625 value845 value1 value2 = (output4625, value845, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4621_eq]
  try dsimp only
  rw [node4624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1649 0#64))).val
theorem input4626_def : input4626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1649 0#64)) := by
  unfold input4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4626_def : output4626 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4626_skip : Flapjack.WordAlloc.isSkip output4626 = true := by
  rw [output4626_def]
  conv => lhs; cbv
  try rfl
theorem node4626_eq : Flapjack.WordAlloc.removeDeadStructural input4626 value845 value1 value2 = (output4626, value845, value1) := by
  rw [input4626_def, output4626_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1645 0#64))).val
theorem input4627_def : input4627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1645 0#64)) := by
  unfold input4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4627_def : output4627 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4627_skip : Flapjack.WordAlloc.isSkip output4627 = true := by
  rw [output4627_def]
  conv => lhs; cbv
  try rfl
theorem node4627_eq : Flapjack.WordAlloc.removeDeadStructural input4627 value845 value1 value2 = (output4627, value845, value1) := by
  rw [input4627_def, output4627_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1641 0#64))).val
theorem input4628_def : input4628 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1641 0#64)) := by
  unfold input4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1641 0#64))).val
theorem output4628_def : output4628 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1641 0#64)) := by
  unfold output4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4628_skip : Flapjack.WordAlloc.isSkip output4628 = false := by
  rw [output4628_def]
  conv => lhs; cbv
  try rfl
theorem node4628_eq : Flapjack.WordAlloc.removeDeadStructural input4628 value845 value1 value2 = (output4628, value840, value1) := by
  rw [input4628_def, output4628_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4629_def : input4629 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4629_def : output4629 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4629_skip : Flapjack.WordAlloc.isSkip output4629 = true := by
  rw [output4629_def]
  conv => lhs; cbv
  try rfl
theorem node4629_eq : Flapjack.WordAlloc.removeDeadStructural input4629 value840 value1 value2 = (output4629, value840, value1) := by
  rw [input4629_def, output4629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4629 input4628)).val
theorem input4630_def : input4630 = (.seq input4629 input4628) := by
  unfold input4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4628)).val
theorem output4630_def : output4630 = (output4628) := by
  unfold output4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4630_skip : Flapjack.WordAlloc.isSkip output4630 = false := by
  rw [output4630_def]
  conv => lhs; cbv
  try rfl
theorem node4630_eq : Flapjack.WordAlloc.removeDeadStructural input4630 value845 value1 value2 = (output4630, value840, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4628_eq]
  try dsimp only
  rw [node4629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4630 input4627)).val
theorem input4631_def : input4631 = (.seq input4630 input4627) := by
  unfold input4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4630)).val
theorem output4631_def : output4631 = (output4630) := by
  unfold output4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4631_skip : Flapjack.WordAlloc.isSkip output4631 = false := by
  rw [output4631_def]
  conv => lhs; cbv
  try rfl
theorem node4631_eq : Flapjack.WordAlloc.removeDeadStructural input4631 value845 value1 value2 = (output4631, value840, value1) := by
  rw [input4631_def, output4631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4627_eq]
  try dsimp only
  rw [node4630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4631 input4626)).val
theorem input4632_def : input4632 = (.seq input4631 input4626) := by
  unfold input4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4631)).val
theorem output4632_def : output4632 = (output4631) := by
  unfold output4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4632_skip : Flapjack.WordAlloc.isSkip output4632 = false := by
  rw [output4632_def]
  conv => lhs; cbv
  try rfl
theorem node4632_eq : Flapjack.WordAlloc.removeDeadStructural input4632 value845 value1 value2 = (output4632, value840, value1) := by
  rw [input4632_def, output4632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4626_eq]
  try dsimp only
  rw [node4631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value846 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1637, 1605), (1633, 1621), (1629, 1625)])).val
theorem input4633_def : input4633 = (Flapjack.WordLangProgHOL.move 1 [(1637, 1605), (1633, 1621), (1629, 1625)]) := by
  unfold input4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1637, 1605)])).val
theorem output4633_def : output4633 = (Flapjack.WordLangProgHOL.move 1 [(1637, 1605)]) := by
  unfold output4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4633_skip : Flapjack.WordAlloc.isSkip output4633 = false := by
  rw [output4633_def]
  conv => lhs; cbv
  try rfl
theorem node4633_eq : Flapjack.WordAlloc.removeDeadStructural input4633 value840 value1 value2 = (output4633, value846, value1) := by
  rw [input4633_def, output4633_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4633 input4632)).val
theorem input4634_def : input4634 = (.seq input4633 input4632) := by
  unfold input4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4633 output4632)).val
theorem output4634_def : output4634 = (.seq output4633 output4632) := by
  unfold output4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4634_skip : Flapjack.WordAlloc.isSkip output4634 = false := by
  rw [output4634_def]
  conv => lhs; cbv
  try rfl
theorem node4634_eq : Flapjack.WordAlloc.removeDeadStructural input4634 value845 value1 value2 = (output4634, value846, value1) := by
  rw [input4634_def, output4634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4632_eq]
  try dsimp only
  rw [node4633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value847 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1605 [2])).val
theorem input4635_def : input4635 = (Flapjack.WordLangProgHOL.return 1605 [2]) := by
  unfold input4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1605 [2])).val
theorem output4635_def : output4635 = (Flapjack.WordLangProgHOL.return 1605 [2]) := by
  unfold output4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4635_skip : Flapjack.WordAlloc.isSkip output4635 = false := by
  rw [output4635_def]
  conv => lhs; cbv
  try rfl
theorem node4635_eq : Flapjack.WordAlloc.removeDeadStructural input4635 value846 value1 value2 = (output4635, value847, value1) := by
  rw [input4635_def, output4635_def]
  try (conv => lhs; cbv)
  try rfl

def value848 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1625)])).val
theorem input4636_def : input4636 = (Flapjack.WordLangProgHOL.move 0 [(2, 1625)]) := by
  unfold input4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1625)])).val
theorem output4636_def : output4636 = (Flapjack.WordLangProgHOL.move 0 [(2, 1625)]) := by
  unfold output4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4636_skip : Flapjack.WordAlloc.isSkip output4636 = false := by
  rw [output4636_def]
  conv => lhs; cbv
  try rfl
theorem node4636_eq : Flapjack.WordAlloc.removeDeadStructural input4636 value847 value1 value2 = (output4636, value848, value1) := by
  rw [input4636_def, output4636_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4636 input4635)).val
theorem input4637_def : input4637 = (.seq input4636 input4635) := by
  unfold input4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4636 output4635)).val
theorem output4637_def : output4637 = (.seq output4636 output4635) := by
  unfold output4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4637_skip : Flapjack.WordAlloc.isSkip output4637 = false := by
  rw [output4637_def]
  conv => lhs; cbv
  try rfl
theorem node4637_eq : Flapjack.WordAlloc.removeDeadStructural input4637 value846 value1 value2 = (output4637, value848, value1) := by
  rw [input4637_def, output4637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4635_eq]
  try dsimp only
  rw [node4636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64))).val
theorem input4638_def : input4638 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64)) := by
  unfold input4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64))).val
theorem output4638_def : output4638 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64)) := by
  unfold output4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4638_skip : Flapjack.WordAlloc.isSkip output4638 = false := by
  rw [output4638_def]
  conv => lhs; cbv
  try rfl
theorem node4638_eq : Flapjack.WordAlloc.removeDeadStructural input4638 value848 value1 value2 = (output4638, value846, value1) := by
  rw [input4638_def, output4638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4639_def : input4639 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4639_def : output4639 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4639_skip : Flapjack.WordAlloc.isSkip output4639 = false := by
  rw [output4639_def]
  conv => lhs; cbv
  try rfl
theorem node4639_eq : Flapjack.WordAlloc.removeDeadStructural input4639 value846 value1 value2 = (output4639, value846, value1) := by
  rw [input4639_def, output4639_def]
  try (conv => lhs; cbv)
  try rfl

def value849 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1609, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1617, 1609)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64)))),
      597, 40))
  (some 517) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1613, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1613)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1617 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1621, 1613)]))),
      597, 41)))).val
theorem input4640_def : input4640 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1609, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1617, 1609)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64)))),
      597, 40))
  (some 517) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1613, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1613)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1617 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1621, 1613)]))),
      597, 41))) := by
  unfold input4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1605, 1599)], 597, 40))
  (some 517) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1613, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1613)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 41)))).val
theorem output4640_def : output4640 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1605, 1599)], 597, 40))
  (some 517) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1605, 1599)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1613, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1613)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 41))) := by
  unfold output4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4640_skip : Flapjack.WordAlloc.isSkip output4640 = false := by
  rw [output4640_def]
  conv => lhs; cbv
  try rfl
theorem node4640_eq : Flapjack.WordAlloc.removeDeadStructural input4640 value846 value1 value2 = (output4640, value849, value1) := by
  rw [input4640_def, output4640_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4641_def : input4641 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4641_def : output4641 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4641_skip : Flapjack.WordAlloc.isSkip output4641 = true := by
  rw [output4641_def]
  conv => lhs; cbv
  try rfl
theorem node4641_eq : Flapjack.WordAlloc.removeDeadStructural input4641 value849 value1 value2 = (output4641, value849, value1) := by
  rw [input4641_def, output4641_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4641 input4640)).val
theorem input4642_def : input4642 = (.seq input4641 input4640) := by
  unfold input4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4640)).val
theorem output4642_def : output4642 = (output4640) := by
  unfold output4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4642_skip : Flapjack.WordAlloc.isSkip output4642 = false := by
  rw [output4642_def]
  conv => lhs; cbv
  try rfl
theorem node4642_eq : Flapjack.WordAlloc.removeDeadStructural input4642 value846 value1 value2 = (output4642, value849, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4640_eq]
  try dsimp only
  rw [node4641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value850 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1599, 1557)])).val
theorem input4643_def : input4643 = (Flapjack.WordLangProgHOL.move 0 [(1599, 1557)]) := by
  unfold input4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1599, 1557)])).val
theorem output4643_def : output4643 = (Flapjack.WordLangProgHOL.move 0 [(1599, 1557)]) := by
  unfold output4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4643_skip : Flapjack.WordAlloc.isSkip output4643 = false := by
  rw [output4643_def]
  conv => lhs; cbv
  try rfl
theorem node4643_eq : Flapjack.WordAlloc.removeDeadStructural input4643 value849 value1 value2 = (output4643, value850, value1) := by
  rw [input4643_def, output4643_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4643 input4642)).val
theorem input4644_def : input4644 = (.seq input4643 input4642) := by
  unfold input4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4643 output4642)).val
theorem output4644_def : output4644 = (.seq output4643 output4642) := by
  unfold output4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4644_skip : Flapjack.WordAlloc.isSkip output4644 = false := by
  rw [output4644_def]
  conv => lhs; cbv
  try rfl
theorem node4644_eq : Flapjack.WordAlloc.removeDeadStructural input4644 value846 value1 value2 = (output4644, value850, value1) := by
  rw [input4644_def, output4644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4642_eq]
  try dsimp only
  rw [node4643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 1#64))).val
theorem input4645_def : input4645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 1#64)) := by
  unfold input4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4645_def : output4645 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4645_skip : Flapjack.WordAlloc.isSkip output4645 = true := by
  rw [output4645_def]
  conv => lhs; cbv
  try rfl
theorem node4645_eq : Flapjack.WordAlloc.removeDeadStructural input4645 value850 value1 value2 = (output4645, value850, value1) := by
  rw [input4645_def, output4645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4646_def : input4646 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4646_def : output4646 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4646_skip : Flapjack.WordAlloc.isSkip output4646 = false := by
  rw [output4646_def]
  conv => lhs; cbv
  try rfl
theorem node4646_eq : Flapjack.WordAlloc.removeDeadStructural input4646 value850 value1 value2 = (output4646, value850, value1) := by
  rw [input4646_def, output4646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 1#64))).val
theorem input4647_def : input4647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 1#64)) := by
  unfold input4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4647_def : output4647 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4647_skip : Flapjack.WordAlloc.isSkip output4647 = true := by
  rw [output4647_def]
  conv => lhs; cbv
  try rfl
theorem node4647_eq : Flapjack.WordAlloc.removeDeadStructural input4647 value850 value1 value2 = (output4647, value850, value1) := by
  rw [input4647_def, output4647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4647 input4646)).val
theorem input4648_def : input4648 = (.seq input4647 input4646) := by
  unfold input4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4646)).val
theorem output4648_def : output4648 = (output4646) := by
  unfold output4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4648_skip : Flapjack.WordAlloc.isSkip output4648 = false := by
  rw [output4648_def]
  conv => lhs; cbv
  try rfl
theorem node4648_eq : Flapjack.WordAlloc.removeDeadStructural input4648 value850 value1 value2 = (output4648, value850, value1) := by
  rw [input4648_def, output4648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4646_eq]
  try dsimp only
  rw [node4647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4648 input4645)).val
theorem input4649_def : input4649 = (.seq input4648 input4645) := by
  unfold input4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4648)).val
theorem output4649_def : output4649 = (output4648) := by
  unfold output4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4649_skip : Flapjack.WordAlloc.isSkip output4649 = false := by
  rw [output4649_def]
  conv => lhs; cbv
  try rfl
theorem node4649_eq : Flapjack.WordAlloc.removeDeadStructural input4649 value850 value1 value2 = (output4649, value850, value1) := by
  rw [input4649_def, output4649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4645_eq]
  try dsimp only
  rw [node4648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4649 input4644)).val
theorem input4650_def : input4650 = (.seq input4649 input4644) := by
  unfold input4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4649 output4644)).val
theorem output4650_def : output4650 = (.seq output4649 output4644) := by
  unfold output4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4650_skip : Flapjack.WordAlloc.isSkip output4650 = false := by
  rw [output4650_def]
  conv => lhs; cbv
  try rfl
theorem node4650_eq : Flapjack.WordAlloc.removeDeadStructural input4650 value846 value1 value2 = (output4650, value850, value1) := by
  rw [input4650_def, output4650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4644_eq]
  try dsimp only
  rw [node4649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4650 input4639)).val
theorem input4651_def : input4651 = (.seq input4650 input4639) := by
  unfold input4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4650 output4639)).val
theorem output4651_def : output4651 = (.seq output4650 output4639) := by
  unfold output4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4651_skip : Flapjack.WordAlloc.isSkip output4651 = false := by
  rw [output4651_def]
  conv => lhs; cbv
  try rfl
theorem node4651_eq : Flapjack.WordAlloc.removeDeadStructural input4651 value846 value1 value2 = (output4651, value850, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4639_eq]
  try dsimp only
  rw [node4650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4651 input4638)).val
theorem input4652_def : input4652 = (.seq input4651 input4638) := by
  unfold input4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4651 output4638)).val
theorem output4652_def : output4652 = (.seq output4651 output4638) := by
  unfold output4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4652_skip : Flapjack.WordAlloc.isSkip output4652 = false := by
  rw [output4652_def]
  conv => lhs; cbv
  try rfl
theorem node4652_eq : Flapjack.WordAlloc.removeDeadStructural input4652 value848 value1 value2 = (output4652, value850, value1) := by
  rw [input4652_def, output4652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4638_eq]
  try dsimp only
  rw [node4651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4652 input4637)).val
theorem input4653_def : input4653 = (.seq input4652 input4637) := by
  unfold input4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4652 output4637)).val
theorem output4653_def : output4653 = (.seq output4652 output4637) := by
  unfold output4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4653_skip : Flapjack.WordAlloc.isSkip output4653 = false := by
  rw [output4653_def]
  conv => lhs; cbv
  try rfl
theorem node4653_eq : Flapjack.WordAlloc.removeDeadStructural input4653 value846 value1 value2 = (output4653, value850, value1) := by
  rw [input4653_def, output4653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4637_eq]
  try dsimp only
  rw [node4652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4653 input4634)).val
theorem input4654_def : input4654 = (.seq input4653 input4634) := by
  unfold input4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4653 output4634)).val
theorem output4654_def : output4654 = (.seq output4653 output4634) := by
  unfold output4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4654_skip : Flapjack.WordAlloc.isSkip output4654 = false := by
  rw [output4654_def]
  conv => lhs; cbv
  try rfl
theorem node4654_eq : Flapjack.WordAlloc.removeDeadStructural input4654 value845 value1 value2 = (output4654, value850, value1) := by
  rw [input4654_def, output4654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4634_eq]
  try dsimp only
  rw [node4653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1649, 1577)])).val
theorem input4655_def : input4655 = (Flapjack.WordLangProgHOL.move 2 [(1649, 1577)]) := by
  unfold input4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4655_def : output4655 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4655_skip : Flapjack.WordAlloc.isSkip output4655 = true := by
  rw [output4655_def]
  conv => lhs; cbv
  try rfl
theorem node4655_eq : Flapjack.WordAlloc.removeDeadStructural input4655 value845 value1 value2 = (output4655, value845, value1) := by
  rw [input4655_def, output4655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1645, 1585)])).val
theorem input4656_def : input4656 = (Flapjack.WordLangProgHOL.move 2 [(1645, 1585)]) := by
  unfold input4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4656_def : output4656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4656_skip : Flapjack.WordAlloc.isSkip output4656 = true := by
  rw [output4656_def]
  conv => lhs; cbv
  try rfl
theorem node4656_eq : Flapjack.WordAlloc.removeDeadStructural input4656 value845 value1 value2 = (output4656, value845, value1) := by
  rw [input4656_def, output4656_def]
  try (conv => lhs; cbv)
  try rfl

def value851 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1641, 1581)])).val
theorem input4657_def : input4657 = (Flapjack.WordLangProgHOL.move 2 [(1641, 1581)]) := by
  unfold input4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1641, 1581)])).val
theorem output4657_def : output4657 = (Flapjack.WordLangProgHOL.move 2 [(1641, 1581)]) := by
  unfold output4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4657_skip : Flapjack.WordAlloc.isSkip output4657 = false := by
  rw [output4657_def]
  conv => lhs; cbv
  try rfl
theorem node4657_eq : Flapjack.WordAlloc.removeDeadStructural input4657 value845 value1 value2 = (output4657, value851, value1) := by
  rw [input4657_def, output4657_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4658_def : input4658 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4658_def : output4658 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4658_skip : Flapjack.WordAlloc.isSkip output4658 = true := by
  rw [output4658_def]
  conv => lhs; cbv
  try rfl
theorem node4658_eq : Flapjack.WordAlloc.removeDeadStructural input4658 value851 value1 value2 = (output4658, value851, value1) := by
  rw [input4658_def, output4658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4658 input4657)).val
theorem input4659_def : input4659 = (.seq input4658 input4657) := by
  unfold input4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4657)).val
theorem output4659_def : output4659 = (output4657) := by
  unfold output4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4659_skip : Flapjack.WordAlloc.isSkip output4659 = false := by
  rw [output4659_def]
  conv => lhs; cbv
  try rfl
theorem node4659_eq : Flapjack.WordAlloc.removeDeadStructural input4659 value845 value1 value2 = (output4659, value851, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4657_eq]
  try dsimp only
  rw [node4658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4659 input4656)).val
theorem input4660_def : input4660 = (.seq input4659 input4656) := by
  unfold input4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4659)).val
theorem output4660_def : output4660 = (output4659) := by
  unfold output4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4660_skip : Flapjack.WordAlloc.isSkip output4660 = false := by
  rw [output4660_def]
  conv => lhs; cbv
  try rfl
theorem node4660_eq : Flapjack.WordAlloc.removeDeadStructural input4660 value845 value1 value2 = (output4660, value851, value1) := by
  rw [input4660_def, output4660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4656_eq]
  try dsimp only
  rw [node4659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4660 input4655)).val
theorem input4661_def : input4661 = (.seq input4660 input4655) := by
  unfold input4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4660)).val
theorem output4661_def : output4661 = (output4660) := by
  unfold output4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4661_skip : Flapjack.WordAlloc.isSkip output4661 = false := by
  rw [output4661_def]
  conv => lhs; cbv
  try rfl
theorem node4661_eq : Flapjack.WordAlloc.removeDeadStructural input4661 value845 value1 value2 = (output4661, value851, value1) := by
  rw [input4661_def, output4661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4655_eq]
  try dsimp only
  rw [node4660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value852 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1637, 1557), (1633, 1581), (1629, 1549)])).val
theorem input4662_def : input4662 = (Flapjack.WordLangProgHOL.move 2 [(1637, 1557), (1633, 1581), (1629, 1549)]) := by
  unfold input4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1637, 1557)])).val
theorem output4662_def : output4662 = (Flapjack.WordLangProgHOL.move 2 [(1637, 1557)]) := by
  unfold output4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4662_skip : Flapjack.WordAlloc.isSkip output4662 = false := by
  rw [output4662_def]
  conv => lhs; cbv
  try rfl
theorem node4662_eq : Flapjack.WordAlloc.removeDeadStructural input4662 value851 value1 value2 = (output4662, value852, value1) := by
  rw [input4662_def, output4662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4662 input4661)).val
theorem input4663_def : input4663 = (.seq input4662 input4661) := by
  unfold input4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4662 output4661)).val
theorem output4663_def : output4663 = (.seq output4662 output4661) := by
  unfold output4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4663_skip : Flapjack.WordAlloc.isSkip output4663 = false := by
  rw [output4663_def]
  conv => lhs; cbv
  try rfl
theorem node4663_eq : Flapjack.WordAlloc.removeDeadStructural input4663 value845 value1 value2 = (output4663, value852, value1) := by
  rw [input4663_def, output4663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4661_eq]
  try dsimp only
  rw [node4662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4664_def : input4664 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node4664_eq : Flapjack.WordAlloc.removeDeadStructural input4664 value852 value1 value2 = (output4664, value852, value1) := by
  rw [input4664_def, output4664_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4664 input4663)).val
theorem input4665_def : input4665 = (.seq input4664 input4663) := by
  unfold input4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4663)).val
theorem output4665_def : output4665 = (output4663) := by
  unfold output4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4665_skip : Flapjack.WordAlloc.isSkip output4665 = false := by
  rw [output4665_def]
  conv => lhs; cbv
  try rfl
theorem node4665_eq : Flapjack.WordAlloc.removeDeadStructural input4665 value845 value1 value2 = (output4665, value852, value1) := by
  rw [input4665_def, output4665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4663_eq]
  try dsimp only
  rw [node4664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value853 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1585

def value854 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1581 value853 input4654 input4665)).val
theorem input4666_def : input4666 = (.ite value15 1581 value853 input4654 input4665) := by
  unfold input4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1581 value853 output4654 output4665)).val
theorem output4666_def : output4666 = (.ite value15 1581 value853 output4654 output4665) := by
  unfold output4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4666_skip : Flapjack.WordAlloc.isSkip output4666 = false := by
  rw [output4666_def]
  conv => lhs; cbv
  try rfl
theorem node4666_eq : Flapjack.WordAlloc.removeDeadStructural input4666 value845 value1 value2 = (output4666, value854, value1) := by
  rw [input4666_def, output4666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4654_eq]
  try dsimp only
  rw [node4665_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4666 input4625)).val
theorem input4667_def : input4667 = (.seq input4666 input4625) := by
  unfold input4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4666 output4625)).val
theorem output4667_def : output4667 = (.seq output4666 output4625) := by
  unfold output4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4667_skip : Flapjack.WordAlloc.isSkip output4667 = false := by
  rw [output4667_def]
  conv => lhs; cbv
  try rfl
theorem node4667_eq : Flapjack.WordAlloc.removeDeadStructural input4667 value845 value1 value2 = (output4667, value854, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4625_eq]
  try dsimp only
  rw [node4666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 23#64))).val
theorem input4668_def : input4668 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 23#64)) := by
  unfold input4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 23#64))).val
theorem output4668_def : output4668 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 23#64)) := by
  unfold output4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4668_skip : Flapjack.WordAlloc.isSkip output4668 = false := by
  rw [output4668_def]
  conv => lhs; cbv
  try rfl
theorem node4668_eq : Flapjack.WordAlloc.removeDeadStructural input4668 value854 value1 value2 = (output4668, value852, value1) := by
  rw [input4668_def, output4668_def]
  try (conv => lhs; cbv)
  try rfl

def value855 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1581, 1561)])).val
theorem input4669_def : input4669 = (Flapjack.WordLangProgHOL.move 0 [(1581, 1561)]) := by
  unfold input4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1581, 1561)])).val
theorem output4669_def : output4669 = (Flapjack.WordLangProgHOL.move 0 [(1581, 1561)]) := by
  unfold output4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4669_skip : Flapjack.WordAlloc.isSkip output4669 = false := by
  rw [output4669_def]
  conv => lhs; cbv
  try rfl
theorem node4669_eq : Flapjack.WordAlloc.removeDeadStructural input4669 value852 value1 value2 = (output4669, value855, value1) := by
  rw [input4669_def, output4669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4670_def : input4670 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4670_def : output4670 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4670_skip : Flapjack.WordAlloc.isSkip output4670 = false := by
  rw [output4670_def]
  conv => lhs; cbv
  try rfl
theorem node4670_eq : Flapjack.WordAlloc.removeDeadStructural input4670 value855 value1 value2 = (output4670, value855, value1) := by
  rw [input4670_def, output4670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1577 0#64))).val
theorem input4671_def : input4671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1577 0#64)) := by
  unfold input4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4671_def : output4671 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4671_skip : Flapjack.WordAlloc.isSkip output4671 = true := by
  rw [output4671_def]
  conv => lhs; cbv
  try rfl
theorem node4671_eq : Flapjack.WordAlloc.removeDeadStructural input4671 value855 value1 value2 = (output4671, value855, value1) := by
  rw [input4671_def, output4671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4672_def : input4672 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4672_def : output4672 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4672_skip : Flapjack.WordAlloc.isSkip output4672 = false := by
  rw [output4672_def]
  conv => lhs; cbv
  try rfl
theorem node4672_eq : Flapjack.WordAlloc.removeDeadStructural input4672 value855 value1 value2 = (output4672, value855, value1) := by
  rw [input4672_def, output4672_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64))).val
theorem input4673_def : input4673 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)) := by
  unfold input4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4673_def : output4673 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4673_skip : Flapjack.WordAlloc.isSkip output4673 = true := by
  rw [output4673_def]
  conv => lhs; cbv
  try rfl
theorem node4673_eq : Flapjack.WordAlloc.removeDeadStructural input4673 value855 value1 value2 = (output4673, value855, value1) := by
  rw [input4673_def, output4673_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4673 input4672)).val
theorem input4674_def : input4674 = (.seq input4673 input4672) := by
  unfold input4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4672)).val
theorem output4674_def : output4674 = (output4672) := by
  unfold output4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4674_skip : Flapjack.WordAlloc.isSkip output4674 = false := by
  rw [output4674_def]
  conv => lhs; cbv
  try rfl
theorem node4674_eq : Flapjack.WordAlloc.removeDeadStructural input4674 value855 value1 value2 = (output4674, value855, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4672_eq]
  try dsimp only
  rw [node4673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4674 input4671)).val
theorem input4675_def : input4675 = (.seq input4674 input4671) := by
  unfold input4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4674)).val
theorem output4675_def : output4675 = (output4674) := by
  unfold output4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4675_skip : Flapjack.WordAlloc.isSkip output4675 = false := by
  rw [output4675_def]
  conv => lhs; cbv
  try rfl
theorem node4675_eq : Flapjack.WordAlloc.removeDeadStructural input4675 value855 value1 value2 = (output4675, value855, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4671_eq]
  try dsimp only
  rw [node4674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1569 0#64))).val
theorem input4676_def : input4676 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1569 0#64)) := by
  unfold input4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4676_def : output4676 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4676_skip : Flapjack.WordAlloc.isSkip output4676 = true := by
  rw [output4676_def]
  conv => lhs; cbv
  try rfl
theorem node4676_eq : Flapjack.WordAlloc.removeDeadStructural input4676 value855 value1 value2 = (output4676, value855, value1) := by
  rw [input4676_def, output4676_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1565 0#64))).val
theorem input4677_def : input4677 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1565 0#64)) := by
  unfold input4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4677_def : output4677 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4677_skip : Flapjack.WordAlloc.isSkip output4677 = true := by
  rw [output4677_def]
  conv => lhs; cbv
  try rfl
theorem node4677_eq : Flapjack.WordAlloc.removeDeadStructural input4677 value855 value1 value2 = (output4677, value855, value1) := by
  rw [input4677_def, output4677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64))).val
theorem input4678_def : input4678 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64)) := by
  unfold input4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64))).val
theorem output4678_def : output4678 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64)) := by
  unfold output4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4678_skip : Flapjack.WordAlloc.isSkip output4678 = false := by
  rw [output4678_def]
  conv => lhs; cbv
  try rfl
theorem node4678_eq : Flapjack.WordAlloc.removeDeadStructural input4678 value855 value1 value2 = (output4678, value850, value1) := by
  rw [input4678_def, output4678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4679_def : input4679 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4679_def : output4679 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4679_skip : Flapjack.WordAlloc.isSkip output4679 = true := by
  rw [output4679_def]
  conv => lhs; cbv
  try rfl
theorem node4679_eq : Flapjack.WordAlloc.removeDeadStructural input4679 value850 value1 value2 = (output4679, value850, value1) := by
  rw [input4679_def, output4679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4679 input4678)).val
theorem input4680_def : input4680 = (.seq input4679 input4678) := by
  unfold input4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4678)).val
theorem output4680_def : output4680 = (output4678) := by
  unfold output4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4680_skip : Flapjack.WordAlloc.isSkip output4680 = false := by
  rw [output4680_def]
  conv => lhs; cbv
  try rfl
theorem node4680_eq : Flapjack.WordAlloc.removeDeadStructural input4680 value855 value1 value2 = (output4680, value850, value1) := by
  rw [input4680_def, output4680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4678_eq]
  try dsimp only
  rw [node4679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4680 input4677)).val
theorem input4681_def : input4681 = (.seq input4680 input4677) := by
  unfold input4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4680)).val
theorem output4681_def : output4681 = (output4680) := by
  unfold output4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4681_skip : Flapjack.WordAlloc.isSkip output4681 = false := by
  rw [output4681_def]
  conv => lhs; cbv
  try rfl
theorem node4681_eq : Flapjack.WordAlloc.removeDeadStructural input4681 value855 value1 value2 = (output4681, value850, value1) := by
  rw [input4681_def, output4681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4677_eq]
  try dsimp only
  rw [node4680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4681 input4676)).val
theorem input4682_def : input4682 = (.seq input4681 input4676) := by
  unfold input4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4681)).val
theorem output4682_def : output4682 = (output4681) := by
  unfold output4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4682_skip : Flapjack.WordAlloc.isSkip output4682 = false := by
  rw [output4682_def]
  conv => lhs; cbv
  try rfl
theorem node4682_eq : Flapjack.WordAlloc.removeDeadStructural input4682 value855 value1 value2 = (output4682, value850, value1) := by
  rw [input4682_def, output4682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4676_eq]
  try dsimp only
  rw [node4681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value856 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1557, 1525), (1553, 1541), (1549, 1545)])).val
theorem input4683_def : input4683 = (Flapjack.WordLangProgHOL.move 1 [(1557, 1525), (1553, 1541), (1549, 1545)]) := by
  unfold input4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1557, 1525)])).val
theorem output4683_def : output4683 = (Flapjack.WordLangProgHOL.move 1 [(1557, 1525)]) := by
  unfold output4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4683_skip : Flapjack.WordAlloc.isSkip output4683 = false := by
  rw [output4683_def]
  conv => lhs; cbv
  try rfl
theorem node4683_eq : Flapjack.WordAlloc.removeDeadStructural input4683 value850 value1 value2 = (output4683, value856, value1) := by
  rw [input4683_def, output4683_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4683 input4682)).val
theorem input4684_def : input4684 = (.seq input4683 input4682) := by
  unfold input4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4683 output4682)).val
theorem output4684_def : output4684 = (.seq output4683 output4682) := by
  unfold output4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4684_skip : Flapjack.WordAlloc.isSkip output4684 = false := by
  rw [output4684_def]
  conv => lhs; cbv
  try rfl
theorem node4684_eq : Flapjack.WordAlloc.removeDeadStructural input4684 value855 value1 value2 = (output4684, value856, value1) := by
  rw [input4684_def, output4684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4682_eq]
  try dsimp only
  rw [node4683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value857 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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

@[irreducible, cbv_opaque] def input4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1525 [2])).val
theorem input4685_def : input4685 = (Flapjack.WordLangProgHOL.return 1525 [2]) := by
  unfold input4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1525 [2])).val
theorem output4685_def : output4685 = (Flapjack.WordLangProgHOL.return 1525 [2]) := by
  unfold output4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4685_skip : Flapjack.WordAlloc.isSkip output4685 = false := by
  rw [output4685_def]
  conv => lhs; cbv
  try rfl
theorem node4685_eq : Flapjack.WordAlloc.removeDeadStructural input4685 value856 value1 value2 = (output4685, value857, value1) := by
  rw [input4685_def, output4685_def]
  try (conv => lhs; cbv)
  try rfl

def value858 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1545)])).val
theorem input4686_def : input4686 = (Flapjack.WordLangProgHOL.move 0 [(2, 1545)]) := by
  unfold input4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1545)])).val
theorem output4686_def : output4686 = (Flapjack.WordLangProgHOL.move 0 [(2, 1545)]) := by
  unfold output4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4686_skip : Flapjack.WordAlloc.isSkip output4686 = false := by
  rw [output4686_def]
  conv => lhs; cbv
  try rfl
theorem node4686_eq : Flapjack.WordAlloc.removeDeadStructural input4686 value857 value1 value2 = (output4686, value858, value1) := by
  rw [input4686_def, output4686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4686 input4685)).val
theorem input4687_def : input4687 = (.seq input4686 input4685) := by
  unfold input4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4686 output4685)).val
theorem output4687_def : output4687 = (.seq output4686 output4685) := by
  unfold output4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4687_skip : Flapjack.WordAlloc.isSkip output4687 = false := by
  rw [output4687_def]
  conv => lhs; cbv
  try rfl
theorem node4687_eq : Flapjack.WordAlloc.removeDeadStructural input4687 value856 value1 value2 = (output4687, value858, value1) := by
  rw [input4687_def, output4687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4685_eq]
  try dsimp only
  rw [node4686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64))).val
theorem input4688_def : input4688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64)) := by
  unfold input4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64))).val
theorem output4688_def : output4688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64)) := by
  unfold output4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4688_skip : Flapjack.WordAlloc.isSkip output4688 = false := by
  rw [output4688_def]
  conv => lhs; cbv
  try rfl
theorem node4688_eq : Flapjack.WordAlloc.removeDeadStructural input4688 value858 value1 value2 = (output4688, value856, value1) := by
  rw [input4688_def, output4688_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4689_def : input4689 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4689_def : output4689 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4689_skip : Flapjack.WordAlloc.isSkip output4689 = false := by
  rw [output4689_def]
  conv => lhs; cbv
  try rfl
theorem node4689_eq : Flapjack.WordAlloc.removeDeadStructural input4689 value856 value1 value2 = (output4689, value856, value1) := by
  rw [input4689_def, output4689_def]
  try (conv => lhs; cbv)
  try rfl

def value859 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1529, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1537, 1529)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1541 0#64)))),
      597, 38))
  (some 516) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1533, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1533)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1537 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1541, 1533)]))),
      597, 39)))).val
theorem input4690_def : input4690 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1529, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1537, 1529)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1541 0#64)))),
      597, 38))
  (some 516) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1533, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1533)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1537 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1541, 1533)]))),
      597, 39))) := by
  unfold input4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1525, 1519)], 597, 38))
  (some 516) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1533, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1533)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 39)))).val
theorem output4690_def : output4690 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1525, 1519)], 597, 38))
  (some 516) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1525, 1519)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1533, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1533)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 39))) := by
  unfold output4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4690_skip : Flapjack.WordAlloc.isSkip output4690 = false := by
  rw [output4690_def]
  conv => lhs; cbv
  try rfl
theorem node4690_eq : Flapjack.WordAlloc.removeDeadStructural input4690 value856 value1 value2 = (output4690, value859, value1) := by
  rw [input4690_def, output4690_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4691_def : input4691 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4691_def : output4691 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4691_skip : Flapjack.WordAlloc.isSkip output4691 = true := by
  rw [output4691_def]
  conv => lhs; cbv
  try rfl
theorem node4691_eq : Flapjack.WordAlloc.removeDeadStructural input4691 value859 value1 value2 = (output4691, value859, value1) := by
  rw [input4691_def, output4691_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4691 input4690)).val
theorem input4692_def : input4692 = (.seq input4691 input4690) := by
  unfold input4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4690)).val
theorem output4692_def : output4692 = (output4690) := by
  unfold output4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4692_skip : Flapjack.WordAlloc.isSkip output4692 = false := by
  rw [output4692_def]
  conv => lhs; cbv
  try rfl
theorem node4692_eq : Flapjack.WordAlloc.removeDeadStructural input4692 value856 value1 value2 = (output4692, value859, value1) := by
  rw [input4692_def, output4692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4690_eq]
  try dsimp only
  rw [node4691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value860 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1519, 1477)])).val
theorem input4693_def : input4693 = (Flapjack.WordLangProgHOL.move 0 [(1519, 1477)]) := by
  unfold input4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1519, 1477)])).val
theorem output4693_def : output4693 = (Flapjack.WordLangProgHOL.move 0 [(1519, 1477)]) := by
  unfold output4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4693_skip : Flapjack.WordAlloc.isSkip output4693 = false := by
  rw [output4693_def]
  conv => lhs; cbv
  try rfl
theorem node4693_eq : Flapjack.WordAlloc.removeDeadStructural input4693 value859 value1 value2 = (output4693, value860, value1) := by
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
theorem node4694_eq : Flapjack.WordAlloc.removeDeadStructural input4694 value856 value1 value2 = (output4694, value860, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4692_eq]
  try dsimp only
  rw [node4693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1513 1#64))).val
theorem input4695_def : input4695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1513 1#64)) := by
  unfold input4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4695_def : output4695 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4695_skip : Flapjack.WordAlloc.isSkip output4695 = true := by
  rw [output4695_def]
  conv => lhs; cbv
  try rfl
theorem node4695_eq : Flapjack.WordAlloc.removeDeadStructural input4695 value860 value1 value2 = (output4695, value860, value1) := by
  rw [input4695_def, output4695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4696_def : input4696 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4696_def : output4696 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4696_skip : Flapjack.WordAlloc.isSkip output4696 = false := by
  rw [output4696_def]
  conv => lhs; cbv
  try rfl
theorem node4696_eq : Flapjack.WordAlloc.removeDeadStructural input4696 value860 value1 value2 = (output4696, value860, value1) := by
  rw [input4696_def, output4696_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1509 1#64))).val
theorem input4697_def : input4697 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1509 1#64)) := by
  unfold input4697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4697_def : output4697 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4697_skip : Flapjack.WordAlloc.isSkip output4697 = true := by
  rw [output4697_def]
  conv => lhs; cbv
  try rfl
theorem node4697_eq : Flapjack.WordAlloc.removeDeadStructural input4697 value860 value1 value2 = (output4697, value860, value1) := by
  rw [input4697_def, output4697_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4697 input4696)).val
theorem input4698_def : input4698 = (.seq input4697 input4696) := by
  unfold input4698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4696)).val
theorem output4698_def : output4698 = (output4696) := by
  unfold output4698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4698_skip : Flapjack.WordAlloc.isSkip output4698 = false := by
  rw [output4698_def]
  conv => lhs; cbv
  try rfl
theorem node4698_eq : Flapjack.WordAlloc.removeDeadStructural input4698 value860 value1 value2 = (output4698, value860, value1) := by
  rw [input4698_def, output4698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4696_eq]
  try dsimp only
  rw [node4697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4698 input4695)).val
theorem input4699_def : input4699 = (.seq input4698 input4695) := by
  unfold input4699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4698)).val
theorem output4699_def : output4699 = (output4698) := by
  unfold output4699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4699_skip : Flapjack.WordAlloc.isSkip output4699 = false := by
  rw [output4699_def]
  conv => lhs; cbv
  try rfl
theorem node4699_eq : Flapjack.WordAlloc.removeDeadStructural input4699 value860 value1 value2 = (output4699, value860, value1) := by
  rw [input4699_def, output4699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4695_eq]
  try dsimp only
  rw [node4698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4699 input4694)).val
theorem input4700_def : input4700 = (.seq input4699 input4694) := by
  unfold input4700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4699 output4694)).val
theorem output4700_def : output4700 = (.seq output4699 output4694) := by
  unfold output4700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4700_skip : Flapjack.WordAlloc.isSkip output4700 = false := by
  rw [output4700_def]
  conv => lhs; cbv
  try rfl
theorem node4700_eq : Flapjack.WordAlloc.removeDeadStructural input4700 value856 value1 value2 = (output4700, value860, value1) := by
  rw [input4700_def, output4700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4694_eq]
  try dsimp only
  rw [node4699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4700 input4689)).val
theorem input4701_def : input4701 = (.seq input4700 input4689) := by
  unfold input4701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4700 output4689)).val
theorem output4701_def : output4701 = (.seq output4700 output4689) := by
  unfold output4701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4701_skip : Flapjack.WordAlloc.isSkip output4701 = false := by
  rw [output4701_def]
  conv => lhs; cbv
  try rfl
theorem node4701_eq : Flapjack.WordAlloc.removeDeadStructural input4701 value856 value1 value2 = (output4701, value860, value1) := by
  rw [input4701_def, output4701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4689_eq]
  try dsimp only
  rw [node4700_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4701 input4688)).val
theorem input4702_def : input4702 = (.seq input4701 input4688) := by
  unfold input4702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4701 output4688)).val
theorem output4702_def : output4702 = (.seq output4701 output4688) := by
  unfold output4702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4702_skip : Flapjack.WordAlloc.isSkip output4702 = false := by
  rw [output4702_def]
  conv => lhs; cbv
  try rfl
theorem node4702_eq : Flapjack.WordAlloc.removeDeadStructural input4702 value858 value1 value2 = (output4702, value860, value1) := by
  rw [input4702_def, output4702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4688_eq]
  try dsimp only
  rw [node4701_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4702 input4687)).val
theorem input4703_def : input4703 = (.seq input4702 input4687) := by
  unfold input4703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4702 output4687)).val
theorem output4703_def : output4703 = (.seq output4702 output4687) := by
  unfold output4703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4703_skip : Flapjack.WordAlloc.isSkip output4703 = false := by
  rw [output4703_def]
  conv => lhs; cbv
  try rfl
theorem node4703_eq : Flapjack.WordAlloc.removeDeadStructural input4703 value856 value1 value2 = (output4703, value860, value1) := by
  rw [input4703_def, output4703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4687_eq]
  try dsimp only
  rw [node4702_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4703 input4684)).val
theorem input4704_def : input4704 = (.seq input4703 input4684) := by
  unfold input4704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4703 output4684)).val
theorem output4704_def : output4704 = (.seq output4703 output4684) := by
  unfold output4704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4704_skip : Flapjack.WordAlloc.isSkip output4704 = false := by
  rw [output4704_def]
  conv => lhs; cbv
  try rfl
theorem node4704_eq : Flapjack.WordAlloc.removeDeadStructural input4704 value855 value1 value2 = (output4704, value860, value1) := by
  rw [input4704_def, output4704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4684_eq]
  try dsimp only
  rw [node4703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1569, 1497)])).val
theorem input4705_def : input4705 = (Flapjack.WordLangProgHOL.move 2 [(1569, 1497)]) := by
  unfold input4705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4705_def : output4705 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4705_skip : Flapjack.WordAlloc.isSkip output4705 = true := by
  rw [output4705_def]
  conv => lhs; cbv
  try rfl
theorem node4705_eq : Flapjack.WordAlloc.removeDeadStructural input4705 value855 value1 value2 = (output4705, value855, value1) := by
  rw [input4705_def, output4705_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1565, 1505)])).val
theorem input4706_def : input4706 = (Flapjack.WordLangProgHOL.move 2 [(1565, 1505)]) := by
  unfold input4706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4706_def : output4706 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4706_skip : Flapjack.WordAlloc.isSkip output4706 = true := by
  rw [output4706_def]
  conv => lhs; cbv
  try rfl
theorem node4706_eq : Flapjack.WordAlloc.removeDeadStructural input4706 value855 value1 value2 = (output4706, value855, value1) := by
  rw [input4706_def, output4706_def]
  try (conv => lhs; cbv)
  try rfl

def value861 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1561, 1501)])).val
theorem input4707_def : input4707 = (Flapjack.WordLangProgHOL.move 2 [(1561, 1501)]) := by
  unfold input4707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1561, 1501)])).val
theorem output4707_def : output4707 = (Flapjack.WordLangProgHOL.move 2 [(1561, 1501)]) := by
  unfold output4707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4707_skip : Flapjack.WordAlloc.isSkip output4707 = false := by
  rw [output4707_def]
  conv => lhs; cbv
  try rfl
theorem node4707_eq : Flapjack.WordAlloc.removeDeadStructural input4707 value855 value1 value2 = (output4707, value861, value1) := by
  rw [input4707_def, output4707_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4708_def : input4708 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4708_def : output4708 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4708_skip : Flapjack.WordAlloc.isSkip output4708 = true := by
  rw [output4708_def]
  conv => lhs; cbv
  try rfl
theorem node4708_eq : Flapjack.WordAlloc.removeDeadStructural input4708 value861 value1 value2 = (output4708, value861, value1) := by
  rw [input4708_def, output4708_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4708 input4707)).val
theorem input4709_def : input4709 = (.seq input4708 input4707) := by
  unfold input4709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4707)).val
theorem output4709_def : output4709 = (output4707) := by
  unfold output4709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4709_skip : Flapjack.WordAlloc.isSkip output4709 = false := by
  rw [output4709_def]
  conv => lhs; cbv
  try rfl
theorem node4709_eq : Flapjack.WordAlloc.removeDeadStructural input4709 value855 value1 value2 = (output4709, value861, value1) := by
  rw [input4709_def, output4709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4707_eq]
  try dsimp only
  rw [node4708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4709 input4706)).val
theorem input4710_def : input4710 = (.seq input4709 input4706) := by
  unfold input4710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4709)).val
theorem output4710_def : output4710 = (output4709) := by
  unfold output4710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4710_skip : Flapjack.WordAlloc.isSkip output4710 = false := by
  rw [output4710_def]
  conv => lhs; cbv
  try rfl
theorem node4710_eq : Flapjack.WordAlloc.removeDeadStructural input4710 value855 value1 value2 = (output4710, value861, value1) := by
  rw [input4710_def, output4710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4706_eq]
  try dsimp only
  rw [node4709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4710 input4705)).val
theorem input4711_def : input4711 = (.seq input4710 input4705) := by
  unfold input4711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4710)).val
theorem output4711_def : output4711 = (output4710) := by
  unfold output4711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4711_skip : Flapjack.WordAlloc.isSkip output4711 = false := by
  rw [output4711_def]
  conv => lhs; cbv
  try rfl
theorem node4711_eq : Flapjack.WordAlloc.removeDeadStructural input4711 value855 value1 value2 = (output4711, value861, value1) := by
  rw [input4711_def, output4711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4705_eq]
  try dsimp only
  rw [node4710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value862 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1557, 1477), (1553, 1501), (1549, 1469)])).val
theorem input4712_def : input4712 = (Flapjack.WordLangProgHOL.move 2 [(1557, 1477), (1553, 1501), (1549, 1469)]) := by
  unfold input4712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1557, 1477)])).val
theorem output4712_def : output4712 = (Flapjack.WordLangProgHOL.move 2 [(1557, 1477)]) := by
  unfold output4712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4712_skip : Flapjack.WordAlloc.isSkip output4712 = false := by
  rw [output4712_def]
  conv => lhs; cbv
  try rfl
theorem node4712_eq : Flapjack.WordAlloc.removeDeadStructural input4712 value861 value1 value2 = (output4712, value862, value1) := by
  rw [input4712_def, output4712_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4712 input4711)).val
theorem input4713_def : input4713 = (.seq input4712 input4711) := by
  unfold input4713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4712 output4711)).val
theorem output4713_def : output4713 = (.seq output4712 output4711) := by
  unfold output4713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4713_skip : Flapjack.WordAlloc.isSkip output4713 = false := by
  rw [output4713_def]
  conv => lhs; cbv
  try rfl
theorem node4713_eq : Flapjack.WordAlloc.removeDeadStructural input4713 value855 value1 value2 = (output4713, value862, value1) := by
  rw [input4713_def, output4713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4711_eq]
  try dsimp only
  rw [node4712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4714_def : input4714 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4714_def : output4714 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4714_skip : Flapjack.WordAlloc.isSkip output4714 = true := by
  rw [output4714_def]
  conv => lhs; cbv
  try rfl
theorem node4714_eq : Flapjack.WordAlloc.removeDeadStructural input4714 value862 value1 value2 = (output4714, value862, value1) := by
  rw [input4714_def, output4714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4714 input4713)).val
theorem input4715_def : input4715 = (.seq input4714 input4713) := by
  unfold input4715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4713)).val
theorem output4715_def : output4715 = (output4713) := by
  unfold output4715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4715_skip : Flapjack.WordAlloc.isSkip output4715 = false := by
  rw [output4715_def]
  conv => lhs; cbv
  try rfl
theorem node4715_eq : Flapjack.WordAlloc.removeDeadStructural input4715 value855 value1 value2 = (output4715, value862, value1) := by
  rw [input4715_def, output4715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4713_eq]
  try dsimp only
  rw [node4714_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value863 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1505

def value864 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1501 value863 input4704 input4715)).val
theorem input4716_def : input4716 = (.ite value15 1501 value863 input4704 input4715) := by
  unfold input4716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1501 value863 output4704 output4715)).val
theorem output4716_def : output4716 = (.ite value15 1501 value863 output4704 output4715) := by
  unfold output4716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4716_skip : Flapjack.WordAlloc.isSkip output4716 = false := by
  rw [output4716_def]
  conv => lhs; cbv
  try rfl
theorem node4716_eq : Flapjack.WordAlloc.removeDeadStructural input4716 value855 value1 value2 = (output4716, value864, value1) := by
  rw [input4716_def, output4716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4704_eq]
  try dsimp only
  rw [node4715_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4716 input4675)).val
theorem input4717_def : input4717 = (.seq input4716 input4675) := by
  unfold input4717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4716 output4675)).val
theorem output4717_def : output4717 = (.seq output4716 output4675) := by
  unfold output4717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4717_skip : Flapjack.WordAlloc.isSkip output4717 = false := by
  rw [output4717_def]
  conv => lhs; cbv
  try rfl
theorem node4717_eq : Flapjack.WordAlloc.removeDeadStructural input4717 value855 value1 value2 = (output4717, value864, value1) := by
  rw [input4717_def, output4717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4675_eq]
  try dsimp only
  rw [node4716_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 22#64))).val
theorem input4718_def : input4718 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 22#64)) := by
  unfold input4718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 22#64))).val
theorem output4718_def : output4718 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1505 22#64)) := by
  unfold output4718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4718_skip : Flapjack.WordAlloc.isSkip output4718 = false := by
  rw [output4718_def]
  conv => lhs; cbv
  try rfl
theorem node4718_eq : Flapjack.WordAlloc.removeDeadStructural input4718 value864 value1 value2 = (output4718, value862, value1) := by
  rw [input4718_def, output4718_def]
  try (conv => lhs; cbv)
  try rfl

def value865 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1501, 1481)])).val
theorem input4719_def : input4719 = (Flapjack.WordLangProgHOL.move 0 [(1501, 1481)]) := by
  unfold input4719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1501, 1481)])).val
theorem output4719_def : output4719 = (Flapjack.WordLangProgHOL.move 0 [(1501, 1481)]) := by
  unfold output4719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4719_skip : Flapjack.WordAlloc.isSkip output4719 = false := by
  rw [output4719_def]
  conv => lhs; cbv
  try rfl
theorem node4719_eq : Flapjack.WordAlloc.removeDeadStructural input4719 value862 value1 value2 = (output4719, value865, value1) := by
  rw [input4719_def, output4719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4720_def : input4720 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4720_def : output4720 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4720_skip : Flapjack.WordAlloc.isSkip output4720 = false := by
  rw [output4720_def]
  conv => lhs; cbv
  try rfl
theorem node4720_eq : Flapjack.WordAlloc.removeDeadStructural input4720 value865 value1 value2 = (output4720, value865, value1) := by
  rw [input4720_def, output4720_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 0#64))).val
theorem input4721_def : input4721 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 0#64)) := by
  unfold input4721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4721_def : output4721 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4721_skip : Flapjack.WordAlloc.isSkip output4721 = true := by
  rw [output4721_def]
  conv => lhs; cbv
  try rfl
theorem node4721_eq : Flapjack.WordAlloc.removeDeadStructural input4721 value865 value1 value2 = (output4721, value865, value1) := by
  rw [input4721_def, output4721_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4722_def : input4722 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4722_def : output4722 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4722_skip : Flapjack.WordAlloc.isSkip output4722 = false := by
  rw [output4722_def]
  conv => lhs; cbv
  try rfl
theorem node4722_eq : Flapjack.WordAlloc.removeDeadStructural input4722 value865 value1 value2 = (output4722, value865, value1) := by
  rw [input4722_def, output4722_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 0#64))).val
theorem input4723_def : input4723 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 0#64)) := by
  unfold input4723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4723_def : output4723 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4723_skip : Flapjack.WordAlloc.isSkip output4723 = true := by
  rw [output4723_def]
  conv => lhs; cbv
  try rfl
theorem node4723_eq : Flapjack.WordAlloc.removeDeadStructural input4723 value865 value1 value2 = (output4723, value865, value1) := by
  rw [input4723_def, output4723_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4723 input4722)).val
theorem input4724_def : input4724 = (.seq input4723 input4722) := by
  unfold input4724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4722)).val
theorem output4724_def : output4724 = (output4722) := by
  unfold output4724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4724_skip : Flapjack.WordAlloc.isSkip output4724 = false := by
  rw [output4724_def]
  conv => lhs; cbv
  try rfl
theorem node4724_eq : Flapjack.WordAlloc.removeDeadStructural input4724 value865 value1 value2 = (output4724, value865, value1) := by
  rw [input4724_def, output4724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4722_eq]
  try dsimp only
  rw [node4723_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4724 input4721)).val
theorem input4725_def : input4725 = (.seq input4724 input4721) := by
  unfold input4725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4724)).val
theorem output4725_def : output4725 = (output4724) := by
  unfold output4725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4725_skip : Flapjack.WordAlloc.isSkip output4725 = false := by
  rw [output4725_def]
  conv => lhs; cbv
  try rfl
theorem node4725_eq : Flapjack.WordAlloc.removeDeadStructural input4725 value865 value1 value2 = (output4725, value865, value1) := by
  rw [input4725_def, output4725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4721_eq]
  try dsimp only
  rw [node4724_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64))).val
theorem input4726_def : input4726 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64)) := by
  unfold input4726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4726_def : output4726 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4726_skip : Flapjack.WordAlloc.isSkip output4726 = true := by
  rw [output4726_def]
  conv => lhs; cbv
  try rfl
theorem node4726_eq : Flapjack.WordAlloc.removeDeadStructural input4726 value865 value1 value2 = (output4726, value865, value1) := by
  rw [input4726_def, output4726_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1485 0#64))).val
theorem input4727_def : input4727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1485 0#64)) := by
  unfold input4727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4727_def : output4727 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4727_skip : Flapjack.WordAlloc.isSkip output4727 = true := by
  rw [output4727_def]
  conv => lhs; cbv
  try rfl
theorem node4727_eq : Flapjack.WordAlloc.removeDeadStructural input4727 value865 value1 value2 = (output4727, value865, value1) := by
  rw [input4727_def, output4727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1481 0#64))).val
theorem input4728_def : input4728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1481 0#64)) := by
  unfold input4728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1481 0#64))).val
theorem output4728_def : output4728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1481 0#64)) := by
  unfold output4728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4728_skip : Flapjack.WordAlloc.isSkip output4728 = false := by
  rw [output4728_def]
  conv => lhs; cbv
  try rfl
theorem node4728_eq : Flapjack.WordAlloc.removeDeadStructural input4728 value865 value1 value2 = (output4728, value860, value1) := by
  rw [input4728_def, output4728_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4729_def : input4729 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4729_def : output4729 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4729_skip : Flapjack.WordAlloc.isSkip output4729 = true := by
  rw [output4729_def]
  conv => lhs; cbv
  try rfl
theorem node4729_eq : Flapjack.WordAlloc.removeDeadStructural input4729 value860 value1 value2 = (output4729, value860, value1) := by
  rw [input4729_def, output4729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4729 input4728)).val
theorem input4730_def : input4730 = (.seq input4729 input4728) := by
  unfold input4730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4728)).val
theorem output4730_def : output4730 = (output4728) := by
  unfold output4730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4730_skip : Flapjack.WordAlloc.isSkip output4730 = false := by
  rw [output4730_def]
  conv => lhs; cbv
  try rfl
theorem node4730_eq : Flapjack.WordAlloc.removeDeadStructural input4730 value865 value1 value2 = (output4730, value860, value1) := by
  rw [input4730_def, output4730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4728_eq]
  try dsimp only
  rw [node4729_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4730 input4727)).val
theorem input4731_def : input4731 = (.seq input4730 input4727) := by
  unfold input4731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4730)).val
theorem output4731_def : output4731 = (output4730) := by
  unfold output4731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4731_skip : Flapjack.WordAlloc.isSkip output4731 = false := by
  rw [output4731_def]
  conv => lhs; cbv
  try rfl
theorem node4731_eq : Flapjack.WordAlloc.removeDeadStructural input4731 value865 value1 value2 = (output4731, value860, value1) := by
  rw [input4731_def, output4731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4727_eq]
  try dsimp only
  rw [node4730_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4731 input4726)).val
theorem input4732_def : input4732 = (.seq input4731 input4726) := by
  unfold input4732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4731)).val
theorem output4732_def : output4732 = (output4731) := by
  unfold output4732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4732_skip : Flapjack.WordAlloc.isSkip output4732 = false := by
  rw [output4732_def]
  conv => lhs; cbv
  try rfl
theorem node4732_eq : Flapjack.WordAlloc.removeDeadStructural input4732 value865 value1 value2 = (output4732, value860, value1) := by
  rw [input4732_def, output4732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4726_eq]
  try dsimp only
  rw [node4731_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value866 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input4733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1477, 1445), (1473, 1461), (1469, 1465)])).val
theorem input4733_def : input4733 = (Flapjack.WordLangProgHOL.move 1 [(1477, 1445), (1473, 1461), (1469, 1465)]) := by
  unfold input4733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1477, 1445)])).val
theorem output4733_def : output4733 = (Flapjack.WordLangProgHOL.move 1 [(1477, 1445)]) := by
  unfold output4733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4733_skip : Flapjack.WordAlloc.isSkip output4733 = false := by
  rw [output4733_def]
  conv => lhs; cbv
  try rfl
theorem node4733_eq : Flapjack.WordAlloc.removeDeadStructural input4733 value860 value1 value2 = (output4733, value866, value1) := by
  rw [input4733_def, output4733_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4733 input4732)).val
theorem input4734_def : input4734 = (.seq input4733 input4732) := by
  unfold input4734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4733 output4732)).val
theorem output4734_def : output4734 = (.seq output4733 output4732) := by
  unfold output4734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4734_skip : Flapjack.WordAlloc.isSkip output4734 = false := by
  rw [output4734_def]
  conv => lhs; cbv
  try rfl
theorem node4734_eq : Flapjack.WordAlloc.removeDeadStructural input4734 value865 value1 value2 = (output4734, value866, value1) := by
  rw [input4734_def, output4734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4732_eq]
  try dsimp only
  rw [node4733_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value867 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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

@[irreducible, cbv_opaque] def input4735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1445 [2])).val
theorem input4735_def : input4735 = (Flapjack.WordLangProgHOL.return 1445 [2]) := by
  unfold input4735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1445 [2])).val
theorem output4735_def : output4735 = (Flapjack.WordLangProgHOL.return 1445 [2]) := by
  unfold output4735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4735_skip : Flapjack.WordAlloc.isSkip output4735 = false := by
  rw [output4735_def]
  conv => lhs; cbv
  try rfl
theorem node4735_eq : Flapjack.WordAlloc.removeDeadStructural input4735 value866 value1 value2 = (output4735, value867, value1) := by
  rw [input4735_def, output4735_def]
  try (conv => lhs; cbv)
  try rfl

def value868 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input4736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1465)])).val
theorem input4736_def : input4736 = (Flapjack.WordLangProgHOL.move 0 [(2, 1465)]) := by
  unfold input4736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1465)])).val
theorem output4736_def : output4736 = (Flapjack.WordLangProgHOL.move 0 [(2, 1465)]) := by
  unfold output4736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4736_skip : Flapjack.WordAlloc.isSkip output4736 = false := by
  rw [output4736_def]
  conv => lhs; cbv
  try rfl
theorem node4736_eq : Flapjack.WordAlloc.removeDeadStructural input4736 value867 value1 value2 = (output4736, value868, value1) := by
  rw [input4736_def, output4736_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4736 input4735)).val
theorem input4737_def : input4737 = (.seq input4736 input4735) := by
  unfold input4737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4736 output4735)).val
theorem output4737_def : output4737 = (.seq output4736 output4735) := by
  unfold output4737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4737_skip : Flapjack.WordAlloc.isSkip output4737 = false := by
  rw [output4737_def]
  conv => lhs; cbv
  try rfl
theorem node4737_eq : Flapjack.WordAlloc.removeDeadStructural input4737 value866 value1 value2 = (output4737, value868, value1) := by
  rw [input4737_def, output4737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4735_eq]
  try dsimp only
  rw [node4736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64))).val
theorem input4738_def : input4738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64)) := by
  unfold input4738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64))).val
theorem output4738_def : output4738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64)) := by
  unfold output4738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4738_skip : Flapjack.WordAlloc.isSkip output4738 = false := by
  rw [output4738_def]
  conv => lhs; cbv
  try rfl
theorem node4738_eq : Flapjack.WordAlloc.removeDeadStructural input4738 value868 value1 value2 = (output4738, value866, value1) := by
  rw [input4738_def, output4738_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4739_def : input4739 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4739_def : output4739 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4739_skip : Flapjack.WordAlloc.isSkip output4739 = false := by
  rw [output4739_def]
  conv => lhs; cbv
  try rfl
theorem node4739_eq : Flapjack.WordAlloc.removeDeadStructural input4739 value866 value1 value2 = (output4739, value866, value1) := by
  rw [input4739_def, output4739_def]
  try (conv => lhs; cbv)
  try rfl

def value869 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input4740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1449, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1457, 1449)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64)))),
      597, 36))
  (some 515) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1453, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1453)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1461, 1453)]))),
      597, 37)))).val
theorem input4740_def : input4740 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1449, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1457, 1449)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64)))),
      597, 36))
  (some 515) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1453, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1453)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1461, 1453)]))),
      597, 37))) := by
  unfold input4740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1445, 1439)], 597, 36))
  (some 515) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1453, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1453)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 37)))).val
theorem output4740_def : output4740 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1445, 1439)], 597, 36))
  (some 515) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1445, 1439)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1453, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1453)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 37))) := by
  unfold output4740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4740_skip : Flapjack.WordAlloc.isSkip output4740 = false := by
  rw [output4740_def]
  conv => lhs; cbv
  try rfl
theorem node4740_eq : Flapjack.WordAlloc.removeDeadStructural input4740 value866 value1 value2 = (output4740, value869, value1) := by
  rw [input4740_def, output4740_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4741_def : input4741 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4741_def : output4741 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4741_skip : Flapjack.WordAlloc.isSkip output4741 = true := by
  rw [output4741_def]
  conv => lhs; cbv
  try rfl
theorem node4741_eq : Flapjack.WordAlloc.removeDeadStructural input4741 value869 value1 value2 = (output4741, value869, value1) := by
  rw [input4741_def, output4741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4741 input4740)).val
theorem input4742_def : input4742 = (.seq input4741 input4740) := by
  unfold input4742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4740)).val
theorem output4742_def : output4742 = (output4740) := by
  unfold output4742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4742_skip : Flapjack.WordAlloc.isSkip output4742 = false := by
  rw [output4742_def]
  conv => lhs; cbv
  try rfl
theorem node4742_eq : Flapjack.WordAlloc.removeDeadStructural input4742 value866 value1 value2 = (output4742, value869, value1) := by
  rw [input4742_def, output4742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4740_eq]
  try dsimp only
  rw [node4741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value870 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1439, 1397)])).val
theorem input4743_def : input4743 = (Flapjack.WordLangProgHOL.move 0 [(1439, 1397)]) := by
  unfold input4743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1439, 1397)])).val
theorem output4743_def : output4743 = (Flapjack.WordLangProgHOL.move 0 [(1439, 1397)]) := by
  unfold output4743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4743_skip : Flapjack.WordAlloc.isSkip output4743 = false := by
  rw [output4743_def]
  conv => lhs; cbv
  try rfl
theorem node4743_eq : Flapjack.WordAlloc.removeDeadStructural input4743 value869 value1 value2 = (output4743, value870, value1) := by
  rw [input4743_def, output4743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4743 input4742)).val
theorem input4744_def : input4744 = (.seq input4743 input4742) := by
  unfold input4744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4743 output4742)).val
theorem output4744_def : output4744 = (.seq output4743 output4742) := by
  unfold output4744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4744_skip : Flapjack.WordAlloc.isSkip output4744 = false := by
  rw [output4744_def]
  conv => lhs; cbv
  try rfl
theorem node4744_eq : Flapjack.WordAlloc.removeDeadStructural input4744 value866 value1 value2 = (output4744, value870, value1) := by
  rw [input4744_def, output4744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4742_eq]
  try dsimp only
  rw [node4743_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 1#64))).val
theorem input4745_def : input4745 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 1#64)) := by
  unfold input4745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4745_def : output4745 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4745_skip : Flapjack.WordAlloc.isSkip output4745 = true := by
  rw [output4745_def]
  conv => lhs; cbv
  try rfl
theorem node4745_eq : Flapjack.WordAlloc.removeDeadStructural input4745 value870 value1 value2 = (output4745, value870, value1) := by
  rw [input4745_def, output4745_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4746_def : input4746 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4746_def : output4746 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4746_skip : Flapjack.WordAlloc.isSkip output4746 = false := by
  rw [output4746_def]
  conv => lhs; cbv
  try rfl
theorem node4746_eq : Flapjack.WordAlloc.removeDeadStructural input4746 value870 value1 value2 = (output4746, value870, value1) := by
  rw [input4746_def, output4746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 1#64))).val
theorem input4747_def : input4747 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 1#64)) := by
  unfold input4747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4747_def : output4747 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4747_skip : Flapjack.WordAlloc.isSkip output4747 = true := by
  rw [output4747_def]
  conv => lhs; cbv
  try rfl
theorem node4747_eq : Flapjack.WordAlloc.removeDeadStructural input4747 value870 value1 value2 = (output4747, value870, value1) := by
  rw [input4747_def, output4747_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4747 input4746)).val
theorem input4748_def : input4748 = (.seq input4747 input4746) := by
  unfold input4748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4746)).val
theorem output4748_def : output4748 = (output4746) := by
  unfold output4748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4748_skip : Flapjack.WordAlloc.isSkip output4748 = false := by
  rw [output4748_def]
  conv => lhs; cbv
  try rfl
theorem node4748_eq : Flapjack.WordAlloc.removeDeadStructural input4748 value870 value1 value2 = (output4748, value870, value1) := by
  rw [input4748_def, output4748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4746_eq]
  try dsimp only
  rw [node4747_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4748 input4745)).val
theorem input4749_def : input4749 = (.seq input4748 input4745) := by
  unfold input4749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4748)).val
theorem output4749_def : output4749 = (output4748) := by
  unfold output4749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4749_skip : Flapjack.WordAlloc.isSkip output4749 = false := by
  rw [output4749_def]
  conv => lhs; cbv
  try rfl
theorem node4749_eq : Flapjack.WordAlloc.removeDeadStructural input4749 value870 value1 value2 = (output4749, value870, value1) := by
  rw [input4749_def, output4749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4745_eq]
  try dsimp only
  rw [node4748_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4749 input4744)).val
theorem input4750_def : input4750 = (.seq input4749 input4744) := by
  unfold input4750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4749 output4744)).val
theorem output4750_def : output4750 = (.seq output4749 output4744) := by
  unfold output4750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4750_skip : Flapjack.WordAlloc.isSkip output4750 = false := by
  rw [output4750_def]
  conv => lhs; cbv
  try rfl
theorem node4750_eq : Flapjack.WordAlloc.removeDeadStructural input4750 value866 value1 value2 = (output4750, value870, value1) := by
  rw [input4750_def, output4750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4744_eq]
  try dsimp only
  rw [node4749_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4750 input4739)).val
theorem input4751_def : input4751 = (.seq input4750 input4739) := by
  unfold input4751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4750 output4739)).val
theorem output4751_def : output4751 = (.seq output4750 output4739) := by
  unfold output4751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4751_skip : Flapjack.WordAlloc.isSkip output4751 = false := by
  rw [output4751_def]
  conv => lhs; cbv
  try rfl
theorem node4751_eq : Flapjack.WordAlloc.removeDeadStructural input4751 value866 value1 value2 = (output4751, value870, value1) := by
  rw [input4751_def, output4751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4739_eq]
  try dsimp only
  rw [node4750_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4751 input4738)).val
theorem input4752_def : input4752 = (.seq input4751 input4738) := by
  unfold input4752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4751 output4738)).val
theorem output4752_def : output4752 = (.seq output4751 output4738) := by
  unfold output4752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4752_skip : Flapjack.WordAlloc.isSkip output4752 = false := by
  rw [output4752_def]
  conv => lhs; cbv
  try rfl
theorem node4752_eq : Flapjack.WordAlloc.removeDeadStructural input4752 value868 value1 value2 = (output4752, value870, value1) := by
  rw [input4752_def, output4752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4738_eq]
  try dsimp only
  rw [node4751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4752 input4737)).val
theorem input4753_def : input4753 = (.seq input4752 input4737) := by
  unfold input4753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4752 output4737)).val
theorem output4753_def : output4753 = (.seq output4752 output4737) := by
  unfold output4753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4753_skip : Flapjack.WordAlloc.isSkip output4753 = false := by
  rw [output4753_def]
  conv => lhs; cbv
  try rfl
theorem node4753_eq : Flapjack.WordAlloc.removeDeadStructural input4753 value866 value1 value2 = (output4753, value870, value1) := by
  rw [input4753_def, output4753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4737_eq]
  try dsimp only
  rw [node4752_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4753 input4734)).val
theorem input4754_def : input4754 = (.seq input4753 input4734) := by
  unfold input4754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4753 output4734)).val
theorem output4754_def : output4754 = (.seq output4753 output4734) := by
  unfold output4754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4754_skip : Flapjack.WordAlloc.isSkip output4754 = false := by
  rw [output4754_def]
  conv => lhs; cbv
  try rfl
theorem node4754_eq : Flapjack.WordAlloc.removeDeadStructural input4754 value865 value1 value2 = (output4754, value870, value1) := by
  rw [input4754_def, output4754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4734_eq]
  try dsimp only
  rw [node4753_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1489, 1417)])).val
theorem input4755_def : input4755 = (Flapjack.WordLangProgHOL.move 2 [(1489, 1417)]) := by
  unfold input4755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4755_def : output4755 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4755_skip : Flapjack.WordAlloc.isSkip output4755 = true := by
  rw [output4755_def]
  conv => lhs; cbv
  try rfl
theorem node4755_eq : Flapjack.WordAlloc.removeDeadStructural input4755 value865 value1 value2 = (output4755, value865, value1) := by
  rw [input4755_def, output4755_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1485, 1425)])).val
theorem input4756_def : input4756 = (Flapjack.WordLangProgHOL.move 2 [(1485, 1425)]) := by
  unfold input4756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4756_def : output4756 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4756_skip : Flapjack.WordAlloc.isSkip output4756 = true := by
  rw [output4756_def]
  conv => lhs; cbv
  try rfl
theorem node4756_eq : Flapjack.WordAlloc.removeDeadStructural input4756 value865 value1 value2 = (output4756, value865, value1) := by
  rw [input4756_def, output4756_def]
  try (conv => lhs; cbv)
  try rfl

def value871 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1481, 1421)])).val
theorem input4757_def : input4757 = (Flapjack.WordLangProgHOL.move 2 [(1481, 1421)]) := by
  unfold input4757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1481, 1421)])).val
theorem output4757_def : output4757 = (Flapjack.WordLangProgHOL.move 2 [(1481, 1421)]) := by
  unfold output4757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4757_skip : Flapjack.WordAlloc.isSkip output4757 = false := by
  rw [output4757_def]
  conv => lhs; cbv
  try rfl
theorem node4757_eq : Flapjack.WordAlloc.removeDeadStructural input4757 value865 value1 value2 = (output4757, value871, value1) := by
  rw [input4757_def, output4757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4758_def : input4758 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4758_def : output4758 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4758_skip : Flapjack.WordAlloc.isSkip output4758 = true := by
  rw [output4758_def]
  conv => lhs; cbv
  try rfl
theorem node4758_eq : Flapjack.WordAlloc.removeDeadStructural input4758 value871 value1 value2 = (output4758, value871, value1) := by
  rw [input4758_def, output4758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4758 input4757)).val
theorem input4759_def : input4759 = (.seq input4758 input4757) := by
  unfold input4759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4757)).val
theorem output4759_def : output4759 = (output4757) := by
  unfold output4759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4759_skip : Flapjack.WordAlloc.isSkip output4759 = false := by
  rw [output4759_def]
  conv => lhs; cbv
  try rfl
theorem node4759_eq : Flapjack.WordAlloc.removeDeadStructural input4759 value865 value1 value2 = (output4759, value871, value1) := by
  rw [input4759_def, output4759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4757_eq]
  try dsimp only
  rw [node4758_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4759 input4756)).val
theorem input4760_def : input4760 = (.seq input4759 input4756) := by
  unfold input4760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4759)).val
theorem output4760_def : output4760 = (output4759) := by
  unfold output4760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4760_skip : Flapjack.WordAlloc.isSkip output4760 = false := by
  rw [output4760_def]
  conv => lhs; cbv
  try rfl
theorem node4760_eq : Flapjack.WordAlloc.removeDeadStructural input4760 value865 value1 value2 = (output4760, value871, value1) := by
  rw [input4760_def, output4760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4756_eq]
  try dsimp only
  rw [node4759_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4760 input4755)).val
theorem input4761_def : input4761 = (.seq input4760 input4755) := by
  unfold input4761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4760)).val
theorem output4761_def : output4761 = (output4760) := by
  unfold output4761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4761_skip : Flapjack.WordAlloc.isSkip output4761 = false := by
  rw [output4761_def]
  conv => lhs; cbv
  try rfl
theorem node4761_eq : Flapjack.WordAlloc.removeDeadStructural input4761 value865 value1 value2 = (output4761, value871, value1) := by
  rw [input4761_def, output4761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4755_eq]
  try dsimp only
  rw [node4760_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value872 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1477, 1397), (1473, 1421), (1469, 1389)])).val
theorem input4762_def : input4762 = (Flapjack.WordLangProgHOL.move 2 [(1477, 1397), (1473, 1421), (1469, 1389)]) := by
  unfold input4762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1477, 1397)])).val
theorem output4762_def : output4762 = (Flapjack.WordLangProgHOL.move 2 [(1477, 1397)]) := by
  unfold output4762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4762_skip : Flapjack.WordAlloc.isSkip output4762 = false := by
  rw [output4762_def]
  conv => lhs; cbv
  try rfl
theorem node4762_eq : Flapjack.WordAlloc.removeDeadStructural input4762 value871 value1 value2 = (output4762, value872, value1) := by
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
theorem node4763_eq : Flapjack.WordAlloc.removeDeadStructural input4763 value865 value1 value2 = (output4763, value872, value1) := by
  rw [input4763_def, output4763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4761_eq]
  try dsimp only
  rw [node4762_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4764_def : input4764 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4764_def : output4764 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4764_skip : Flapjack.WordAlloc.isSkip output4764 = true := by
  rw [output4764_def]
  conv => lhs; cbv
  try rfl
theorem node4764_eq : Flapjack.WordAlloc.removeDeadStructural input4764 value872 value1 value2 = (output4764, value872, value1) := by
  rw [input4764_def, output4764_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4764 input4763)).val
theorem input4765_def : input4765 = (.seq input4764 input4763) := by
  unfold input4765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4763)).val
theorem output4765_def : output4765 = (output4763) := by
  unfold output4765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4765_skip : Flapjack.WordAlloc.isSkip output4765 = false := by
  rw [output4765_def]
  conv => lhs; cbv
  try rfl
theorem node4765_eq : Flapjack.WordAlloc.removeDeadStructural input4765 value865 value1 value2 = (output4765, value872, value1) := by
  rw [input4765_def, output4765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4763_eq]
  try dsimp only
  rw [node4764_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value873 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1425

def value874 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1421 value873 input4754 input4765)).val
theorem input4766_def : input4766 = (.ite value15 1421 value873 input4754 input4765) := by
  unfold input4766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1421 value873 output4754 output4765)).val
theorem output4766_def : output4766 = (.ite value15 1421 value873 output4754 output4765) := by
  unfold output4766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4766_skip : Flapjack.WordAlloc.isSkip output4766 = false := by
  rw [output4766_def]
  conv => lhs; cbv
  try rfl
theorem node4766_eq : Flapjack.WordAlloc.removeDeadStructural input4766 value865 value1 value2 = (output4766, value874, value1) := by
  rw [input4766_def, output4766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4754_eq]
  try dsimp only
  rw [node4765_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4766 input4725)).val
theorem input4767_def : input4767 = (.seq input4766 input4725) := by
  unfold input4767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4766 output4725)).val
theorem output4767_def : output4767 = (.seq output4766 output4725) := by
  unfold output4767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4767_skip : Flapjack.WordAlloc.isSkip output4767 = false := by
  rw [output4767_def]
  conv => lhs; cbv
  try rfl
theorem node4767_eq : Flapjack.WordAlloc.removeDeadStructural input4767 value865 value1 value2 = (output4767, value874, value1) := by
  rw [input4767_def, output4767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4725_eq]
  try dsimp only
  rw [node4766_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 21#64))).val
theorem input4768_def : input4768 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 21#64)) := by
  unfold input4768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 21#64))).val
theorem output4768_def : output4768 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 21#64)) := by
  unfold output4768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4768_skip : Flapjack.WordAlloc.isSkip output4768 = false := by
  rw [output4768_def]
  conv => lhs; cbv
  try rfl
theorem node4768_eq : Flapjack.WordAlloc.removeDeadStructural input4768 value874 value1 value2 = (output4768, value872, value1) := by
  rw [input4768_def, output4768_def]
  try (conv => lhs; cbv)
  try rfl

def value875 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1421, 1401)])).val
theorem input4769_def : input4769 = (Flapjack.WordLangProgHOL.move 0 [(1421, 1401)]) := by
  unfold input4769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1421, 1401)])).val
theorem output4769_def : output4769 = (Flapjack.WordLangProgHOL.move 0 [(1421, 1401)]) := by
  unfold output4769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4769_skip : Flapjack.WordAlloc.isSkip output4769 = false := by
  rw [output4769_def]
  conv => lhs; cbv
  try rfl
theorem node4769_eq : Flapjack.WordAlloc.removeDeadStructural input4769 value872 value1 value2 = (output4769, value875, value1) := by
  rw [input4769_def, output4769_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4770_def : input4770 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4770_def : output4770 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4770_skip : Flapjack.WordAlloc.isSkip output4770 = false := by
  rw [output4770_def]
  conv => lhs; cbv
  try rfl
theorem node4770_eq : Flapjack.WordAlloc.removeDeadStructural input4770 value875 value1 value2 = (output4770, value875, value1) := by
  rw [input4770_def, output4770_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1417 0#64))).val
theorem input4771_def : input4771 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1417 0#64)) := by
  unfold input4771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4771_def : output4771 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4771_skip : Flapjack.WordAlloc.isSkip output4771 = true := by
  rw [output4771_def]
  conv => lhs; cbv
  try rfl
theorem node4771_eq : Flapjack.WordAlloc.removeDeadStructural input4771 value875 value1 value2 = (output4771, value875, value1) := by
  rw [input4771_def, output4771_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4772_def : input4772 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4772_def : output4772 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4772_skip : Flapjack.WordAlloc.isSkip output4772 = false := by
  rw [output4772_def]
  conv => lhs; cbv
  try rfl
theorem node4772_eq : Flapjack.WordAlloc.removeDeadStructural input4772 value875 value1 value2 = (output4772, value875, value1) := by
  rw [input4772_def, output4772_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1413 0#64))).val
theorem input4773_def : input4773 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1413 0#64)) := by
  unfold input4773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4773_def : output4773 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4773_skip : Flapjack.WordAlloc.isSkip output4773 = true := by
  rw [output4773_def]
  conv => lhs; cbv
  try rfl
theorem node4773_eq : Flapjack.WordAlloc.removeDeadStructural input4773 value875 value1 value2 = (output4773, value875, value1) := by
  rw [input4773_def, output4773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4773 input4772)).val
theorem input4774_def : input4774 = (.seq input4773 input4772) := by
  unfold input4774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4772)).val
theorem output4774_def : output4774 = (output4772) := by
  unfold output4774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4774_skip : Flapjack.WordAlloc.isSkip output4774 = false := by
  rw [output4774_def]
  conv => lhs; cbv
  try rfl
theorem node4774_eq : Flapjack.WordAlloc.removeDeadStructural input4774 value875 value1 value2 = (output4774, value875, value1) := by
  rw [input4774_def, output4774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4772_eq]
  try dsimp only
  rw [node4773_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4774 input4771)).val
theorem input4775_def : input4775 = (.seq input4774 input4771) := by
  unfold input4775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4774)).val
theorem output4775_def : output4775 = (output4774) := by
  unfold output4775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4775_skip : Flapjack.WordAlloc.isSkip output4775 = false := by
  rw [output4775_def]
  conv => lhs; cbv
  try rfl
theorem node4775_eq : Flapjack.WordAlloc.removeDeadStructural input4775 value875 value1 value2 = (output4775, value875, value1) := by
  rw [input4775_def, output4775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4771_eq]
  try dsimp only
  rw [node4774_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1409 0#64))).val
theorem input4776_def : input4776 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1409 0#64)) := by
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
theorem node4776_eq : Flapjack.WordAlloc.removeDeadStructural input4776 value875 value1 value2 = (output4776, value875, value1) := by
  rw [input4776_def, output4776_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1405 0#64))).val
theorem input4777_def : input4777 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1405 0#64)) := by
  unfold input4777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4777_def : output4777 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4777_skip : Flapjack.WordAlloc.isSkip output4777 = true := by
  rw [output4777_def]
  conv => lhs; cbv
  try rfl
theorem node4777_eq : Flapjack.WordAlloc.removeDeadStructural input4777 value875 value1 value2 = (output4777, value875, value1) := by
  rw [input4777_def, output4777_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64))).val
theorem input4778_def : input4778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64)) := by
  unfold input4778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64))).val
theorem output4778_def : output4778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64)) := by
  unfold output4778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4778_skip : Flapjack.WordAlloc.isSkip output4778 = false := by
  rw [output4778_def]
  conv => lhs; cbv
  try rfl
theorem node4778_eq : Flapjack.WordAlloc.removeDeadStructural input4778 value875 value1 value2 = (output4778, value870, value1) := by
  rw [input4778_def, output4778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4779_def : input4779 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4779_def : output4779 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4779_skip : Flapjack.WordAlloc.isSkip output4779 = true := by
  rw [output4779_def]
  conv => lhs; cbv
  try rfl
theorem node4779_eq : Flapjack.WordAlloc.removeDeadStructural input4779 value870 value1 value2 = (output4779, value870, value1) := by
  rw [input4779_def, output4779_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4779 input4778)).val
theorem input4780_def : input4780 = (.seq input4779 input4778) := by
  unfold input4780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4778)).val
theorem output4780_def : output4780 = (output4778) := by
  unfold output4780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4780_skip : Flapjack.WordAlloc.isSkip output4780 = false := by
  rw [output4780_def]
  conv => lhs; cbv
  try rfl
theorem node4780_eq : Flapjack.WordAlloc.removeDeadStructural input4780 value875 value1 value2 = (output4780, value870, value1) := by
  rw [input4780_def, output4780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4778_eq]
  try dsimp only
  rw [node4779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4780 input4777)).val
theorem input4781_def : input4781 = (.seq input4780 input4777) := by
  unfold input4781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4780)).val
theorem output4781_def : output4781 = (output4780) := by
  unfold output4781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4781_skip : Flapjack.WordAlloc.isSkip output4781 = false := by
  rw [output4781_def]
  conv => lhs; cbv
  try rfl
theorem node4781_eq : Flapjack.WordAlloc.removeDeadStructural input4781 value875 value1 value2 = (output4781, value870, value1) := by
  rw [input4781_def, output4781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4777_eq]
  try dsimp only
  rw [node4780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4781 input4776)).val
theorem input4782_def : input4782 = (.seq input4781 input4776) := by
  unfold input4782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4781)).val
theorem output4782_def : output4782 = (output4781) := by
  unfold output4782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4782_skip : Flapjack.WordAlloc.isSkip output4782 = false := by
  rw [output4782_def]
  conv => lhs; cbv
  try rfl
theorem node4782_eq : Flapjack.WordAlloc.removeDeadStructural input4782 value875 value1 value2 = (output4782, value870, value1) := by
  rw [input4782_def, output4782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4776_eq]
  try dsimp only
  rw [node4781_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value876 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1397, 1365), (1393, 1381), (1389, 1385)])).val
theorem input4783_def : input4783 = (Flapjack.WordLangProgHOL.move 1 [(1397, 1365), (1393, 1381), (1389, 1385)]) := by
  unfold input4783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1397, 1365)])).val
theorem output4783_def : output4783 = (Flapjack.WordLangProgHOL.move 1 [(1397, 1365)]) := by
  unfold output4783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4783_skip : Flapjack.WordAlloc.isSkip output4783 = false := by
  rw [output4783_def]
  conv => lhs; cbv
  try rfl
theorem node4783_eq : Flapjack.WordAlloc.removeDeadStructural input4783 value870 value1 value2 = (output4783, value876, value1) := by
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
theorem node4784_eq : Flapjack.WordAlloc.removeDeadStructural input4784 value875 value1 value2 = (output4784, value876, value1) := by
  rw [input4784_def, output4784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4782_eq]
  try dsimp only
  rw [node4783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value877 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1365 [2])).val
theorem input4785_def : input4785 = (Flapjack.WordLangProgHOL.return 1365 [2]) := by
  unfold input4785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1365 [2])).val
theorem output4785_def : output4785 = (Flapjack.WordLangProgHOL.return 1365 [2]) := by
  unfold output4785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4785_skip : Flapjack.WordAlloc.isSkip output4785 = false := by
  rw [output4785_def]
  conv => lhs; cbv
  try rfl
theorem node4785_eq : Flapjack.WordAlloc.removeDeadStructural input4785 value876 value1 value2 = (output4785, value877, value1) := by
  rw [input4785_def, output4785_def]
  try (conv => lhs; cbv)
  try rfl

def value878 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1385)])).val
theorem input4786_def : input4786 = (Flapjack.WordLangProgHOL.move 0 [(2, 1385)]) := by
  unfold input4786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1385)])).val
theorem output4786_def : output4786 = (Flapjack.WordLangProgHOL.move 0 [(2, 1385)]) := by
  unfold output4786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4786_skip : Flapjack.WordAlloc.isSkip output4786 = false := by
  rw [output4786_def]
  conv => lhs; cbv
  try rfl
theorem node4786_eq : Flapjack.WordAlloc.removeDeadStructural input4786 value877 value1 value2 = (output4786, value878, value1) := by
  rw [input4786_def, output4786_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4786 input4785)).val
theorem input4787_def : input4787 = (.seq input4786 input4785) := by
  unfold input4787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4786 output4785)).val
theorem output4787_def : output4787 = (.seq output4786 output4785) := by
  unfold output4787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4787_skip : Flapjack.WordAlloc.isSkip output4787 = false := by
  rw [output4787_def]
  conv => lhs; cbv
  try rfl
theorem node4787_eq : Flapjack.WordAlloc.removeDeadStructural input4787 value876 value1 value2 = (output4787, value878, value1) := by
  rw [input4787_def, output4787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4785_eq]
  try dsimp only
  rw [node4786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1385 0#64))).val
theorem input4788_def : input4788 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1385 0#64)) := by
  unfold input4788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1385 0#64))).val
theorem output4788_def : output4788 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1385 0#64)) := by
  unfold output4788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4788_skip : Flapjack.WordAlloc.isSkip output4788 = false := by
  rw [output4788_def]
  conv => lhs; cbv
  try rfl
theorem node4788_eq : Flapjack.WordAlloc.removeDeadStructural input4788 value878 value1 value2 = (output4788, value876, value1) := by
  rw [input4788_def, output4788_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4789_def : input4789 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4789_def : output4789 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4789_skip : Flapjack.WordAlloc.isSkip output4789 = false := by
  rw [output4789_def]
  conv => lhs; cbv
  try rfl
theorem node4789_eq : Flapjack.WordAlloc.removeDeadStructural input4789 value876 value1 value2 = (output4789, value876, value1) := by
  rw [input4789_def, output4789_def]
  try (conv => lhs; cbv)
  try rfl

def value879 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1369, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1377, 1369)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1381 0#64)))),
      597, 34))
  (some 514) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1373, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1373)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1377 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1381, 1373)]))),
      597, 35)))).val
theorem input4790_def : input4790 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1369, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1377, 1369)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1381 0#64)))),
      597, 34))
  (some 514) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1373, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1373)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1377 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1381, 1373)]))),
      597, 35))) := by
  unfold input4790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1365, 1359)], 597, 34))
  (some 514) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1373, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1373)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 35)))).val
theorem output4790_def : output4790 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1365, 1359)], 597, 34))
  (some 514) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1365, 1359)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1373, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1373)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 35))) := by
  unfold output4790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4790_skip : Flapjack.WordAlloc.isSkip output4790 = false := by
  rw [output4790_def]
  conv => lhs; cbv
  try rfl
theorem node4790_eq : Flapjack.WordAlloc.removeDeadStructural input4790 value876 value1 value2 = (output4790, value879, value1) := by
  rw [input4790_def, output4790_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4791_def : input4791 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4791_def : output4791 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4791_skip : Flapjack.WordAlloc.isSkip output4791 = true := by
  rw [output4791_def]
  conv => lhs; cbv
  try rfl
theorem node4791_eq : Flapjack.WordAlloc.removeDeadStructural input4791 value879 value1 value2 = (output4791, value879, value1) := by
  rw [input4791_def, output4791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4791 input4790)).val
theorem input4792_def : input4792 = (.seq input4791 input4790) := by
  unfold input4792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4790)).val
theorem output4792_def : output4792 = (output4790) := by
  unfold output4792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4792_skip : Flapjack.WordAlloc.isSkip output4792 = false := by
  rw [output4792_def]
  conv => lhs; cbv
  try rfl
theorem node4792_eq : Flapjack.WordAlloc.removeDeadStructural input4792 value876 value1 value2 = (output4792, value879, value1) := by
  rw [input4792_def, output4792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4790_eq]
  try dsimp only
  rw [node4791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value880 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1359, 1317)])).val
theorem input4793_def : input4793 = (Flapjack.WordLangProgHOL.move 0 [(1359, 1317)]) := by
  unfold input4793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1359, 1317)])).val
theorem output4793_def : output4793 = (Flapjack.WordLangProgHOL.move 0 [(1359, 1317)]) := by
  unfold output4793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4793_skip : Flapjack.WordAlloc.isSkip output4793 = false := by
  rw [output4793_def]
  conv => lhs; cbv
  try rfl
theorem node4793_eq : Flapjack.WordAlloc.removeDeadStructural input4793 value879 value1 value2 = (output4793, value880, value1) := by
  rw [input4793_def, output4793_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4793 input4792)).val
theorem input4794_def : input4794 = (.seq input4793 input4792) := by
  unfold input4794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4793 output4792)).val
theorem output4794_def : output4794 = (.seq output4793 output4792) := by
  unfold output4794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4794_skip : Flapjack.WordAlloc.isSkip output4794 = false := by
  rw [output4794_def]
  conv => lhs; cbv
  try rfl
theorem node4794_eq : Flapjack.WordAlloc.removeDeadStructural input4794 value876 value1 value2 = (output4794, value880, value1) := by
  rw [input4794_def, output4794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4792_eq]
  try dsimp only
  rw [node4793_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1353 1#64))).val
theorem input4795_def : input4795 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1353 1#64)) := by
  unfold input4795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4795_def : output4795 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4795_skip : Flapjack.WordAlloc.isSkip output4795 = true := by
  rw [output4795_def]
  conv => lhs; cbv
  try rfl
theorem node4795_eq : Flapjack.WordAlloc.removeDeadStructural input4795 value880 value1 value2 = (output4795, value880, value1) := by
  rw [input4795_def, output4795_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4796_def : input4796 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4796_def : output4796 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4796_skip : Flapjack.WordAlloc.isSkip output4796 = false := by
  rw [output4796_def]
  conv => lhs; cbv
  try rfl
theorem node4796_eq : Flapjack.WordAlloc.removeDeadStructural input4796 value880 value1 value2 = (output4796, value880, value1) := by
  rw [input4796_def, output4796_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 1#64))).val
theorem input4797_def : input4797 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 1#64)) := by
  unfold input4797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4797_def : output4797 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4797_skip : Flapjack.WordAlloc.isSkip output4797 = true := by
  rw [output4797_def]
  conv => lhs; cbv
  try rfl
theorem node4797_eq : Flapjack.WordAlloc.removeDeadStructural input4797 value880 value1 value2 = (output4797, value880, value1) := by
  rw [input4797_def, output4797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4797 input4796)).val
theorem input4798_def : input4798 = (.seq input4797 input4796) := by
  unfold input4798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4796)).val
theorem output4798_def : output4798 = (output4796) := by
  unfold output4798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4798_skip : Flapjack.WordAlloc.isSkip output4798 = false := by
  rw [output4798_def]
  conv => lhs; cbv
  try rfl
theorem node4798_eq : Flapjack.WordAlloc.removeDeadStructural input4798 value880 value1 value2 = (output4798, value880, value1) := by
  rw [input4798_def, output4798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4796_eq]
  try dsimp only
  rw [node4797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4798 input4795)).val
theorem input4799_def : input4799 = (.seq input4798 input4795) := by
  unfold input4799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4798)).val
theorem output4799_def : output4799 = (output4798) := by
  unfold output4799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4799_skip : Flapjack.WordAlloc.isSkip output4799 = false := by
  rw [output4799_def]
  conv => lhs; cbv
  try rfl
theorem node4799_eq : Flapjack.WordAlloc.removeDeadStructural input4799 value880 value1 value2 = (output4799, value880, value1) := by
  rw [input4799_def, output4799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4795_eq]
  try dsimp only
  rw [node4798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4799 input4794)).val
theorem input4800_def : input4800 = (.seq input4799 input4794) := by
  unfold input4800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4799 output4794)).val
theorem output4800_def : output4800 = (.seq output4799 output4794) := by
  unfold output4800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4800_skip : Flapjack.WordAlloc.isSkip output4800 = false := by
  rw [output4800_def]
  conv => lhs; cbv
  try rfl
theorem node4800_eq : Flapjack.WordAlloc.removeDeadStructural input4800 value876 value1 value2 = (output4800, value880, value1) := by
  rw [input4800_def, output4800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4794_eq]
  try dsimp only
  rw [node4799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4800 input4789)).val
theorem input4801_def : input4801 = (.seq input4800 input4789) := by
  unfold input4801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4800 output4789)).val
theorem output4801_def : output4801 = (.seq output4800 output4789) := by
  unfold output4801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4801_skip : Flapjack.WordAlloc.isSkip output4801 = false := by
  rw [output4801_def]
  conv => lhs; cbv
  try rfl
theorem node4801_eq : Flapjack.WordAlloc.removeDeadStructural input4801 value876 value1 value2 = (output4801, value880, value1) := by
  rw [input4801_def, output4801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4789_eq]
  try dsimp only
  rw [node4800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4801 input4788)).val
theorem input4802_def : input4802 = (.seq input4801 input4788) := by
  unfold input4802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4801 output4788)).val
theorem output4802_def : output4802 = (.seq output4801 output4788) := by
  unfold output4802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4802_skip : Flapjack.WordAlloc.isSkip output4802 = false := by
  rw [output4802_def]
  conv => lhs; cbv
  try rfl
theorem node4802_eq : Flapjack.WordAlloc.removeDeadStructural input4802 value878 value1 value2 = (output4802, value880, value1) := by
  rw [input4802_def, output4802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4788_eq]
  try dsimp only
  rw [node4801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4802 input4787)).val
theorem input4803_def : input4803 = (.seq input4802 input4787) := by
  unfold input4803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4802 output4787)).val
theorem output4803_def : output4803 = (.seq output4802 output4787) := by
  unfold output4803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4803_skip : Flapjack.WordAlloc.isSkip output4803 = false := by
  rw [output4803_def]
  conv => lhs; cbv
  try rfl
theorem node4803_eq : Flapjack.WordAlloc.removeDeadStructural input4803 value876 value1 value2 = (output4803, value880, value1) := by
  rw [input4803_def, output4803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4787_eq]
  try dsimp only
  rw [node4802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4803 input4784)).val
theorem input4804_def : input4804 = (.seq input4803 input4784) := by
  unfold input4804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4803 output4784)).val
theorem output4804_def : output4804 = (.seq output4803 output4784) := by
  unfold output4804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4804_skip : Flapjack.WordAlloc.isSkip output4804 = false := by
  rw [output4804_def]
  conv => lhs; cbv
  try rfl
theorem node4804_eq : Flapjack.WordAlloc.removeDeadStructural input4804 value875 value1 value2 = (output4804, value880, value1) := by
  rw [input4804_def, output4804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4784_eq]
  try dsimp only
  rw [node4803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1409, 1337)])).val
theorem input4805_def : input4805 = (Flapjack.WordLangProgHOL.move 2 [(1409, 1337)]) := by
  unfold input4805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4805_def : output4805 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4805_skip : Flapjack.WordAlloc.isSkip output4805 = true := by
  rw [output4805_def]
  conv => lhs; cbv
  try rfl
theorem node4805_eq : Flapjack.WordAlloc.removeDeadStructural input4805 value875 value1 value2 = (output4805, value875, value1) := by
  rw [input4805_def, output4805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1405, 1345)])).val
theorem input4806_def : input4806 = (Flapjack.WordLangProgHOL.move 2 [(1405, 1345)]) := by
  unfold input4806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4806_def : output4806 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4806_skip : Flapjack.WordAlloc.isSkip output4806 = true := by
  rw [output4806_def]
  conv => lhs; cbv
  try rfl
theorem node4806_eq : Flapjack.WordAlloc.removeDeadStructural input4806 value875 value1 value2 = (output4806, value875, value1) := by
  rw [input4806_def, output4806_def]
  try (conv => lhs; cbv)
  try rfl

def value881 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1401, 1341)])).val
theorem input4807_def : input4807 = (Flapjack.WordLangProgHOL.move 2 [(1401, 1341)]) := by
  unfold input4807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1401, 1341)])).val
theorem output4807_def : output4807 = (Flapjack.WordLangProgHOL.move 2 [(1401, 1341)]) := by
  unfold output4807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4807_skip : Flapjack.WordAlloc.isSkip output4807 = false := by
  rw [output4807_def]
  conv => lhs; cbv
  try rfl
theorem node4807_eq : Flapjack.WordAlloc.removeDeadStructural input4807 value875 value1 value2 = (output4807, value881, value1) := by
  rw [input4807_def, output4807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4808_def : input4808 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node4808_eq : Flapjack.WordAlloc.removeDeadStructural input4808 value881 value1 value2 = (output4808, value881, value1) := by
  rw [input4808_def, output4808_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4808 input4807)).val
theorem input4809_def : input4809 = (.seq input4808 input4807) := by
  unfold input4809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4807)).val
theorem output4809_def : output4809 = (output4807) := by
  unfold output4809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4809_skip : Flapjack.WordAlloc.isSkip output4809 = false := by
  rw [output4809_def]
  conv => lhs; cbv
  try rfl
theorem node4809_eq : Flapjack.WordAlloc.removeDeadStructural input4809 value875 value1 value2 = (output4809, value881, value1) := by
  rw [input4809_def, output4809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4807_eq]
  try dsimp only
  rw [node4808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4809 input4806)).val
theorem input4810_def : input4810 = (.seq input4809 input4806) := by
  unfold input4810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4809)).val
theorem output4810_def : output4810 = (output4809) := by
  unfold output4810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4810_skip : Flapjack.WordAlloc.isSkip output4810 = false := by
  rw [output4810_def]
  conv => lhs; cbv
  try rfl
theorem node4810_eq : Flapjack.WordAlloc.removeDeadStructural input4810 value875 value1 value2 = (output4810, value881, value1) := by
  rw [input4810_def, output4810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4806_eq]
  try dsimp only
  rw [node4809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4810 input4805)).val
theorem input4811_def : input4811 = (.seq input4810 input4805) := by
  unfold input4811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4810)).val
theorem output4811_def : output4811 = (output4810) := by
  unfold output4811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4811_skip : Flapjack.WordAlloc.isSkip output4811 = false := by
  rw [output4811_def]
  conv => lhs; cbv
  try rfl
theorem node4811_eq : Flapjack.WordAlloc.removeDeadStructural input4811 value875 value1 value2 = (output4811, value881, value1) := by
  rw [input4811_def, output4811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4805_eq]
  try dsimp only
  rw [node4810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value882 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1397, 1317), (1393, 1341), (1389, 1309)])).val
theorem input4812_def : input4812 = (Flapjack.WordLangProgHOL.move 2 [(1397, 1317), (1393, 1341), (1389, 1309)]) := by
  unfold input4812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1397, 1317)])).val
theorem output4812_def : output4812 = (Flapjack.WordLangProgHOL.move 2 [(1397, 1317)]) := by
  unfold output4812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4812_skip : Flapjack.WordAlloc.isSkip output4812 = false := by
  rw [output4812_def]
  conv => lhs; cbv
  try rfl
theorem node4812_eq : Flapjack.WordAlloc.removeDeadStructural input4812 value881 value1 value2 = (output4812, value882, value1) := by
  rw [input4812_def, output4812_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4812 input4811)).val
theorem input4813_def : input4813 = (.seq input4812 input4811) := by
  unfold input4813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4812 output4811)).val
theorem output4813_def : output4813 = (.seq output4812 output4811) := by
  unfold output4813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4813_skip : Flapjack.WordAlloc.isSkip output4813 = false := by
  rw [output4813_def]
  conv => lhs; cbv
  try rfl
theorem node4813_eq : Flapjack.WordAlloc.removeDeadStructural input4813 value875 value1 value2 = (output4813, value882, value1) := by
  rw [input4813_def, output4813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4811_eq]
  try dsimp only
  rw [node4812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4814_def : input4814 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4814_def : output4814 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4814_skip : Flapjack.WordAlloc.isSkip output4814 = true := by
  rw [output4814_def]
  conv => lhs; cbv
  try rfl
theorem node4814_eq : Flapjack.WordAlloc.removeDeadStructural input4814 value882 value1 value2 = (output4814, value882, value1) := by
  rw [input4814_def, output4814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4814 input4813)).val
theorem input4815_def : input4815 = (.seq input4814 input4813) := by
  unfold input4815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4813)).val
theorem output4815_def : output4815 = (output4813) := by
  unfold output4815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4815_skip : Flapjack.WordAlloc.isSkip output4815 = false := by
  rw [output4815_def]
  conv => lhs; cbv
  try rfl
theorem node4815_eq : Flapjack.WordAlloc.removeDeadStructural input4815 value875 value1 value2 = (output4815, value882, value1) := by
  rw [input4815_def, output4815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4813_eq]
  try dsimp only
  rw [node4814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value883 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1345

def value884 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1341 value883 input4804 input4815)).val
theorem input4816_def : input4816 = (.ite value15 1341 value883 input4804 input4815) := by
  unfold input4816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1341 value883 output4804 output4815)).val
theorem output4816_def : output4816 = (.ite value15 1341 value883 output4804 output4815) := by
  unfold output4816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4816_skip : Flapjack.WordAlloc.isSkip output4816 = false := by
  rw [output4816_def]
  conv => lhs; cbv
  try rfl
theorem node4816_eq : Flapjack.WordAlloc.removeDeadStructural input4816 value875 value1 value2 = (output4816, value884, value1) := by
  rw [input4816_def, output4816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4804_eq]
  try dsimp only
  rw [node4815_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4816 input4775)).val
theorem input4817_def : input4817 = (.seq input4816 input4775) := by
  unfold input4817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4816 output4775)).val
theorem output4817_def : output4817 = (.seq output4816 output4775) := by
  unfold output4817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4817_skip : Flapjack.WordAlloc.isSkip output4817 = false := by
  rw [output4817_def]
  conv => lhs; cbv
  try rfl
theorem node4817_eq : Flapjack.WordAlloc.removeDeadStructural input4817 value875 value1 value2 = (output4817, value884, value1) := by
  rw [input4817_def, output4817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4775_eq]
  try dsimp only
  rw [node4816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 20#64))).val
theorem input4818_def : input4818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 20#64)) := by
  unfold input4818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 20#64))).val
theorem output4818_def : output4818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 20#64)) := by
  unfold output4818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4818_skip : Flapjack.WordAlloc.isSkip output4818 = false := by
  rw [output4818_def]
  conv => lhs; cbv
  try rfl
theorem node4818_eq : Flapjack.WordAlloc.removeDeadStructural input4818 value884 value1 value2 = (output4818, value882, value1) := by
  rw [input4818_def, output4818_def]
  try (conv => lhs; cbv)
  try rfl

def value885 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1341, 1321)])).val
theorem input4819_def : input4819 = (Flapjack.WordLangProgHOL.move 0 [(1341, 1321)]) := by
  unfold input4819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1341, 1321)])).val
theorem output4819_def : output4819 = (Flapjack.WordLangProgHOL.move 0 [(1341, 1321)]) := by
  unfold output4819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4819_skip : Flapjack.WordAlloc.isSkip output4819 = false := by
  rw [output4819_def]
  conv => lhs; cbv
  try rfl
theorem node4819_eq : Flapjack.WordAlloc.removeDeadStructural input4819 value882 value1 value2 = (output4819, value885, value1) := by
  rw [input4819_def, output4819_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4820_def : input4820 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4820_def : output4820 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4820_skip : Flapjack.WordAlloc.isSkip output4820 = false := by
  rw [output4820_def]
  conv => lhs; cbv
  try rfl
theorem node4820_eq : Flapjack.WordAlloc.removeDeadStructural input4820 value885 value1 value2 = (output4820, value885, value1) := by
  rw [input4820_def, output4820_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64))).val
theorem input4821_def : input4821 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64)) := by
  unfold input4821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4821_def : output4821 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4821_skip : Flapjack.WordAlloc.isSkip output4821 = true := by
  rw [output4821_def]
  conv => lhs; cbv
  try rfl
theorem node4821_eq : Flapjack.WordAlloc.removeDeadStructural input4821 value885 value1 value2 = (output4821, value885, value1) := by
  rw [input4821_def, output4821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4822_def : input4822 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4822_def : output4822 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4822_skip : Flapjack.WordAlloc.isSkip output4822 = false := by
  rw [output4822_def]
  conv => lhs; cbv
  try rfl
theorem node4822_eq : Flapjack.WordAlloc.removeDeadStructural input4822 value885 value1 value2 = (output4822, value885, value1) := by
  rw [input4822_def, output4822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1333 0#64))).val
theorem input4823_def : input4823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1333 0#64)) := by
  unfold input4823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4823_def : output4823 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4823_skip : Flapjack.WordAlloc.isSkip output4823 = true := by
  rw [output4823_def]
  conv => lhs; cbv
  try rfl
theorem node4823_eq : Flapjack.WordAlloc.removeDeadStructural input4823 value885 value1 value2 = (output4823, value885, value1) := by
  rw [input4823_def, output4823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4823 input4822)).val
theorem input4824_def : input4824 = (.seq input4823 input4822) := by
  unfold input4824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4822)).val
theorem output4824_def : output4824 = (output4822) := by
  unfold output4824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4824_skip : Flapjack.WordAlloc.isSkip output4824 = false := by
  rw [output4824_def]
  conv => lhs; cbv
  try rfl
theorem node4824_eq : Flapjack.WordAlloc.removeDeadStructural input4824 value885 value1 value2 = (output4824, value885, value1) := by
  rw [input4824_def, output4824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4822_eq]
  try dsimp only
  rw [node4823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4824 input4821)).val
theorem input4825_def : input4825 = (.seq input4824 input4821) := by
  unfold input4825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4824)).val
theorem output4825_def : output4825 = (output4824) := by
  unfold output4825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4825_skip : Flapjack.WordAlloc.isSkip output4825 = false := by
  rw [output4825_def]
  conv => lhs; cbv
  try rfl
theorem node4825_eq : Flapjack.WordAlloc.removeDeadStructural input4825 value885 value1 value2 = (output4825, value885, value1) := by
  rw [input4825_def, output4825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4821_eq]
  try dsimp only
  rw [node4824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1329 0#64))).val
theorem input4826_def : input4826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1329 0#64)) := by
  unfold input4826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4826_def : output4826 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4826_skip : Flapjack.WordAlloc.isSkip output4826 = true := by
  rw [output4826_def]
  conv => lhs; cbv
  try rfl
theorem node4826_eq : Flapjack.WordAlloc.removeDeadStructural input4826 value885 value1 value2 = (output4826, value885, value1) := by
  rw [input4826_def, output4826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1325 0#64))).val
theorem input4827_def : input4827 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1325 0#64)) := by
  unfold input4827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4827_def : output4827 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4827_skip : Flapjack.WordAlloc.isSkip output4827 = true := by
  rw [output4827_def]
  conv => lhs; cbv
  try rfl
theorem node4827_eq : Flapjack.WordAlloc.removeDeadStructural input4827 value885 value1 value2 = (output4827, value885, value1) := by
  rw [input4827_def, output4827_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64))).val
theorem input4828_def : input4828 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64)) := by
  unfold input4828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64))).val
theorem output4828_def : output4828 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64)) := by
  unfold output4828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4828_skip : Flapjack.WordAlloc.isSkip output4828 = false := by
  rw [output4828_def]
  conv => lhs; cbv
  try rfl
theorem node4828_eq : Flapjack.WordAlloc.removeDeadStructural input4828 value885 value1 value2 = (output4828, value880, value1) := by
  rw [input4828_def, output4828_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4829_def : input4829 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4829_def : output4829 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4829_skip : Flapjack.WordAlloc.isSkip output4829 = true := by
  rw [output4829_def]
  conv => lhs; cbv
  try rfl
theorem node4829_eq : Flapjack.WordAlloc.removeDeadStructural input4829 value880 value1 value2 = (output4829, value880, value1) := by
  rw [input4829_def, output4829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4829 input4828)).val
theorem input4830_def : input4830 = (.seq input4829 input4828) := by
  unfold input4830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4828)).val
theorem output4830_def : output4830 = (output4828) := by
  unfold output4830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4830_skip : Flapjack.WordAlloc.isSkip output4830 = false := by
  rw [output4830_def]
  conv => lhs; cbv
  try rfl
theorem node4830_eq : Flapjack.WordAlloc.removeDeadStructural input4830 value885 value1 value2 = (output4830, value880, value1) := by
  rw [input4830_def, output4830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4828_eq]
  try dsimp only
  rw [node4829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4830 input4827)).val
theorem input4831_def : input4831 = (.seq input4830 input4827) := by
  unfold input4831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4830)).val
theorem output4831_def : output4831 = (output4830) := by
  unfold output4831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4831_skip : Flapjack.WordAlloc.isSkip output4831 = false := by
  rw [output4831_def]
  conv => lhs; cbv
  try rfl
theorem node4831_eq : Flapjack.WordAlloc.removeDeadStructural input4831 value885 value1 value2 = (output4831, value880, value1) := by
  rw [input4831_def, output4831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4827_eq]
  try dsimp only
  rw [node4830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4831 input4826)).val
theorem input4832_def : input4832 = (.seq input4831 input4826) := by
  unfold input4832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4831)).val
theorem output4832_def : output4832 = (output4831) := by
  unfold output4832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4832_skip : Flapjack.WordAlloc.isSkip output4832 = false := by
  rw [output4832_def]
  conv => lhs; cbv
  try rfl
theorem node4832_eq : Flapjack.WordAlloc.removeDeadStructural input4832 value885 value1 value2 = (output4832, value880, value1) := by
  rw [input4832_def, output4832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4826_eq]
  try dsimp only
  rw [node4831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value886 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1317, 1285), (1313, 1301), (1309, 1305)])).val
theorem input4833_def : input4833 = (Flapjack.WordLangProgHOL.move 1 [(1317, 1285), (1313, 1301), (1309, 1305)]) := by
  unfold input4833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1317, 1285)])).val
theorem output4833_def : output4833 = (Flapjack.WordLangProgHOL.move 1 [(1317, 1285)]) := by
  unfold output4833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4833_skip : Flapjack.WordAlloc.isSkip output4833 = false := by
  rw [output4833_def]
  conv => lhs; cbv
  try rfl
theorem node4833_eq : Flapjack.WordAlloc.removeDeadStructural input4833 value880 value1 value2 = (output4833, value886, value1) := by
  rw [input4833_def, output4833_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4833 input4832)).val
theorem input4834_def : input4834 = (.seq input4833 input4832) := by
  unfold input4834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4833 output4832)).val
theorem output4834_def : output4834 = (.seq output4833 output4832) := by
  unfold output4834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4834_skip : Flapjack.WordAlloc.isSkip output4834 = false := by
  rw [output4834_def]
  conv => lhs; cbv
  try rfl
theorem node4834_eq : Flapjack.WordAlloc.removeDeadStructural input4834 value885 value1 value2 = (output4834, value886, value1) := by
  rw [input4834_def, output4834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4832_eq]
  try dsimp only
  rw [node4833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value887 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1285 [2])).val
theorem input4835_def : input4835 = (Flapjack.WordLangProgHOL.return 1285 [2]) := by
  unfold input4835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1285 [2])).val
theorem output4835_def : output4835 = (Flapjack.WordLangProgHOL.return 1285 [2]) := by
  unfold output4835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4835_skip : Flapjack.WordAlloc.isSkip output4835 = false := by
  rw [output4835_def]
  conv => lhs; cbv
  try rfl
theorem node4835_eq : Flapjack.WordAlloc.removeDeadStructural input4835 value886 value1 value2 = (output4835, value887, value1) := by
  rw [input4835_def, output4835_def]
  try (conv => lhs; cbv)
  try rfl

def value888 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1305)])).val
theorem input4836_def : input4836 = (Flapjack.WordLangProgHOL.move 0 [(2, 1305)]) := by
  unfold input4836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1305)])).val
theorem output4836_def : output4836 = (Flapjack.WordLangProgHOL.move 0 [(2, 1305)]) := by
  unfold output4836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4836_skip : Flapjack.WordAlloc.isSkip output4836 = false := by
  rw [output4836_def]
  conv => lhs; cbv
  try rfl
theorem node4836_eq : Flapjack.WordAlloc.removeDeadStructural input4836 value887 value1 value2 = (output4836, value888, value1) := by
  rw [input4836_def, output4836_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4836 input4835)).val
theorem input4837_def : input4837 = (.seq input4836 input4835) := by
  unfold input4837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4836 output4835)).val
theorem output4837_def : output4837 = (.seq output4836 output4835) := by
  unfold output4837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4837_skip : Flapjack.WordAlloc.isSkip output4837 = false := by
  rw [output4837_def]
  conv => lhs; cbv
  try rfl
theorem node4837_eq : Flapjack.WordAlloc.removeDeadStructural input4837 value886 value1 value2 = (output4837, value888, value1) := by
  rw [input4837_def, output4837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4835_eq]
  try dsimp only
  rw [node4836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 0#64))).val
theorem input4838_def : input4838 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 0#64)) := by
  unfold input4838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 0#64))).val
theorem output4838_def : output4838 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 0#64)) := by
  unfold output4838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4838_skip : Flapjack.WordAlloc.isSkip output4838 = false := by
  rw [output4838_def]
  conv => lhs; cbv
  try rfl
theorem node4838_eq : Flapjack.WordAlloc.removeDeadStructural input4838 value888 value1 value2 = (output4838, value886, value1) := by
  rw [input4838_def, output4838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4839_def : input4839 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4839_def : output4839 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4839_skip : Flapjack.WordAlloc.isSkip output4839 = false := by
  rw [output4839_def]
  conv => lhs; cbv
  try rfl
theorem node4839_eq : Flapjack.WordAlloc.removeDeadStructural input4839 value886 value1 value2 = (output4839, value886, value1) := by
  rw [input4839_def, output4839_def]
  try (conv => lhs; cbv)
  try rfl

def value889 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))))

@[irreducible, cbv_opaque] def input4840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1289, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1297, 1289)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1301 0#64)))),
      597, 32))
  (some 513) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1293, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1293)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1297 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1301, 1293)]))),
      597, 33)))).val
theorem input4840_def : input4840 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1289, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1297, 1289)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1301 0#64)))),
      597, 32))
  (some 513) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1293, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1293)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1297 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1301, 1293)]))),
      597, 33))) := by
  unfold input4840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1285, 1279)], 597, 32))
  (some 513) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1293, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1293)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 33)))).val
theorem output4840_def : output4840 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1285, 1279)], 597, 32))
  (some 513) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1285, 1279)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1293, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1293)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 33))) := by
  unfold output4840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4840_skip : Flapjack.WordAlloc.isSkip output4840 = false := by
  rw [output4840_def]
  conv => lhs; cbv
  try rfl
theorem node4840_eq : Flapjack.WordAlloc.removeDeadStructural input4840 value886 value1 value2 = (output4840, value889, value1) := by
  rw [input4840_def, output4840_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4841_def : input4841 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4841_def : output4841 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4841_skip : Flapjack.WordAlloc.isSkip output4841 = true := by
  rw [output4841_def]
  conv => lhs; cbv
  try rfl
theorem node4841_eq : Flapjack.WordAlloc.removeDeadStructural input4841 value889 value1 value2 = (output4841, value889, value1) := by
  rw [input4841_def, output4841_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4841 input4840)).val
theorem input4842_def : input4842 = (.seq input4841 input4840) := by
  unfold input4842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4840)).val
theorem output4842_def : output4842 = (output4840) := by
  unfold output4842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4842_skip : Flapjack.WordAlloc.isSkip output4842 = false := by
  rw [output4842_def]
  conv => lhs; cbv
  try rfl
theorem node4842_eq : Flapjack.WordAlloc.removeDeadStructural input4842 value886 value1 value2 = (output4842, value889, value1) := by
  rw [input4842_def, output4842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4840_eq]
  try dsimp only
  rw [node4841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value890 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1279, 1237)])).val
theorem input4843_def : input4843 = (Flapjack.WordLangProgHOL.move 0 [(1279, 1237)]) := by
  unfold input4843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1279, 1237)])).val
theorem output4843_def : output4843 = (Flapjack.WordLangProgHOL.move 0 [(1279, 1237)]) := by
  unfold output4843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4843_skip : Flapjack.WordAlloc.isSkip output4843 = false := by
  rw [output4843_def]
  conv => lhs; cbv
  try rfl
theorem node4843_eq : Flapjack.WordAlloc.removeDeadStructural input4843 value889 value1 value2 = (output4843, value890, value1) := by
  rw [input4843_def, output4843_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4843 input4842)).val
theorem input4844_def : input4844 = (.seq input4843 input4842) := by
  unfold input4844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4843 output4842)).val
theorem output4844_def : output4844 = (.seq output4843 output4842) := by
  unfold output4844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4844_skip : Flapjack.WordAlloc.isSkip output4844 = false := by
  rw [output4844_def]
  conv => lhs; cbv
  try rfl
theorem node4844_eq : Flapjack.WordAlloc.removeDeadStructural input4844 value886 value1 value2 = (output4844, value890, value1) := by
  rw [input4844_def, output4844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4842_eq]
  try dsimp only
  rw [node4843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 1#64))).val
theorem input4845_def : input4845 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 1#64)) := by
  unfold input4845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4845_def : output4845 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4845_skip : Flapjack.WordAlloc.isSkip output4845 = true := by
  rw [output4845_def]
  conv => lhs; cbv
  try rfl
theorem node4845_eq : Flapjack.WordAlloc.removeDeadStructural input4845 value890 value1 value2 = (output4845, value890, value1) := by
  rw [input4845_def, output4845_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4846_def : input4846 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4846_def : output4846 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4846_skip : Flapjack.WordAlloc.isSkip output4846 = false := by
  rw [output4846_def]
  conv => lhs; cbv
  try rfl
theorem node4846_eq : Flapjack.WordAlloc.removeDeadStructural input4846 value890 value1 value2 = (output4846, value890, value1) := by
  rw [input4846_def, output4846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1269 1#64))).val
theorem input4847_def : input4847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1269 1#64)) := by
  unfold input4847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4847_def : output4847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4847_skip : Flapjack.WordAlloc.isSkip output4847 = true := by
  rw [output4847_def]
  conv => lhs; cbv
  try rfl
theorem node4847_eq : Flapjack.WordAlloc.removeDeadStructural input4847 value890 value1 value2 = (output4847, value890, value1) := by
  rw [input4847_def, output4847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4847 input4846)).val
theorem input4848_def : input4848 = (.seq input4847 input4846) := by
  unfold input4848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4846)).val
theorem output4848_def : output4848 = (output4846) := by
  unfold output4848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4848_skip : Flapjack.WordAlloc.isSkip output4848 = false := by
  rw [output4848_def]
  conv => lhs; cbv
  try rfl
theorem node4848_eq : Flapjack.WordAlloc.removeDeadStructural input4848 value890 value1 value2 = (output4848, value890, value1) := by
  rw [input4848_def, output4848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4846_eq]
  try dsimp only
  rw [node4847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4848 input4845)).val
theorem input4849_def : input4849 = (.seq input4848 input4845) := by
  unfold input4849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4848)).val
theorem output4849_def : output4849 = (output4848) := by
  unfold output4849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4849_skip : Flapjack.WordAlloc.isSkip output4849 = false := by
  rw [output4849_def]
  conv => lhs; cbv
  try rfl
theorem node4849_eq : Flapjack.WordAlloc.removeDeadStructural input4849 value890 value1 value2 = (output4849, value890, value1) := by
  rw [input4849_def, output4849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4845_eq]
  try dsimp only
  rw [node4848_eq]
  try dsimp only
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
theorem node4850_eq : Flapjack.WordAlloc.removeDeadStructural input4850 value886 value1 value2 = (output4850, value890, value1) := by
  rw [input4850_def, output4850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4844_eq]
  try dsimp only
  rw [node4849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4850 input4839)).val
theorem input4851_def : input4851 = (.seq input4850 input4839) := by
  unfold input4851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4850 output4839)).val
theorem output4851_def : output4851 = (.seq output4850 output4839) := by
  unfold output4851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4851_skip : Flapjack.WordAlloc.isSkip output4851 = false := by
  rw [output4851_def]
  conv => lhs; cbv
  try rfl
theorem node4851_eq : Flapjack.WordAlloc.removeDeadStructural input4851 value886 value1 value2 = (output4851, value890, value1) := by
  rw [input4851_def, output4851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4839_eq]
  try dsimp only
  rw [node4850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4851 input4838)).val
theorem input4852_def : input4852 = (.seq input4851 input4838) := by
  unfold input4852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4851 output4838)).val
theorem output4852_def : output4852 = (.seq output4851 output4838) := by
  unfold output4852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4852_skip : Flapjack.WordAlloc.isSkip output4852 = false := by
  rw [output4852_def]
  conv => lhs; cbv
  try rfl
theorem node4852_eq : Flapjack.WordAlloc.removeDeadStructural input4852 value888 value1 value2 = (output4852, value890, value1) := by
  rw [input4852_def, output4852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4838_eq]
  try dsimp only
  rw [node4851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4852 input4837)).val
theorem input4853_def : input4853 = (.seq input4852 input4837) := by
  unfold input4853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4852 output4837)).val
theorem output4853_def : output4853 = (.seq output4852 output4837) := by
  unfold output4853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4853_skip : Flapjack.WordAlloc.isSkip output4853 = false := by
  rw [output4853_def]
  conv => lhs; cbv
  try rfl
theorem node4853_eq : Flapjack.WordAlloc.removeDeadStructural input4853 value886 value1 value2 = (output4853, value890, value1) := by
  rw [input4853_def, output4853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4837_eq]
  try dsimp only
  rw [node4852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4853 input4834)).val
theorem input4854_def : input4854 = (.seq input4853 input4834) := by
  unfold input4854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4853 output4834)).val
theorem output4854_def : output4854 = (.seq output4853 output4834) := by
  unfold output4854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4854_skip : Flapjack.WordAlloc.isSkip output4854 = false := by
  rw [output4854_def]
  conv => lhs; cbv
  try rfl
theorem node4854_eq : Flapjack.WordAlloc.removeDeadStructural input4854 value885 value1 value2 = (output4854, value890, value1) := by
  rw [input4854_def, output4854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4834_eq]
  try dsimp only
  rw [node4853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1329, 1257)])).val
theorem input4855_def : input4855 = (Flapjack.WordLangProgHOL.move 2 [(1329, 1257)]) := by
  unfold input4855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4855_def : output4855 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4855_skip : Flapjack.WordAlloc.isSkip output4855 = true := by
  rw [output4855_def]
  conv => lhs; cbv
  try rfl
theorem node4855_eq : Flapjack.WordAlloc.removeDeadStructural input4855 value885 value1 value2 = (output4855, value885, value1) := by
  rw [input4855_def, output4855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1325, 1265)])).val
theorem input4856_def : input4856 = (Flapjack.WordLangProgHOL.move 2 [(1325, 1265)]) := by
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
theorem node4856_eq : Flapjack.WordAlloc.removeDeadStructural input4856 value885 value1 value2 = (output4856, value885, value1) := by
  rw [input4856_def, output4856_def]
  try (conv => lhs; cbv)
  try rfl

def value891 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1321, 1261)])).val
theorem input4857_def : input4857 = (Flapjack.WordLangProgHOL.move 2 [(1321, 1261)]) := by
  unfold input4857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1321, 1261)])).val
theorem output4857_def : output4857 = (Flapjack.WordLangProgHOL.move 2 [(1321, 1261)]) := by
  unfold output4857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4857_skip : Flapjack.WordAlloc.isSkip output4857 = false := by
  rw [output4857_def]
  conv => lhs; cbv
  try rfl
theorem node4857_eq : Flapjack.WordAlloc.removeDeadStructural input4857 value885 value1 value2 = (output4857, value891, value1) := by
  rw [input4857_def, output4857_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4858_def : input4858 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4858_def : output4858 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4858_skip : Flapjack.WordAlloc.isSkip output4858 = true := by
  rw [output4858_def]
  conv => lhs; cbv
  try rfl
theorem node4858_eq : Flapjack.WordAlloc.removeDeadStructural input4858 value891 value1 value2 = (output4858, value891, value1) := by
  rw [input4858_def, output4858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4858 input4857)).val
theorem input4859_def : input4859 = (.seq input4858 input4857) := by
  unfold input4859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4857)).val
theorem output4859_def : output4859 = (output4857) := by
  unfold output4859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4859_skip : Flapjack.WordAlloc.isSkip output4859 = false := by
  rw [output4859_def]
  conv => lhs; cbv
  try rfl
theorem node4859_eq : Flapjack.WordAlloc.removeDeadStructural input4859 value885 value1 value2 = (output4859, value891, value1) := by
  rw [input4859_def, output4859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4857_eq]
  try dsimp only
  rw [node4858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4859 input4856)).val
theorem input4860_def : input4860 = (.seq input4859 input4856) := by
  unfold input4860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4859)).val
theorem output4860_def : output4860 = (output4859) := by
  unfold output4860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4860_skip : Flapjack.WordAlloc.isSkip output4860 = false := by
  rw [output4860_def]
  conv => lhs; cbv
  try rfl
theorem node4860_eq : Flapjack.WordAlloc.removeDeadStructural input4860 value885 value1 value2 = (output4860, value891, value1) := by
  rw [input4860_def, output4860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4856_eq]
  try dsimp only
  rw [node4859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4860 input4855)).val
theorem input4861_def : input4861 = (.seq input4860 input4855) := by
  unfold input4861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4860)).val
theorem output4861_def : output4861 = (output4860) := by
  unfold output4861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4861_skip : Flapjack.WordAlloc.isSkip output4861 = false := by
  rw [output4861_def]
  conv => lhs; cbv
  try rfl
theorem node4861_eq : Flapjack.WordAlloc.removeDeadStructural input4861 value885 value1 value2 = (output4861, value891, value1) := by
  rw [input4861_def, output4861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4855_eq]
  try dsimp only
  rw [node4860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value892 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1317, 1237), (1313, 1261), (1309, 1229)])).val
theorem input4862_def : input4862 = (Flapjack.WordLangProgHOL.move 2 [(1317, 1237), (1313, 1261), (1309, 1229)]) := by
  unfold input4862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1317, 1237)])).val
theorem output4862_def : output4862 = (Flapjack.WordLangProgHOL.move 2 [(1317, 1237)]) := by
  unfold output4862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4862_skip : Flapjack.WordAlloc.isSkip output4862 = false := by
  rw [output4862_def]
  conv => lhs; cbv
  try rfl
theorem node4862_eq : Flapjack.WordAlloc.removeDeadStructural input4862 value891 value1 value2 = (output4862, value892, value1) := by
  rw [input4862_def, output4862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4862 input4861)).val
theorem input4863_def : input4863 = (.seq input4862 input4861) := by
  unfold input4863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4862 output4861)).val
theorem output4863_def : output4863 = (.seq output4862 output4861) := by
  unfold output4863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4863_skip : Flapjack.WordAlloc.isSkip output4863 = false := by
  rw [output4863_def]
  conv => lhs; cbv
  try rfl
theorem node4863_eq : Flapjack.WordAlloc.removeDeadStructural input4863 value885 value1 value2 = (output4863, value892, value1) := by
  rw [input4863_def, output4863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4861_eq]
  try dsimp only
  rw [node4862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node4863_eq
end InitECandidate.Proofs.DeadStages597
