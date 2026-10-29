import InitECandidate.Proofs.DeadStages597.Chunk001
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input511 input504)).val
theorem input512_def : input512 = (.seq input511 input504) := by
  unfold input512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output511)).val
theorem output512_def : output512 = (output511) := by
  unfold output512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output512_skip : Flapjack.WordAlloc.isSkip output512 = false := by
  rw [output512_def]
  conv => lhs; cbv
  try rfl
theorem node512_eq : Flapjack.WordAlloc.removeDeadStructural input512 value99 value1 value2 = (output512, value94, value1) := by
  rw [input512_def, output512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node504_eq]
  try dsimp only
  rw [node511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value100 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6801, 6769), (6797, 6785), (6793, 6789)])).val
theorem input513_def : input513 = (Flapjack.WordLangProgHOL.move 1 [(6801, 6769), (6797, 6785), (6793, 6789)]) := by
  unfold input513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6801, 6769)])).val
theorem output513_def : output513 = (Flapjack.WordLangProgHOL.move 1 [(6801, 6769)]) := by
  unfold output513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output513_skip : Flapjack.WordAlloc.isSkip output513 = false := by
  rw [output513_def]
  conv => lhs; cbv
  try rfl
theorem node513_eq : Flapjack.WordAlloc.removeDeadStructural input513 value94 value1 value2 = (output513, value100, value1) := by
  rw [input513_def, output513_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input513 input512)).val
theorem input514_def : input514 = (.seq input513 input512) := by
  unfold input514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output513 output512)).val
theorem output514_def : output514 = (.seq output513 output512) := by
  unfold output514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output514_skip : Flapjack.WordAlloc.isSkip output514 = false := by
  rw [output514_def]
  conv => lhs; cbv
  try rfl
theorem node514_eq : Flapjack.WordAlloc.removeDeadStructural input514 value99 value1 value2 = (output514, value100, value1) := by
  rw [input514_def, output514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node512_eq]
  try dsimp only
  rw [node513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value101 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6769 [2])).val
theorem input515_def : input515 = (Flapjack.WordLangProgHOL.return 6769 [2]) := by
  unfold input515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6769 [2])).val
theorem output515_def : output515 = (Flapjack.WordLangProgHOL.return 6769 [2]) := by
  unfold output515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output515_skip : Flapjack.WordAlloc.isSkip output515 = false := by
  rw [output515_def]
  conv => lhs; cbv
  try rfl
theorem node515_eq : Flapjack.WordAlloc.removeDeadStructural input515 value100 value1 value2 = (output515, value101, value1) := by
  rw [input515_def, output515_def]
  try (conv => lhs; cbv)
  try rfl

def value102 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6789)])).val
theorem input516_def : input516 = (Flapjack.WordLangProgHOL.move 0 [(2, 6789)]) := by
  unfold input516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6789)])).val
theorem output516_def : output516 = (Flapjack.WordLangProgHOL.move 0 [(2, 6789)]) := by
  unfold output516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output516_skip : Flapjack.WordAlloc.isSkip output516 = false := by
  rw [output516_def]
  conv => lhs; cbv
  try rfl
theorem node516_eq : Flapjack.WordAlloc.removeDeadStructural input516 value101 value1 value2 = (output516, value102, value1) := by
  rw [input516_def, output516_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input516 input515)).val
theorem input517_def : input517 = (.seq input516 input515) := by
  unfold input517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output516 output515)).val
theorem output517_def : output517 = (.seq output516 output515) := by
  unfold output517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output517_skip : Flapjack.WordAlloc.isSkip output517 = false := by
  rw [output517_def]
  conv => lhs; cbv
  try rfl
theorem node517_eq : Flapjack.WordAlloc.removeDeadStructural input517 value100 value1 value2 = (output517, value102, value1) := by
  rw [input517_def, output517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6789 0#64))).val
theorem input518_def : input518 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6789 0#64)) := by
  unfold input518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6789 0#64))).val
theorem output518_def : output518 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6789 0#64)) := by
  unfold output518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output518_skip : Flapjack.WordAlloc.isSkip output518 = false := by
  rw [output518_def]
  conv => lhs; cbv
  try rfl
theorem node518_eq : Flapjack.WordAlloc.removeDeadStructural input518 value102 value1 value2 = (output518, value100, value1) := by
  rw [input518_def, output518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input519_def : input519 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output519_def : output519 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output519_skip : Flapjack.WordAlloc.isSkip output519 = false := by
  rw [output519_def]
  conv => lhs; cbv
  try rfl
theorem node519_eq : Flapjack.WordAlloc.removeDeadStructural input519 value100 value1 value2 = (output519, value100, value1) := by
  rw [input519_def, output519_def]
  try (conv => lhs; cbv)
  try rfl

def value103 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6773, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6781, 6773)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6785 0#64)))),
      597, 158))
  (some 546) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6777, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6777)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6781 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6785, 6777)]))),
      597, 159)))).val
theorem input520_def : input520 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6773, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6781, 6773)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6785 0#64)))),
      597, 158))
  (some 546) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6777, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6777)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6781 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6785, 6777)]))),
      597, 159))) := by
  unfold input520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6769, 6763)], 597, 158))
  (some 546) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6777, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6777)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 159)))).val
theorem output520_def : output520 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6769, 6763)], 597, 158))
  (some 546) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6769, 6763)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6777, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6777)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 159))) := by
  unfold output520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output520_skip : Flapjack.WordAlloc.isSkip output520 = false := by
  rw [output520_def]
  conv => lhs; cbv
  try rfl
theorem node520_eq : Flapjack.WordAlloc.removeDeadStructural input520 value100 value1 value2 = (output520, value103, value1) := by
  rw [input520_def, output520_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input521_def : input521 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output521_def : output521 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output521_skip : Flapjack.WordAlloc.isSkip output521 = true := by
  rw [output521_def]
  conv => lhs; cbv
  try rfl
theorem node521_eq : Flapjack.WordAlloc.removeDeadStructural input521 value103 value1 value2 = (output521, value103, value1) := by
  rw [input521_def, output521_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input521 input520)).val
theorem input522_def : input522 = (.seq input521 input520) := by
  unfold input522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output520)).val
theorem output522_def : output522 = (output520) := by
  unfold output522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output522_skip : Flapjack.WordAlloc.isSkip output522 = false := by
  rw [output522_def]
  conv => lhs; cbv
  try rfl
theorem node522_eq : Flapjack.WordAlloc.removeDeadStructural input522 value100 value1 value2 = (output522, value103, value1) := by
  rw [input522_def, output522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node520_eq]
  try dsimp only
  rw [node521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value104 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6763, 6717)])).val
theorem input523_def : input523 = (Flapjack.WordLangProgHOL.move 0 [(6763, 6717)]) := by
  unfold input523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6763, 6717)])).val
theorem output523_def : output523 = (Flapjack.WordLangProgHOL.move 0 [(6763, 6717)]) := by
  unfold output523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output523_skip : Flapjack.WordAlloc.isSkip output523 = false := by
  rw [output523_def]
  conv => lhs; cbv
  try rfl
theorem node523_eq : Flapjack.WordAlloc.removeDeadStructural input523 value103 value1 value2 = (output523, value104, value1) := by
  rw [input523_def, output523_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input523 input522)).val
theorem input524_def : input524 = (.seq input523 input522) := by
  unfold input524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output523 output522)).val
theorem output524_def : output524 = (.seq output523 output522) := by
  unfold output524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output524_skip : Flapjack.WordAlloc.isSkip output524 = false := by
  rw [output524_def]
  conv => lhs; cbv
  try rfl
theorem node524_eq : Flapjack.WordAlloc.removeDeadStructural input524 value100 value1 value2 = (output524, value104, value1) := by
  rw [input524_def, output524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6757 1#64))).val
theorem input525_def : input525 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6757 1#64)) := by
  unfold input525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output525_def : output525 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output525_skip : Flapjack.WordAlloc.isSkip output525 = true := by
  rw [output525_def]
  conv => lhs; cbv
  try rfl
theorem node525_eq : Flapjack.WordAlloc.removeDeadStructural input525 value104 value1 value2 = (output525, value104, value1) := by
  rw [input525_def, output525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input526_def : input526 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output526_def : output526 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output526_skip : Flapjack.WordAlloc.isSkip output526 = false := by
  rw [output526_def]
  conv => lhs; cbv
  try rfl
theorem node526_eq : Flapjack.WordAlloc.removeDeadStructural input526 value104 value1 value2 = (output526, value104, value1) := by
  rw [input526_def, output526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6753 1#64))).val
theorem input527_def : input527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6753 1#64)) := by
  unfold input527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output527_def : output527 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output527_skip : Flapjack.WordAlloc.isSkip output527 = true := by
  rw [output527_def]
  conv => lhs; cbv
  try rfl
theorem node527_eq : Flapjack.WordAlloc.removeDeadStructural input527 value104 value1 value2 = (output527, value104, value1) := by
  rw [input527_def, output527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input527 input526)).val
theorem input528_def : input528 = (.seq input527 input526) := by
  unfold input528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output526)).val
theorem output528_def : output528 = (output526) := by
  unfold output528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output528_skip : Flapjack.WordAlloc.isSkip output528 = false := by
  rw [output528_def]
  conv => lhs; cbv
  try rfl
theorem node528_eq : Flapjack.WordAlloc.removeDeadStructural input528 value104 value1 value2 = (output528, value104, value1) := by
  rw [input528_def, output528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  try dsimp only
  rw [node527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input528 input525)).val
theorem input529_def : input529 = (.seq input528 input525) := by
  unfold input529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output528)).val
theorem output529_def : output529 = (output528) := by
  unfold output529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output529_skip : Flapjack.WordAlloc.isSkip output529 = false := by
  rw [output529_def]
  conv => lhs; cbv
  try rfl
theorem node529_eq : Flapjack.WordAlloc.removeDeadStructural input529 value104 value1 value2 = (output529, value104, value1) := by
  rw [input529_def, output529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node525_eq]
  try dsimp only
  rw [node528_eq]
  try dsimp only
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
theorem node530_eq : Flapjack.WordAlloc.removeDeadStructural input530 value100 value1 value2 = (output530, value104, value1) := by
  rw [input530_def, output530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node524_eq]
  try dsimp only
  rw [node529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input530 input519)).val
theorem input531_def : input531 = (.seq input530 input519) := by
  unfold input531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output530 output519)).val
theorem output531_def : output531 = (.seq output530 output519) := by
  unfold output531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output531_skip : Flapjack.WordAlloc.isSkip output531 = false := by
  rw [output531_def]
  conv => lhs; cbv
  try rfl
theorem node531_eq : Flapjack.WordAlloc.removeDeadStructural input531 value100 value1 value2 = (output531, value104, value1) := by
  rw [input531_def, output531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node519_eq]
  try dsimp only
  rw [node530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input531 input518)).val
theorem input532_def : input532 = (.seq input531 input518) := by
  unfold input532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output531 output518)).val
theorem output532_def : output532 = (.seq output531 output518) := by
  unfold output532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output532_skip : Flapjack.WordAlloc.isSkip output532 = false := by
  rw [output532_def]
  conv => lhs; cbv
  try rfl
theorem node532_eq : Flapjack.WordAlloc.removeDeadStructural input532 value102 value1 value2 = (output532, value104, value1) := by
  rw [input532_def, output532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node518_eq]
  try dsimp only
  rw [node531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input532 input517)).val
theorem input533_def : input533 = (.seq input532 input517) := by
  unfold input533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output532 output517)).val
theorem output533_def : output533 = (.seq output532 output517) := by
  unfold output533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output533_skip : Flapjack.WordAlloc.isSkip output533 = false := by
  rw [output533_def]
  conv => lhs; cbv
  try rfl
theorem node533_eq : Flapjack.WordAlloc.removeDeadStructural input533 value100 value1 value2 = (output533, value104, value1) := by
  rw [input533_def, output533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node517_eq]
  try dsimp only
  rw [node532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input533 input514)).val
theorem input534_def : input534 = (.seq input533 input514) := by
  unfold input534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output533 output514)).val
theorem output534_def : output534 = (.seq output533 output514) := by
  unfold output534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output534_skip : Flapjack.WordAlloc.isSkip output534 = false := by
  rw [output534_def]
  conv => lhs; cbv
  try rfl
theorem node534_eq : Flapjack.WordAlloc.removeDeadStructural input534 value99 value1 value2 = (output534, value104, value1) := by
  rw [input534_def, output534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node514_eq]
  try dsimp only
  rw [node533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6817, 6733)])).val
theorem input535_def : input535 = (Flapjack.WordLangProgHOL.move 2 [(6817, 6733)]) := by
  unfold input535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output535_def : output535 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output535_skip : Flapjack.WordAlloc.isSkip output535 = true := by
  rw [output535_def]
  conv => lhs; cbv
  try rfl
theorem node535_eq : Flapjack.WordAlloc.removeDeadStructural input535 value99 value1 value2 = (output535, value99, value1) := by
  rw [input535_def, output535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6813, 6741)])).val
theorem input536_def : input536 = (Flapjack.WordLangProgHOL.move 2 [(6813, 6741)]) := by
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
theorem node536_eq : Flapjack.WordAlloc.removeDeadStructural input536 value99 value1 value2 = (output536, value99, value1) := by
  rw [input536_def, output536_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6809, 6749)])).val
theorem input537_def : input537 = (Flapjack.WordLangProgHOL.move 2 [(6809, 6749)]) := by
  unfold input537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output537_def : output537 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output537_skip : Flapjack.WordAlloc.isSkip output537 = true := by
  rw [output537_def]
  conv => lhs; cbv
  try rfl
theorem node537_eq : Flapjack.WordAlloc.removeDeadStructural input537 value99 value1 value2 = (output537, value99, value1) := by
  rw [input537_def, output537_def]
  try (conv => lhs; cbv)
  try rfl

def value105 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6805, 6745)])).val
theorem input538_def : input538 = (Flapjack.WordLangProgHOL.move 2 [(6805, 6745)]) := by
  unfold input538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6805, 6745)])).val
theorem output538_def : output538 = (Flapjack.WordLangProgHOL.move 2 [(6805, 6745)]) := by
  unfold output538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output538_skip : Flapjack.WordAlloc.isSkip output538 = false := by
  rw [output538_def]
  conv => lhs; cbv
  try rfl
theorem node538_eq : Flapjack.WordAlloc.removeDeadStructural input538 value99 value1 value2 = (output538, value105, value1) := by
  rw [input538_def, output538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input539_def : input539 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output539_def : output539 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output539_skip : Flapjack.WordAlloc.isSkip output539 = true := by
  rw [output539_def]
  conv => lhs; cbv
  try rfl
theorem node539_eq : Flapjack.WordAlloc.removeDeadStructural input539 value105 value1 value2 = (output539, value105, value1) := by
  rw [input539_def, output539_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input539 input538)).val
theorem input540_def : input540 = (.seq input539 input538) := by
  unfold input540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output538)).val
theorem output540_def : output540 = (output538) := by
  unfold output540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output540_skip : Flapjack.WordAlloc.isSkip output540 = false := by
  rw [output540_def]
  conv => lhs; cbv
  try rfl
theorem node540_eq : Flapjack.WordAlloc.removeDeadStructural input540 value99 value1 value2 = (output540, value105, value1) := by
  rw [input540_def, output540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node538_eq]
  try dsimp only
  rw [node539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input540 input537)).val
theorem input541_def : input541 = (.seq input540 input537) := by
  unfold input541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output540)).val
theorem output541_def : output541 = (output540) := by
  unfold output541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output541_skip : Flapjack.WordAlloc.isSkip output541 = false := by
  rw [output541_def]
  conv => lhs; cbv
  try rfl
theorem node541_eq : Flapjack.WordAlloc.removeDeadStructural input541 value99 value1 value2 = (output541, value105, value1) := by
  rw [input541_def, output541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node537_eq]
  try dsimp only
  rw [node540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input541 input536)).val
theorem input542_def : input542 = (.seq input541 input536) := by
  unfold input542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output541)).val
theorem output542_def : output542 = (output541) := by
  unfold output542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output542_skip : Flapjack.WordAlloc.isSkip output542 = false := by
  rw [output542_def]
  conv => lhs; cbv
  try rfl
theorem node542_eq : Flapjack.WordAlloc.removeDeadStructural input542 value99 value1 value2 = (output542, value105, value1) := by
  rw [input542_def, output542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node536_eq]
  try dsimp only
  rw [node541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input542 input535)).val
theorem input543_def : input543 = (.seq input542 input535) := by
  unfold input543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output542)).val
theorem output543_def : output543 = (output542) := by
  unfold output543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output543_skip : Flapjack.WordAlloc.isSkip output543 = false := by
  rw [output543_def]
  conv => lhs; cbv
  try rfl
theorem node543_eq : Flapjack.WordAlloc.removeDeadStructural input543 value99 value1 value2 = (output543, value105, value1) := by
  rw [input543_def, output543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node535_eq]
  try dsimp only
  rw [node542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value106 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6801, 6717), (6797, 6745), (6793, 6709)])).val
theorem input544_def : input544 = (Flapjack.WordLangProgHOL.move 2 [(6801, 6717), (6797, 6745), (6793, 6709)]) := by
  unfold input544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6801, 6717)])).val
theorem output544_def : output544 = (Flapjack.WordLangProgHOL.move 2 [(6801, 6717)]) := by
  unfold output544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output544_skip : Flapjack.WordAlloc.isSkip output544 = false := by
  rw [output544_def]
  conv => lhs; cbv
  try rfl
theorem node544_eq : Flapjack.WordAlloc.removeDeadStructural input544 value105 value1 value2 = (output544, value106, value1) := by
  rw [input544_def, output544_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input544 input543)).val
theorem input545_def : input545 = (.seq input544 input543) := by
  unfold input545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output544 output543)).val
theorem output545_def : output545 = (.seq output544 output543) := by
  unfold output545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output545_skip : Flapjack.WordAlloc.isSkip output545 = false := by
  rw [output545_def]
  conv => lhs; cbv
  try rfl
theorem node545_eq : Flapjack.WordAlloc.removeDeadStructural input545 value99 value1 value2 = (output545, value106, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  try dsimp only
  rw [node544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input546_def : input546 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output546_def : output546 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output546_skip : Flapjack.WordAlloc.isSkip output546 = true := by
  rw [output546_def]
  conv => lhs; cbv
  try rfl
theorem node546_eq : Flapjack.WordAlloc.removeDeadStructural input546 value106 value1 value2 = (output546, value106, value1) := by
  rw [input546_def, output546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input546 input545)).val
theorem input547_def : input547 = (.seq input546 input545) := by
  unfold input547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output545)).val
theorem output547_def : output547 = (output545) := by
  unfold output547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output547_skip : Flapjack.WordAlloc.isSkip output547 = false := by
  rw [output547_def]
  conv => lhs; cbv
  try rfl
theorem node547_eq : Flapjack.WordAlloc.removeDeadStructural input547 value99 value1 value2 = (output547, value106, value1) := by
  rw [input547_def, output547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node545_eq]
  try dsimp only
  rw [node546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value107 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6749

def value108 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6745 value107 input534 input547)).val
theorem input548_def : input548 = (.ite value15 6745 value107 input534 input547) := by
  unfold input548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6745 value107 output534 output547)).val
theorem output548_def : output548 = (.ite value15 6745 value107 output534 output547) := by
  unfold output548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output548_skip : Flapjack.WordAlloc.isSkip output548 = false := by
  rw [output548_def]
  conv => lhs; cbv
  try rfl
theorem node548_eq : Flapjack.WordAlloc.removeDeadStructural input548 value99 value1 value2 = (output548, value108, value1) := by
  rw [input548_def, output548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node534_eq]
  try dsimp only
  rw [node547_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input548 input503)).val
theorem input549_def : input549 = (.seq input548 input503) := by
  unfold input549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output548 output503)).val
theorem output549_def : output549 = (.seq output548 output503) := by
  unfold output549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output549_skip : Flapjack.WordAlloc.isSkip output549 = false := by
  rw [output549_def]
  conv => lhs; cbv
  try rfl
theorem node549_eq : Flapjack.WordAlloc.removeDeadStructural input549 value99 value1 value2 = (output549, value108, value1) := by
  rw [input549_def, output549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node503_eq]
  try dsimp only
  rw [node548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6749 232#64))).val
theorem input550_def : input550 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6749 232#64)) := by
  unfold input550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6749 232#64))).val
theorem output550_def : output550 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6749 232#64)) := by
  unfold output550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output550_skip : Flapjack.WordAlloc.isSkip output550 = false := by
  rw [output550_def]
  conv => lhs; cbv
  try rfl
theorem node550_eq : Flapjack.WordAlloc.removeDeadStructural input550 value108 value1 value2 = (output550, value106, value1) := by
  rw [input550_def, output550_def]
  try (conv => lhs; cbv)
  try rfl

def value109 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6745, 6721)])).val
theorem input551_def : input551 = (Flapjack.WordLangProgHOL.move 0 [(6745, 6721)]) := by
  unfold input551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6745, 6721)])).val
theorem output551_def : output551 = (Flapjack.WordLangProgHOL.move 0 [(6745, 6721)]) := by
  unfold output551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output551_skip : Flapjack.WordAlloc.isSkip output551 = false := by
  rw [output551_def]
  conv => lhs; cbv
  try rfl
theorem node551_eq : Flapjack.WordAlloc.removeDeadStructural input551 value106 value1 value2 = (output551, value109, value1) := by
  rw [input551_def, output551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input552_def : input552 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output552_def : output552 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output552_skip : Flapjack.WordAlloc.isSkip output552 = false := by
  rw [output552_def]
  conv => lhs; cbv
  try rfl
theorem node552_eq : Flapjack.WordAlloc.removeDeadStructural input552 value109 value1 value2 = (output552, value109, value1) := by
  rw [input552_def, output552_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6741 0#64))).val
theorem input553_def : input553 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6741 0#64)) := by
  unfold input553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output553_def : output553 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output553_skip : Flapjack.WordAlloc.isSkip output553 = true := by
  rw [output553_def]
  conv => lhs; cbv
  try rfl
theorem node553_eq : Flapjack.WordAlloc.removeDeadStructural input553 value109 value1 value2 = (output553, value109, value1) := by
  rw [input553_def, output553_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input554_def : input554 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output554_def : output554 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output554_skip : Flapjack.WordAlloc.isSkip output554 = false := by
  rw [output554_def]
  conv => lhs; cbv
  try rfl
theorem node554_eq : Flapjack.WordAlloc.removeDeadStructural input554 value109 value1 value2 = (output554, value109, value1) := by
  rw [input554_def, output554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6737 0#64))).val
theorem input555_def : input555 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6737 0#64)) := by
  unfold input555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output555_def : output555 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output555_skip : Flapjack.WordAlloc.isSkip output555 = true := by
  rw [output555_def]
  conv => lhs; cbv
  try rfl
theorem node555_eq : Flapjack.WordAlloc.removeDeadStructural input555 value109 value1 value2 = (output555, value109, value1) := by
  rw [input555_def, output555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input555 input554)).val
theorem input556_def : input556 = (.seq input555 input554) := by
  unfold input556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output554)).val
theorem output556_def : output556 = (output554) := by
  unfold output556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output556_skip : Flapjack.WordAlloc.isSkip output556 = false := by
  rw [output556_def]
  conv => lhs; cbv
  try rfl
theorem node556_eq : Flapjack.WordAlloc.removeDeadStructural input556 value109 value1 value2 = (output556, value109, value1) := by
  rw [input556_def, output556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node554_eq]
  try dsimp only
  rw [node555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input556 input553)).val
theorem input557_def : input557 = (.seq input556 input553) := by
  unfold input557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output556)).val
theorem output557_def : output557 = (output556) := by
  unfold output557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output557_skip : Flapjack.WordAlloc.isSkip output557 = false := by
  rw [output557_def]
  conv => lhs; cbv
  try rfl
theorem node557_eq : Flapjack.WordAlloc.removeDeadStructural input557 value109 value1 value2 = (output557, value109, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node553_eq]
  try dsimp only
  rw [node556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6733 0#64))).val
theorem input558_def : input558 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6733 0#64)) := by
  unfold input558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output558_def : output558 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output558_skip : Flapjack.WordAlloc.isSkip output558 = true := by
  rw [output558_def]
  conv => lhs; cbv
  try rfl
theorem node558_eq : Flapjack.WordAlloc.removeDeadStructural input558 value109 value1 value2 = (output558, value109, value1) := by
  rw [input558_def, output558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6729 0#64))).val
theorem input559_def : input559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6729 0#64)) := by
  unfold input559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output559_def : output559 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output559_skip : Flapjack.WordAlloc.isSkip output559 = true := by
  rw [output559_def]
  conv => lhs; cbv
  try rfl
theorem node559_eq : Flapjack.WordAlloc.removeDeadStructural input559 value109 value1 value2 = (output559, value109, value1) := by
  rw [input559_def, output559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6725 0#64))).val
theorem input560_def : input560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6725 0#64)) := by
  unfold input560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output560_def : output560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output560_skip : Flapjack.WordAlloc.isSkip output560 = true := by
  rw [output560_def]
  conv => lhs; cbv
  try rfl
theorem node560_eq : Flapjack.WordAlloc.removeDeadStructural input560 value109 value1 value2 = (output560, value109, value1) := by
  rw [input560_def, output560_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6721 0#64))).val
theorem input561_def : input561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6721 0#64)) := by
  unfold input561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6721 0#64))).val
theorem output561_def : output561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6721 0#64)) := by
  unfold output561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output561_skip : Flapjack.WordAlloc.isSkip output561 = false := by
  rw [output561_def]
  conv => lhs; cbv
  try rfl
theorem node561_eq : Flapjack.WordAlloc.removeDeadStructural input561 value109 value1 value2 = (output561, value104, value1) := by
  rw [input561_def, output561_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input562_def : input562 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output562_def : output562 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output562_skip : Flapjack.WordAlloc.isSkip output562 = true := by
  rw [output562_def]
  conv => lhs; cbv
  try rfl
theorem node562_eq : Flapjack.WordAlloc.removeDeadStructural input562 value104 value1 value2 = (output562, value104, value1) := by
  rw [input562_def, output562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input562 input561)).val
theorem input563_def : input563 = (.seq input562 input561) := by
  unfold input563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output561)).val
theorem output563_def : output563 = (output561) := by
  unfold output563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output563_skip : Flapjack.WordAlloc.isSkip output563 = false := by
  rw [output563_def]
  conv => lhs; cbv
  try rfl
theorem node563_eq : Flapjack.WordAlloc.removeDeadStructural input563 value109 value1 value2 = (output563, value104, value1) := by
  rw [input563_def, output563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node561_eq]
  try dsimp only
  rw [node562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input563 input560)).val
theorem input564_def : input564 = (.seq input563 input560) := by
  unfold input564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output563)).val
theorem output564_def : output564 = (output563) := by
  unfold output564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output564_skip : Flapjack.WordAlloc.isSkip output564 = false := by
  rw [output564_def]
  conv => lhs; cbv
  try rfl
theorem node564_eq : Flapjack.WordAlloc.removeDeadStructural input564 value109 value1 value2 = (output564, value104, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node560_eq]
  try dsimp only
  rw [node563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input564 input559)).val
theorem input565_def : input565 = (.seq input564 input559) := by
  unfold input565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output564)).val
theorem output565_def : output565 = (output564) := by
  unfold output565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output565_skip : Flapjack.WordAlloc.isSkip output565 = false := by
  rw [output565_def]
  conv => lhs; cbv
  try rfl
theorem node565_eq : Flapjack.WordAlloc.removeDeadStructural input565 value109 value1 value2 = (output565, value104, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node559_eq]
  try dsimp only
  rw [node564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input565 input558)).val
theorem input566_def : input566 = (.seq input565 input558) := by
  unfold input566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output565)).val
theorem output566_def : output566 = (output565) := by
  unfold output566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output566_skip : Flapjack.WordAlloc.isSkip output566 = false := by
  rw [output566_def]
  conv => lhs; cbv
  try rfl
theorem node566_eq : Flapjack.WordAlloc.removeDeadStructural input566 value109 value1 value2 = (output566, value104, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node558_eq]
  try dsimp only
  rw [node565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value110 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6717, 6685), (6713, 6701), (6709, 6705)])).val
theorem input567_def : input567 = (Flapjack.WordLangProgHOL.move 1 [(6717, 6685), (6713, 6701), (6709, 6705)]) := by
  unfold input567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6717, 6685)])).val
theorem output567_def : output567 = (Flapjack.WordLangProgHOL.move 1 [(6717, 6685)]) := by
  unfold output567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output567_skip : Flapjack.WordAlloc.isSkip output567 = false := by
  rw [output567_def]
  conv => lhs; cbv
  try rfl
theorem node567_eq : Flapjack.WordAlloc.removeDeadStructural input567 value104 value1 value2 = (output567, value110, value1) := by
  rw [input567_def, output567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input567 input566)).val
theorem input568_def : input568 = (.seq input567 input566) := by
  unfold input568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output567 output566)).val
theorem output568_def : output568 = (.seq output567 output566) := by
  unfold output568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output568_skip : Flapjack.WordAlloc.isSkip output568 = false := by
  rw [output568_def]
  conv => lhs; cbv
  try rfl
theorem node568_eq : Flapjack.WordAlloc.removeDeadStructural input568 value109 value1 value2 = (output568, value110, value1) := by
  rw [input568_def, output568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node566_eq]
  try dsimp only
  rw [node567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value111 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6685 [2])).val
theorem input569_def : input569 = (Flapjack.WordLangProgHOL.return 6685 [2]) := by
  unfold input569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6685 [2])).val
theorem output569_def : output569 = (Flapjack.WordLangProgHOL.return 6685 [2]) := by
  unfold output569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output569_skip : Flapjack.WordAlloc.isSkip output569 = false := by
  rw [output569_def]
  conv => lhs; cbv
  try rfl
theorem node569_eq : Flapjack.WordAlloc.removeDeadStructural input569 value110 value1 value2 = (output569, value111, value1) := by
  rw [input569_def, output569_def]
  try (conv => lhs; cbv)
  try rfl

def value112 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6705)])).val
theorem input570_def : input570 = (Flapjack.WordLangProgHOL.move 0 [(2, 6705)]) := by
  unfold input570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6705)])).val
theorem output570_def : output570 = (Flapjack.WordLangProgHOL.move 0 [(2, 6705)]) := by
  unfold output570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output570_skip : Flapjack.WordAlloc.isSkip output570 = false := by
  rw [output570_def]
  conv => lhs; cbv
  try rfl
theorem node570_eq : Flapjack.WordAlloc.removeDeadStructural input570 value111 value1 value2 = (output570, value112, value1) := by
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
theorem node571_eq : Flapjack.WordAlloc.removeDeadStructural input571 value110 value1 value2 = (output571, value112, value1) := by
  rw [input571_def, output571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  try dsimp only
  rw [node570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6705 0#64))).val
theorem input572_def : input572 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6705 0#64)) := by
  unfold input572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6705 0#64))).val
theorem output572_def : output572 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6705 0#64)) := by
  unfold output572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output572_skip : Flapjack.WordAlloc.isSkip output572 = false := by
  rw [output572_def]
  conv => lhs; cbv
  try rfl
theorem node572_eq : Flapjack.WordAlloc.removeDeadStructural input572 value112 value1 value2 = (output572, value110, value1) := by
  rw [input572_def, output572_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input573_def : input573 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output573_def : output573 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output573_skip : Flapjack.WordAlloc.isSkip output573 = false := by
  rw [output573_def]
  conv => lhs; cbv
  try rfl
theorem node573_eq : Flapjack.WordAlloc.removeDeadStructural input573 value110 value1 value2 = (output573, value110, value1) := by
  rw [input573_def, output573_def]
  try (conv => lhs; cbv)
  try rfl

def value113 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6689, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6697, 6689)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6701 0#64)))),
      597, 156))
  (some 545) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6693, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6693)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6697 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6701, 6693)]))),
      597, 157)))).val
theorem input574_def : input574 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6689, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6697, 6689)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6701 0#64)))),
      597, 156))
  (some 545) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6693, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6693)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6697 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6701, 6693)]))),
      597, 157))) := by
  unfold input574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6685, 6679)], 597, 156))
  (some 545) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6693, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6693)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 157)))).val
theorem output574_def : output574 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6685, 6679)], 597, 156))
  (some 545) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6685, 6679)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6693, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6693)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 157))) := by
  unfold output574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output574_skip : Flapjack.WordAlloc.isSkip output574 = false := by
  rw [output574_def]
  conv => lhs; cbv
  try rfl
theorem node574_eq : Flapjack.WordAlloc.removeDeadStructural input574 value110 value1 value2 = (output574, value113, value1) := by
  rw [input574_def, output574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input575_def : input575 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output575_def : output575 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output575_skip : Flapjack.WordAlloc.isSkip output575 = true := by
  rw [output575_def]
  conv => lhs; cbv
  try rfl
theorem node575_eq : Flapjack.WordAlloc.removeDeadStructural input575 value113 value1 value2 = (output575, value113, value1) := by
  rw [input575_def, output575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input575 input574)).val
theorem input576_def : input576 = (.seq input575 input574) := by
  unfold input576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output574)).val
theorem output576_def : output576 = (output574) := by
  unfold output576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output576_skip : Flapjack.WordAlloc.isSkip output576 = false := by
  rw [output576_def]
  conv => lhs; cbv
  try rfl
theorem node576_eq : Flapjack.WordAlloc.removeDeadStructural input576 value110 value1 value2 = (output576, value113, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node574_eq]
  try dsimp only
  rw [node575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value114 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6679, 6633)])).val
theorem input577_def : input577 = (Flapjack.WordLangProgHOL.move 0 [(6679, 6633)]) := by
  unfold input577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6679, 6633)])).val
theorem output577_def : output577 = (Flapjack.WordLangProgHOL.move 0 [(6679, 6633)]) := by
  unfold output577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output577_skip : Flapjack.WordAlloc.isSkip output577 = false := by
  rw [output577_def]
  conv => lhs; cbv
  try rfl
theorem node577_eq : Flapjack.WordAlloc.removeDeadStructural input577 value113 value1 value2 = (output577, value114, value1) := by
  rw [input577_def, output577_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input577 input576)).val
theorem input578_def : input578 = (.seq input577 input576) := by
  unfold input578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output577 output576)).val
theorem output578_def : output578 = (.seq output577 output576) := by
  unfold output578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output578_skip : Flapjack.WordAlloc.isSkip output578 = false := by
  rw [output578_def]
  conv => lhs; cbv
  try rfl
theorem node578_eq : Flapjack.WordAlloc.removeDeadStructural input578 value110 value1 value2 = (output578, value114, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node576_eq]
  try dsimp only
  rw [node577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6673 1#64))).val
theorem input579_def : input579 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6673 1#64)) := by
  unfold input579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output579_def : output579 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output579_skip : Flapjack.WordAlloc.isSkip output579 = true := by
  rw [output579_def]
  conv => lhs; cbv
  try rfl
theorem node579_eq : Flapjack.WordAlloc.removeDeadStructural input579 value114 value1 value2 = (output579, value114, value1) := by
  rw [input579_def, output579_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input580_def : input580 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output580_def : output580 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output580_skip : Flapjack.WordAlloc.isSkip output580 = false := by
  rw [output580_def]
  conv => lhs; cbv
  try rfl
theorem node580_eq : Flapjack.WordAlloc.removeDeadStructural input580 value114 value1 value2 = (output580, value114, value1) := by
  rw [input580_def, output580_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6669 1#64))).val
theorem input581_def : input581 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6669 1#64)) := by
  unfold input581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output581_def : output581 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output581_skip : Flapjack.WordAlloc.isSkip output581 = true := by
  rw [output581_def]
  conv => lhs; cbv
  try rfl
theorem node581_eq : Flapjack.WordAlloc.removeDeadStructural input581 value114 value1 value2 = (output581, value114, value1) := by
  rw [input581_def, output581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input581 input580)).val
theorem input582_def : input582 = (.seq input581 input580) := by
  unfold input582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output580)).val
theorem output582_def : output582 = (output580) := by
  unfold output582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output582_skip : Flapjack.WordAlloc.isSkip output582 = false := by
  rw [output582_def]
  conv => lhs; cbv
  try rfl
theorem node582_eq : Flapjack.WordAlloc.removeDeadStructural input582 value114 value1 value2 = (output582, value114, value1) := by
  rw [input582_def, output582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node580_eq]
  try dsimp only
  rw [node581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input582 input579)).val
theorem input583_def : input583 = (.seq input582 input579) := by
  unfold input583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output582)).val
theorem output583_def : output583 = (output582) := by
  unfold output583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output583_skip : Flapjack.WordAlloc.isSkip output583 = false := by
  rw [output583_def]
  conv => lhs; cbv
  try rfl
theorem node583_eq : Flapjack.WordAlloc.removeDeadStructural input583 value114 value1 value2 = (output583, value114, value1) := by
  rw [input583_def, output583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node579_eq]
  try dsimp only
  rw [node582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input583 input578)).val
theorem input584_def : input584 = (.seq input583 input578) := by
  unfold input584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output583 output578)).val
theorem output584_def : output584 = (.seq output583 output578) := by
  unfold output584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output584_skip : Flapjack.WordAlloc.isSkip output584 = false := by
  rw [output584_def]
  conv => lhs; cbv
  try rfl
theorem node584_eq : Flapjack.WordAlloc.removeDeadStructural input584 value110 value1 value2 = (output584, value114, value1) := by
  rw [input584_def, output584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node578_eq]
  try dsimp only
  rw [node583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input584 input573)).val
theorem input585_def : input585 = (.seq input584 input573) := by
  unfold input585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output584 output573)).val
theorem output585_def : output585 = (.seq output584 output573) := by
  unfold output585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output585_skip : Flapjack.WordAlloc.isSkip output585 = false := by
  rw [output585_def]
  conv => lhs; cbv
  try rfl
theorem node585_eq : Flapjack.WordAlloc.removeDeadStructural input585 value110 value1 value2 = (output585, value114, value1) := by
  rw [input585_def, output585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node573_eq]
  try dsimp only
  rw [node584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input585 input572)).val
theorem input586_def : input586 = (.seq input585 input572) := by
  unfold input586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output585 output572)).val
theorem output586_def : output586 = (.seq output585 output572) := by
  unfold output586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output586_skip : Flapjack.WordAlloc.isSkip output586 = false := by
  rw [output586_def]
  conv => lhs; cbv
  try rfl
theorem node586_eq : Flapjack.WordAlloc.removeDeadStructural input586 value112 value1 value2 = (output586, value114, value1) := by
  rw [input586_def, output586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node572_eq]
  try dsimp only
  rw [node585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input586 input571)).val
theorem input587_def : input587 = (.seq input586 input571) := by
  unfold input587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output586 output571)).val
theorem output587_def : output587 = (.seq output586 output571) := by
  unfold output587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output587_skip : Flapjack.WordAlloc.isSkip output587 = false := by
  rw [output587_def]
  conv => lhs; cbv
  try rfl
theorem node587_eq : Flapjack.WordAlloc.removeDeadStructural input587 value110 value1 value2 = (output587, value114, value1) := by
  rw [input587_def, output587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node571_eq]
  try dsimp only
  rw [node586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input587 input568)).val
theorem input588_def : input588 = (.seq input587 input568) := by
  unfold input588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output587 output568)).val
theorem output588_def : output588 = (.seq output587 output568) := by
  unfold output588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output588_skip : Flapjack.WordAlloc.isSkip output588 = false := by
  rw [output588_def]
  conv => lhs; cbv
  try rfl
theorem node588_eq : Flapjack.WordAlloc.removeDeadStructural input588 value109 value1 value2 = (output588, value114, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node568_eq]
  try dsimp only
  rw [node587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6733, 6649)])).val
theorem input589_def : input589 = (Flapjack.WordLangProgHOL.move 2 [(6733, 6649)]) := by
  unfold input589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output589_def : output589 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output589_skip : Flapjack.WordAlloc.isSkip output589 = true := by
  rw [output589_def]
  conv => lhs; cbv
  try rfl
theorem node589_eq : Flapjack.WordAlloc.removeDeadStructural input589 value109 value1 value2 = (output589, value109, value1) := by
  rw [input589_def, output589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6729, 6657)])).val
theorem input590_def : input590 = (Flapjack.WordLangProgHOL.move 2 [(6729, 6657)]) := by
  unfold input590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output590_def : output590 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output590_skip : Flapjack.WordAlloc.isSkip output590 = true := by
  rw [output590_def]
  conv => lhs; cbv
  try rfl
theorem node590_eq : Flapjack.WordAlloc.removeDeadStructural input590 value109 value1 value2 = (output590, value109, value1) := by
  rw [input590_def, output590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6725, 6665)])).val
theorem input591_def : input591 = (Flapjack.WordLangProgHOL.move 2 [(6725, 6665)]) := by
  unfold input591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output591_def : output591 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output591_skip : Flapjack.WordAlloc.isSkip output591 = true := by
  rw [output591_def]
  conv => lhs; cbv
  try rfl
theorem node591_eq : Flapjack.WordAlloc.removeDeadStructural input591 value109 value1 value2 = (output591, value109, value1) := by
  rw [input591_def, output591_def]
  try (conv => lhs; cbv)
  try rfl

def value115 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6721, 6661)])).val
theorem input592_def : input592 = (Flapjack.WordLangProgHOL.move 2 [(6721, 6661)]) := by
  unfold input592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6721, 6661)])).val
theorem output592_def : output592 = (Flapjack.WordLangProgHOL.move 2 [(6721, 6661)]) := by
  unfold output592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output592_skip : Flapjack.WordAlloc.isSkip output592 = false := by
  rw [output592_def]
  conv => lhs; cbv
  try rfl
theorem node592_eq : Flapjack.WordAlloc.removeDeadStructural input592 value109 value1 value2 = (output592, value115, value1) := by
  rw [input592_def, output592_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input593_def : input593 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output593_def : output593 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output593_skip : Flapjack.WordAlloc.isSkip output593 = true := by
  rw [output593_def]
  conv => lhs; cbv
  try rfl
theorem node593_eq : Flapjack.WordAlloc.removeDeadStructural input593 value115 value1 value2 = (output593, value115, value1) := by
  rw [input593_def, output593_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input593 input592)).val
theorem input594_def : input594 = (.seq input593 input592) := by
  unfold input594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output592)).val
theorem output594_def : output594 = (output592) := by
  unfold output594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output594_skip : Flapjack.WordAlloc.isSkip output594 = false := by
  rw [output594_def]
  conv => lhs; cbv
  try rfl
theorem node594_eq : Flapjack.WordAlloc.removeDeadStructural input594 value109 value1 value2 = (output594, value115, value1) := by
  rw [input594_def, output594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node592_eq]
  try dsimp only
  rw [node593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input594 input591)).val
theorem input595_def : input595 = (.seq input594 input591) := by
  unfold input595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output594)).val
theorem output595_def : output595 = (output594) := by
  unfold output595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output595_skip : Flapjack.WordAlloc.isSkip output595 = false := by
  rw [output595_def]
  conv => lhs; cbv
  try rfl
theorem node595_eq : Flapjack.WordAlloc.removeDeadStructural input595 value109 value1 value2 = (output595, value115, value1) := by
  rw [input595_def, output595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node591_eq]
  try dsimp only
  rw [node594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input595 input590)).val
theorem input596_def : input596 = (.seq input595 input590) := by
  unfold input596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output595)).val
theorem output596_def : output596 = (output595) := by
  unfold output596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output596_skip : Flapjack.WordAlloc.isSkip output596 = false := by
  rw [output596_def]
  conv => lhs; cbv
  try rfl
theorem node596_eq : Flapjack.WordAlloc.removeDeadStructural input596 value109 value1 value2 = (output596, value115, value1) := by
  rw [input596_def, output596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  try dsimp only
  rw [node595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input596 input589)).val
theorem input597_def : input597 = (.seq input596 input589) := by
  unfold input597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output596)).val
theorem output597_def : output597 = (output596) := by
  unfold output597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output597_skip : Flapjack.WordAlloc.isSkip output597 = false := by
  rw [output597_def]
  conv => lhs; cbv
  try rfl
theorem node597_eq : Flapjack.WordAlloc.removeDeadStructural input597 value109 value1 value2 = (output597, value115, value1) := by
  rw [input597_def, output597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node589_eq]
  try dsimp only
  rw [node596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value116 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6717, 6633), (6713, 6661), (6709, 6625)])).val
theorem input598_def : input598 = (Flapjack.WordLangProgHOL.move 2 [(6717, 6633), (6713, 6661), (6709, 6625)]) := by
  unfold input598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6717, 6633)])).val
theorem output598_def : output598 = (Flapjack.WordLangProgHOL.move 2 [(6717, 6633)]) := by
  unfold output598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output598_skip : Flapjack.WordAlloc.isSkip output598 = false := by
  rw [output598_def]
  conv => lhs; cbv
  try rfl
theorem node598_eq : Flapjack.WordAlloc.removeDeadStructural input598 value115 value1 value2 = (output598, value116, value1) := by
  rw [input598_def, output598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input598 input597)).val
theorem input599_def : input599 = (.seq input598 input597) := by
  unfold input599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output598 output597)).val
theorem output599_def : output599 = (.seq output598 output597) := by
  unfold output599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output599_skip : Flapjack.WordAlloc.isSkip output599 = false := by
  rw [output599_def]
  conv => lhs; cbv
  try rfl
theorem node599_eq : Flapjack.WordAlloc.removeDeadStructural input599 value109 value1 value2 = (output599, value116, value1) := by
  rw [input599_def, output599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node597_eq]
  try dsimp only
  rw [node598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input600_def : input600 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node600_eq : Flapjack.WordAlloc.removeDeadStructural input600 value116 value1 value2 = (output600, value116, value1) := by
  rw [input600_def, output600_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input600 input599)).val
theorem input601_def : input601 = (.seq input600 input599) := by
  unfold input601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output599)).val
theorem output601_def : output601 = (output599) := by
  unfold output601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output601_skip : Flapjack.WordAlloc.isSkip output601 = false := by
  rw [output601_def]
  conv => lhs; cbv
  try rfl
theorem node601_eq : Flapjack.WordAlloc.removeDeadStructural input601 value109 value1 value2 = (output601, value116, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node599_eq]
  try dsimp only
  rw [node600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value117 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6665

def value118 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6661 value117 input588 input601)).val
theorem input602_def : input602 = (.ite value15 6661 value117 input588 input601) := by
  unfold input602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6661 value117 output588 output601)).val
theorem output602_def : output602 = (.ite value15 6661 value117 output588 output601) := by
  unfold output602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output602_skip : Flapjack.WordAlloc.isSkip output602 = false := by
  rw [output602_def]
  conv => lhs; cbv
  try rfl
theorem node602_eq : Flapjack.WordAlloc.removeDeadStructural input602 value109 value1 value2 = (output602, value118, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node588_eq]
  try dsimp only
  rw [node601_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input602 input557)).val
theorem input603_def : input603 = (.seq input602 input557) := by
  unfold input603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output602 output557)).val
theorem output603_def : output603 = (.seq output602 output557) := by
  unfold output603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output603_skip : Flapjack.WordAlloc.isSkip output603 = false := by
  rw [output603_def]
  conv => lhs; cbv
  try rfl
theorem node603_eq : Flapjack.WordAlloc.removeDeadStructural input603 value109 value1 value2 = (output603, value118, value1) := by
  rw [input603_def, output603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node557_eq]
  try dsimp only
  rw [node602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6665 231#64))).val
theorem input604_def : input604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6665 231#64)) := by
  unfold input604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6665 231#64))).val
theorem output604_def : output604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6665 231#64)) := by
  unfold output604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output604_skip : Flapjack.WordAlloc.isSkip output604 = false := by
  rw [output604_def]
  conv => lhs; cbv
  try rfl
theorem node604_eq : Flapjack.WordAlloc.removeDeadStructural input604 value118 value1 value2 = (output604, value116, value1) := by
  rw [input604_def, output604_def]
  try (conv => lhs; cbv)
  try rfl

def value119 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6661, 6637)])).val
theorem input605_def : input605 = (Flapjack.WordLangProgHOL.move 0 [(6661, 6637)]) := by
  unfold input605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6661, 6637)])).val
theorem output605_def : output605 = (Flapjack.WordLangProgHOL.move 0 [(6661, 6637)]) := by
  unfold output605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output605_skip : Flapjack.WordAlloc.isSkip output605 = false := by
  rw [output605_def]
  conv => lhs; cbv
  try rfl
theorem node605_eq : Flapjack.WordAlloc.removeDeadStructural input605 value116 value1 value2 = (output605, value119, value1) := by
  rw [input605_def, output605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input606_def : input606 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output606_def : output606 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output606_skip : Flapjack.WordAlloc.isSkip output606 = false := by
  rw [output606_def]
  conv => lhs; cbv
  try rfl
theorem node606_eq : Flapjack.WordAlloc.removeDeadStructural input606 value119 value1 value2 = (output606, value119, value1) := by
  rw [input606_def, output606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6657 0#64))).val
theorem input607_def : input607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6657 0#64)) := by
  unfold input607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output607_def : output607 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output607_skip : Flapjack.WordAlloc.isSkip output607 = true := by
  rw [output607_def]
  conv => lhs; cbv
  try rfl
theorem node607_eq : Flapjack.WordAlloc.removeDeadStructural input607 value119 value1 value2 = (output607, value119, value1) := by
  rw [input607_def, output607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input608_def : input608 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output608_def : output608 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output608_skip : Flapjack.WordAlloc.isSkip output608 = false := by
  rw [output608_def]
  conv => lhs; cbv
  try rfl
theorem node608_eq : Flapjack.WordAlloc.removeDeadStructural input608 value119 value1 value2 = (output608, value119, value1) := by
  rw [input608_def, output608_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6653 0#64))).val
theorem input609_def : input609 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6653 0#64)) := by
  unfold input609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output609_def : output609 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output609_skip : Flapjack.WordAlloc.isSkip output609 = true := by
  rw [output609_def]
  conv => lhs; cbv
  try rfl
theorem node609_eq : Flapjack.WordAlloc.removeDeadStructural input609 value119 value1 value2 = (output609, value119, value1) := by
  rw [input609_def, output609_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input609 input608)).val
theorem input610_def : input610 = (.seq input609 input608) := by
  unfold input610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output608)).val
theorem output610_def : output610 = (output608) := by
  unfold output610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output610_skip : Flapjack.WordAlloc.isSkip output610 = false := by
  rw [output610_def]
  conv => lhs; cbv
  try rfl
theorem node610_eq : Flapjack.WordAlloc.removeDeadStructural input610 value119 value1 value2 = (output610, value119, value1) := by
  rw [input610_def, output610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  try dsimp only
  rw [node609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input610 input607)).val
theorem input611_def : input611 = (.seq input610 input607) := by
  unfold input611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output610)).val
theorem output611_def : output611 = (output610) := by
  unfold output611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output611_skip : Flapjack.WordAlloc.isSkip output611 = false := by
  rw [output611_def]
  conv => lhs; cbv
  try rfl
theorem node611_eq : Flapjack.WordAlloc.removeDeadStructural input611 value119 value1 value2 = (output611, value119, value1) := by
  rw [input611_def, output611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node607_eq]
  try dsimp only
  rw [node610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6649 0#64))).val
theorem input612_def : input612 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6649 0#64)) := by
  unfold input612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output612_def : output612 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output612_skip : Flapjack.WordAlloc.isSkip output612 = true := by
  rw [output612_def]
  conv => lhs; cbv
  try rfl
theorem node612_eq : Flapjack.WordAlloc.removeDeadStructural input612 value119 value1 value2 = (output612, value119, value1) := by
  rw [input612_def, output612_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6645 0#64))).val
theorem input613_def : input613 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6645 0#64)) := by
  unfold input613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output613_def : output613 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output613_skip : Flapjack.WordAlloc.isSkip output613 = true := by
  rw [output613_def]
  conv => lhs; cbv
  try rfl
theorem node613_eq : Flapjack.WordAlloc.removeDeadStructural input613 value119 value1 value2 = (output613, value119, value1) := by
  rw [input613_def, output613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6641 0#64))).val
theorem input614_def : input614 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6641 0#64)) := by
  unfold input614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output614_def : output614 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output614_skip : Flapjack.WordAlloc.isSkip output614 = true := by
  rw [output614_def]
  conv => lhs; cbv
  try rfl
theorem node614_eq : Flapjack.WordAlloc.removeDeadStructural input614 value119 value1 value2 = (output614, value119, value1) := by
  rw [input614_def, output614_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6637 0#64))).val
theorem input615_def : input615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6637 0#64)) := by
  unfold input615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6637 0#64))).val
theorem output615_def : output615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6637 0#64)) := by
  unfold output615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output615_skip : Flapjack.WordAlloc.isSkip output615 = false := by
  rw [output615_def]
  conv => lhs; cbv
  try rfl
theorem node615_eq : Flapjack.WordAlloc.removeDeadStructural input615 value119 value1 value2 = (output615, value114, value1) := by
  rw [input615_def, output615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input616_def : input616 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node616_eq : Flapjack.WordAlloc.removeDeadStructural input616 value114 value1 value2 = (output616, value114, value1) := by
  rw [input616_def, output616_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input616 input615)).val
theorem input617_def : input617 = (.seq input616 input615) := by
  unfold input617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output615)).val
theorem output617_def : output617 = (output615) := by
  unfold output617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output617_skip : Flapjack.WordAlloc.isSkip output617 = false := by
  rw [output617_def]
  conv => lhs; cbv
  try rfl
theorem node617_eq : Flapjack.WordAlloc.removeDeadStructural input617 value119 value1 value2 = (output617, value114, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node615_eq]
  try dsimp only
  rw [node616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input617 input614)).val
theorem input618_def : input618 = (.seq input617 input614) := by
  unfold input618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output617)).val
theorem output618_def : output618 = (output617) := by
  unfold output618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output618_skip : Flapjack.WordAlloc.isSkip output618 = false := by
  rw [output618_def]
  conv => lhs; cbv
  try rfl
theorem node618_eq : Flapjack.WordAlloc.removeDeadStructural input618 value119 value1 value2 = (output618, value114, value1) := by
  rw [input618_def, output618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node614_eq]
  try dsimp only
  rw [node617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input618 input613)).val
theorem input619_def : input619 = (.seq input618 input613) := by
  unfold input619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output618)).val
theorem output619_def : output619 = (output618) := by
  unfold output619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output619_skip : Flapjack.WordAlloc.isSkip output619 = false := by
  rw [output619_def]
  conv => lhs; cbv
  try rfl
theorem node619_eq : Flapjack.WordAlloc.removeDeadStructural input619 value119 value1 value2 = (output619, value114, value1) := by
  rw [input619_def, output619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node613_eq]
  try dsimp only
  rw [node618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input619 input612)).val
theorem input620_def : input620 = (.seq input619 input612) := by
  unfold input620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output619)).val
theorem output620_def : output620 = (output619) := by
  unfold output620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output620_skip : Flapjack.WordAlloc.isSkip output620 = false := by
  rw [output620_def]
  conv => lhs; cbv
  try rfl
theorem node620_eq : Flapjack.WordAlloc.removeDeadStructural input620 value119 value1 value2 = (output620, value114, value1) := by
  rw [input620_def, output620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node612_eq]
  try dsimp only
  rw [node619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value120 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6633, 6601), (6629, 6617), (6625, 6621)])).val
theorem input621_def : input621 = (Flapjack.WordLangProgHOL.move 1 [(6633, 6601), (6629, 6617), (6625, 6621)]) := by
  unfold input621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6633, 6601)])).val
theorem output621_def : output621 = (Flapjack.WordLangProgHOL.move 1 [(6633, 6601)]) := by
  unfold output621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output621_skip : Flapjack.WordAlloc.isSkip output621 = false := by
  rw [output621_def]
  conv => lhs; cbv
  try rfl
theorem node621_eq : Flapjack.WordAlloc.removeDeadStructural input621 value114 value1 value2 = (output621, value120, value1) := by
  rw [input621_def, output621_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input621 input620)).val
theorem input622_def : input622 = (.seq input621 input620) := by
  unfold input622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output621 output620)).val
theorem output622_def : output622 = (.seq output621 output620) := by
  unfold output622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output622_skip : Flapjack.WordAlloc.isSkip output622 = false := by
  rw [output622_def]
  conv => lhs; cbv
  try rfl
theorem node622_eq : Flapjack.WordAlloc.removeDeadStructural input622 value119 value1 value2 = (output622, value120, value1) := by
  rw [input622_def, output622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node620_eq]
  try dsimp only
  rw [node621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value121 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6601 [2])).val
theorem input623_def : input623 = (Flapjack.WordLangProgHOL.return 6601 [2]) := by
  unfold input623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6601 [2])).val
theorem output623_def : output623 = (Flapjack.WordLangProgHOL.return 6601 [2]) := by
  unfold output623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output623_skip : Flapjack.WordAlloc.isSkip output623 = false := by
  rw [output623_def]
  conv => lhs; cbv
  try rfl
theorem node623_eq : Flapjack.WordAlloc.removeDeadStructural input623 value120 value1 value2 = (output623, value121, value1) := by
  rw [input623_def, output623_def]
  try (conv => lhs; cbv)
  try rfl

def value122 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6621)])).val
theorem input624_def : input624 = (Flapjack.WordLangProgHOL.move 0 [(2, 6621)]) := by
  unfold input624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6621)])).val
theorem output624_def : output624 = (Flapjack.WordLangProgHOL.move 0 [(2, 6621)]) := by
  unfold output624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output624_skip : Flapjack.WordAlloc.isSkip output624 = false := by
  rw [output624_def]
  conv => lhs; cbv
  try rfl
theorem node624_eq : Flapjack.WordAlloc.removeDeadStructural input624 value121 value1 value2 = (output624, value122, value1) := by
  rw [input624_def, output624_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input624 input623)).val
theorem input625_def : input625 = (.seq input624 input623) := by
  unfold input625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output624 output623)).val
theorem output625_def : output625 = (.seq output624 output623) := by
  unfold output625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output625_skip : Flapjack.WordAlloc.isSkip output625 = false := by
  rw [output625_def]
  conv => lhs; cbv
  try rfl
theorem node625_eq : Flapjack.WordAlloc.removeDeadStructural input625 value120 value1 value2 = (output625, value122, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node623_eq]
  try dsimp only
  rw [node624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6621 0#64))).val
theorem input626_def : input626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6621 0#64)) := by
  unfold input626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6621 0#64))).val
theorem output626_def : output626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6621 0#64)) := by
  unfold output626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output626_skip : Flapjack.WordAlloc.isSkip output626 = false := by
  rw [output626_def]
  conv => lhs; cbv
  try rfl
theorem node626_eq : Flapjack.WordAlloc.removeDeadStructural input626 value122 value1 value2 = (output626, value120, value1) := by
  rw [input626_def, output626_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input627_def : input627 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output627_def : output627 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output627_skip : Flapjack.WordAlloc.isSkip output627 = false := by
  rw [output627_def]
  conv => lhs; cbv
  try rfl
theorem node627_eq : Flapjack.WordAlloc.removeDeadStructural input627 value120 value1 value2 = (output627, value120, value1) := by
  rw [input627_def, output627_def]
  try (conv => lhs; cbv)
  try rfl

def value123 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6605, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6613, 6605)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6617 0#64)))),
      597, 154))
  (some 544) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6609, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6609)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6613 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6617, 6609)]))),
      597, 155)))).val
theorem input628_def : input628 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6605, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6613, 6605)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6617 0#64)))),
      597, 154))
  (some 544) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6609, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6609)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6613 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6617, 6609)]))),
      597, 155))) := by
  unfold input628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6601, 6595)], 597, 154))
  (some 544) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6609, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6609)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 155)))).val
theorem output628_def : output628 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6601, 6595)], 597, 154))
  (some 544) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6601, 6595)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6609, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6609)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 155))) := by
  unfold output628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output628_skip : Flapjack.WordAlloc.isSkip output628 = false := by
  rw [output628_def]
  conv => lhs; cbv
  try rfl
theorem node628_eq : Flapjack.WordAlloc.removeDeadStructural input628 value120 value1 value2 = (output628, value123, value1) := by
  rw [input628_def, output628_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input629_def : input629 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output629_def : output629 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output629_skip : Flapjack.WordAlloc.isSkip output629 = true := by
  rw [output629_def]
  conv => lhs; cbv
  try rfl
theorem node629_eq : Flapjack.WordAlloc.removeDeadStructural input629 value123 value1 value2 = (output629, value123, value1) := by
  rw [input629_def, output629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input629 input628)).val
theorem input630_def : input630 = (.seq input629 input628) := by
  unfold input630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output628)).val
theorem output630_def : output630 = (output628) := by
  unfold output630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output630_skip : Flapjack.WordAlloc.isSkip output630 = false := by
  rw [output630_def]
  conv => lhs; cbv
  try rfl
theorem node630_eq : Flapjack.WordAlloc.removeDeadStructural input630 value120 value1 value2 = (output630, value123, value1) := by
  rw [input630_def, output630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node628_eq]
  try dsimp only
  rw [node629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value124 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6595, 6549)])).val
theorem input631_def : input631 = (Flapjack.WordLangProgHOL.move 0 [(6595, 6549)]) := by
  unfold input631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6595, 6549)])).val
theorem output631_def : output631 = (Flapjack.WordLangProgHOL.move 0 [(6595, 6549)]) := by
  unfold output631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output631_skip : Flapjack.WordAlloc.isSkip output631 = false := by
  rw [output631_def]
  conv => lhs; cbv
  try rfl
theorem node631_eq : Flapjack.WordAlloc.removeDeadStructural input631 value123 value1 value2 = (output631, value124, value1) := by
  rw [input631_def, output631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input631 input630)).val
theorem input632_def : input632 = (.seq input631 input630) := by
  unfold input632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output631 output630)).val
theorem output632_def : output632 = (.seq output631 output630) := by
  unfold output632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output632_skip : Flapjack.WordAlloc.isSkip output632 = false := by
  rw [output632_def]
  conv => lhs; cbv
  try rfl
theorem node632_eq : Flapjack.WordAlloc.removeDeadStructural input632 value120 value1 value2 = (output632, value124, value1) := by
  rw [input632_def, output632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node630_eq]
  try dsimp only
  rw [node631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6589 1#64))).val
theorem input633_def : input633 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6589 1#64)) := by
  unfold input633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output633_def : output633 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output633_skip : Flapjack.WordAlloc.isSkip output633 = true := by
  rw [output633_def]
  conv => lhs; cbv
  try rfl
theorem node633_eq : Flapjack.WordAlloc.removeDeadStructural input633 value124 value1 value2 = (output633, value124, value1) := by
  rw [input633_def, output633_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input634_def : input634 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output634_def : output634 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output634_skip : Flapjack.WordAlloc.isSkip output634 = false := by
  rw [output634_def]
  conv => lhs; cbv
  try rfl
theorem node634_eq : Flapjack.WordAlloc.removeDeadStructural input634 value124 value1 value2 = (output634, value124, value1) := by
  rw [input634_def, output634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6585 1#64))).val
theorem input635_def : input635 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6585 1#64)) := by
  unfold input635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output635_def : output635 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output635_skip : Flapjack.WordAlloc.isSkip output635 = true := by
  rw [output635_def]
  conv => lhs; cbv
  try rfl
theorem node635_eq : Flapjack.WordAlloc.removeDeadStructural input635 value124 value1 value2 = (output635, value124, value1) := by
  rw [input635_def, output635_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input635 input634)).val
theorem input636_def : input636 = (.seq input635 input634) := by
  unfold input636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output634)).val
theorem output636_def : output636 = (output634) := by
  unfold output636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output636_skip : Flapjack.WordAlloc.isSkip output636 = false := by
  rw [output636_def]
  conv => lhs; cbv
  try rfl
theorem node636_eq : Flapjack.WordAlloc.removeDeadStructural input636 value124 value1 value2 = (output636, value124, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node634_eq]
  try dsimp only
  rw [node635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input636 input633)).val
theorem input637_def : input637 = (.seq input636 input633) := by
  unfold input637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output636)).val
theorem output637_def : output637 = (output636) := by
  unfold output637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output637_skip : Flapjack.WordAlloc.isSkip output637 = false := by
  rw [output637_def]
  conv => lhs; cbv
  try rfl
theorem node637_eq : Flapjack.WordAlloc.removeDeadStructural input637 value124 value1 value2 = (output637, value124, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node633_eq]
  try dsimp only
  rw [node636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input637 input632)).val
theorem input638_def : input638 = (.seq input637 input632) := by
  unfold input638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output637 output632)).val
theorem output638_def : output638 = (.seq output637 output632) := by
  unfold output638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output638_skip : Flapjack.WordAlloc.isSkip output638 = false := by
  rw [output638_def]
  conv => lhs; cbv
  try rfl
theorem node638_eq : Flapjack.WordAlloc.removeDeadStructural input638 value120 value1 value2 = (output638, value124, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node632_eq]
  try dsimp only
  rw [node637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input638 input627)).val
theorem input639_def : input639 = (.seq input638 input627) := by
  unfold input639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output638 output627)).val
theorem output639_def : output639 = (.seq output638 output627) := by
  unfold output639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output639_skip : Flapjack.WordAlloc.isSkip output639 = false := by
  rw [output639_def]
  conv => lhs; cbv
  try rfl
theorem node639_eq : Flapjack.WordAlloc.removeDeadStructural input639 value120 value1 value2 = (output639, value124, value1) := by
  rw [input639_def, output639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node627_eq]
  try dsimp only
  rw [node638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input639 input626)).val
theorem input640_def : input640 = (.seq input639 input626) := by
  unfold input640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output639 output626)).val
theorem output640_def : output640 = (.seq output639 output626) := by
  unfold output640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output640_skip : Flapjack.WordAlloc.isSkip output640 = false := by
  rw [output640_def]
  conv => lhs; cbv
  try rfl
theorem node640_eq : Flapjack.WordAlloc.removeDeadStructural input640 value122 value1 value2 = (output640, value124, value1) := by
  rw [input640_def, output640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node626_eq]
  try dsimp only
  rw [node639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input640 input625)).val
theorem input641_def : input641 = (.seq input640 input625) := by
  unfold input641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output640 output625)).val
theorem output641_def : output641 = (.seq output640 output625) := by
  unfold output641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output641_skip : Flapjack.WordAlloc.isSkip output641 = false := by
  rw [output641_def]
  conv => lhs; cbv
  try rfl
theorem node641_eq : Flapjack.WordAlloc.removeDeadStructural input641 value120 value1 value2 = (output641, value124, value1) := by
  rw [input641_def, output641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node625_eq]
  try dsimp only
  rw [node640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input641 input622)).val
theorem input642_def : input642 = (.seq input641 input622) := by
  unfold input642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output641 output622)).val
theorem output642_def : output642 = (.seq output641 output622) := by
  unfold output642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output642_skip : Flapjack.WordAlloc.isSkip output642 = false := by
  rw [output642_def]
  conv => lhs; cbv
  try rfl
theorem node642_eq : Flapjack.WordAlloc.removeDeadStructural input642 value119 value1 value2 = (output642, value124, value1) := by
  rw [input642_def, output642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node622_eq]
  try dsimp only
  rw [node641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6649, 6565)])).val
theorem input643_def : input643 = (Flapjack.WordLangProgHOL.move 2 [(6649, 6565)]) := by
  unfold input643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output643_def : output643 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output643_skip : Flapjack.WordAlloc.isSkip output643 = true := by
  rw [output643_def]
  conv => lhs; cbv
  try rfl
theorem node643_eq : Flapjack.WordAlloc.removeDeadStructural input643 value119 value1 value2 = (output643, value119, value1) := by
  rw [input643_def, output643_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6645, 6573)])).val
theorem input644_def : input644 = (Flapjack.WordLangProgHOL.move 2 [(6645, 6573)]) := by
  unfold input644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output644_def : output644 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output644_skip : Flapjack.WordAlloc.isSkip output644 = true := by
  rw [output644_def]
  conv => lhs; cbv
  try rfl
theorem node644_eq : Flapjack.WordAlloc.removeDeadStructural input644 value119 value1 value2 = (output644, value119, value1) := by
  rw [input644_def, output644_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6641, 6581)])).val
theorem input645_def : input645 = (Flapjack.WordLangProgHOL.move 2 [(6641, 6581)]) := by
  unfold input645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output645_def : output645 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output645_skip : Flapjack.WordAlloc.isSkip output645 = true := by
  rw [output645_def]
  conv => lhs; cbv
  try rfl
theorem node645_eq : Flapjack.WordAlloc.removeDeadStructural input645 value119 value1 value2 = (output645, value119, value1) := by
  rw [input645_def, output645_def]
  try (conv => lhs; cbv)
  try rfl

def value125 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6637, 6577)])).val
theorem input646_def : input646 = (Flapjack.WordLangProgHOL.move 2 [(6637, 6577)]) := by
  unfold input646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6637, 6577)])).val
theorem output646_def : output646 = (Flapjack.WordLangProgHOL.move 2 [(6637, 6577)]) := by
  unfold output646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output646_skip : Flapjack.WordAlloc.isSkip output646 = false := by
  rw [output646_def]
  conv => lhs; cbv
  try rfl
theorem node646_eq : Flapjack.WordAlloc.removeDeadStructural input646 value119 value1 value2 = (output646, value125, value1) := by
  rw [input646_def, output646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input647_def : input647 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output647_def : output647 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output647_skip : Flapjack.WordAlloc.isSkip output647 = true := by
  rw [output647_def]
  conv => lhs; cbv
  try rfl
theorem node647_eq : Flapjack.WordAlloc.removeDeadStructural input647 value125 value1 value2 = (output647, value125, value1) := by
  rw [input647_def, output647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input647 input646)).val
theorem input648_def : input648 = (.seq input647 input646) := by
  unfold input648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output646)).val
theorem output648_def : output648 = (output646) := by
  unfold output648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output648_skip : Flapjack.WordAlloc.isSkip output648 = false := by
  rw [output648_def]
  conv => lhs; cbv
  try rfl
theorem node648_eq : Flapjack.WordAlloc.removeDeadStructural input648 value119 value1 value2 = (output648, value125, value1) := by
  rw [input648_def, output648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node646_eq]
  try dsimp only
  rw [node647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input648 input645)).val
theorem input649_def : input649 = (.seq input648 input645) := by
  unfold input649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output648)).val
theorem output649_def : output649 = (output648) := by
  unfold output649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output649_skip : Flapjack.WordAlloc.isSkip output649 = false := by
  rw [output649_def]
  conv => lhs; cbv
  try rfl
theorem node649_eq : Flapjack.WordAlloc.removeDeadStructural input649 value119 value1 value2 = (output649, value125, value1) := by
  rw [input649_def, output649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node645_eq]
  try dsimp only
  rw [node648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input649 input644)).val
theorem input650_def : input650 = (.seq input649 input644) := by
  unfold input650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output649)).val
theorem output650_def : output650 = (output649) := by
  unfold output650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output650_skip : Flapjack.WordAlloc.isSkip output650 = false := by
  rw [output650_def]
  conv => lhs; cbv
  try rfl
theorem node650_eq : Flapjack.WordAlloc.removeDeadStructural input650 value119 value1 value2 = (output650, value125, value1) := by
  rw [input650_def, output650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node644_eq]
  try dsimp only
  rw [node649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input650 input643)).val
theorem input651_def : input651 = (.seq input650 input643) := by
  unfold input651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output650)).val
theorem output651_def : output651 = (output650) := by
  unfold output651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output651_skip : Flapjack.WordAlloc.isSkip output651 = false := by
  rw [output651_def]
  conv => lhs; cbv
  try rfl
theorem node651_eq : Flapjack.WordAlloc.removeDeadStructural input651 value119 value1 value2 = (output651, value125, value1) := by
  rw [input651_def, output651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node643_eq]
  try dsimp only
  rw [node650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6633, 6549), (6629, 6577), (6625, 6541)])).val
theorem input652_def : input652 = (Flapjack.WordLangProgHOL.move 2 [(6633, 6549), (6629, 6577), (6625, 6541)]) := by
  unfold input652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6633, 6549)])).val
theorem output652_def : output652 = (Flapjack.WordLangProgHOL.move 2 [(6633, 6549)]) := by
  unfold output652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output652_skip : Flapjack.WordAlloc.isSkip output652 = false := by
  rw [output652_def]
  conv => lhs; cbv
  try rfl
theorem node652_eq : Flapjack.WordAlloc.removeDeadStructural input652 value125 value1 value2 = (output652, value126, value1) := by
  rw [input652_def, output652_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input652 input651)).val
theorem input653_def : input653 = (.seq input652 input651) := by
  unfold input653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output652 output651)).val
theorem output653_def : output653 = (.seq output652 output651) := by
  unfold output653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output653_skip : Flapjack.WordAlloc.isSkip output653 = false := by
  rw [output653_def]
  conv => lhs; cbv
  try rfl
theorem node653_eq : Flapjack.WordAlloc.removeDeadStructural input653 value119 value1 value2 = (output653, value126, value1) := by
  rw [input653_def, output653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node651_eq]
  try dsimp only
  rw [node652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input654_def : input654 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output654_def : output654 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output654_skip : Flapjack.WordAlloc.isSkip output654 = true := by
  rw [output654_def]
  conv => lhs; cbv
  try rfl
theorem node654_eq : Flapjack.WordAlloc.removeDeadStructural input654 value126 value1 value2 = (output654, value126, value1) := by
  rw [input654_def, output654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input654 input653)).val
theorem input655_def : input655 = (.seq input654 input653) := by
  unfold input655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output653)).val
theorem output655_def : output655 = (output653) := by
  unfold output655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output655_skip : Flapjack.WordAlloc.isSkip output655 = false := by
  rw [output655_def]
  conv => lhs; cbv
  try rfl
theorem node655_eq : Flapjack.WordAlloc.removeDeadStructural input655 value119 value1 value2 = (output655, value126, value1) := by
  rw [input655_def, output655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node653_eq]
  try dsimp only
  rw [node654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value127 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6581

def value128 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6577 value127 input642 input655)).val
theorem input656_def : input656 = (.ite value15 6577 value127 input642 input655) := by
  unfold input656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6577 value127 output642 output655)).val
theorem output656_def : output656 = (.ite value15 6577 value127 output642 output655) := by
  unfold output656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output656_skip : Flapjack.WordAlloc.isSkip output656 = false := by
  rw [output656_def]
  conv => lhs; cbv
  try rfl
theorem node656_eq : Flapjack.WordAlloc.removeDeadStructural input656 value119 value1 value2 = (output656, value128, value1) := by
  rw [input656_def, output656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node642_eq]
  try dsimp only
  rw [node655_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input656 input611)).val
theorem input657_def : input657 = (.seq input656 input611) := by
  unfold input657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output656 output611)).val
theorem output657_def : output657 = (.seq output656 output611) := by
  unfold output657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output657_skip : Flapjack.WordAlloc.isSkip output657 = false := by
  rw [output657_def]
  conv => lhs; cbv
  try rfl
theorem node657_eq : Flapjack.WordAlloc.removeDeadStructural input657 value119 value1 value2 = (output657, value128, value1) := by
  rw [input657_def, output657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node611_eq]
  try dsimp only
  rw [node656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6581 230#64))).val
theorem input658_def : input658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6581 230#64)) := by
  unfold input658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6581 230#64))).val
theorem output658_def : output658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6581 230#64)) := by
  unfold output658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output658_skip : Flapjack.WordAlloc.isSkip output658 = false := by
  rw [output658_def]
  conv => lhs; cbv
  try rfl
theorem node658_eq : Flapjack.WordAlloc.removeDeadStructural input658 value128 value1 value2 = (output658, value126, value1) := by
  rw [input658_def, output658_def]
  try (conv => lhs; cbv)
  try rfl

def value129 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6577, 6553)])).val
theorem input659_def : input659 = (Flapjack.WordLangProgHOL.move 0 [(6577, 6553)]) := by
  unfold input659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6577, 6553)])).val
theorem output659_def : output659 = (Flapjack.WordLangProgHOL.move 0 [(6577, 6553)]) := by
  unfold output659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output659_skip : Flapjack.WordAlloc.isSkip output659 = false := by
  rw [output659_def]
  conv => lhs; cbv
  try rfl
theorem node659_eq : Flapjack.WordAlloc.removeDeadStructural input659 value126 value1 value2 = (output659, value129, value1) := by
  rw [input659_def, output659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input660_def : input660 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output660_def : output660 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output660_skip : Flapjack.WordAlloc.isSkip output660 = false := by
  rw [output660_def]
  conv => lhs; cbv
  try rfl
theorem node660_eq : Flapjack.WordAlloc.removeDeadStructural input660 value129 value1 value2 = (output660, value129, value1) := by
  rw [input660_def, output660_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6573 0#64))).val
theorem input661_def : input661 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6573 0#64)) := by
  unfold input661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output661_def : output661 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output661_skip : Flapjack.WordAlloc.isSkip output661 = true := by
  rw [output661_def]
  conv => lhs; cbv
  try rfl
theorem node661_eq : Flapjack.WordAlloc.removeDeadStructural input661 value129 value1 value2 = (output661, value129, value1) := by
  rw [input661_def, output661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input662_def : input662 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output662_def : output662 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output662_skip : Flapjack.WordAlloc.isSkip output662 = false := by
  rw [output662_def]
  conv => lhs; cbv
  try rfl
theorem node662_eq : Flapjack.WordAlloc.removeDeadStructural input662 value129 value1 value2 = (output662, value129, value1) := by
  rw [input662_def, output662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6569 0#64))).val
theorem input663_def : input663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6569 0#64)) := by
  unfold input663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output663_def : output663 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output663_skip : Flapjack.WordAlloc.isSkip output663 = true := by
  rw [output663_def]
  conv => lhs; cbv
  try rfl
theorem node663_eq : Flapjack.WordAlloc.removeDeadStructural input663 value129 value1 value2 = (output663, value129, value1) := by
  rw [input663_def, output663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input663 input662)).val
theorem input664_def : input664 = (.seq input663 input662) := by
  unfold input664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output662)).val
theorem output664_def : output664 = (output662) := by
  unfold output664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output664_skip : Flapjack.WordAlloc.isSkip output664 = false := by
  rw [output664_def]
  conv => lhs; cbv
  try rfl
theorem node664_eq : Flapjack.WordAlloc.removeDeadStructural input664 value129 value1 value2 = (output664, value129, value1) := by
  rw [input664_def, output664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node662_eq]
  try dsimp only
  rw [node663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input664 input661)).val
theorem input665_def : input665 = (.seq input664 input661) := by
  unfold input665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output664)).val
theorem output665_def : output665 = (output664) := by
  unfold output665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output665_skip : Flapjack.WordAlloc.isSkip output665 = false := by
  rw [output665_def]
  conv => lhs; cbv
  try rfl
theorem node665_eq : Flapjack.WordAlloc.removeDeadStructural input665 value129 value1 value2 = (output665, value129, value1) := by
  rw [input665_def, output665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node661_eq]
  try dsimp only
  rw [node664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6565 0#64))).val
theorem input666_def : input666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6565 0#64)) := by
  unfold input666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output666_def : output666 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output666_skip : Flapjack.WordAlloc.isSkip output666 = true := by
  rw [output666_def]
  conv => lhs; cbv
  try rfl
theorem node666_eq : Flapjack.WordAlloc.removeDeadStructural input666 value129 value1 value2 = (output666, value129, value1) := by
  rw [input666_def, output666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6561 0#64))).val
theorem input667_def : input667 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6561 0#64)) := by
  unfold input667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output667_def : output667 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output667_skip : Flapjack.WordAlloc.isSkip output667 = true := by
  rw [output667_def]
  conv => lhs; cbv
  try rfl
theorem node667_eq : Flapjack.WordAlloc.removeDeadStructural input667 value129 value1 value2 = (output667, value129, value1) := by
  rw [input667_def, output667_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6557 0#64))).val
theorem input668_def : input668 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6557 0#64)) := by
  unfold input668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output668_def : output668 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output668_skip : Flapjack.WordAlloc.isSkip output668 = true := by
  rw [output668_def]
  conv => lhs; cbv
  try rfl
theorem node668_eq : Flapjack.WordAlloc.removeDeadStructural input668 value129 value1 value2 = (output668, value129, value1) := by
  rw [input668_def, output668_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6553 0#64))).val
theorem input669_def : input669 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6553 0#64)) := by
  unfold input669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6553 0#64))).val
theorem output669_def : output669 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6553 0#64)) := by
  unfold output669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output669_skip : Flapjack.WordAlloc.isSkip output669 = false := by
  rw [output669_def]
  conv => lhs; cbv
  try rfl
theorem node669_eq : Flapjack.WordAlloc.removeDeadStructural input669 value129 value1 value2 = (output669, value124, value1) := by
  rw [input669_def, output669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input670_def : input670 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output670_def : output670 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output670_skip : Flapjack.WordAlloc.isSkip output670 = true := by
  rw [output670_def]
  conv => lhs; cbv
  try rfl
theorem node670_eq : Flapjack.WordAlloc.removeDeadStructural input670 value124 value1 value2 = (output670, value124, value1) := by
  rw [input670_def, output670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input670 input669)).val
theorem input671_def : input671 = (.seq input670 input669) := by
  unfold input671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output669)).val
theorem output671_def : output671 = (output669) := by
  unfold output671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output671_skip : Flapjack.WordAlloc.isSkip output671 = false := by
  rw [output671_def]
  conv => lhs; cbv
  try rfl
theorem node671_eq : Flapjack.WordAlloc.removeDeadStructural input671 value129 value1 value2 = (output671, value124, value1) := by
  rw [input671_def, output671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  try dsimp only
  rw [node670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input671 input668)).val
theorem input672_def : input672 = (.seq input671 input668) := by
  unfold input672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output671)).val
theorem output672_def : output672 = (output671) := by
  unfold output672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output672_skip : Flapjack.WordAlloc.isSkip output672 = false := by
  rw [output672_def]
  conv => lhs; cbv
  try rfl
theorem node672_eq : Flapjack.WordAlloc.removeDeadStructural input672 value129 value1 value2 = (output672, value124, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node668_eq]
  try dsimp only
  rw [node671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input672 input667)).val
theorem input673_def : input673 = (.seq input672 input667) := by
  unfold input673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output672)).val
theorem output673_def : output673 = (output672) := by
  unfold output673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output673_skip : Flapjack.WordAlloc.isSkip output673 = false := by
  rw [output673_def]
  conv => lhs; cbv
  try rfl
theorem node673_eq : Flapjack.WordAlloc.removeDeadStructural input673 value129 value1 value2 = (output673, value124, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node667_eq]
  try dsimp only
  rw [node672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input673 input666)).val
theorem input674_def : input674 = (.seq input673 input666) := by
  unfold input674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output673)).val
theorem output674_def : output674 = (output673) := by
  unfold output674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output674_skip : Flapjack.WordAlloc.isSkip output674 = false := by
  rw [output674_def]
  conv => lhs; cbv
  try rfl
theorem node674_eq : Flapjack.WordAlloc.removeDeadStructural input674 value129 value1 value2 = (output674, value124, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node666_eq]
  try dsimp only
  rw [node673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value130 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6549, 6517), (6545, 6533), (6541, 6537)])).val
theorem input675_def : input675 = (Flapjack.WordLangProgHOL.move 1 [(6549, 6517), (6545, 6533), (6541, 6537)]) := by
  unfold input675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6549, 6517)])).val
theorem output675_def : output675 = (Flapjack.WordLangProgHOL.move 1 [(6549, 6517)]) := by
  unfold output675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output675_skip : Flapjack.WordAlloc.isSkip output675 = false := by
  rw [output675_def]
  conv => lhs; cbv
  try rfl
theorem node675_eq : Flapjack.WordAlloc.removeDeadStructural input675 value124 value1 value2 = (output675, value130, value1) := by
  rw [input675_def, output675_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input675 input674)).val
theorem input676_def : input676 = (.seq input675 input674) := by
  unfold input676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output675 output674)).val
theorem output676_def : output676 = (.seq output675 output674) := by
  unfold output676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output676_skip : Flapjack.WordAlloc.isSkip output676 = false := by
  rw [output676_def]
  conv => lhs; cbv
  try rfl
theorem node676_eq : Flapjack.WordAlloc.removeDeadStructural input676 value129 value1 value2 = (output676, value130, value1) := by
  rw [input676_def, output676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node674_eq]
  try dsimp only
  rw [node675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value131 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6517 [2])).val
theorem input677_def : input677 = (Flapjack.WordLangProgHOL.return 6517 [2]) := by
  unfold input677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6517 [2])).val
theorem output677_def : output677 = (Flapjack.WordLangProgHOL.return 6517 [2]) := by
  unfold output677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output677_skip : Flapjack.WordAlloc.isSkip output677 = false := by
  rw [output677_def]
  conv => lhs; cbv
  try rfl
theorem node677_eq : Flapjack.WordAlloc.removeDeadStructural input677 value130 value1 value2 = (output677, value131, value1) := by
  rw [input677_def, output677_def]
  try (conv => lhs; cbv)
  try rfl

def value132 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6537)])).val
theorem input678_def : input678 = (Flapjack.WordLangProgHOL.move 0 [(2, 6537)]) := by
  unfold input678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6537)])).val
theorem output678_def : output678 = (Flapjack.WordLangProgHOL.move 0 [(2, 6537)]) := by
  unfold output678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output678_skip : Flapjack.WordAlloc.isSkip output678 = false := by
  rw [output678_def]
  conv => lhs; cbv
  try rfl
theorem node678_eq : Flapjack.WordAlloc.removeDeadStructural input678 value131 value1 value2 = (output678, value132, value1) := by
  rw [input678_def, output678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input678 input677)).val
theorem input679_def : input679 = (.seq input678 input677) := by
  unfold input679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output678 output677)).val
theorem output679_def : output679 = (.seq output678 output677) := by
  unfold output679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output679_skip : Flapjack.WordAlloc.isSkip output679 = false := by
  rw [output679_def]
  conv => lhs; cbv
  try rfl
theorem node679_eq : Flapjack.WordAlloc.removeDeadStructural input679 value130 value1 value2 = (output679, value132, value1) := by
  rw [input679_def, output679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node677_eq]
  try dsimp only
  rw [node678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6537 0#64))).val
theorem input680_def : input680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6537 0#64)) := by
  unfold input680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6537 0#64))).val
theorem output680_def : output680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6537 0#64)) := by
  unfold output680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output680_skip : Flapjack.WordAlloc.isSkip output680 = false := by
  rw [output680_def]
  conv => lhs; cbv
  try rfl
theorem node680_eq : Flapjack.WordAlloc.removeDeadStructural input680 value132 value1 value2 = (output680, value130, value1) := by
  rw [input680_def, output680_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input681_def : input681 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output681_def : output681 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output681_skip : Flapjack.WordAlloc.isSkip output681 = false := by
  rw [output681_def]
  conv => lhs; cbv
  try rfl
theorem node681_eq : Flapjack.WordAlloc.removeDeadStructural input681 value130 value1 value2 = (output681, value130, value1) := by
  rw [input681_def, output681_def]
  try (conv => lhs; cbv)
  try rfl

def value133 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input682 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6521, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6529, 6521)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6533 0#64)))),
      597, 152))
  (some 548) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6525, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6525)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6529 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6533, 6525)]))),
      597, 153)))).val
theorem input682_def : input682 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6521, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6529, 6521)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6533 0#64)))),
      597, 152))
  (some 548) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6525, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6525)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6529 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6533, 6525)]))),
      597, 153))) := by
  unfold input682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output682 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6517, 6511)], 597, 152))
  (some 548) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6525, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6525)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 153)))).val
theorem output682_def : output682 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6517, 6511)], 597, 152))
  (some 548) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6517, 6511)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6525, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6525)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 153))) := by
  unfold output682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output682_skip : Flapjack.WordAlloc.isSkip output682 = false := by
  rw [output682_def]
  conv => lhs; cbv
  try rfl
theorem node682_eq : Flapjack.WordAlloc.removeDeadStructural input682 value130 value1 value2 = (output682, value133, value1) := by
  rw [input682_def, output682_def]
  try (conv => lhs; cbv)
  try rfl

def value134 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6505)])).val
theorem input683_def : input683 = (Flapjack.WordLangProgHOL.move 1 [(2, 6505)]) := by
  unfold input683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6505)])).val
theorem output683_def : output683 = (Flapjack.WordLangProgHOL.move 1 [(2, 6505)]) := by
  unfold output683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output683_skip : Flapjack.WordAlloc.isSkip output683 = false := by
  rw [output683_def]
  conv => lhs; cbv
  try rfl
theorem node683_eq : Flapjack.WordAlloc.removeDeadStructural input683 value133 value1 value2 = (output683, value134, value1) := by
  rw [input683_def, output683_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input683 input682)).val
theorem input684_def : input684 = (.seq input683 input682) := by
  unfold input684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output683 output682)).val
theorem output684_def : output684 = (.seq output683 output682) := by
  unfold output684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output684_skip : Flapjack.WordAlloc.isSkip output684 = false := by
  rw [output684_def]
  conv => lhs; cbv
  try rfl
theorem node684_eq : Flapjack.WordAlloc.removeDeadStructural input684 value130 value1 value2 = (output684, value134, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node682_eq]
  try dsimp only
  rw [node683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value135 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6511, 6457)])).val
theorem input685_def : input685 = (Flapjack.WordLangProgHOL.move 0 [(6511, 6457)]) := by
  unfold input685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6511, 6457)])).val
theorem output685_def : output685 = (Flapjack.WordLangProgHOL.move 0 [(6511, 6457)]) := by
  unfold output685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output685_skip : Flapjack.WordAlloc.isSkip output685 = false := by
  rw [output685_def]
  conv => lhs; cbv
  try rfl
theorem node685_eq : Flapjack.WordAlloc.removeDeadStructural input685 value134 value1 value2 = (output685, value135, value1) := by
  rw [input685_def, output685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input685 input684)).val
theorem input686_def : input686 = (.seq input685 input684) := by
  unfold input686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output685 output684)).val
theorem output686_def : output686 = (.seq output685 output684) := by
  unfold output686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output686_skip : Flapjack.WordAlloc.isSkip output686 = false := by
  rw [output686_def]
  conv => lhs; cbv
  try rfl
theorem node686_eq : Flapjack.WordAlloc.removeDeadStructural input686 value130 value1 value2 = (output686, value135, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node684_eq]
  try dsimp only
  rw [node685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value136 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6505 6501 (Flapjack.WordRegImm.imm 18446744073709551456#64))))).val
theorem input687_def : input687 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6505 6501 (Flapjack.WordRegImm.imm 18446744073709551456#64)))) := by
  unfold input687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6505 6501 (Flapjack.WordRegImm.imm 18446744073709551456#64))))).val
theorem output687_def : output687 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6505 6501 (Flapjack.WordRegImm.imm 18446744073709551456#64)))) := by
  unfold output687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output687_skip : Flapjack.WordAlloc.isSkip output687 = false := by
  rw [output687_def]
  conv => lhs; cbv
  try rfl
theorem node687_eq : Flapjack.WordAlloc.removeDeadStructural input687 value135 value1 value2 = (output687, value136, value1) := by
  rw [input687_def, output687_def]
  try (conv => lhs; cbv)
  try rfl

def value137 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6501, 6485)])).val
theorem input688_def : input688 = (Flapjack.WordLangProgHOL.move 0 [(6501, 6485)]) := by
  unfold input688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6501, 6485)])).val
theorem output688_def : output688 = (Flapjack.WordLangProgHOL.move 0 [(6501, 6485)]) := by
  unfold output688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output688_skip : Flapjack.WordAlloc.isSkip output688 = false := by
  rw [output688_def]
  conv => lhs; cbv
  try rfl
theorem node688_eq : Flapjack.WordAlloc.removeDeadStructural input688 value136 value1 value2 = (output688, value137, value1) := by
  rw [input688_def, output688_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input688 input687)).val
theorem input689_def : input689 = (.seq input688 input687) := by
  unfold input689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output688 output687)).val
theorem output689_def : output689 = (.seq output688 output687) := by
  unfold output689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output689_skip : Flapjack.WordAlloc.isSkip output689 = false := by
  rw [output689_def]
  conv => lhs; cbv
  try rfl
theorem node689_eq : Flapjack.WordAlloc.removeDeadStructural input689 value135 value1 value2 = (output689, value137, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node687_eq]
  try dsimp only
  rw [node688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6497 1#64))).val
theorem input690_def : input690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6497 1#64)) := by
  unfold input690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output690_def : output690 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output690_skip : Flapjack.WordAlloc.isSkip output690 = true := by
  rw [output690_def]
  conv => lhs; cbv
  try rfl
theorem node690_eq : Flapjack.WordAlloc.removeDeadStructural input690 value137 value1 value2 = (output690, value137, value1) := by
  rw [input690_def, output690_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input691_def : input691 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output691_def : output691 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output691_skip : Flapjack.WordAlloc.isSkip output691 = false := by
  rw [output691_def]
  conv => lhs; cbv
  try rfl
theorem node691_eq : Flapjack.WordAlloc.removeDeadStructural input691 value137 value1 value2 = (output691, value137, value1) := by
  rw [input691_def, output691_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6493 1#64))).val
theorem input692_def : input692 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6493 1#64)) := by
  unfold input692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output692_def : output692 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output692_skip : Flapjack.WordAlloc.isSkip output692 = true := by
  rw [output692_def]
  conv => lhs; cbv
  try rfl
theorem node692_eq : Flapjack.WordAlloc.removeDeadStructural input692 value137 value1 value2 = (output692, value137, value1) := by
  rw [input692_def, output692_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input692 input691)).val
theorem input693_def : input693 = (.seq input692 input691) := by
  unfold input693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output691)).val
theorem output693_def : output693 = (output691) := by
  unfold output693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output693_skip : Flapjack.WordAlloc.isSkip output693 = false := by
  rw [output693_def]
  conv => lhs; cbv
  try rfl
theorem node693_eq : Flapjack.WordAlloc.removeDeadStructural input693 value137 value1 value2 = (output693, value137, value1) := by
  rw [input693_def, output693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node691_eq]
  try dsimp only
  rw [node692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input693 input690)).val
theorem input694_def : input694 = (.seq input693 input690) := by
  unfold input694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output693)).val
theorem output694_def : output694 = (output693) := by
  unfold output694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output694_skip : Flapjack.WordAlloc.isSkip output694 = false := by
  rw [output694_def]
  conv => lhs; cbv
  try rfl
theorem node694_eq : Flapjack.WordAlloc.removeDeadStructural input694 value137 value1 value2 = (output694, value137, value1) := by
  rw [input694_def, output694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node690_eq]
  try dsimp only
  rw [node693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input694 input689)).val
theorem input695_def : input695 = (.seq input694 input689) := by
  unfold input695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output694 output689)).val
theorem output695_def : output695 = (.seq output694 output689) := by
  unfold output695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output695_skip : Flapjack.WordAlloc.isSkip output695 = false := by
  rw [output695_def]
  conv => lhs; cbv
  try rfl
theorem node695_eq : Flapjack.WordAlloc.removeDeadStructural input695 value135 value1 value2 = (output695, value137, value1) := by
  rw [input695_def, output695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node689_eq]
  try dsimp only
  rw [node694_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input695 input686)).val
theorem input696_def : input696 = (.seq input695 input686) := by
  unfold input696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output695 output686)).val
theorem output696_def : output696 = (.seq output695 output686) := by
  unfold output696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output696_skip : Flapjack.WordAlloc.isSkip output696 = false := by
  rw [output696_def]
  conv => lhs; cbv
  try rfl
theorem node696_eq : Flapjack.WordAlloc.removeDeadStructural input696 value130 value1 value2 = (output696, value137, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node686_eq]
  try dsimp only
  rw [node695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input696 input681)).val
theorem input697_def : input697 = (.seq input696 input681) := by
  unfold input697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output696 output681)).val
theorem output697_def : output697 = (.seq output696 output681) := by
  unfold output697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output697_skip : Flapjack.WordAlloc.isSkip output697 = false := by
  rw [output697_def]
  conv => lhs; cbv
  try rfl
theorem node697_eq : Flapjack.WordAlloc.removeDeadStructural input697 value130 value1 value2 = (output697, value137, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node681_eq]
  try dsimp only
  rw [node696_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input697 input680)).val
theorem input698_def : input698 = (.seq input697 input680) := by
  unfold input698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output697 output680)).val
theorem output698_def : output698 = (.seq output697 output680) := by
  unfold output698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output698_skip : Flapjack.WordAlloc.isSkip output698 = false := by
  rw [output698_def]
  conv => lhs; cbv
  try rfl
theorem node698_eq : Flapjack.WordAlloc.removeDeadStructural input698 value132 value1 value2 = (output698, value137, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node680_eq]
  try dsimp only
  rw [node697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input698 input679)).val
theorem input699_def : input699 = (.seq input698 input679) := by
  unfold input699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output698 output679)).val
theorem output699_def : output699 = (.seq output698 output679) := by
  unfold output699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output699_skip : Flapjack.WordAlloc.isSkip output699 = false := by
  rw [output699_def]
  conv => lhs; cbv
  try rfl
theorem node699_eq : Flapjack.WordAlloc.removeDeadStructural input699 value130 value1 value2 = (output699, value137, value1) := by
  rw [input699_def, output699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node679_eq]
  try dsimp only
  rw [node698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input699 input676)).val
theorem input700_def : input700 = (.seq input699 input676) := by
  unfold input700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output699 output676)).val
theorem output700_def : output700 = (.seq output699 output676) := by
  unfold output700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output700_skip : Flapjack.WordAlloc.isSkip output700 = false := by
  rw [output700_def]
  conv => lhs; cbv
  try rfl
theorem node700_eq : Flapjack.WordAlloc.removeDeadStructural input700 value129 value1 value2 = (output700, value137, value1) := by
  rw [input700_def, output700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node676_eq]
  try dsimp only
  rw [node699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6565, 6473)])).val
theorem input701_def : input701 = (Flapjack.WordLangProgHOL.move 2 [(6565, 6473)]) := by
  unfold input701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output701_def : output701 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output701_skip : Flapjack.WordAlloc.isSkip output701 = true := by
  rw [output701_def]
  conv => lhs; cbv
  try rfl
theorem node701_eq : Flapjack.WordAlloc.removeDeadStructural input701 value129 value1 value2 = (output701, value129, value1) := by
  rw [input701_def, output701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6561, 6481)])).val
theorem input702_def : input702 = (Flapjack.WordLangProgHOL.move 2 [(6561, 6481)]) := by
  unfold input702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output702_def : output702 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output702_skip : Flapjack.WordAlloc.isSkip output702 = true := by
  rw [output702_def]
  conv => lhs; cbv
  try rfl
theorem node702_eq : Flapjack.WordAlloc.removeDeadStructural input702 value129 value1 value2 = (output702, value129, value1) := by
  rw [input702_def, output702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6557, 6489)])).val
theorem input703_def : input703 = (Flapjack.WordLangProgHOL.move 2 [(6557, 6489)]) := by
  unfold input703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output703_def : output703 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output703_skip : Flapjack.WordAlloc.isSkip output703 = true := by
  rw [output703_def]
  conv => lhs; cbv
  try rfl
theorem node703_eq : Flapjack.WordAlloc.removeDeadStructural input703 value129 value1 value2 = (output703, value129, value1) := by
  rw [input703_def, output703_def]
  try (conv => lhs; cbv)
  try rfl

def value138 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6553, 6485)])).val
theorem input704_def : input704 = (Flapjack.WordLangProgHOL.move 2 [(6553, 6485)]) := by
  unfold input704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6553, 6485)])).val
theorem output704_def : output704 = (Flapjack.WordLangProgHOL.move 2 [(6553, 6485)]) := by
  unfold output704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output704_skip : Flapjack.WordAlloc.isSkip output704 = false := by
  rw [output704_def]
  conv => lhs; cbv
  try rfl
theorem node704_eq : Flapjack.WordAlloc.removeDeadStructural input704 value129 value1 value2 = (output704, value138, value1) := by
  rw [input704_def, output704_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input705_def : input705 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output705_def : output705 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output705_skip : Flapjack.WordAlloc.isSkip output705 = true := by
  rw [output705_def]
  conv => lhs; cbv
  try rfl
theorem node705_eq : Flapjack.WordAlloc.removeDeadStructural input705 value138 value1 value2 = (output705, value138, value1) := by
  rw [input705_def, output705_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input705 input704)).val
theorem input706_def : input706 = (.seq input705 input704) := by
  unfold input706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output704)).val
theorem output706_def : output706 = (output704) := by
  unfold output706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output706_skip : Flapjack.WordAlloc.isSkip output706 = false := by
  rw [output706_def]
  conv => lhs; cbv
  try rfl
theorem node706_eq : Flapjack.WordAlloc.removeDeadStructural input706 value129 value1 value2 = (output706, value138, value1) := by
  rw [input706_def, output706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node704_eq]
  try dsimp only
  rw [node705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input706 input703)).val
theorem input707_def : input707 = (.seq input706 input703) := by
  unfold input707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output706)).val
theorem output707_def : output707 = (output706) := by
  unfold output707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output707_skip : Flapjack.WordAlloc.isSkip output707 = false := by
  rw [output707_def]
  conv => lhs; cbv
  try rfl
theorem node707_eq : Flapjack.WordAlloc.removeDeadStructural input707 value129 value1 value2 = (output707, value138, value1) := by
  rw [input707_def, output707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node703_eq]
  try dsimp only
  rw [node706_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input707 input702)).val
theorem input708_def : input708 = (.seq input707 input702) := by
  unfold input708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output707)).val
theorem output708_def : output708 = (output707) := by
  unfold output708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output708_skip : Flapjack.WordAlloc.isSkip output708 = false := by
  rw [output708_def]
  conv => lhs; cbv
  try rfl
theorem node708_eq : Flapjack.WordAlloc.removeDeadStructural input708 value129 value1 value2 = (output708, value138, value1) := by
  rw [input708_def, output708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  try dsimp only
  rw [node707_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input708 input701)).val
theorem input709_def : input709 = (.seq input708 input701) := by
  unfold input709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output708)).val
theorem output709_def : output709 = (output708) := by
  unfold output709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output709_skip : Flapjack.WordAlloc.isSkip output709 = false := by
  rw [output709_def]
  conv => lhs; cbv
  try rfl
theorem node709_eq : Flapjack.WordAlloc.removeDeadStructural input709 value129 value1 value2 = (output709, value138, value1) := by
  rw [input709_def, output709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node701_eq]
  try dsimp only
  rw [node708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6549, 6457), (6545, 6485), (6541, 6449)])).val
theorem input710_def : input710 = (Flapjack.WordLangProgHOL.move 2 [(6549, 6457), (6545, 6485), (6541, 6449)]) := by
  unfold input710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6549, 6457)])).val
theorem output710_def : output710 = (Flapjack.WordLangProgHOL.move 2 [(6549, 6457)]) := by
  unfold output710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output710_skip : Flapjack.WordAlloc.isSkip output710 = false := by
  rw [output710_def]
  conv => lhs; cbv
  try rfl
theorem node710_eq : Flapjack.WordAlloc.removeDeadStructural input710 value138 value1 value2 = (output710, value137, value1) := by
  rw [input710_def, output710_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input710 input709)).val
theorem input711_def : input711 = (.seq input710 input709) := by
  unfold input711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output710 output709)).val
theorem output711_def : output711 = (.seq output710 output709) := by
  unfold output711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output711_skip : Flapjack.WordAlloc.isSkip output711 = false := by
  rw [output711_def]
  conv => lhs; cbv
  try rfl
theorem node711_eq : Flapjack.WordAlloc.removeDeadStructural input711 value129 value1 value2 = (output711, value137, value1) := by
  rw [input711_def, output711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node709_eq]
  try dsimp only
  rw [node710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input712_def : input712 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node712_eq : Flapjack.WordAlloc.removeDeadStructural input712 value137 value1 value2 = (output712, value137, value1) := by
  rw [input712_def, output712_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input712 input711)).val
theorem input713_def : input713 = (.seq input712 input711) := by
  unfold input713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output711)).val
theorem output713_def : output713 = (output711) := by
  unfold output713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output713_skip : Flapjack.WordAlloc.isSkip output713 = false := by
  rw [output713_def]
  conv => lhs; cbv
  try rfl
theorem node713_eq : Flapjack.WordAlloc.removeDeadStructural input713 value129 value1 value2 = (output713, value137, value1) := by
  rw [input713_def, output713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node711_eq]
  try dsimp only
  rw [node712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value139 : Flapjack.Cmp :=
Flapjack.Cmp.lower

def value140 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6489

def value141 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 6485 value140 input700 input713)).val
theorem input714_def : input714 = (.ite value139 6485 value140 input700 input713) := by
  unfold input714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 6485 value140 output700 output713)).val
theorem output714_def : output714 = (.ite value139 6485 value140 output700 output713) := by
  unfold output714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output714_skip : Flapjack.WordAlloc.isSkip output714 = false := by
  rw [output714_def]
  conv => lhs; cbv
  try rfl
theorem node714_eq : Flapjack.WordAlloc.removeDeadStructural input714 value129 value1 value2 = (output714, value141, value1) := by
  rw [input714_def, output714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node700_eq]
  try dsimp only
  rw [node713_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input714 input665)).val
theorem input715_def : input715 = (.seq input714 input665) := by
  unfold input715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output714 output665)).val
theorem output715_def : output715 = (.seq output714 output665) := by
  unfold output715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output715_skip : Flapjack.WordAlloc.isSkip output715 = false := by
  rw [output715_def]
  conv => lhs; cbv
  try rfl
theorem node715_eq : Flapjack.WordAlloc.removeDeadStructural input715 value129 value1 value2 = (output715, value141, value1) := by
  rw [input715_def, output715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  try dsimp only
  rw [node714_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6489 165#64))).val
theorem input716_def : input716 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6489 165#64)) := by
  unfold input716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6489 165#64))).val
theorem output716_def : output716 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6489 165#64)) := by
  unfold output716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output716_skip : Flapjack.WordAlloc.isSkip output716 = false := by
  rw [output716_def]
  conv => lhs; cbv
  try rfl
theorem node716_eq : Flapjack.WordAlloc.removeDeadStructural input716 value141 value1 value2 = (output716, value137, value1) := by
  rw [input716_def, output716_def]
  try (conv => lhs; cbv)
  try rfl

def value142 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6485, 6461)])).val
theorem input717_def : input717 = (Flapjack.WordLangProgHOL.move 0 [(6485, 6461)]) := by
  unfold input717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6485, 6461)])).val
theorem output717_def : output717 = (Flapjack.WordLangProgHOL.move 0 [(6485, 6461)]) := by
  unfold output717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output717_skip : Flapjack.WordAlloc.isSkip output717 = false := by
  rw [output717_def]
  conv => lhs; cbv
  try rfl
theorem node717_eq : Flapjack.WordAlloc.removeDeadStructural input717 value137 value1 value2 = (output717, value142, value1) := by
  rw [input717_def, output717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input718_def : input718 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output718_def : output718 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output718_skip : Flapjack.WordAlloc.isSkip output718 = false := by
  rw [output718_def]
  conv => lhs; cbv
  try rfl
theorem node718_eq : Flapjack.WordAlloc.removeDeadStructural input718 value142 value1 value2 = (output718, value142, value1) := by
  rw [input718_def, output718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6481 0#64))).val
theorem input719_def : input719 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6481 0#64)) := by
  unfold input719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output719_def : output719 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output719_skip : Flapjack.WordAlloc.isSkip output719 = true := by
  rw [output719_def]
  conv => lhs; cbv
  try rfl
theorem node719_eq : Flapjack.WordAlloc.removeDeadStructural input719 value142 value1 value2 = (output719, value142, value1) := by
  rw [input719_def, output719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input720_def : input720 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output720_def : output720 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output720_skip : Flapjack.WordAlloc.isSkip output720 = false := by
  rw [output720_def]
  conv => lhs; cbv
  try rfl
theorem node720_eq : Flapjack.WordAlloc.removeDeadStructural input720 value142 value1 value2 = (output720, value142, value1) := by
  rw [input720_def, output720_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6477 0#64))).val
theorem input721_def : input721 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6477 0#64)) := by
  unfold input721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output721_def : output721 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output721_skip : Flapjack.WordAlloc.isSkip output721 = true := by
  rw [output721_def]
  conv => lhs; cbv
  try rfl
theorem node721_eq : Flapjack.WordAlloc.removeDeadStructural input721 value142 value1 value2 = (output721, value142, value1) := by
  rw [input721_def, output721_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input721 input720)).val
theorem input722_def : input722 = (.seq input721 input720) := by
  unfold input722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output720)).val
theorem output722_def : output722 = (output720) := by
  unfold output722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output722_skip : Flapjack.WordAlloc.isSkip output722 = false := by
  rw [output722_def]
  conv => lhs; cbv
  try rfl
theorem node722_eq : Flapjack.WordAlloc.removeDeadStructural input722 value142 value1 value2 = (output722, value142, value1) := by
  rw [input722_def, output722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node721_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input722 input719)).val
theorem input723_def : input723 = (.seq input722 input719) := by
  unfold input723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output722)).val
theorem output723_def : output723 = (output722) := by
  unfold output723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output723_skip : Flapjack.WordAlloc.isSkip output723 = false := by
  rw [output723_def]
  conv => lhs; cbv
  try rfl
theorem node723_eq : Flapjack.WordAlloc.removeDeadStructural input723 value142 value1 value2 = (output723, value142, value1) := by
  rw [input723_def, output723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node719_eq]
  try dsimp only
  rw [node722_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6473 0#64))).val
theorem input724_def : input724 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6473 0#64)) := by
  unfold input724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output724_def : output724 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output724_skip : Flapjack.WordAlloc.isSkip output724 = true := by
  rw [output724_def]
  conv => lhs; cbv
  try rfl
theorem node724_eq : Flapjack.WordAlloc.removeDeadStructural input724 value142 value1 value2 = (output724, value142, value1) := by
  rw [input724_def, output724_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6469 0#64))).val
theorem input725_def : input725 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6469 0#64)) := by
  unfold input725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output725_def : output725 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output725_skip : Flapjack.WordAlloc.isSkip output725 = true := by
  rw [output725_def]
  conv => lhs; cbv
  try rfl
theorem node725_eq : Flapjack.WordAlloc.removeDeadStructural input725 value142 value1 value2 = (output725, value142, value1) := by
  rw [input725_def, output725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6465 0#64))).val
theorem input726_def : input726 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6465 0#64)) := by
  unfold input726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output726_def : output726 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output726_skip : Flapjack.WordAlloc.isSkip output726 = true := by
  rw [output726_def]
  conv => lhs; cbv
  try rfl
theorem node726_eq : Flapjack.WordAlloc.removeDeadStructural input726 value142 value1 value2 = (output726, value142, value1) := by
  rw [input726_def, output726_def]
  try (conv => lhs; cbv)
  try rfl

def value143 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6461 0#64))).val
theorem input727_def : input727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6461 0#64)) := by
  unfold input727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6461 0#64))).val
theorem output727_def : output727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6461 0#64)) := by
  unfold output727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output727_skip : Flapjack.WordAlloc.isSkip output727 = false := by
  rw [output727_def]
  conv => lhs; cbv
  try rfl
theorem node727_eq : Flapjack.WordAlloc.removeDeadStructural input727 value142 value1 value2 = (output727, value143, value1) := by
  rw [input727_def, output727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input728_def : input728 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node728_eq : Flapjack.WordAlloc.removeDeadStructural input728 value143 value1 value2 = (output728, value143, value1) := by
  rw [input728_def, output728_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input728 input727)).val
theorem input729_def : input729 = (.seq input728 input727) := by
  unfold input729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output727)).val
theorem output729_def : output729 = (output727) := by
  unfold output729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output729_skip : Flapjack.WordAlloc.isSkip output729 = false := by
  rw [output729_def]
  conv => lhs; cbv
  try rfl
theorem node729_eq : Flapjack.WordAlloc.removeDeadStructural input729 value142 value1 value2 = (output729, value143, value1) := by
  rw [input729_def, output729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node727_eq]
  try dsimp only
  rw [node728_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input729 input726)).val
theorem input730_def : input730 = (.seq input729 input726) := by
  unfold input730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output729)).val
theorem output730_def : output730 = (output729) := by
  unfold output730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output730_skip : Flapjack.WordAlloc.isSkip output730 = false := by
  rw [output730_def]
  conv => lhs; cbv
  try rfl
theorem node730_eq : Flapjack.WordAlloc.removeDeadStructural input730 value142 value1 value2 = (output730, value143, value1) := by
  rw [input730_def, output730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node726_eq]
  try dsimp only
  rw [node729_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input730 input725)).val
theorem input731_def : input731 = (.seq input730 input725) := by
  unfold input731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output730)).val
theorem output731_def : output731 = (output730) := by
  unfold output731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output731_skip : Flapjack.WordAlloc.isSkip output731 = false := by
  rw [output731_def]
  conv => lhs; cbv
  try rfl
theorem node731_eq : Flapjack.WordAlloc.removeDeadStructural input731 value142 value1 value2 = (output731, value143, value1) := by
  rw [input731_def, output731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node725_eq]
  try dsimp only
  rw [node730_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input731 input724)).val
theorem input732_def : input732 = (.seq input731 input724) := by
  unfold input732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output731)).val
theorem output732_def : output732 = (output731) := by
  unfold output732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output732_skip : Flapjack.WordAlloc.isSkip output732 = false := by
  rw [output732_def]
  conv => lhs; cbv
  try rfl
theorem node732_eq : Flapjack.WordAlloc.removeDeadStructural input732 value142 value1 value2 = (output732, value143, value1) := by
  rw [input732_def, output732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node724_eq]
  try dsimp only
  rw [node731_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value144 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6457, 6425), (6453, 6441), (6449, 6445)])).val
theorem input733_def : input733 = (Flapjack.WordLangProgHOL.move 1 [(6457, 6425), (6453, 6441), (6449, 6445)]) := by
  unfold input733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6457, 6425)])).val
theorem output733_def : output733 = (Flapjack.WordLangProgHOL.move 1 [(6457, 6425)]) := by
  unfold output733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output733_skip : Flapjack.WordAlloc.isSkip output733 = false := by
  rw [output733_def]
  conv => lhs; cbv
  try rfl
theorem node733_eq : Flapjack.WordAlloc.removeDeadStructural input733 value143 value1 value2 = (output733, value144, value1) := by
  rw [input733_def, output733_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input733 input732)).val
theorem input734_def : input734 = (.seq input733 input732) := by
  unfold input734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output733 output732)).val
theorem output734_def : output734 = (.seq output733 output732) := by
  unfold output734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output734_skip : Flapjack.WordAlloc.isSkip output734 = false := by
  rw [output734_def]
  conv => lhs; cbv
  try rfl
theorem node734_eq : Flapjack.WordAlloc.removeDeadStructural input734 value142 value1 value2 = (output734, value144, value1) := by
  rw [input734_def, output734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node732_eq]
  try dsimp only
  rw [node733_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value145 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6425 [2])).val
theorem input735_def : input735 = (Flapjack.WordLangProgHOL.return 6425 [2]) := by
  unfold input735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6425 [2])).val
theorem output735_def : output735 = (Flapjack.WordLangProgHOL.return 6425 [2]) := by
  unfold output735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output735_skip : Flapjack.WordAlloc.isSkip output735 = false := by
  rw [output735_def]
  conv => lhs; cbv
  try rfl
theorem node735_eq : Flapjack.WordAlloc.removeDeadStructural input735 value144 value1 value2 = (output735, value145, value1) := by
  rw [input735_def, output735_def]
  try (conv => lhs; cbv)
  try rfl

def value146 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6445)])).val
theorem input736_def : input736 = (Flapjack.WordLangProgHOL.move 0 [(2, 6445)]) := by
  unfold input736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6445)])).val
theorem output736_def : output736 = (Flapjack.WordLangProgHOL.move 0 [(2, 6445)]) := by
  unfold output736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output736_skip : Flapjack.WordAlloc.isSkip output736 = false := by
  rw [output736_def]
  conv => lhs; cbv
  try rfl
theorem node736_eq : Flapjack.WordAlloc.removeDeadStructural input736 value145 value1 value2 = (output736, value146, value1) := by
  rw [input736_def, output736_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input736 input735)).val
theorem input737_def : input737 = (.seq input736 input735) := by
  unfold input737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output736 output735)).val
theorem output737_def : output737 = (.seq output736 output735) := by
  unfold output737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output737_skip : Flapjack.WordAlloc.isSkip output737 = false := by
  rw [output737_def]
  conv => lhs; cbv
  try rfl
theorem node737_eq : Flapjack.WordAlloc.removeDeadStructural input737 value144 value1 value2 = (output737, value146, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node735_eq]
  try dsimp only
  rw [node736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6445 0#64))).val
theorem input738_def : input738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6445 0#64)) := by
  unfold input738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6445 0#64))).val
theorem output738_def : output738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6445 0#64)) := by
  unfold output738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output738_skip : Flapjack.WordAlloc.isSkip output738 = false := by
  rw [output738_def]
  conv => lhs; cbv
  try rfl
theorem node738_eq : Flapjack.WordAlloc.removeDeadStructural input738 value146 value1 value2 = (output738, value144, value1) := by
  rw [input738_def, output738_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input739_def : input739 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output739_def : output739 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output739_skip : Flapjack.WordAlloc.isSkip output739 = false := by
  rw [output739_def]
  conv => lhs; cbv
  try rfl
theorem node739_eq : Flapjack.WordAlloc.removeDeadStructural input739 value144 value1 value2 = (output739, value144, value1) := by
  rw [input739_def, output739_def]
  try (conv => lhs; cbv)
  try rfl

def value147 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6429, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6437, 6429)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6441 0#64)))),
      597, 150))
  (some 541) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6433, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6433)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6437 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6441, 6433)]))),
      597, 151)))).val
theorem input740_def : input740 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6429, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6437, 6429)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6441 0#64)))),
      597, 150))
  (some 541) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6433, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6433)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6437 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6441, 6433)]))),
      597, 151))) := by
  unfold input740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6425, 6419)], 597, 150))
  (some 541) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6433, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6433)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 151)))).val
theorem output740_def : output740 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6425, 6419)], 597, 150))
  (some 541) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6425, 6419)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6433, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6433)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 151))) := by
  unfold output740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output740_skip : Flapjack.WordAlloc.isSkip output740 = false := by
  rw [output740_def]
  conv => lhs; cbv
  try rfl
theorem node740_eq : Flapjack.WordAlloc.removeDeadStructural input740 value144 value1 value2 = (output740, value147, value1) := by
  rw [input740_def, output740_def]
  try (conv => lhs; cbv)
  try rfl

def value148 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6413)])).val
theorem input741_def : input741 = (Flapjack.WordLangProgHOL.move 1 [(2, 6413)]) := by
  unfold input741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6413)])).val
theorem output741_def : output741 = (Flapjack.WordLangProgHOL.move 1 [(2, 6413)]) := by
  unfold output741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output741_skip : Flapjack.WordAlloc.isSkip output741 = false := by
  rw [output741_def]
  conv => lhs; cbv
  try rfl
theorem node741_eq : Flapjack.WordAlloc.removeDeadStructural input741 value147 value1 value2 = (output741, value148, value1) := by
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
theorem node742_eq : Flapjack.WordAlloc.removeDeadStructural input742 value144 value1 value2 = (output742, value148, value1) := by
  rw [input742_def, output742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  try dsimp only
  rw [node741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value149 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6419, 6381)])).val
theorem input743_def : input743 = (Flapjack.WordLangProgHOL.move 0 [(6419, 6381)]) := by
  unfold input743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6419, 6381)])).val
theorem output743_def : output743 = (Flapjack.WordLangProgHOL.move 0 [(6419, 6381)]) := by
  unfold output743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output743_skip : Flapjack.WordAlloc.isSkip output743 = false := by
  rw [output743_def]
  conv => lhs; cbv
  try rfl
theorem node743_eq : Flapjack.WordAlloc.removeDeadStructural input743 value148 value1 value2 = (output743, value149, value1) := by
  rw [input743_def, output743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input743 input742)).val
theorem input744_def : input744 = (.seq input743 input742) := by
  unfold input744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output743 output742)).val
theorem output744_def : output744 = (.seq output743 output742) := by
  unfold output744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output744_skip : Flapjack.WordAlloc.isSkip output744 = false := by
  rw [output744_def]
  conv => lhs; cbv
  try rfl
theorem node744_eq : Flapjack.WordAlloc.removeDeadStructural input744 value144 value1 value2 = (output744, value149, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  try dsimp only
  rw [node743_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value150 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6413 6409 (Flapjack.WordRegImm.imm 18446744073709551473#64))))).val
theorem input745_def : input745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6413 6409 (Flapjack.WordRegImm.imm 18446744073709551473#64)))) := by
  unfold input745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6413 6409 (Flapjack.WordRegImm.imm 18446744073709551473#64))))).val
theorem output745_def : output745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6413 6409 (Flapjack.WordRegImm.imm 18446744073709551473#64)))) := by
  unfold output745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output745_skip : Flapjack.WordAlloc.isSkip output745 = false := by
  rw [output745_def]
  conv => lhs; cbv
  try rfl
theorem node745_eq : Flapjack.WordAlloc.removeDeadStructural input745 value149 value1 value2 = (output745, value150, value1) := by
  rw [input745_def, output745_def]
  try (conv => lhs; cbv)
  try rfl

def value151 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6409, 6385)])).val
theorem input746_def : input746 = (Flapjack.WordLangProgHOL.move 0 [(6409, 6385)]) := by
  unfold input746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6409, 6385)])).val
theorem output746_def : output746 = (Flapjack.WordLangProgHOL.move 0 [(6409, 6385)]) := by
  unfold output746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output746_skip : Flapjack.WordAlloc.isSkip output746 = false := by
  rw [output746_def]
  conv => lhs; cbv
  try rfl
theorem node746_eq : Flapjack.WordAlloc.removeDeadStructural input746 value150 value1 value2 = (output746, value151, value1) := by
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
theorem node747_eq : Flapjack.WordAlloc.removeDeadStructural input747 value149 value1 value2 = (output747, value151, value1) := by
  rw [input747_def, output747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node745_eq]
  try dsimp only
  rw [node746_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input748_def : input748 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output748_def : output748 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output748_skip : Flapjack.WordAlloc.isSkip output748 = false := by
  rw [output748_def]
  conv => lhs; cbv
  try rfl
theorem node748_eq : Flapjack.WordAlloc.removeDeadStructural input748 value151 value1 value2 = (output748, value151, value1) := by
  rw [input748_def, output748_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6405 0#64))).val
theorem input749_def : input749 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6405 0#64)) := by
  unfold input749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output749_def : output749 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output749_skip : Flapjack.WordAlloc.isSkip output749 = true := by
  rw [output749_def]
  conv => lhs; cbv
  try rfl
theorem node749_eq : Flapjack.WordAlloc.removeDeadStructural input749 value151 value1 value2 = (output749, value151, value1) := by
  rw [input749_def, output749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input750_def : input750 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output750_def : output750 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output750_skip : Flapjack.WordAlloc.isSkip output750 = false := by
  rw [output750_def]
  conv => lhs; cbv
  try rfl
theorem node750_eq : Flapjack.WordAlloc.removeDeadStructural input750 value151 value1 value2 = (output750, value151, value1) := by
  rw [input750_def, output750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6401 0#64))).val
theorem input751_def : input751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6401 0#64)) := by
  unfold input751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output751_def : output751 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output751_skip : Flapjack.WordAlloc.isSkip output751 = true := by
  rw [output751_def]
  conv => lhs; cbv
  try rfl
theorem node751_eq : Flapjack.WordAlloc.removeDeadStructural input751 value151 value1 value2 = (output751, value151, value1) := by
  rw [input751_def, output751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input751 input750)).val
theorem input752_def : input752 = (.seq input751 input750) := by
  unfold input752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output750)).val
theorem output752_def : output752 = (output750) := by
  unfold output752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output752_skip : Flapjack.WordAlloc.isSkip output752 = false := by
  rw [output752_def]
  conv => lhs; cbv
  try rfl
theorem node752_eq : Flapjack.WordAlloc.removeDeadStructural input752 value151 value1 value2 = (output752, value151, value1) := by
  rw [input752_def, output752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node750_eq]
  try dsimp only
  rw [node751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input752 input749)).val
theorem input753_def : input753 = (.seq input752 input749) := by
  unfold input753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output752)).val
theorem output753_def : output753 = (output752) := by
  unfold output753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output753_skip : Flapjack.WordAlloc.isSkip output753 = false := by
  rw [output753_def]
  conv => lhs; cbv
  try rfl
theorem node753_eq : Flapjack.WordAlloc.removeDeadStructural input753 value151 value1 value2 = (output753, value151, value1) := by
  rw [input753_def, output753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node749_eq]
  try dsimp only
  rw [node752_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6397 0#64))).val
theorem input754_def : input754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6397 0#64)) := by
  unfold input754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output754_def : output754 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output754_skip : Flapjack.WordAlloc.isSkip output754 = true := by
  rw [output754_def]
  conv => lhs; cbv
  try rfl
theorem node754_eq : Flapjack.WordAlloc.removeDeadStructural input754 value151 value1 value2 = (output754, value151, value1) := by
  rw [input754_def, output754_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 0#64))).val
theorem input755_def : input755 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 0#64)) := by
  unfold input755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output755_def : output755 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output755_skip : Flapjack.WordAlloc.isSkip output755 = true := by
  rw [output755_def]
  conv => lhs; cbv
  try rfl
theorem node755_eq : Flapjack.WordAlloc.removeDeadStructural input755 value151 value1 value2 = (output755, value151, value1) := by
  rw [input755_def, output755_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6389 0#64))).val
theorem input756_def : input756 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6389 0#64)) := by
  unfold input756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output756_def : output756 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output756_skip : Flapjack.WordAlloc.isSkip output756 = true := by
  rw [output756_def]
  conv => lhs; cbv
  try rfl
theorem node756_eq : Flapjack.WordAlloc.removeDeadStructural input756 value151 value1 value2 = (output756, value151, value1) := by
  rw [input756_def, output756_def]
  try (conv => lhs; cbv)
  try rfl

def value152 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6385 0#64))).val
theorem input757_def : input757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6385 0#64)) := by
  unfold input757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6385 0#64))).val
theorem output757_def : output757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6385 0#64)) := by
  unfold output757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output757_skip : Flapjack.WordAlloc.isSkip output757 = false := by
  rw [output757_def]
  conv => lhs; cbv
  try rfl
theorem node757_eq : Flapjack.WordAlloc.removeDeadStructural input757 value151 value1 value2 = (output757, value152, value1) := by
  rw [input757_def, output757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input758_def : input758 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output758_def : output758 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output758_skip : Flapjack.WordAlloc.isSkip output758 = true := by
  rw [output758_def]
  conv => lhs; cbv
  try rfl
theorem node758_eq : Flapjack.WordAlloc.removeDeadStructural input758 value152 value1 value2 = (output758, value152, value1) := by
  rw [input758_def, output758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input758 input757)).val
theorem input759_def : input759 = (.seq input758 input757) := by
  unfold input759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output757)).val
theorem output759_def : output759 = (output757) := by
  unfold output759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output759_skip : Flapjack.WordAlloc.isSkip output759 = false := by
  rw [output759_def]
  conv => lhs; cbv
  try rfl
theorem node759_eq : Flapjack.WordAlloc.removeDeadStructural input759 value151 value1 value2 = (output759, value152, value1) := by
  rw [input759_def, output759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node757_eq]
  try dsimp only
  rw [node758_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input759 input756)).val
theorem input760_def : input760 = (.seq input759 input756) := by
  unfold input760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output759)).val
theorem output760_def : output760 = (output759) := by
  unfold output760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output760_skip : Flapjack.WordAlloc.isSkip output760 = false := by
  rw [output760_def]
  conv => lhs; cbv
  try rfl
theorem node760_eq : Flapjack.WordAlloc.removeDeadStructural input760 value151 value1 value2 = (output760, value152, value1) := by
  rw [input760_def, output760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node756_eq]
  try dsimp only
  rw [node759_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input760 input755)).val
theorem input761_def : input761 = (.seq input760 input755) := by
  unfold input761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output760)).val
theorem output761_def : output761 = (output760) := by
  unfold output761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output761_skip : Flapjack.WordAlloc.isSkip output761 = false := by
  rw [output761_def]
  conv => lhs; cbv
  try rfl
theorem node761_eq : Flapjack.WordAlloc.removeDeadStructural input761 value151 value1 value2 = (output761, value152, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node755_eq]
  try dsimp only
  rw [node760_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input761 input754)).val
theorem input762_def : input762 = (.seq input761 input754) := by
  unfold input762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output761)).val
theorem output762_def : output762 = (output761) := by
  unfold output762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output762_skip : Flapjack.WordAlloc.isSkip output762 = false := by
  rw [output762_def]
  conv => lhs; cbv
  try rfl
theorem node762_eq : Flapjack.WordAlloc.removeDeadStructural input762 value151 value1 value2 = (output762, value152, value1) := by
  rw [input762_def, output762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node754_eq]
  try dsimp only
  rw [node761_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value153 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6381, 6349), (6377, 6365), (6373, 6369)])).val
theorem input763_def : input763 = (Flapjack.WordLangProgHOL.move 1 [(6381, 6349), (6377, 6365), (6373, 6369)]) := by
  unfold input763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6381, 6349)])).val
theorem output763_def : output763 = (Flapjack.WordLangProgHOL.move 1 [(6381, 6349)]) := by
  unfold output763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output763_skip : Flapjack.WordAlloc.isSkip output763 = false := by
  rw [output763_def]
  conv => lhs; cbv
  try rfl
theorem node763_eq : Flapjack.WordAlloc.removeDeadStructural input763 value152 value1 value2 = (output763, value153, value1) := by
  rw [input763_def, output763_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input763 input762)).val
theorem input764_def : input764 = (.seq input763 input762) := by
  unfold input764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output763 output762)).val
theorem output764_def : output764 = (.seq output763 output762) := by
  unfold output764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output764_skip : Flapjack.WordAlloc.isSkip output764 = false := by
  rw [output764_def]
  conv => lhs; cbv
  try rfl
theorem node764_eq : Flapjack.WordAlloc.removeDeadStructural input764 value151 value1 value2 = (output764, value153, value1) := by
  rw [input764_def, output764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node762_eq]
  try dsimp only
  rw [node763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value154 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6349 [2])).val
theorem input765_def : input765 = (Flapjack.WordLangProgHOL.return 6349 [2]) := by
  unfold input765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6349 [2])).val
theorem output765_def : output765 = (Flapjack.WordLangProgHOL.return 6349 [2]) := by
  unfold output765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output765_skip : Flapjack.WordAlloc.isSkip output765 = false := by
  rw [output765_def]
  conv => lhs; cbv
  try rfl
theorem node765_eq : Flapjack.WordAlloc.removeDeadStructural input765 value153 value1 value2 = (output765, value154, value1) := by
  rw [input765_def, output765_def]
  try (conv => lhs; cbv)
  try rfl

def value155 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6369)])).val
theorem input766_def : input766 = (Flapjack.WordLangProgHOL.move 0 [(2, 6369)]) := by
  unfold input766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6369)])).val
theorem output766_def : output766 = (Flapjack.WordLangProgHOL.move 0 [(2, 6369)]) := by
  unfold output766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output766_skip : Flapjack.WordAlloc.isSkip output766 = false := by
  rw [output766_def]
  conv => lhs; cbv
  try rfl
theorem node766_eq : Flapjack.WordAlloc.removeDeadStructural input766 value154 value1 value2 = (output766, value155, value1) := by
  rw [input766_def, output766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input766 input765)).val
theorem input767_def : input767 = (.seq input766 input765) := by
  unfold input767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output766 output765)).val
theorem output767_def : output767 = (.seq output766 output765) := by
  unfold output767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output767_skip : Flapjack.WordAlloc.isSkip output767 = false := by
  rw [output767_def]
  conv => lhs; cbv
  try rfl
theorem node767_eq : Flapjack.WordAlloc.removeDeadStructural input767 value153 value1 value2 = (output767, value155, value1) := by
  rw [input767_def, output767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node765_eq]
  try dsimp only
  rw [node766_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node767_eq
end InitECandidate.Proofs.DeadStages597
