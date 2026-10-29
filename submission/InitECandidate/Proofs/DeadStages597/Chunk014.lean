import InitECandidate.Proofs.DeadStages597.Chunk013
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3584_def : input3584 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3584_def : output3584 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3584_skip : Flapjack.WordAlloc.isSkip output3584 = false := by
  rw [output3584_def]
  conv => lhs; cbv
  try rfl
theorem node3584_eq : Flapjack.WordAlloc.removeDeadStructural input3584 value646 value1 value2 = (output3584, value646, value1) := by
  rw [input3584_def, output3584_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2285 0#64))).val
theorem input3585_def : input3585 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2285 0#64)) := by
  unfold input3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3585_def : output3585 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3585_skip : Flapjack.WordAlloc.isSkip output3585 = true := by
  rw [output3585_def]
  conv => lhs; cbv
  try rfl
theorem node3585_eq : Flapjack.WordAlloc.removeDeadStructural input3585 value646 value1 value2 = (output3585, value646, value1) := by
  rw [input3585_def, output3585_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3585 input3584)).val
theorem input3586_def : input3586 = (.seq input3585 input3584) := by
  unfold input3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3584)).val
theorem output3586_def : output3586 = (output3584) := by
  unfold output3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3586_skip : Flapjack.WordAlloc.isSkip output3586 = false := by
  rw [output3586_def]
  conv => lhs; cbv
  try rfl
theorem node3586_eq : Flapjack.WordAlloc.removeDeadStructural input3586 value646 value1 value2 = (output3586, value646, value1) := by
  rw [input3586_def, output3586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3584_eq]
  try dsimp only
  rw [node3585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3586 input3583)).val
theorem input3587_def : input3587 = (.seq input3586 input3583) := by
  unfold input3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3586)).val
theorem output3587_def : output3587 = (output3586) := by
  unfold output3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3587_skip : Flapjack.WordAlloc.isSkip output3587 = false := by
  rw [output3587_def]
  conv => lhs; cbv
  try rfl
theorem node3587_eq : Flapjack.WordAlloc.removeDeadStructural input3587 value646 value1 value2 = (output3587, value646, value1) := by
  rw [input3587_def, output3587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3583_eq]
  try dsimp only
  rw [node3586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2281, 2249)])).val
theorem input3588_def : input3588 = (Flapjack.WordLangProgHOL.move 1 [(2281, 2249)]) := by
  unfold input3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3588_def : output3588 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3588_skip : Flapjack.WordAlloc.isSkip output3588 = true := by
  rw [output3588_def]
  conv => lhs; cbv
  try rfl
theorem node3588_eq : Flapjack.WordAlloc.removeDeadStructural input3588 value646 value1 value2 = (output3588, value646, value1) := by
  rw [input3588_def, output3588_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2277, 2237)])).val
theorem input3589_def : input3589 = (Flapjack.WordLangProgHOL.move 1 [(2277, 2237)]) := by
  unfold input3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3589_def : output3589 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3589_skip : Flapjack.WordAlloc.isSkip output3589 = true := by
  rw [output3589_def]
  conv => lhs; cbv
  try rfl
theorem node3589_eq : Flapjack.WordAlloc.removeDeadStructural input3589 value646 value1 value2 = (output3589, value646, value1) := by
  rw [input3589_def, output3589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2273, 2253)])).val
theorem input3590_def : input3590 = (Flapjack.WordLangProgHOL.move 1 [(2273, 2253)]) := by
  unfold input3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3590_def : output3590 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3590_skip : Flapjack.WordAlloc.isSkip output3590 = true := by
  rw [output3590_def]
  conv => lhs; cbv
  try rfl
theorem node3590_eq : Flapjack.WordAlloc.removeDeadStructural input3590 value646 value1 value2 = (output3590, value646, value1) := by
  rw [input3590_def, output3590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3591_def : input3591 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3591_def : output3591 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3591_skip : Flapjack.WordAlloc.isSkip output3591 = true := by
  rw [output3591_def]
  conv => lhs; cbv
  try rfl
theorem node3591_eq : Flapjack.WordAlloc.removeDeadStructural input3591 value646 value1 value2 = (output3591, value646, value1) := by
  rw [input3591_def, output3591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3591 input3590)).val
theorem input3592_def : input3592 = (.seq input3591 input3590) := by
  unfold input3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3590)).val
theorem output3592_def : output3592 = (output3590) := by
  unfold output3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3592_skip : Flapjack.WordAlloc.isSkip output3592 = true := by
  rw [output3592_def]
  conv => lhs; cbv
  try rfl
theorem node3592_eq : Flapjack.WordAlloc.removeDeadStructural input3592 value646 value1 value2 = (output3592, value646, value1) := by
  rw [input3592_def, output3592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3590_eq]
  try dsimp only
  rw [node3591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3592 input3589)).val
theorem input3593_def : input3593 = (.seq input3592 input3589) := by
  unfold input3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3589)).val
theorem output3593_def : output3593 = (output3589) := by
  unfold output3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3593_skip : Flapjack.WordAlloc.isSkip output3593 = true := by
  rw [output3593_def]
  conv => lhs; cbv
  try rfl
theorem node3593_eq : Flapjack.WordAlloc.removeDeadStructural input3593 value646 value1 value2 = (output3593, value646, value1) := by
  rw [input3593_def, output3593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3589_eq]
  try dsimp only
  rw [node3592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3593 input3588)).val
theorem input3594_def : input3594 = (.seq input3593 input3588) := by
  unfold input3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3588)).val
theorem output3594_def : output3594 = (output3588) := by
  unfold output3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3594_skip : Flapjack.WordAlloc.isSkip output3594 = true := by
  rw [output3594_def]
  conv => lhs; cbv
  try rfl
theorem node3594_eq : Flapjack.WordAlloc.removeDeadStructural input3594 value646 value1 value2 = (output3594, value646, value1) := by
  rw [input3594_def, output3594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3588_eq]
  try dsimp only
  rw [node3593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value647 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2269, 2241), (2265, 2233), (2261, 2229), (2257, 2225)])).val
theorem input3595_def : input3595 = (Flapjack.WordLangProgHOL.move 1 [(2269, 2241), (2265, 2233), (2261, 2229), (2257, 2225)]) := by
  unfold input3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2269, 2241), (2261, 2229)])).val
theorem output3595_def : output3595 = (Flapjack.WordLangProgHOL.move 1 [(2269, 2241), (2261, 2229)]) := by
  unfold output3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3595_skip : Flapjack.WordAlloc.isSkip output3595 = false := by
  rw [output3595_def]
  conv => lhs; cbv
  try rfl
theorem node3595_eq : Flapjack.WordAlloc.removeDeadStructural input3595 value646 value1 value2 = (output3595, value647, value1) := by
  rw [input3595_def, output3595_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3595 input3594)).val
theorem input3596_def : input3596 = (.seq input3595 input3594) := by
  unfold input3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3595)).val
theorem output3596_def : output3596 = (output3595) := by
  unfold output3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3596_skip : Flapjack.WordAlloc.isSkip output3596 = false := by
  rw [output3596_def]
  conv => lhs; cbv
  try rfl
theorem node3596_eq : Flapjack.WordAlloc.removeDeadStructural input3596 value646 value1 value2 = (output3596, value647, value1) := by
  rw [input3596_def, output3596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3594_eq]
  try dsimp only
  rw [node3595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value648 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.raise 2)).val
theorem input3597_def : input3597 = (Flapjack.WordLangProgHOL.raise 2) := by
  unfold input3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.raise 2)).val
theorem output3597_def : output3597 = (Flapjack.WordLangProgHOL.raise 2) := by
  unfold output3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3597_skip : Flapjack.WordAlloc.isSkip output3597 = false := by
  rw [output3597_def]
  conv => lhs; cbv
  try rfl
theorem node3597_eq : Flapjack.WordAlloc.removeDeadStructural input3597 value647 value1 value2 = (output3597, value648, value1) := by
  rw [input3597_def, output3597_def]
  try (conv => lhs; cbv)
  try rfl

def value649 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 2253)])).val
theorem input3598_def : input3598 = (Flapjack.WordLangProgHOL.move 1 [(2, 2253)]) := by
  unfold input3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 2253)])).val
theorem output3598_def : output3598 = (Flapjack.WordLangProgHOL.move 1 [(2, 2253)]) := by
  unfold output3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3598_skip : Flapjack.WordAlloc.isSkip output3598 = false := by
  rw [output3598_def]
  conv => lhs; cbv
  try rfl
theorem node3598_eq : Flapjack.WordAlloc.removeDeadStructural input3598 value648 value1 value2 = (output3598, value649, value1) := by
  rw [input3598_def, output3598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3598 input3597)).val
theorem input3599_def : input3599 = (.seq input3598 input3597) := by
  unfold input3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3598 output3597)).val
theorem output3599_def : output3599 = (.seq output3598 output3597) := by
  unfold output3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3599_skip : Flapjack.WordAlloc.isSkip output3599 = false := by
  rw [output3599_def]
  conv => lhs; cbv
  try rfl
theorem node3599_eq : Flapjack.WordAlloc.removeDeadStructural input3599 value647 value1 value2 = (output3599, value649, value1) := by
  rw [input3599_def, output3599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3597_eq]
  try dsimp only
  rw [node3598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2253 8#64))).val
theorem input3600_def : input3600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2253 8#64)) := by
  unfold input3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2253 8#64))).val
theorem output3600_def : output3600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2253 8#64)) := by
  unfold output3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3600_skip : Flapjack.WordAlloc.isSkip output3600 = false := by
  rw [output3600_def]
  conv => lhs; cbv
  try rfl
theorem node3600_eq : Flapjack.WordAlloc.removeDeadStructural input3600 value649 value1 value2 = (output3600, value647, value1) := by
  rw [input3600_def, output3600_def]
  try (conv => lhs; cbv)
  try rfl

def value650 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2249))).val
theorem input3601_def : input3601 = (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2249)) := by
  unfold input3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2249))).val
theorem output3601_def : output3601 = (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2249)) := by
  unfold output3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3601_skip : Flapjack.WordAlloc.isSkip output3601 = false := by
  rw [output3601_def]
  conv => lhs; cbv
  try rfl
theorem node3601_eq : Flapjack.WordAlloc.removeDeadStructural input3601 value647 value1 value2 = (output3601, value650, value8) := by
  rw [input3601_def, output3601_def]
  try (conv => lhs; cbv)
  try rfl

def value651 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2249, 2245)])).val
theorem input3602_def : input3602 = (Flapjack.WordLangProgHOL.move 0 [(2249, 2245)]) := by
  unfold input3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2249, 2245)])).val
theorem output3602_def : output3602 = (Flapjack.WordLangProgHOL.move 0 [(2249, 2245)]) := by
  unfold output3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3602_skip : Flapjack.WordAlloc.isSkip output3602 = false := by
  rw [output3602_def]
  conv => lhs; cbv
  try rfl
theorem node3602_eq : Flapjack.WordAlloc.removeDeadStructural input3602 value650 value8 value2 = (output3602, value651, value8) := by
  rw [input3602_def, output3602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3602 input3601)).val
theorem input3603_def : input3603 = (.seq input3602 input3601) := by
  unfold input3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3602 output3601)).val
theorem output3603_def : output3603 = (.seq output3602 output3601) := by
  unfold output3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3603_skip : Flapjack.WordAlloc.isSkip output3603 = false := by
  rw [output3603_def]
  conv => lhs; cbv
  try rfl
theorem node3603_eq : Flapjack.WordAlloc.removeDeadStructural input3603 value647 value1 value2 = (output3603, value651, value8) := by
  rw [input3603_def, output3603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3601_eq]
  try dsimp only
  rw [node3602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 5#64))).val
theorem input3604_def : input3604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 5#64)) := by
  unfold input3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 5#64))).val
theorem output3604_def : output3604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 5#64)) := by
  unfold output3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3604_skip : Flapjack.WordAlloc.isSkip output3604 = false := by
  rw [output3604_def]
  conv => lhs; cbv
  try rfl
theorem node3604_eq : Flapjack.WordAlloc.removeDeadStructural input3604 value651 value8 value2 = (output3604, value647, value8) := by
  rw [input3604_def, output3604_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3605_def : input3605 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3605_def : output3605 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3605_skip : Flapjack.WordAlloc.isSkip output3605 = false := by
  rw [output3605_def]
  conv => lhs; cbv
  try rfl
theorem node3605_eq : Flapjack.WordAlloc.removeDeadStructural input3605 value647 value8 value2 = (output3605, value647, value8) := by
  rw [input3605_def, output3605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3606_def : input3606 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3606_def : output3606 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3606_skip : Flapjack.WordAlloc.isSkip output3606 = true := by
  rw [output3606_def]
  conv => lhs; cbv
  try rfl
theorem node3606_eq : Flapjack.WordAlloc.removeDeadStructural input3606 value647 value8 value2 = (output3606, value647, value8) := by
  rw [input3606_def, output3606_def]
  try (conv => lhs; cbv)
  try rfl

def value652 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2241, 989), (2237, 1009), (2233, 997), (2229, 993), (2225, 1005), (2221, 981)])).val
theorem input3607_def : input3607 = (Flapjack.WordLangProgHOL.move 1 [(2241, 989), (2237, 1009), (2233, 997), (2229, 993), (2225, 1005), (2221, 981)]) := by
  unfold input3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2241, 989), (2229, 993)])).val
theorem output3607_def : output3607 = (Flapjack.WordLangProgHOL.move 1 [(2241, 989), (2229, 993)]) := by
  unfold output3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3607_skip : Flapjack.WordAlloc.isSkip output3607 = false := by
  rw [output3607_def]
  conv => lhs; cbv
  try rfl
theorem node3607_eq : Flapjack.WordAlloc.removeDeadStructural input3607 value647 value8 value2 = (output3607, value652, value8) := by
  rw [input3607_def, output3607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3607 input3606)).val
theorem input3608_def : input3608 = (.seq input3607 input3606) := by
  unfold input3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3607)).val
theorem output3608_def : output3608 = (output3607) := by
  unfold output3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3608_skip : Flapjack.WordAlloc.isSkip output3608 = false := by
  rw [output3608_def]
  conv => lhs; cbv
  try rfl
theorem node3608_eq : Flapjack.WordAlloc.removeDeadStructural input3608 value647 value8 value2 = (output3608, value652, value8) := by
  rw [input3608_def, output3608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3606_eq]
  try dsimp only
  rw [node3607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3609_def : input3609 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3609_def : output3609 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3609_skip : Flapjack.WordAlloc.isSkip output3609 = false := by
  rw [output3609_def]
  conv => lhs; cbv
  try rfl
theorem node3609_eq : Flapjack.WordAlloc.removeDeadStructural input3609 value652 value8 value2 = (output3609, value652, value8) := by
  rw [input3609_def, output3609_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 0#64))).val
theorem input3610_def : input3610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 0#64)) := by
  unfold input3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3610_def : output3610 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3610_skip : Flapjack.WordAlloc.isSkip output3610 = true := by
  rw [output3610_def]
  conv => lhs; cbv
  try rfl
theorem node3610_eq : Flapjack.WordAlloc.removeDeadStructural input3610 value652 value8 value2 = (output3610, value652, value8) := by
  rw [input3610_def, output3610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3611_def : input3611 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3611_def : output3611 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3611_skip : Flapjack.WordAlloc.isSkip output3611 = false := by
  rw [output3611_def]
  conv => lhs; cbv
  try rfl
theorem node3611_eq : Flapjack.WordAlloc.removeDeadStructural input3611 value652 value8 value2 = (output3611, value652, value8) := by
  rw [input3611_def, output3611_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 0#64))).val
theorem input3612_def : input3612 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 0#64)) := by
  unfold input3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3612_def : output3612 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3612_skip : Flapjack.WordAlloc.isSkip output3612 = true := by
  rw [output3612_def]
  conv => lhs; cbv
  try rfl
theorem node3612_eq : Flapjack.WordAlloc.removeDeadStructural input3612 value652 value8 value2 = (output3612, value652, value8) := by
  rw [input3612_def, output3612_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3612 input3611)).val
theorem input3613_def : input3613 = (.seq input3612 input3611) := by
  unfold input3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3611)).val
theorem output3613_def : output3613 = (output3611) := by
  unfold output3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3613_skip : Flapjack.WordAlloc.isSkip output3613 = false := by
  rw [output3613_def]
  conv => lhs; cbv
  try rfl
theorem node3613_eq : Flapjack.WordAlloc.removeDeadStructural input3613 value652 value8 value2 = (output3613, value652, value8) := by
  rw [input3613_def, output3613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3611_eq]
  try dsimp only
  rw [node3612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3613 input3610)).val
theorem input3614_def : input3614 = (.seq input3613 input3610) := by
  unfold input3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3613)).val
theorem output3614_def : output3614 = (output3613) := by
  unfold output3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3614_skip : Flapjack.WordAlloc.isSkip output3614 = false := by
  rw [output3614_def]
  conv => lhs; cbv
  try rfl
theorem node3614_eq : Flapjack.WordAlloc.removeDeadStructural input3614 value652 value8 value2 = (output3614, value652, value8) := by
  rw [input3614_def, output3614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3610_eq]
  try dsimp only
  rw [node3613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 0#64))).val
theorem input3615_def : input3615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 0#64)) := by
  unfold input3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3615_def : output3615 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3615_skip : Flapjack.WordAlloc.isSkip output3615 = true := by
  rw [output3615_def]
  conv => lhs; cbv
  try rfl
theorem node3615_eq : Flapjack.WordAlloc.removeDeadStructural input3615 value652 value8 value2 = (output3615, value652, value8) := by
  rw [input3615_def, output3615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 0#64))).val
theorem input3616_def : input3616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 0#64)) := by
  unfold input3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3616_def : output3616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3616_skip : Flapjack.WordAlloc.isSkip output3616 = true := by
  rw [output3616_def]
  conv => lhs; cbv
  try rfl
theorem node3616_eq : Flapjack.WordAlloc.removeDeadStructural input3616 value652 value8 value2 = (output3616, value652, value8) := by
  rw [input3616_def, output3616_def]
  try (conv => lhs; cbv)
  try rfl

def value653 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 0#64))).val
theorem input3617_def : input3617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 0#64)) := by
  unfold input3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 0#64))).val
theorem output3617_def : output3617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 0#64)) := by
  unfold output3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3617_skip : Flapjack.WordAlloc.isSkip output3617 = false := by
  rw [output3617_def]
  conv => lhs; cbv
  try rfl
theorem node3617_eq : Flapjack.WordAlloc.removeDeadStructural input3617 value652 value8 value2 = (output3617, value653, value8) := by
  rw [input3617_def, output3617_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3618_def : input3618 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3618_def : output3618 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3618_skip : Flapjack.WordAlloc.isSkip output3618 = true := by
  rw [output3618_def]
  conv => lhs; cbv
  try rfl
theorem node3618_eq : Flapjack.WordAlloc.removeDeadStructural input3618 value653 value8 value2 = (output3618, value653, value8) := by
  rw [input3618_def, output3618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3618 input3617)).val
theorem input3619_def : input3619 = (.seq input3618 input3617) := by
  unfold input3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3617)).val
theorem output3619_def : output3619 = (output3617) := by
  unfold output3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3619_skip : Flapjack.WordAlloc.isSkip output3619 = false := by
  rw [output3619_def]
  conv => lhs; cbv
  try rfl
theorem node3619_eq : Flapjack.WordAlloc.removeDeadStructural input3619 value652 value8 value2 = (output3619, value653, value8) := by
  rw [input3619_def, output3619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3617_eq]
  try dsimp only
  rw [node3618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3619 input3616)).val
theorem input3620_def : input3620 = (.seq input3619 input3616) := by
  unfold input3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3619)).val
theorem output3620_def : output3620 = (output3619) := by
  unfold output3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3620_skip : Flapjack.WordAlloc.isSkip output3620 = false := by
  rw [output3620_def]
  conv => lhs; cbv
  try rfl
theorem node3620_eq : Flapjack.WordAlloc.removeDeadStructural input3620 value652 value8 value2 = (output3620, value653, value8) := by
  rw [input3620_def, output3620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3616_eq]
  try dsimp only
  rw [node3619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3620 input3615)).val
theorem input3621_def : input3621 = (.seq input3620 input3615) := by
  unfold input3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3620)).val
theorem output3621_def : output3621 = (output3620) := by
  unfold output3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3621_skip : Flapjack.WordAlloc.isSkip output3621 = false := by
  rw [output3621_def]
  conv => lhs; cbv
  try rfl
theorem node3621_eq : Flapjack.WordAlloc.removeDeadStructural input3621 value652 value8 value2 = (output3621, value653, value8) := by
  rw [input3621_def, output3621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3615_eq]
  try dsimp only
  rw [node3620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value654 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(989, 957), (985, 973), (981, 977)])).val
theorem input3622_def : input3622 = (Flapjack.WordLangProgHOL.move 1 [(989, 957), (985, 973), (981, 977)]) := by
  unfold input3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(989, 957)])).val
theorem output3622_def : output3622 = (Flapjack.WordLangProgHOL.move 1 [(989, 957)]) := by
  unfold output3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3622_skip : Flapjack.WordAlloc.isSkip output3622 = false := by
  rw [output3622_def]
  conv => lhs; cbv
  try rfl
theorem node3622_eq : Flapjack.WordAlloc.removeDeadStructural input3622 value653 value8 value2 = (output3622, value654, value8) := by
  rw [input3622_def, output3622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3622 input3621)).val
theorem input3623_def : input3623 = (.seq input3622 input3621) := by
  unfold input3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3622 output3621)).val
theorem output3623_def : output3623 = (.seq output3622 output3621) := by
  unfold output3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3623_skip : Flapjack.WordAlloc.isSkip output3623 = false := by
  rw [output3623_def]
  conv => lhs; cbv
  try rfl
theorem node3623_eq : Flapjack.WordAlloc.removeDeadStructural input3623 value652 value8 value2 = (output3623, value654, value8) := by
  rw [input3623_def, output3623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3621_eq]
  try dsimp only
  rw [node3622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value655 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 957 [2])).val
theorem input3624_def : input3624 = (Flapjack.WordLangProgHOL.return 957 [2]) := by
  unfold input3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 957 [2])).val
theorem output3624_def : output3624 = (Flapjack.WordLangProgHOL.return 957 [2]) := by
  unfold output3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3624_skip : Flapjack.WordAlloc.isSkip output3624 = false := by
  rw [output3624_def]
  conv => lhs; cbv
  try rfl
theorem node3624_eq : Flapjack.WordAlloc.removeDeadStructural input3624 value654 value8 value2 = (output3624, value655, value1) := by
  rw [input3624_def, output3624_def]
  try (conv => lhs; cbv)
  try rfl

def value656 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 977)])).val
theorem input3625_def : input3625 = (Flapjack.WordLangProgHOL.move 0 [(2, 977)]) := by
  unfold input3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 977)])).val
theorem output3625_def : output3625 = (Flapjack.WordLangProgHOL.move 0 [(2, 977)]) := by
  unfold output3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3625_skip : Flapjack.WordAlloc.isSkip output3625 = false := by
  rw [output3625_def]
  conv => lhs; cbv
  try rfl
theorem node3625_eq : Flapjack.WordAlloc.removeDeadStructural input3625 value655 value1 value2 = (output3625, value656, value1) := by
  rw [input3625_def, output3625_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3625 input3624)).val
theorem input3626_def : input3626 = (.seq input3625 input3624) := by
  unfold input3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3625 output3624)).val
theorem output3626_def : output3626 = (.seq output3625 output3624) := by
  unfold output3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3626_skip : Flapjack.WordAlloc.isSkip output3626 = false := by
  rw [output3626_def]
  conv => lhs; cbv
  try rfl
theorem node3626_eq : Flapjack.WordAlloc.removeDeadStructural input3626 value654 value8 value2 = (output3626, value656, value1) := by
  rw [input3626_def, output3626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3624_eq]
  try dsimp only
  rw [node3625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 0#64))).val
theorem input3627_def : input3627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 0#64)) := by
  unfold input3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 0#64))).val
theorem output3627_def : output3627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 0#64)) := by
  unfold output3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3627_skip : Flapjack.WordAlloc.isSkip output3627 = false := by
  rw [output3627_def]
  conv => lhs; cbv
  try rfl
theorem node3627_eq : Flapjack.WordAlloc.removeDeadStructural input3627 value656 value1 value2 = (output3627, value654, value1) := by
  rw [input3627_def, output3627_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3628_def : input3628 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3628_def : output3628 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3628_skip : Flapjack.WordAlloc.isSkip output3628 = false := by
  rw [output3628_def]
  conv => lhs; cbv
  try rfl
theorem node3628_eq : Flapjack.WordAlloc.removeDeadStructural input3628 value654 value1 value2 = (output3628, value654, value1) := by
  rw [input3628_def, output3628_def]
  try (conv => lhs; cbv)
  try rfl

def value657 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(961, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(969, 961)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 973 0#64)))),
      597, 24))
  (some 509) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(965, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 965)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 969 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(973, 965)]))),
      597, 25)))).val
theorem input3629_def : input3629 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(961, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(969, 961)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 973 0#64)))),
      597, 24))
  (some 509) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(965, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 965)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 969 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(973, 965)]))),
      597, 25))) := by
  unfold input3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(957, 951)], 597, 24))
  (some 509) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(965, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 965)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 25)))).val
theorem output3629_def : output3629 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(957, 951)], 597, 24))
  (some 509) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(957, 951)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(965, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 965)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 25))) := by
  unfold output3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3629_skip : Flapjack.WordAlloc.isSkip output3629 = false := by
  rw [output3629_def]
  conv => lhs; cbv
  try rfl
theorem node3629_eq : Flapjack.WordAlloc.removeDeadStructural input3629 value654 value1 value2 = (output3629, value657, value1) := by
  rw [input3629_def, output3629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3630_def : input3630 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3630_def : output3630 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3630_skip : Flapjack.WordAlloc.isSkip output3630 = true := by
  rw [output3630_def]
  conv => lhs; cbv
  try rfl
theorem node3630_eq : Flapjack.WordAlloc.removeDeadStructural input3630 value657 value1 value2 = (output3630, value657, value1) := by
  rw [input3630_def, output3630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3630 input3629)).val
theorem input3631_def : input3631 = (.seq input3630 input3629) := by
  unfold input3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3629)).val
theorem output3631_def : output3631 = (output3629) := by
  unfold output3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3631_skip : Flapjack.WordAlloc.isSkip output3631 = false := by
  rw [output3631_def]
  conv => lhs; cbv
  try rfl
theorem node3631_eq : Flapjack.WordAlloc.removeDeadStructural input3631 value654 value1 value2 = (output3631, value657, value1) := by
  rw [input3631_def, output3631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3629_eq]
  try dsimp only
  rw [node3630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value658 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(951, 909)])).val
theorem input3632_def : input3632 = (Flapjack.WordLangProgHOL.move 0 [(951, 909)]) := by
  unfold input3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(951, 909)])).val
theorem output3632_def : output3632 = (Flapjack.WordLangProgHOL.move 0 [(951, 909)]) := by
  unfold output3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3632_skip : Flapjack.WordAlloc.isSkip output3632 = false := by
  rw [output3632_def]
  conv => lhs; cbv
  try rfl
theorem node3632_eq : Flapjack.WordAlloc.removeDeadStructural input3632 value657 value1 value2 = (output3632, value658, value1) := by
  rw [input3632_def, output3632_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3632 input3631)).val
theorem input3633_def : input3633 = (.seq input3632 input3631) := by
  unfold input3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3632 output3631)).val
theorem output3633_def : output3633 = (.seq output3632 output3631) := by
  unfold output3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3633_skip : Flapjack.WordAlloc.isSkip output3633 = false := by
  rw [output3633_def]
  conv => lhs; cbv
  try rfl
theorem node3633_eq : Flapjack.WordAlloc.removeDeadStructural input3633 value654 value1 value2 = (output3633, value658, value1) := by
  rw [input3633_def, output3633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3631_eq]
  try dsimp only
  rw [node3632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 1#64))).val
theorem input3634_def : input3634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 1#64)) := by
  unfold input3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3634_def : output3634 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3634_skip : Flapjack.WordAlloc.isSkip output3634 = true := by
  rw [output3634_def]
  conv => lhs; cbv
  try rfl
theorem node3634_eq : Flapjack.WordAlloc.removeDeadStructural input3634 value658 value1 value2 = (output3634, value658, value1) := by
  rw [input3634_def, output3634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3635_def : input3635 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3635_def : output3635 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3635_skip : Flapjack.WordAlloc.isSkip output3635 = false := by
  rw [output3635_def]
  conv => lhs; cbv
  try rfl
theorem node3635_eq : Flapjack.WordAlloc.removeDeadStructural input3635 value658 value1 value2 = (output3635, value658, value1) := by
  rw [input3635_def, output3635_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 941 1#64))).val
theorem input3636_def : input3636 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 941 1#64)) := by
  unfold input3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3636_def : output3636 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3636_skip : Flapjack.WordAlloc.isSkip output3636 = true := by
  rw [output3636_def]
  conv => lhs; cbv
  try rfl
theorem node3636_eq : Flapjack.WordAlloc.removeDeadStructural input3636 value658 value1 value2 = (output3636, value658, value1) := by
  rw [input3636_def, output3636_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3636 input3635)).val
theorem input3637_def : input3637 = (.seq input3636 input3635) := by
  unfold input3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3635)).val
theorem output3637_def : output3637 = (output3635) := by
  unfold output3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3637_skip : Flapjack.WordAlloc.isSkip output3637 = false := by
  rw [output3637_def]
  conv => lhs; cbv
  try rfl
theorem node3637_eq : Flapjack.WordAlloc.removeDeadStructural input3637 value658 value1 value2 = (output3637, value658, value1) := by
  rw [input3637_def, output3637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3635_eq]
  try dsimp only
  rw [node3636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3637 input3634)).val
theorem input3638_def : input3638 = (.seq input3637 input3634) := by
  unfold input3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3637)).val
theorem output3638_def : output3638 = (output3637) := by
  unfold output3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3638_skip : Flapjack.WordAlloc.isSkip output3638 = false := by
  rw [output3638_def]
  conv => lhs; cbv
  try rfl
theorem node3638_eq : Flapjack.WordAlloc.removeDeadStructural input3638 value658 value1 value2 = (output3638, value658, value1) := by
  rw [input3638_def, output3638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3634_eq]
  try dsimp only
  rw [node3637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3638 input3633)).val
theorem input3639_def : input3639 = (.seq input3638 input3633) := by
  unfold input3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3638 output3633)).val
theorem output3639_def : output3639 = (.seq output3638 output3633) := by
  unfold output3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3639_skip : Flapjack.WordAlloc.isSkip output3639 = false := by
  rw [output3639_def]
  conv => lhs; cbv
  try rfl
theorem node3639_eq : Flapjack.WordAlloc.removeDeadStructural input3639 value654 value1 value2 = (output3639, value658, value1) := by
  rw [input3639_def, output3639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3633_eq]
  try dsimp only
  rw [node3638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3639 input3628)).val
theorem input3640_def : input3640 = (.seq input3639 input3628) := by
  unfold input3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3639 output3628)).val
theorem output3640_def : output3640 = (.seq output3639 output3628) := by
  unfold output3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3640_skip : Flapjack.WordAlloc.isSkip output3640 = false := by
  rw [output3640_def]
  conv => lhs; cbv
  try rfl
theorem node3640_eq : Flapjack.WordAlloc.removeDeadStructural input3640 value654 value1 value2 = (output3640, value658, value1) := by
  rw [input3640_def, output3640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3628_eq]
  try dsimp only
  rw [node3639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3640 input3627)).val
theorem input3641_def : input3641 = (.seq input3640 input3627) := by
  unfold input3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3640 output3627)).val
theorem output3641_def : output3641 = (.seq output3640 output3627) := by
  unfold output3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3641_skip : Flapjack.WordAlloc.isSkip output3641 = false := by
  rw [output3641_def]
  conv => lhs; cbv
  try rfl
theorem node3641_eq : Flapjack.WordAlloc.removeDeadStructural input3641 value656 value1 value2 = (output3641, value658, value1) := by
  rw [input3641_def, output3641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3627_eq]
  try dsimp only
  rw [node3640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3641 input3626)).val
theorem input3642_def : input3642 = (.seq input3641 input3626) := by
  unfold input3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3641 output3626)).val
theorem output3642_def : output3642 = (.seq output3641 output3626) := by
  unfold output3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3642_skip : Flapjack.WordAlloc.isSkip output3642 = false := by
  rw [output3642_def]
  conv => lhs; cbv
  try rfl
theorem node3642_eq : Flapjack.WordAlloc.removeDeadStructural input3642 value654 value8 value2 = (output3642, value658, value1) := by
  rw [input3642_def, output3642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3626_eq]
  try dsimp only
  rw [node3641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3642 input3623)).val
theorem input3643_def : input3643 = (.seq input3642 input3623) := by
  unfold input3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3642 output3623)).val
theorem output3643_def : output3643 = (.seq output3642 output3623) := by
  unfold output3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3643_skip : Flapjack.WordAlloc.isSkip output3643 = false := by
  rw [output3643_def]
  conv => lhs; cbv
  try rfl
theorem node3643_eq : Flapjack.WordAlloc.removeDeadStructural input3643 value652 value8 value2 = (output3643, value658, value1) := by
  rw [input3643_def, output3643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3623_eq]
  try dsimp only
  rw [node3642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1001, 929)])).val
theorem input3644_def : input3644 = (Flapjack.WordLangProgHOL.move 2 [(1001, 929)]) := by
  unfold input3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3644_def : output3644 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3644_skip : Flapjack.WordAlloc.isSkip output3644 = true := by
  rw [output3644_def]
  conv => lhs; cbv
  try rfl
theorem node3644_eq : Flapjack.WordAlloc.removeDeadStructural input3644 value652 value8 value2 = (output3644, value652, value8) := by
  rw [input3644_def, output3644_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(997, 937)])).val
theorem input3645_def : input3645 = (Flapjack.WordLangProgHOL.move 2 [(997, 937)]) := by
  unfold input3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3645_def : output3645 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3645_skip : Flapjack.WordAlloc.isSkip output3645 = true := by
  rw [output3645_def]
  conv => lhs; cbv
  try rfl
theorem node3645_eq : Flapjack.WordAlloc.removeDeadStructural input3645 value652 value8 value2 = (output3645, value652, value8) := by
  rw [input3645_def, output3645_def]
  try (conv => lhs; cbv)
  try rfl

def value659 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(993, 933)])).val
theorem input3646_def : input3646 = (Flapjack.WordLangProgHOL.move 2 [(993, 933)]) := by
  unfold input3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(993, 933)])).val
theorem output3646_def : output3646 = (Flapjack.WordLangProgHOL.move 2 [(993, 933)]) := by
  unfold output3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3646_skip : Flapjack.WordAlloc.isSkip output3646 = false := by
  rw [output3646_def]
  conv => lhs; cbv
  try rfl
theorem node3646_eq : Flapjack.WordAlloc.removeDeadStructural input3646 value652 value8 value2 = (output3646, value659, value8) := by
  rw [input3646_def, output3646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3647_def : input3647 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3647_def : output3647 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3647_skip : Flapjack.WordAlloc.isSkip output3647 = true := by
  rw [output3647_def]
  conv => lhs; cbv
  try rfl
theorem node3647_eq : Flapjack.WordAlloc.removeDeadStructural input3647 value659 value8 value2 = (output3647, value659, value8) := by
  rw [input3647_def, output3647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3647 input3646)).val
theorem input3648_def : input3648 = (.seq input3647 input3646) := by
  unfold input3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3646)).val
theorem output3648_def : output3648 = (output3646) := by
  unfold output3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3648_skip : Flapjack.WordAlloc.isSkip output3648 = false := by
  rw [output3648_def]
  conv => lhs; cbv
  try rfl
theorem node3648_eq : Flapjack.WordAlloc.removeDeadStructural input3648 value652 value8 value2 = (output3648, value659, value8) := by
  rw [input3648_def, output3648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3646_eq]
  try dsimp only
  rw [node3647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3648 input3645)).val
theorem input3649_def : input3649 = (.seq input3648 input3645) := by
  unfold input3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3648)).val
theorem output3649_def : output3649 = (output3648) := by
  unfold output3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3649_skip : Flapjack.WordAlloc.isSkip output3649 = false := by
  rw [output3649_def]
  conv => lhs; cbv
  try rfl
theorem node3649_eq : Flapjack.WordAlloc.removeDeadStructural input3649 value652 value8 value2 = (output3649, value659, value8) := by
  rw [input3649_def, output3649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3645_eq]
  try dsimp only
  rw [node3648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3649 input3644)).val
theorem input3650_def : input3650 = (.seq input3649 input3644) := by
  unfold input3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3649)).val
theorem output3650_def : output3650 = (output3649) := by
  unfold output3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3650_skip : Flapjack.WordAlloc.isSkip output3650 = false := by
  rw [output3650_def]
  conv => lhs; cbv
  try rfl
theorem node3650_eq : Flapjack.WordAlloc.removeDeadStructural input3650 value652 value8 value2 = (output3650, value659, value8) := by
  rw [input3650_def, output3650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3644_eq]
  try dsimp only
  rw [node3649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value660 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(989, 909), (985, 933), (981, 901)])).val
theorem input3651_def : input3651 = (Flapjack.WordLangProgHOL.move 2 [(989, 909), (985, 933), (981, 901)]) := by
  unfold input3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(989, 909)])).val
theorem output3651_def : output3651 = (Flapjack.WordLangProgHOL.move 2 [(989, 909)]) := by
  unfold output3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3651_skip : Flapjack.WordAlloc.isSkip output3651 = false := by
  rw [output3651_def]
  conv => lhs; cbv
  try rfl
theorem node3651_eq : Flapjack.WordAlloc.removeDeadStructural input3651 value659 value8 value2 = (output3651, value660, value8) := by
  rw [input3651_def, output3651_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3651 input3650)).val
theorem input3652_def : input3652 = (.seq input3651 input3650) := by
  unfold input3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3651 output3650)).val
theorem output3652_def : output3652 = (.seq output3651 output3650) := by
  unfold output3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3652_skip : Flapjack.WordAlloc.isSkip output3652 = false := by
  rw [output3652_def]
  conv => lhs; cbv
  try rfl
theorem node3652_eq : Flapjack.WordAlloc.removeDeadStructural input3652 value652 value8 value2 = (output3652, value660, value8) := by
  rw [input3652_def, output3652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3650_eq]
  try dsimp only
  rw [node3651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3653_def : input3653 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3653_def : output3653 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3653_skip : Flapjack.WordAlloc.isSkip output3653 = true := by
  rw [output3653_def]
  conv => lhs; cbv
  try rfl
theorem node3653_eq : Flapjack.WordAlloc.removeDeadStructural input3653 value660 value8 value2 = (output3653, value660, value8) := by
  rw [input3653_def, output3653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3653 input3652)).val
theorem input3654_def : input3654 = (.seq input3653 input3652) := by
  unfold input3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3652)).val
theorem output3654_def : output3654 = (output3652) := by
  unfold output3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3654_skip : Flapjack.WordAlloc.isSkip output3654 = false := by
  rw [output3654_def]
  conv => lhs; cbv
  try rfl
theorem node3654_eq : Flapjack.WordAlloc.removeDeadStructural input3654 value652 value8 value2 = (output3654, value660, value8) := by
  rw [input3654_def, output3654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3652_eq]
  try dsimp only
  rw [node3653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value661 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 937

def value662 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 933 value661 input3643 input3654)).val
theorem input3655_def : input3655 = (.ite value15 933 value661 input3643 input3654) := by
  unfold input3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 933 value661 output3643 output3654)).val
theorem output3655_def : output3655 = (.ite value15 933 value661 output3643 output3654) := by
  unfold output3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3655_skip : Flapjack.WordAlloc.isSkip output3655 = false := by
  rw [output3655_def]
  conv => lhs; cbv
  try rfl
theorem node3655_eq : Flapjack.WordAlloc.removeDeadStructural input3655 value652 value8 value2 = (output3655, value662, value1) := by
  rw [input3655_def, output3655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3643_eq]
  try dsimp only
  rw [node3654_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3655 input3614)).val
theorem input3656_def : input3656 = (.seq input3655 input3614) := by
  unfold input3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3655 output3614)).val
theorem output3656_def : output3656 = (.seq output3655 output3614) := by
  unfold output3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3656_skip : Flapjack.WordAlloc.isSkip output3656 = false := by
  rw [output3656_def]
  conv => lhs; cbv
  try rfl
theorem node3656_eq : Flapjack.WordAlloc.removeDeadStructural input3656 value652 value8 value2 = (output3656, value662, value1) := by
  rw [input3656_def, output3656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3614_eq]
  try dsimp only
  rw [node3655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 937 11#64))).val
theorem input3657_def : input3657 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 937 11#64)) := by
  unfold input3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 937 11#64))).val
theorem output3657_def : output3657 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 937 11#64)) := by
  unfold output3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3657_skip : Flapjack.WordAlloc.isSkip output3657 = false := by
  rw [output3657_def]
  conv => lhs; cbv
  try rfl
theorem node3657_eq : Flapjack.WordAlloc.removeDeadStructural input3657 value662 value1 value2 = (output3657, value660, value1) := by
  rw [input3657_def, output3657_def]
  try (conv => lhs; cbv)
  try rfl

def value663 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(933, 913)])).val
theorem input3658_def : input3658 = (Flapjack.WordLangProgHOL.move 0 [(933, 913)]) := by
  unfold input3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(933, 913)])).val
theorem output3658_def : output3658 = (Flapjack.WordLangProgHOL.move 0 [(933, 913)]) := by
  unfold output3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3658_skip : Flapjack.WordAlloc.isSkip output3658 = false := by
  rw [output3658_def]
  conv => lhs; cbv
  try rfl
theorem node3658_eq : Flapjack.WordAlloc.removeDeadStructural input3658 value660 value1 value2 = (output3658, value663, value1) := by
  rw [input3658_def, output3658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3659_def : input3659 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3659_def : output3659 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3659_skip : Flapjack.WordAlloc.isSkip output3659 = false := by
  rw [output3659_def]
  conv => lhs; cbv
  try rfl
theorem node3659_eq : Flapjack.WordAlloc.removeDeadStructural input3659 value663 value1 value2 = (output3659, value663, value1) := by
  rw [input3659_def, output3659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 929 0#64))).val
theorem input3660_def : input3660 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 929 0#64)) := by
  unfold input3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3660_def : output3660 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3660_skip : Flapjack.WordAlloc.isSkip output3660 = true := by
  rw [output3660_def]
  conv => lhs; cbv
  try rfl
theorem node3660_eq : Flapjack.WordAlloc.removeDeadStructural input3660 value663 value1 value2 = (output3660, value663, value1) := by
  rw [input3660_def, output3660_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3661_def : input3661 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3661_def : output3661 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3661_skip : Flapjack.WordAlloc.isSkip output3661 = false := by
  rw [output3661_def]
  conv => lhs; cbv
  try rfl
theorem node3661_eq : Flapjack.WordAlloc.removeDeadStructural input3661 value663 value1 value2 = (output3661, value663, value1) := by
  rw [input3661_def, output3661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 0#64))).val
theorem input3662_def : input3662 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 0#64)) := by
  unfold input3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3662_def : output3662 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3662_skip : Flapjack.WordAlloc.isSkip output3662 = true := by
  rw [output3662_def]
  conv => lhs; cbv
  try rfl
theorem node3662_eq : Flapjack.WordAlloc.removeDeadStructural input3662 value663 value1 value2 = (output3662, value663, value1) := by
  rw [input3662_def, output3662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3662 input3661)).val
theorem input3663_def : input3663 = (.seq input3662 input3661) := by
  unfold input3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3661)).val
theorem output3663_def : output3663 = (output3661) := by
  unfold output3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3663_skip : Flapjack.WordAlloc.isSkip output3663 = false := by
  rw [output3663_def]
  conv => lhs; cbv
  try rfl
theorem node3663_eq : Flapjack.WordAlloc.removeDeadStructural input3663 value663 value1 value2 = (output3663, value663, value1) := by
  rw [input3663_def, output3663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3661_eq]
  try dsimp only
  rw [node3662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3663 input3660)).val
theorem input3664_def : input3664 = (.seq input3663 input3660) := by
  unfold input3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3663)).val
theorem output3664_def : output3664 = (output3663) := by
  unfold output3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3664_skip : Flapjack.WordAlloc.isSkip output3664 = false := by
  rw [output3664_def]
  conv => lhs; cbv
  try rfl
theorem node3664_eq : Flapjack.WordAlloc.removeDeadStructural input3664 value663 value1 value2 = (output3664, value663, value1) := by
  rw [input3664_def, output3664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3660_eq]
  try dsimp only
  rw [node3663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 0#64))).val
theorem input3665_def : input3665 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 0#64)) := by
  unfold input3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3665_def : output3665 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3665_skip : Flapjack.WordAlloc.isSkip output3665 = true := by
  rw [output3665_def]
  conv => lhs; cbv
  try rfl
theorem node3665_eq : Flapjack.WordAlloc.removeDeadStructural input3665 value663 value1 value2 = (output3665, value663, value1) := by
  rw [input3665_def, output3665_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 0#64))).val
theorem input3666_def : input3666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 0#64)) := by
  unfold input3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3666_def : output3666 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3666_skip : Flapjack.WordAlloc.isSkip output3666 = true := by
  rw [output3666_def]
  conv => lhs; cbv
  try rfl
theorem node3666_eq : Flapjack.WordAlloc.removeDeadStructural input3666 value663 value1 value2 = (output3666, value663, value1) := by
  rw [input3666_def, output3666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 913 0#64))).val
theorem input3667_def : input3667 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 913 0#64)) := by
  unfold input3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 913 0#64))).val
theorem output3667_def : output3667 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 913 0#64)) := by
  unfold output3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3667_skip : Flapjack.WordAlloc.isSkip output3667 = false := by
  rw [output3667_def]
  conv => lhs; cbv
  try rfl
theorem node3667_eq : Flapjack.WordAlloc.removeDeadStructural input3667 value663 value1 value2 = (output3667, value658, value1) := by
  rw [input3667_def, output3667_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3668_def : input3668 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3668_def : output3668 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3668_skip : Flapjack.WordAlloc.isSkip output3668 = true := by
  rw [output3668_def]
  conv => lhs; cbv
  try rfl
theorem node3668_eq : Flapjack.WordAlloc.removeDeadStructural input3668 value658 value1 value2 = (output3668, value658, value1) := by
  rw [input3668_def, output3668_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3668 input3667)).val
theorem input3669_def : input3669 = (.seq input3668 input3667) := by
  unfold input3669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3667)).val
theorem output3669_def : output3669 = (output3667) := by
  unfold output3669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3669_skip : Flapjack.WordAlloc.isSkip output3669 = false := by
  rw [output3669_def]
  conv => lhs; cbv
  try rfl
theorem node3669_eq : Flapjack.WordAlloc.removeDeadStructural input3669 value663 value1 value2 = (output3669, value658, value1) := by
  rw [input3669_def, output3669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3667_eq]
  try dsimp only
  rw [node3668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3669 input3666)).val
theorem input3670_def : input3670 = (.seq input3669 input3666) := by
  unfold input3670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3669)).val
theorem output3670_def : output3670 = (output3669) := by
  unfold output3670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3670_skip : Flapjack.WordAlloc.isSkip output3670 = false := by
  rw [output3670_def]
  conv => lhs; cbv
  try rfl
theorem node3670_eq : Flapjack.WordAlloc.removeDeadStructural input3670 value663 value1 value2 = (output3670, value658, value1) := by
  rw [input3670_def, output3670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3666_eq]
  try dsimp only
  rw [node3669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3670 input3665)).val
theorem input3671_def : input3671 = (.seq input3670 input3665) := by
  unfold input3671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3670)).val
theorem output3671_def : output3671 = (output3670) := by
  unfold output3671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3671_skip : Flapjack.WordAlloc.isSkip output3671 = false := by
  rw [output3671_def]
  conv => lhs; cbv
  try rfl
theorem node3671_eq : Flapjack.WordAlloc.removeDeadStructural input3671 value663 value1 value2 = (output3671, value658, value1) := by
  rw [input3671_def, output3671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3665_eq]
  try dsimp only
  rw [node3670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value664 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(909, 877), (905, 893), (901, 897)])).val
theorem input3672_def : input3672 = (Flapjack.WordLangProgHOL.move 1 [(909, 877), (905, 893), (901, 897)]) := by
  unfold input3672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(909, 877)])).val
theorem output3672_def : output3672 = (Flapjack.WordLangProgHOL.move 1 [(909, 877)]) := by
  unfold output3672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3672_skip : Flapjack.WordAlloc.isSkip output3672 = false := by
  rw [output3672_def]
  conv => lhs; cbv
  try rfl
theorem node3672_eq : Flapjack.WordAlloc.removeDeadStructural input3672 value658 value1 value2 = (output3672, value664, value1) := by
  rw [input3672_def, output3672_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3672 input3671)).val
theorem input3673_def : input3673 = (.seq input3672 input3671) := by
  unfold input3673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3672 output3671)).val
theorem output3673_def : output3673 = (.seq output3672 output3671) := by
  unfold output3673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3673_skip : Flapjack.WordAlloc.isSkip output3673 = false := by
  rw [output3673_def]
  conv => lhs; cbv
  try rfl
theorem node3673_eq : Flapjack.WordAlloc.removeDeadStructural input3673 value663 value1 value2 = (output3673, value664, value1) := by
  rw [input3673_def, output3673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3671_eq]
  try dsimp only
  rw [node3672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value665 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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

@[irreducible, cbv_opaque] def input3674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 877 [2])).val
theorem input3674_def : input3674 = (Flapjack.WordLangProgHOL.return 877 [2]) := by
  unfold input3674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 877 [2])).val
theorem output3674_def : output3674 = (Flapjack.WordLangProgHOL.return 877 [2]) := by
  unfold output3674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3674_skip : Flapjack.WordAlloc.isSkip output3674 = false := by
  rw [output3674_def]
  conv => lhs; cbv
  try rfl
theorem node3674_eq : Flapjack.WordAlloc.removeDeadStructural input3674 value664 value1 value2 = (output3674, value665, value1) := by
  rw [input3674_def, output3674_def]
  try (conv => lhs; cbv)
  try rfl

def value666 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 897)])).val
theorem input3675_def : input3675 = (Flapjack.WordLangProgHOL.move 0 [(2, 897)]) := by
  unfold input3675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 897)])).val
theorem output3675_def : output3675 = (Flapjack.WordLangProgHOL.move 0 [(2, 897)]) := by
  unfold output3675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3675_skip : Flapjack.WordAlloc.isSkip output3675 = false := by
  rw [output3675_def]
  conv => lhs; cbv
  try rfl
theorem node3675_eq : Flapjack.WordAlloc.removeDeadStructural input3675 value665 value1 value2 = (output3675, value666, value1) := by
  rw [input3675_def, output3675_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3675 input3674)).val
theorem input3676_def : input3676 = (.seq input3675 input3674) := by
  unfold input3676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3675 output3674)).val
theorem output3676_def : output3676 = (.seq output3675 output3674) := by
  unfold output3676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3676_skip : Flapjack.WordAlloc.isSkip output3676 = false := by
  rw [output3676_def]
  conv => lhs; cbv
  try rfl
theorem node3676_eq : Flapjack.WordAlloc.removeDeadStructural input3676 value664 value1 value2 = (output3676, value666, value1) := by
  rw [input3676_def, output3676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3674_eq]
  try dsimp only
  rw [node3675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64))).val
theorem input3677_def : input3677 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)) := by
  unfold input3677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64))).val
theorem output3677_def : output3677 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)) := by
  unfold output3677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3677_skip : Flapjack.WordAlloc.isSkip output3677 = false := by
  rw [output3677_def]
  conv => lhs; cbv
  try rfl
theorem node3677_eq : Flapjack.WordAlloc.removeDeadStructural input3677 value666 value1 value2 = (output3677, value664, value1) := by
  rw [input3677_def, output3677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3678_def : input3678 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3678_def : output3678 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3678_skip : Flapjack.WordAlloc.isSkip output3678 = false := by
  rw [output3678_def]
  conv => lhs; cbv
  try rfl
theorem node3678_eq : Flapjack.WordAlloc.removeDeadStructural input3678 value664 value1 value2 = (output3678, value664, value1) := by
  rw [input3678_def, output3678_def]
  try (conv => lhs; cbv)
  try rfl

def value667 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(881, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(889, 881)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)))),
      597, 22))
  (some 508) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(885, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 885)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(893, 885)]))),
      597, 23)))).val
theorem input3679_def : input3679 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(881, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(889, 881)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 0#64)))),
      597, 22))
  (some 508) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(885, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 885)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(893, 885)]))),
      597, 23))) := by
  unfold input3679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(877, 871)], 597, 22))
  (some 508) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(885, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 885)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 23)))).val
theorem output3679_def : output3679 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(877, 871)], 597, 22))
  (some 508) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(877, 871)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(885, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 885)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 23))) := by
  unfold output3679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3679_skip : Flapjack.WordAlloc.isSkip output3679 = false := by
  rw [output3679_def]
  conv => lhs; cbv
  try rfl
theorem node3679_eq : Flapjack.WordAlloc.removeDeadStructural input3679 value664 value1 value2 = (output3679, value667, value1) := by
  rw [input3679_def, output3679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3680_def : input3680 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3680_def : output3680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3680_skip : Flapjack.WordAlloc.isSkip output3680 = true := by
  rw [output3680_def]
  conv => lhs; cbv
  try rfl
theorem node3680_eq : Flapjack.WordAlloc.removeDeadStructural input3680 value667 value1 value2 = (output3680, value667, value1) := by
  rw [input3680_def, output3680_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3680 input3679)).val
theorem input3681_def : input3681 = (.seq input3680 input3679) := by
  unfold input3681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3679)).val
theorem output3681_def : output3681 = (output3679) := by
  unfold output3681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3681_skip : Flapjack.WordAlloc.isSkip output3681 = false := by
  rw [output3681_def]
  conv => lhs; cbv
  try rfl
theorem node3681_eq : Flapjack.WordAlloc.removeDeadStructural input3681 value664 value1 value2 = (output3681, value667, value1) := by
  rw [input3681_def, output3681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3679_eq]
  try dsimp only
  rw [node3680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value668 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(871, 829)])).val
theorem input3682_def : input3682 = (Flapjack.WordLangProgHOL.move 0 [(871, 829)]) := by
  unfold input3682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(871, 829)])).val
theorem output3682_def : output3682 = (Flapjack.WordLangProgHOL.move 0 [(871, 829)]) := by
  unfold output3682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3682_skip : Flapjack.WordAlloc.isSkip output3682 = false := by
  rw [output3682_def]
  conv => lhs; cbv
  try rfl
theorem node3682_eq : Flapjack.WordAlloc.removeDeadStructural input3682 value667 value1 value2 = (output3682, value668, value1) := by
  rw [input3682_def, output3682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3682 input3681)).val
theorem input3683_def : input3683 = (.seq input3682 input3681) := by
  unfold input3683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3682 output3681)).val
theorem output3683_def : output3683 = (.seq output3682 output3681) := by
  unfold output3683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3683_skip : Flapjack.WordAlloc.isSkip output3683 = false := by
  rw [output3683_def]
  conv => lhs; cbv
  try rfl
theorem node3683_eq : Flapjack.WordAlloc.removeDeadStructural input3683 value664 value1 value2 = (output3683, value668, value1) := by
  rw [input3683_def, output3683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3681_eq]
  try dsimp only
  rw [node3682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 1#64))).val
theorem input3684_def : input3684 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 1#64)) := by
  unfold input3684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3684_def : output3684 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3684_skip : Flapjack.WordAlloc.isSkip output3684 = true := by
  rw [output3684_def]
  conv => lhs; cbv
  try rfl
theorem node3684_eq : Flapjack.WordAlloc.removeDeadStructural input3684 value668 value1 value2 = (output3684, value668, value1) := by
  rw [input3684_def, output3684_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3685_def : input3685 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3685_def : output3685 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3685_skip : Flapjack.WordAlloc.isSkip output3685 = false := by
  rw [output3685_def]
  conv => lhs; cbv
  try rfl
theorem node3685_eq : Flapjack.WordAlloc.removeDeadStructural input3685 value668 value1 value2 = (output3685, value668, value1) := by
  rw [input3685_def, output3685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 861 1#64))).val
theorem input3686_def : input3686 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 861 1#64)) := by
  unfold input3686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3686_def : output3686 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3686_skip : Flapjack.WordAlloc.isSkip output3686 = true := by
  rw [output3686_def]
  conv => lhs; cbv
  try rfl
theorem node3686_eq : Flapjack.WordAlloc.removeDeadStructural input3686 value668 value1 value2 = (output3686, value668, value1) := by
  rw [input3686_def, output3686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3686 input3685)).val
theorem input3687_def : input3687 = (.seq input3686 input3685) := by
  unfold input3687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3685)).val
theorem output3687_def : output3687 = (output3685) := by
  unfold output3687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3687_skip : Flapjack.WordAlloc.isSkip output3687 = false := by
  rw [output3687_def]
  conv => lhs; cbv
  try rfl
theorem node3687_eq : Flapjack.WordAlloc.removeDeadStructural input3687 value668 value1 value2 = (output3687, value668, value1) := by
  rw [input3687_def, output3687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3685_eq]
  try dsimp only
  rw [node3686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3687 input3684)).val
theorem input3688_def : input3688 = (.seq input3687 input3684) := by
  unfold input3688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3687)).val
theorem output3688_def : output3688 = (output3687) := by
  unfold output3688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3688_skip : Flapjack.WordAlloc.isSkip output3688 = false := by
  rw [output3688_def]
  conv => lhs; cbv
  try rfl
theorem node3688_eq : Flapjack.WordAlloc.removeDeadStructural input3688 value668 value1 value2 = (output3688, value668, value1) := by
  rw [input3688_def, output3688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3684_eq]
  try dsimp only
  rw [node3687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3688 input3683)).val
theorem input3689_def : input3689 = (.seq input3688 input3683) := by
  unfold input3689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3688 output3683)).val
theorem output3689_def : output3689 = (.seq output3688 output3683) := by
  unfold output3689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3689_skip : Flapjack.WordAlloc.isSkip output3689 = false := by
  rw [output3689_def]
  conv => lhs; cbv
  try rfl
theorem node3689_eq : Flapjack.WordAlloc.removeDeadStructural input3689 value664 value1 value2 = (output3689, value668, value1) := by
  rw [input3689_def, output3689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3683_eq]
  try dsimp only
  rw [node3688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3689 input3678)).val
theorem input3690_def : input3690 = (.seq input3689 input3678) := by
  unfold input3690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3689 output3678)).val
theorem output3690_def : output3690 = (.seq output3689 output3678) := by
  unfold output3690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3690_skip : Flapjack.WordAlloc.isSkip output3690 = false := by
  rw [output3690_def]
  conv => lhs; cbv
  try rfl
theorem node3690_eq : Flapjack.WordAlloc.removeDeadStructural input3690 value664 value1 value2 = (output3690, value668, value1) := by
  rw [input3690_def, output3690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3678_eq]
  try dsimp only
  rw [node3689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3690 input3677)).val
theorem input3691_def : input3691 = (.seq input3690 input3677) := by
  unfold input3691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3690 output3677)).val
theorem output3691_def : output3691 = (.seq output3690 output3677) := by
  unfold output3691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3691_skip : Flapjack.WordAlloc.isSkip output3691 = false := by
  rw [output3691_def]
  conv => lhs; cbv
  try rfl
theorem node3691_eq : Flapjack.WordAlloc.removeDeadStructural input3691 value666 value1 value2 = (output3691, value668, value1) := by
  rw [input3691_def, output3691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3677_eq]
  try dsimp only
  rw [node3690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3691 input3676)).val
theorem input3692_def : input3692 = (.seq input3691 input3676) := by
  unfold input3692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3691 output3676)).val
theorem output3692_def : output3692 = (.seq output3691 output3676) := by
  unfold output3692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3692_skip : Flapjack.WordAlloc.isSkip output3692 = false := by
  rw [output3692_def]
  conv => lhs; cbv
  try rfl
theorem node3692_eq : Flapjack.WordAlloc.removeDeadStructural input3692 value664 value1 value2 = (output3692, value668, value1) := by
  rw [input3692_def, output3692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3676_eq]
  try dsimp only
  rw [node3691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3692 input3673)).val
theorem input3693_def : input3693 = (.seq input3692 input3673) := by
  unfold input3693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3692 output3673)).val
theorem output3693_def : output3693 = (.seq output3692 output3673) := by
  unfold output3693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3693_skip : Flapjack.WordAlloc.isSkip output3693 = false := by
  rw [output3693_def]
  conv => lhs; cbv
  try rfl
theorem node3693_eq : Flapjack.WordAlloc.removeDeadStructural input3693 value663 value1 value2 = (output3693, value668, value1) := by
  rw [input3693_def, output3693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3673_eq]
  try dsimp only
  rw [node3692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(921, 849)])).val
theorem input3694_def : input3694 = (Flapjack.WordLangProgHOL.move 2 [(921, 849)]) := by
  unfold input3694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3694_def : output3694 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3694_skip : Flapjack.WordAlloc.isSkip output3694 = true := by
  rw [output3694_def]
  conv => lhs; cbv
  try rfl
theorem node3694_eq : Flapjack.WordAlloc.removeDeadStructural input3694 value663 value1 value2 = (output3694, value663, value1) := by
  rw [input3694_def, output3694_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(917, 857)])).val
theorem input3695_def : input3695 = (Flapjack.WordLangProgHOL.move 2 [(917, 857)]) := by
  unfold input3695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3695_def : output3695 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3695_skip : Flapjack.WordAlloc.isSkip output3695 = true := by
  rw [output3695_def]
  conv => lhs; cbv
  try rfl
theorem node3695_eq : Flapjack.WordAlloc.removeDeadStructural input3695 value663 value1 value2 = (output3695, value663, value1) := by
  rw [input3695_def, output3695_def]
  try (conv => lhs; cbv)
  try rfl

def value669 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(913, 853)])).val
theorem input3696_def : input3696 = (Flapjack.WordLangProgHOL.move 2 [(913, 853)]) := by
  unfold input3696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(913, 853)])).val
theorem output3696_def : output3696 = (Flapjack.WordLangProgHOL.move 2 [(913, 853)]) := by
  unfold output3696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3696_skip : Flapjack.WordAlloc.isSkip output3696 = false := by
  rw [output3696_def]
  conv => lhs; cbv
  try rfl
theorem node3696_eq : Flapjack.WordAlloc.removeDeadStructural input3696 value663 value1 value2 = (output3696, value669, value1) := by
  rw [input3696_def, output3696_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3697_def : input3697 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3697_def : output3697 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3697_skip : Flapjack.WordAlloc.isSkip output3697 = true := by
  rw [output3697_def]
  conv => lhs; cbv
  try rfl
theorem node3697_eq : Flapjack.WordAlloc.removeDeadStructural input3697 value669 value1 value2 = (output3697, value669, value1) := by
  rw [input3697_def, output3697_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3697 input3696)).val
theorem input3698_def : input3698 = (.seq input3697 input3696) := by
  unfold input3698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3696)).val
theorem output3698_def : output3698 = (output3696) := by
  unfold output3698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3698_skip : Flapjack.WordAlloc.isSkip output3698 = false := by
  rw [output3698_def]
  conv => lhs; cbv
  try rfl
theorem node3698_eq : Flapjack.WordAlloc.removeDeadStructural input3698 value663 value1 value2 = (output3698, value669, value1) := by
  rw [input3698_def, output3698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3696_eq]
  try dsimp only
  rw [node3697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3698 input3695)).val
theorem input3699_def : input3699 = (.seq input3698 input3695) := by
  unfold input3699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3698)).val
theorem output3699_def : output3699 = (output3698) := by
  unfold output3699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3699_skip : Flapjack.WordAlloc.isSkip output3699 = false := by
  rw [output3699_def]
  conv => lhs; cbv
  try rfl
theorem node3699_eq : Flapjack.WordAlloc.removeDeadStructural input3699 value663 value1 value2 = (output3699, value669, value1) := by
  rw [input3699_def, output3699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3695_eq]
  try dsimp only
  rw [node3698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3699 input3694)).val
theorem input3700_def : input3700 = (.seq input3699 input3694) := by
  unfold input3700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3699)).val
theorem output3700_def : output3700 = (output3699) := by
  unfold output3700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3700_skip : Flapjack.WordAlloc.isSkip output3700 = false := by
  rw [output3700_def]
  conv => lhs; cbv
  try rfl
theorem node3700_eq : Flapjack.WordAlloc.removeDeadStructural input3700 value663 value1 value2 = (output3700, value669, value1) := by
  rw [input3700_def, output3700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3694_eq]
  try dsimp only
  rw [node3699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value670 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(909, 829), (905, 853), (901, 821)])).val
theorem input3701_def : input3701 = (Flapjack.WordLangProgHOL.move 2 [(909, 829), (905, 853), (901, 821)]) := by
  unfold input3701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(909, 829)])).val
theorem output3701_def : output3701 = (Flapjack.WordLangProgHOL.move 2 [(909, 829)]) := by
  unfold output3701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3701_skip : Flapjack.WordAlloc.isSkip output3701 = false := by
  rw [output3701_def]
  conv => lhs; cbv
  try rfl
theorem node3701_eq : Flapjack.WordAlloc.removeDeadStructural input3701 value669 value1 value2 = (output3701, value670, value1) := by
  rw [input3701_def, output3701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3701 input3700)).val
theorem input3702_def : input3702 = (.seq input3701 input3700) := by
  unfold input3702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3701 output3700)).val
theorem output3702_def : output3702 = (.seq output3701 output3700) := by
  unfold output3702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3702_skip : Flapjack.WordAlloc.isSkip output3702 = false := by
  rw [output3702_def]
  conv => lhs; cbv
  try rfl
theorem node3702_eq : Flapjack.WordAlloc.removeDeadStructural input3702 value663 value1 value2 = (output3702, value670, value1) := by
  rw [input3702_def, output3702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3700_eq]
  try dsimp only
  rw [node3701_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3703_def : input3703 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3703_def : output3703 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3703_skip : Flapjack.WordAlloc.isSkip output3703 = true := by
  rw [output3703_def]
  conv => lhs; cbv
  try rfl
theorem node3703_eq : Flapjack.WordAlloc.removeDeadStructural input3703 value670 value1 value2 = (output3703, value670, value1) := by
  rw [input3703_def, output3703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3703 input3702)).val
theorem input3704_def : input3704 = (.seq input3703 input3702) := by
  unfold input3704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3702)).val
theorem output3704_def : output3704 = (output3702) := by
  unfold output3704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3704_skip : Flapjack.WordAlloc.isSkip output3704 = false := by
  rw [output3704_def]
  conv => lhs; cbv
  try rfl
theorem node3704_eq : Flapjack.WordAlloc.removeDeadStructural input3704 value663 value1 value2 = (output3704, value670, value1) := by
  rw [input3704_def, output3704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3702_eq]
  try dsimp only
  rw [node3703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value671 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 857

def value672 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 853 value671 input3693 input3704)).val
theorem input3705_def : input3705 = (.ite value15 853 value671 input3693 input3704) := by
  unfold input3705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 853 value671 output3693 output3704)).val
theorem output3705_def : output3705 = (.ite value15 853 value671 output3693 output3704) := by
  unfold output3705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3705_skip : Flapjack.WordAlloc.isSkip output3705 = false := by
  rw [output3705_def]
  conv => lhs; cbv
  try rfl
theorem node3705_eq : Flapjack.WordAlloc.removeDeadStructural input3705 value663 value1 value2 = (output3705, value672, value1) := by
  rw [input3705_def, output3705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3693_eq]
  try dsimp only
  rw [node3704_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3705 input3664)).val
theorem input3706_def : input3706 = (.seq input3705 input3664) := by
  unfold input3706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3705 output3664)).val
theorem output3706_def : output3706 = (.seq output3705 output3664) := by
  unfold output3706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3706_skip : Flapjack.WordAlloc.isSkip output3706 = false := by
  rw [output3706_def]
  conv => lhs; cbv
  try rfl
theorem node3706_eq : Flapjack.WordAlloc.removeDeadStructural input3706 value663 value1 value2 = (output3706, value672, value1) := by
  rw [input3706_def, output3706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3664_eq]
  try dsimp only
  rw [node3705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 10#64))).val
theorem input3707_def : input3707 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 10#64)) := by
  unfold input3707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 10#64))).val
theorem output3707_def : output3707 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 10#64)) := by
  unfold output3707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3707_skip : Flapjack.WordAlloc.isSkip output3707 = false := by
  rw [output3707_def]
  conv => lhs; cbv
  try rfl
theorem node3707_eq : Flapjack.WordAlloc.removeDeadStructural input3707 value672 value1 value2 = (output3707, value670, value1) := by
  rw [input3707_def, output3707_def]
  try (conv => lhs; cbv)
  try rfl

def value673 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(853, 833)])).val
theorem input3708_def : input3708 = (Flapjack.WordLangProgHOL.move 0 [(853, 833)]) := by
  unfold input3708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(853, 833)])).val
theorem output3708_def : output3708 = (Flapjack.WordLangProgHOL.move 0 [(853, 833)]) := by
  unfold output3708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3708_skip : Flapjack.WordAlloc.isSkip output3708 = false := by
  rw [output3708_def]
  conv => lhs; cbv
  try rfl
theorem node3708_eq : Flapjack.WordAlloc.removeDeadStructural input3708 value670 value1 value2 = (output3708, value673, value1) := by
  rw [input3708_def, output3708_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3709_def : input3709 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3709_def : output3709 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3709_skip : Flapjack.WordAlloc.isSkip output3709 = false := by
  rw [output3709_def]
  conv => lhs; cbv
  try rfl
theorem node3709_eq : Flapjack.WordAlloc.removeDeadStructural input3709 value673 value1 value2 = (output3709, value673, value1) := by
  rw [input3709_def, output3709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 0#64))).val
theorem input3710_def : input3710 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 0#64)) := by
  unfold input3710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3710_def : output3710 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3710_skip : Flapjack.WordAlloc.isSkip output3710 = true := by
  rw [output3710_def]
  conv => lhs; cbv
  try rfl
theorem node3710_eq : Flapjack.WordAlloc.removeDeadStructural input3710 value673 value1 value2 = (output3710, value673, value1) := by
  rw [input3710_def, output3710_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3711_def : input3711 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3711_def : output3711 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3711_skip : Flapjack.WordAlloc.isSkip output3711 = false := by
  rw [output3711_def]
  conv => lhs; cbv
  try rfl
theorem node3711_eq : Flapjack.WordAlloc.removeDeadStructural input3711 value673 value1 value2 = (output3711, value673, value1) := by
  rw [input3711_def, output3711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64))).val
theorem input3712_def : input3712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64)) := by
  unfold input3712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3712_def : output3712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3712_skip : Flapjack.WordAlloc.isSkip output3712 = true := by
  rw [output3712_def]
  conv => lhs; cbv
  try rfl
theorem node3712_eq : Flapjack.WordAlloc.removeDeadStructural input3712 value673 value1 value2 = (output3712, value673, value1) := by
  rw [input3712_def, output3712_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3712 input3711)).val
theorem input3713_def : input3713 = (.seq input3712 input3711) := by
  unfold input3713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3711)).val
theorem output3713_def : output3713 = (output3711) := by
  unfold output3713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3713_skip : Flapjack.WordAlloc.isSkip output3713 = false := by
  rw [output3713_def]
  conv => lhs; cbv
  try rfl
theorem node3713_eq : Flapjack.WordAlloc.removeDeadStructural input3713 value673 value1 value2 = (output3713, value673, value1) := by
  rw [input3713_def, output3713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3711_eq]
  try dsimp only
  rw [node3712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3713 input3710)).val
theorem input3714_def : input3714 = (.seq input3713 input3710) := by
  unfold input3714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3713)).val
theorem output3714_def : output3714 = (output3713) := by
  unfold output3714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3714_skip : Flapjack.WordAlloc.isSkip output3714 = false := by
  rw [output3714_def]
  conv => lhs; cbv
  try rfl
theorem node3714_eq : Flapjack.WordAlloc.removeDeadStructural input3714 value673 value1 value2 = (output3714, value673, value1) := by
  rw [input3714_def, output3714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3710_eq]
  try dsimp only
  rw [node3713_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 0#64))).val
theorem input3715_def : input3715 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 0#64)) := by
  unfold input3715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3715_def : output3715 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3715_skip : Flapjack.WordAlloc.isSkip output3715 = true := by
  rw [output3715_def]
  conv => lhs; cbv
  try rfl
theorem node3715_eq : Flapjack.WordAlloc.removeDeadStructural input3715 value673 value1 value2 = (output3715, value673, value1) := by
  rw [input3715_def, output3715_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 0#64))).val
theorem input3716_def : input3716 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 0#64)) := by
  unfold input3716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3716_def : output3716 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3716_skip : Flapjack.WordAlloc.isSkip output3716 = true := by
  rw [output3716_def]
  conv => lhs; cbv
  try rfl
theorem node3716_eq : Flapjack.WordAlloc.removeDeadStructural input3716 value673 value1 value2 = (output3716, value673, value1) := by
  rw [input3716_def, output3716_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64))).val
theorem input3717_def : input3717 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)) := by
  unfold input3717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64))).val
theorem output3717_def : output3717 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)) := by
  unfold output3717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3717_skip : Flapjack.WordAlloc.isSkip output3717 = false := by
  rw [output3717_def]
  conv => lhs; cbv
  try rfl
theorem node3717_eq : Flapjack.WordAlloc.removeDeadStructural input3717 value673 value1 value2 = (output3717, value668, value1) := by
  rw [input3717_def, output3717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3718_def : input3718 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3718_def : output3718 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3718_skip : Flapjack.WordAlloc.isSkip output3718 = true := by
  rw [output3718_def]
  conv => lhs; cbv
  try rfl
theorem node3718_eq : Flapjack.WordAlloc.removeDeadStructural input3718 value668 value1 value2 = (output3718, value668, value1) := by
  rw [input3718_def, output3718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3718 input3717)).val
theorem input3719_def : input3719 = (.seq input3718 input3717) := by
  unfold input3719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3717)).val
theorem output3719_def : output3719 = (output3717) := by
  unfold output3719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3719_skip : Flapjack.WordAlloc.isSkip output3719 = false := by
  rw [output3719_def]
  conv => lhs; cbv
  try rfl
theorem node3719_eq : Flapjack.WordAlloc.removeDeadStructural input3719 value673 value1 value2 = (output3719, value668, value1) := by
  rw [input3719_def, output3719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3717_eq]
  try dsimp only
  rw [node3718_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3719 input3716)).val
theorem input3720_def : input3720 = (.seq input3719 input3716) := by
  unfold input3720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3719)).val
theorem output3720_def : output3720 = (output3719) := by
  unfold output3720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3720_skip : Flapjack.WordAlloc.isSkip output3720 = false := by
  rw [output3720_def]
  conv => lhs; cbv
  try rfl
theorem node3720_eq : Flapjack.WordAlloc.removeDeadStructural input3720 value673 value1 value2 = (output3720, value668, value1) := by
  rw [input3720_def, output3720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3716_eq]
  try dsimp only
  rw [node3719_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3720 input3715)).val
theorem input3721_def : input3721 = (.seq input3720 input3715) := by
  unfold input3721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3720)).val
theorem output3721_def : output3721 = (output3720) := by
  unfold output3721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3721_skip : Flapjack.WordAlloc.isSkip output3721 = false := by
  rw [output3721_def]
  conv => lhs; cbv
  try rfl
theorem node3721_eq : Flapjack.WordAlloc.removeDeadStructural input3721 value673 value1 value2 = (output3721, value668, value1) := by
  rw [input3721_def, output3721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3715_eq]
  try dsimp only
  rw [node3720_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value674 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(829, 797), (825, 813), (821, 817)])).val
theorem input3722_def : input3722 = (Flapjack.WordLangProgHOL.move 1 [(829, 797), (825, 813), (821, 817)]) := by
  unfold input3722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(829, 797)])).val
theorem output3722_def : output3722 = (Flapjack.WordLangProgHOL.move 1 [(829, 797)]) := by
  unfold output3722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3722_skip : Flapjack.WordAlloc.isSkip output3722 = false := by
  rw [output3722_def]
  conv => lhs; cbv
  try rfl
theorem node3722_eq : Flapjack.WordAlloc.removeDeadStructural input3722 value668 value1 value2 = (output3722, value674, value1) := by
  rw [input3722_def, output3722_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3722 input3721)).val
theorem input3723_def : input3723 = (.seq input3722 input3721) := by
  unfold input3723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3722 output3721)).val
theorem output3723_def : output3723 = (.seq output3722 output3721) := by
  unfold output3723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3723_skip : Flapjack.WordAlloc.isSkip output3723 = false := by
  rw [output3723_def]
  conv => lhs; cbv
  try rfl
theorem node3723_eq : Flapjack.WordAlloc.removeDeadStructural input3723 value673 value1 value2 = (output3723, value674, value1) := by
  rw [input3723_def, output3723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3721_eq]
  try dsimp only
  rw [node3722_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value675 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 797 [2])).val
theorem input3724_def : input3724 = (Flapjack.WordLangProgHOL.return 797 [2]) := by
  unfold input3724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 797 [2])).val
theorem output3724_def : output3724 = (Flapjack.WordLangProgHOL.return 797 [2]) := by
  unfold output3724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3724_skip : Flapjack.WordAlloc.isSkip output3724 = false := by
  rw [output3724_def]
  conv => lhs; cbv
  try rfl
theorem node3724_eq : Flapjack.WordAlloc.removeDeadStructural input3724 value674 value1 value2 = (output3724, value675, value1) := by
  rw [input3724_def, output3724_def]
  try (conv => lhs; cbv)
  try rfl

def value676 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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

@[irreducible, cbv_opaque] def input3725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 817)])).val
theorem input3725_def : input3725 = (Flapjack.WordLangProgHOL.move 0 [(2, 817)]) := by
  unfold input3725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 817)])).val
theorem output3725_def : output3725 = (Flapjack.WordLangProgHOL.move 0 [(2, 817)]) := by
  unfold output3725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3725_skip : Flapjack.WordAlloc.isSkip output3725 = false := by
  rw [output3725_def]
  conv => lhs; cbv
  try rfl
theorem node3725_eq : Flapjack.WordAlloc.removeDeadStructural input3725 value675 value1 value2 = (output3725, value676, value1) := by
  rw [input3725_def, output3725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3725 input3724)).val
theorem input3726_def : input3726 = (.seq input3725 input3724) := by
  unfold input3726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3725 output3724)).val
theorem output3726_def : output3726 = (.seq output3725 output3724) := by
  unfold output3726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3726_skip : Flapjack.WordAlloc.isSkip output3726 = false := by
  rw [output3726_def]
  conv => lhs; cbv
  try rfl
theorem node3726_eq : Flapjack.WordAlloc.removeDeadStructural input3726 value674 value1 value2 = (output3726, value676, value1) := by
  rw [input3726_def, output3726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3724_eq]
  try dsimp only
  rw [node3725_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64))).val
theorem input3727_def : input3727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)) := by
  unfold input3727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64))).val
theorem output3727_def : output3727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)) := by
  unfold output3727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3727_skip : Flapjack.WordAlloc.isSkip output3727 = false := by
  rw [output3727_def]
  conv => lhs; cbv
  try rfl
theorem node3727_eq : Flapjack.WordAlloc.removeDeadStructural input3727 value676 value1 value2 = (output3727, value674, value1) := by
  rw [input3727_def, output3727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3728_def : input3728 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3728_def : output3728 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3728_skip : Flapjack.WordAlloc.isSkip output3728 = false := by
  rw [output3728_def]
  conv => lhs; cbv
  try rfl
theorem node3728_eq : Flapjack.WordAlloc.removeDeadStructural input3728 value674 value1 value2 = (output3728, value674, value1) := by
  rw [input3728_def, output3728_def]
  try (conv => lhs; cbv)
  try rfl

def value677 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3729 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(801, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(809, 801)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 813 0#64)))),
      597, 20))
  (some 507) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(805, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 805)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(813, 805)]))),
      597, 21)))).val
theorem input3729_def : input3729 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(801, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(809, 801)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 813 0#64)))),
      597, 20))
  (some 507) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(805, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 805)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(813, 805)]))),
      597, 21))) := by
  unfold input3729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3729 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(797, 791)], 597, 20))
  (some 507) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(805, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 805)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 21)))).val
theorem output3729_def : output3729 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(797, 791)], 597, 20))
  (some 507) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(797, 791)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(805, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 805)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 21))) := by
  unfold output3729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3729_skip : Flapjack.WordAlloc.isSkip output3729 = false := by
  rw [output3729_def]
  conv => lhs; cbv
  try rfl
theorem node3729_eq : Flapjack.WordAlloc.removeDeadStructural input3729 value674 value1 value2 = (output3729, value677, value1) := by
  rw [input3729_def, output3729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3730_def : input3730 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3730_def : output3730 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3730_skip : Flapjack.WordAlloc.isSkip output3730 = true := by
  rw [output3730_def]
  conv => lhs; cbv
  try rfl
theorem node3730_eq : Flapjack.WordAlloc.removeDeadStructural input3730 value677 value1 value2 = (output3730, value677, value1) := by
  rw [input3730_def, output3730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3730 input3729)).val
theorem input3731_def : input3731 = (.seq input3730 input3729) := by
  unfold input3731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3729)).val
theorem output3731_def : output3731 = (output3729) := by
  unfold output3731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3731_skip : Flapjack.WordAlloc.isSkip output3731 = false := by
  rw [output3731_def]
  conv => lhs; cbv
  try rfl
theorem node3731_eq : Flapjack.WordAlloc.removeDeadStructural input3731 value674 value1 value2 = (output3731, value677, value1) := by
  rw [input3731_def, output3731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3729_eq]
  try dsimp only
  rw [node3730_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value678 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(791, 749)])).val
theorem input3732_def : input3732 = (Flapjack.WordLangProgHOL.move 0 [(791, 749)]) := by
  unfold input3732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(791, 749)])).val
theorem output3732_def : output3732 = (Flapjack.WordLangProgHOL.move 0 [(791, 749)]) := by
  unfold output3732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3732_skip : Flapjack.WordAlloc.isSkip output3732 = false := by
  rw [output3732_def]
  conv => lhs; cbv
  try rfl
theorem node3732_eq : Flapjack.WordAlloc.removeDeadStructural input3732 value677 value1 value2 = (output3732, value678, value1) := by
  rw [input3732_def, output3732_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3732 input3731)).val
theorem input3733_def : input3733 = (.seq input3732 input3731) := by
  unfold input3733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3732 output3731)).val
theorem output3733_def : output3733 = (.seq output3732 output3731) := by
  unfold output3733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3733_skip : Flapjack.WordAlloc.isSkip output3733 = false := by
  rw [output3733_def]
  conv => lhs; cbv
  try rfl
theorem node3733_eq : Flapjack.WordAlloc.removeDeadStructural input3733 value674 value1 value2 = (output3733, value678, value1) := by
  rw [input3733_def, output3733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3731_eq]
  try dsimp only
  rw [node3732_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 785 1#64))).val
theorem input3734_def : input3734 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 785 1#64)) := by
  unfold input3734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3734_def : output3734 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3734_skip : Flapjack.WordAlloc.isSkip output3734 = true := by
  rw [output3734_def]
  conv => lhs; cbv
  try rfl
theorem node3734_eq : Flapjack.WordAlloc.removeDeadStructural input3734 value678 value1 value2 = (output3734, value678, value1) := by
  rw [input3734_def, output3734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3735_def : input3735 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3735_def : output3735 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3735_skip : Flapjack.WordAlloc.isSkip output3735 = false := by
  rw [output3735_def]
  conv => lhs; cbv
  try rfl
theorem node3735_eq : Flapjack.WordAlloc.removeDeadStructural input3735 value678 value1 value2 = (output3735, value678, value1) := by
  rw [input3735_def, output3735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 1#64))).val
theorem input3736_def : input3736 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 1#64)) := by
  unfold input3736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3736_def : output3736 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3736_skip : Flapjack.WordAlloc.isSkip output3736 = true := by
  rw [output3736_def]
  conv => lhs; cbv
  try rfl
theorem node3736_eq : Flapjack.WordAlloc.removeDeadStructural input3736 value678 value1 value2 = (output3736, value678, value1) := by
  rw [input3736_def, output3736_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3736 input3735)).val
theorem input3737_def : input3737 = (.seq input3736 input3735) := by
  unfold input3737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3735)).val
theorem output3737_def : output3737 = (output3735) := by
  unfold output3737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3737_skip : Flapjack.WordAlloc.isSkip output3737 = false := by
  rw [output3737_def]
  conv => lhs; cbv
  try rfl
theorem node3737_eq : Flapjack.WordAlloc.removeDeadStructural input3737 value678 value1 value2 = (output3737, value678, value1) := by
  rw [input3737_def, output3737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3735_eq]
  try dsimp only
  rw [node3736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3737 input3734)).val
theorem input3738_def : input3738 = (.seq input3737 input3734) := by
  unfold input3738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3737)).val
theorem output3738_def : output3738 = (output3737) := by
  unfold output3738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3738_skip : Flapjack.WordAlloc.isSkip output3738 = false := by
  rw [output3738_def]
  conv => lhs; cbv
  try rfl
theorem node3738_eq : Flapjack.WordAlloc.removeDeadStructural input3738 value678 value1 value2 = (output3738, value678, value1) := by
  rw [input3738_def, output3738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3734_eq]
  try dsimp only
  rw [node3737_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3738 input3733)).val
theorem input3739_def : input3739 = (.seq input3738 input3733) := by
  unfold input3739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3738 output3733)).val
theorem output3739_def : output3739 = (.seq output3738 output3733) := by
  unfold output3739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3739_skip : Flapjack.WordAlloc.isSkip output3739 = false := by
  rw [output3739_def]
  conv => lhs; cbv
  try rfl
theorem node3739_eq : Flapjack.WordAlloc.removeDeadStructural input3739 value674 value1 value2 = (output3739, value678, value1) := by
  rw [input3739_def, output3739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3733_eq]
  try dsimp only
  rw [node3738_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3739 input3728)).val
theorem input3740_def : input3740 = (.seq input3739 input3728) := by
  unfold input3740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3739 output3728)).val
theorem output3740_def : output3740 = (.seq output3739 output3728) := by
  unfold output3740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3740_skip : Flapjack.WordAlloc.isSkip output3740 = false := by
  rw [output3740_def]
  conv => lhs; cbv
  try rfl
theorem node3740_eq : Flapjack.WordAlloc.removeDeadStructural input3740 value674 value1 value2 = (output3740, value678, value1) := by
  rw [input3740_def, output3740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3728_eq]
  try dsimp only
  rw [node3739_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3740 input3727)).val
theorem input3741_def : input3741 = (.seq input3740 input3727) := by
  unfold input3741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3740 output3727)).val
theorem output3741_def : output3741 = (.seq output3740 output3727) := by
  unfold output3741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3741_skip : Flapjack.WordAlloc.isSkip output3741 = false := by
  rw [output3741_def]
  conv => lhs; cbv
  try rfl
theorem node3741_eq : Flapjack.WordAlloc.removeDeadStructural input3741 value676 value1 value2 = (output3741, value678, value1) := by
  rw [input3741_def, output3741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3727_eq]
  try dsimp only
  rw [node3740_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3741 input3726)).val
theorem input3742_def : input3742 = (.seq input3741 input3726) := by
  unfold input3742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3741 output3726)).val
theorem output3742_def : output3742 = (.seq output3741 output3726) := by
  unfold output3742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3742_skip : Flapjack.WordAlloc.isSkip output3742 = false := by
  rw [output3742_def]
  conv => lhs; cbv
  try rfl
theorem node3742_eq : Flapjack.WordAlloc.removeDeadStructural input3742 value674 value1 value2 = (output3742, value678, value1) := by
  rw [input3742_def, output3742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3726_eq]
  try dsimp only
  rw [node3741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3742 input3723)).val
theorem input3743_def : input3743 = (.seq input3742 input3723) := by
  unfold input3743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3742 output3723)).val
theorem output3743_def : output3743 = (.seq output3742 output3723) := by
  unfold output3743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3743_skip : Flapjack.WordAlloc.isSkip output3743 = false := by
  rw [output3743_def]
  conv => lhs; cbv
  try rfl
theorem node3743_eq : Flapjack.WordAlloc.removeDeadStructural input3743 value673 value1 value2 = (output3743, value678, value1) := by
  rw [input3743_def, output3743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3723_eq]
  try dsimp only
  rw [node3742_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(841, 769)])).val
theorem input3744_def : input3744 = (Flapjack.WordLangProgHOL.move 2 [(841, 769)]) := by
  unfold input3744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3744_def : output3744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3744_skip : Flapjack.WordAlloc.isSkip output3744 = true := by
  rw [output3744_def]
  conv => lhs; cbv
  try rfl
theorem node3744_eq : Flapjack.WordAlloc.removeDeadStructural input3744 value673 value1 value2 = (output3744, value673, value1) := by
  rw [input3744_def, output3744_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(837, 777)])).val
theorem input3745_def : input3745 = (Flapjack.WordLangProgHOL.move 2 [(837, 777)]) := by
  unfold input3745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3745_def : output3745 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3745_skip : Flapjack.WordAlloc.isSkip output3745 = true := by
  rw [output3745_def]
  conv => lhs; cbv
  try rfl
theorem node3745_eq : Flapjack.WordAlloc.removeDeadStructural input3745 value673 value1 value2 = (output3745, value673, value1) := by
  rw [input3745_def, output3745_def]
  try (conv => lhs; cbv)
  try rfl

def value679 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(833, 773)])).val
theorem input3746_def : input3746 = (Flapjack.WordLangProgHOL.move 2 [(833, 773)]) := by
  unfold input3746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(833, 773)])).val
theorem output3746_def : output3746 = (Flapjack.WordLangProgHOL.move 2 [(833, 773)]) := by
  unfold output3746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3746_skip : Flapjack.WordAlloc.isSkip output3746 = false := by
  rw [output3746_def]
  conv => lhs; cbv
  try rfl
theorem node3746_eq : Flapjack.WordAlloc.removeDeadStructural input3746 value673 value1 value2 = (output3746, value679, value1) := by
  rw [input3746_def, output3746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3747_def : input3747 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3747_def : output3747 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3747_skip : Flapjack.WordAlloc.isSkip output3747 = true := by
  rw [output3747_def]
  conv => lhs; cbv
  try rfl
theorem node3747_eq : Flapjack.WordAlloc.removeDeadStructural input3747 value679 value1 value2 = (output3747, value679, value1) := by
  rw [input3747_def, output3747_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3747 input3746)).val
theorem input3748_def : input3748 = (.seq input3747 input3746) := by
  unfold input3748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3746)).val
theorem output3748_def : output3748 = (output3746) := by
  unfold output3748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3748_skip : Flapjack.WordAlloc.isSkip output3748 = false := by
  rw [output3748_def]
  conv => lhs; cbv
  try rfl
theorem node3748_eq : Flapjack.WordAlloc.removeDeadStructural input3748 value673 value1 value2 = (output3748, value679, value1) := by
  rw [input3748_def, output3748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3746_eq]
  try dsimp only
  rw [node3747_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3748 input3745)).val
theorem input3749_def : input3749 = (.seq input3748 input3745) := by
  unfold input3749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3748)).val
theorem output3749_def : output3749 = (output3748) := by
  unfold output3749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3749_skip : Flapjack.WordAlloc.isSkip output3749 = false := by
  rw [output3749_def]
  conv => lhs; cbv
  try rfl
theorem node3749_eq : Flapjack.WordAlloc.removeDeadStructural input3749 value673 value1 value2 = (output3749, value679, value1) := by
  rw [input3749_def, output3749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3745_eq]
  try dsimp only
  rw [node3748_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3749 input3744)).val
theorem input3750_def : input3750 = (.seq input3749 input3744) := by
  unfold input3750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3749)).val
theorem output3750_def : output3750 = (output3749) := by
  unfold output3750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3750_skip : Flapjack.WordAlloc.isSkip output3750 = false := by
  rw [output3750_def]
  conv => lhs; cbv
  try rfl
theorem node3750_eq : Flapjack.WordAlloc.removeDeadStructural input3750 value673 value1 value2 = (output3750, value679, value1) := by
  rw [input3750_def, output3750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3744_eq]
  try dsimp only
  rw [node3749_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value680 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(829, 749), (825, 773), (821, 741)])).val
theorem input3751_def : input3751 = (Flapjack.WordLangProgHOL.move 2 [(829, 749), (825, 773), (821, 741)]) := by
  unfold input3751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(829, 749)])).val
theorem output3751_def : output3751 = (Flapjack.WordLangProgHOL.move 2 [(829, 749)]) := by
  unfold output3751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3751_skip : Flapjack.WordAlloc.isSkip output3751 = false := by
  rw [output3751_def]
  conv => lhs; cbv
  try rfl
theorem node3751_eq : Flapjack.WordAlloc.removeDeadStructural input3751 value679 value1 value2 = (output3751, value680, value1) := by
  rw [input3751_def, output3751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3751 input3750)).val
theorem input3752_def : input3752 = (.seq input3751 input3750) := by
  unfold input3752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3751 output3750)).val
theorem output3752_def : output3752 = (.seq output3751 output3750) := by
  unfold output3752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3752_skip : Flapjack.WordAlloc.isSkip output3752 = false := by
  rw [output3752_def]
  conv => lhs; cbv
  try rfl
theorem node3752_eq : Flapjack.WordAlloc.removeDeadStructural input3752 value673 value1 value2 = (output3752, value680, value1) := by
  rw [input3752_def, output3752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3750_eq]
  try dsimp only
  rw [node3751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3753_def : input3753 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3753_def : output3753 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3753_skip : Flapjack.WordAlloc.isSkip output3753 = true := by
  rw [output3753_def]
  conv => lhs; cbv
  try rfl
theorem node3753_eq : Flapjack.WordAlloc.removeDeadStructural input3753 value680 value1 value2 = (output3753, value680, value1) := by
  rw [input3753_def, output3753_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3753 input3752)).val
theorem input3754_def : input3754 = (.seq input3753 input3752) := by
  unfold input3754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3752)).val
theorem output3754_def : output3754 = (output3752) := by
  unfold output3754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3754_skip : Flapjack.WordAlloc.isSkip output3754 = false := by
  rw [output3754_def]
  conv => lhs; cbv
  try rfl
theorem node3754_eq : Flapjack.WordAlloc.removeDeadStructural input3754 value673 value1 value2 = (output3754, value680, value1) := by
  rw [input3754_def, output3754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3752_eq]
  try dsimp only
  rw [node3753_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value681 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 777

def value682 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 773 value681 input3743 input3754)).val
theorem input3755_def : input3755 = (.ite value15 773 value681 input3743 input3754) := by
  unfold input3755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 773 value681 output3743 output3754)).val
theorem output3755_def : output3755 = (.ite value15 773 value681 output3743 output3754) := by
  unfold output3755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3755_skip : Flapjack.WordAlloc.isSkip output3755 = false := by
  rw [output3755_def]
  conv => lhs; cbv
  try rfl
theorem node3755_eq : Flapjack.WordAlloc.removeDeadStructural input3755 value673 value1 value2 = (output3755, value682, value1) := by
  rw [input3755_def, output3755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3743_eq]
  try dsimp only
  rw [node3754_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3755 input3714)).val
theorem input3756_def : input3756 = (.seq input3755 input3714) := by
  unfold input3756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3755 output3714)).val
theorem output3756_def : output3756 = (.seq output3755 output3714) := by
  unfold output3756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3756_skip : Flapjack.WordAlloc.isSkip output3756 = false := by
  rw [output3756_def]
  conv => lhs; cbv
  try rfl
theorem node3756_eq : Flapjack.WordAlloc.removeDeadStructural input3756 value673 value1 value2 = (output3756, value682, value1) := by
  rw [input3756_def, output3756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3714_eq]
  try dsimp only
  rw [node3755_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 777 9#64))).val
theorem input3757_def : input3757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 777 9#64)) := by
  unfold input3757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 777 9#64))).val
theorem output3757_def : output3757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 777 9#64)) := by
  unfold output3757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3757_skip : Flapjack.WordAlloc.isSkip output3757 = false := by
  rw [output3757_def]
  conv => lhs; cbv
  try rfl
theorem node3757_eq : Flapjack.WordAlloc.removeDeadStructural input3757 value682 value1 value2 = (output3757, value680, value1) := by
  rw [input3757_def, output3757_def]
  try (conv => lhs; cbv)
  try rfl

def value683 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(773, 753)])).val
theorem input3758_def : input3758 = (Flapjack.WordLangProgHOL.move 0 [(773, 753)]) := by
  unfold input3758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(773, 753)])).val
theorem output3758_def : output3758 = (Flapjack.WordLangProgHOL.move 0 [(773, 753)]) := by
  unfold output3758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3758_skip : Flapjack.WordAlloc.isSkip output3758 = false := by
  rw [output3758_def]
  conv => lhs; cbv
  try rfl
theorem node3758_eq : Flapjack.WordAlloc.removeDeadStructural input3758 value680 value1 value2 = (output3758, value683, value1) := by
  rw [input3758_def, output3758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3759_def : input3759 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3759_def : output3759 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3759_skip : Flapjack.WordAlloc.isSkip output3759 = false := by
  rw [output3759_def]
  conv => lhs; cbv
  try rfl
theorem node3759_eq : Flapjack.WordAlloc.removeDeadStructural input3759 value683 value1 value2 = (output3759, value683, value1) := by
  rw [input3759_def, output3759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 0#64))).val
theorem input3760_def : input3760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 0#64)) := by
  unfold input3760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3760_def : output3760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3760_skip : Flapjack.WordAlloc.isSkip output3760 = true := by
  rw [output3760_def]
  conv => lhs; cbv
  try rfl
theorem node3760_eq : Flapjack.WordAlloc.removeDeadStructural input3760 value683 value1 value2 = (output3760, value683, value1) := by
  rw [input3760_def, output3760_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3761_def : input3761 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3761_def : output3761 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3761_skip : Flapjack.WordAlloc.isSkip output3761 = false := by
  rw [output3761_def]
  conv => lhs; cbv
  try rfl
theorem node3761_eq : Flapjack.WordAlloc.removeDeadStructural input3761 value683 value1 value2 = (output3761, value683, value1) := by
  rw [input3761_def, output3761_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64))).val
theorem input3762_def : input3762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 0#64)) := by
  unfold input3762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3762_def : output3762 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3762_skip : Flapjack.WordAlloc.isSkip output3762 = true := by
  rw [output3762_def]
  conv => lhs; cbv
  try rfl
theorem node3762_eq : Flapjack.WordAlloc.removeDeadStructural input3762 value683 value1 value2 = (output3762, value683, value1) := by
  rw [input3762_def, output3762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3762 input3761)).val
theorem input3763_def : input3763 = (.seq input3762 input3761) := by
  unfold input3763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3761)).val
theorem output3763_def : output3763 = (output3761) := by
  unfold output3763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3763_skip : Flapjack.WordAlloc.isSkip output3763 = false := by
  rw [output3763_def]
  conv => lhs; cbv
  try rfl
theorem node3763_eq : Flapjack.WordAlloc.removeDeadStructural input3763 value683 value1 value2 = (output3763, value683, value1) := by
  rw [input3763_def, output3763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3761_eq]
  try dsimp only
  rw [node3762_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3763 input3760)).val
theorem input3764_def : input3764 = (.seq input3763 input3760) := by
  unfold input3764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3763)).val
theorem output3764_def : output3764 = (output3763) := by
  unfold output3764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3764_skip : Flapjack.WordAlloc.isSkip output3764 = false := by
  rw [output3764_def]
  conv => lhs; cbv
  try rfl
theorem node3764_eq : Flapjack.WordAlloc.removeDeadStructural input3764 value683 value1 value2 = (output3764, value683, value1) := by
  rw [input3764_def, output3764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3760_eq]
  try dsimp only
  rw [node3763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64))).val
theorem input3765_def : input3765 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64)) := by
  unfold input3765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3765_def : output3765 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3765_skip : Flapjack.WordAlloc.isSkip output3765 = true := by
  rw [output3765_def]
  conv => lhs; cbv
  try rfl
theorem node3765_eq : Flapjack.WordAlloc.removeDeadStructural input3765 value683 value1 value2 = (output3765, value683, value1) := by
  rw [input3765_def, output3765_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 0#64))).val
theorem input3766_def : input3766 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 0#64)) := by
  unfold input3766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3766_def : output3766 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3766_skip : Flapjack.WordAlloc.isSkip output3766 = true := by
  rw [output3766_def]
  conv => lhs; cbv
  try rfl
theorem node3766_eq : Flapjack.WordAlloc.removeDeadStructural input3766 value683 value1 value2 = (output3766, value683, value1) := by
  rw [input3766_def, output3766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 753 0#64))).val
theorem input3767_def : input3767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 753 0#64)) := by
  unfold input3767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 753 0#64))).val
theorem output3767_def : output3767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 753 0#64)) := by
  unfold output3767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3767_skip : Flapjack.WordAlloc.isSkip output3767 = false := by
  rw [output3767_def]
  conv => lhs; cbv
  try rfl
theorem node3767_eq : Flapjack.WordAlloc.removeDeadStructural input3767 value683 value1 value2 = (output3767, value678, value1) := by
  rw [input3767_def, output3767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3768_def : input3768 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3768_def : output3768 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3768_skip : Flapjack.WordAlloc.isSkip output3768 = true := by
  rw [output3768_def]
  conv => lhs; cbv
  try rfl
theorem node3768_eq : Flapjack.WordAlloc.removeDeadStructural input3768 value678 value1 value2 = (output3768, value678, value1) := by
  rw [input3768_def, output3768_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3768 input3767)).val
theorem input3769_def : input3769 = (.seq input3768 input3767) := by
  unfold input3769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3767)).val
theorem output3769_def : output3769 = (output3767) := by
  unfold output3769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3769_skip : Flapjack.WordAlloc.isSkip output3769 = false := by
  rw [output3769_def]
  conv => lhs; cbv
  try rfl
theorem node3769_eq : Flapjack.WordAlloc.removeDeadStructural input3769 value683 value1 value2 = (output3769, value678, value1) := by
  rw [input3769_def, output3769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3767_eq]
  try dsimp only
  rw [node3768_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3769 input3766)).val
theorem input3770_def : input3770 = (.seq input3769 input3766) := by
  unfold input3770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3769)).val
theorem output3770_def : output3770 = (output3769) := by
  unfold output3770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3770_skip : Flapjack.WordAlloc.isSkip output3770 = false := by
  rw [output3770_def]
  conv => lhs; cbv
  try rfl
theorem node3770_eq : Flapjack.WordAlloc.removeDeadStructural input3770 value683 value1 value2 = (output3770, value678, value1) := by
  rw [input3770_def, output3770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3766_eq]
  try dsimp only
  rw [node3769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3770 input3765)).val
theorem input3771_def : input3771 = (.seq input3770 input3765) := by
  unfold input3771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3770)).val
theorem output3771_def : output3771 = (output3770) := by
  unfold output3771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3771_skip : Flapjack.WordAlloc.isSkip output3771 = false := by
  rw [output3771_def]
  conv => lhs; cbv
  try rfl
theorem node3771_eq : Flapjack.WordAlloc.removeDeadStructural input3771 value683 value1 value2 = (output3771, value678, value1) := by
  rw [input3771_def, output3771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3765_eq]
  try dsimp only
  rw [node3770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value684 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(749, 717), (745, 733), (741, 737)])).val
theorem input3772_def : input3772 = (Flapjack.WordLangProgHOL.move 1 [(749, 717), (745, 733), (741, 737)]) := by
  unfold input3772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(749, 717)])).val
theorem output3772_def : output3772 = (Flapjack.WordLangProgHOL.move 1 [(749, 717)]) := by
  unfold output3772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3772_skip : Flapjack.WordAlloc.isSkip output3772 = false := by
  rw [output3772_def]
  conv => lhs; cbv
  try rfl
theorem node3772_eq : Flapjack.WordAlloc.removeDeadStructural input3772 value678 value1 value2 = (output3772, value684, value1) := by
  rw [input3772_def, output3772_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3772 input3771)).val
theorem input3773_def : input3773 = (.seq input3772 input3771) := by
  unfold input3773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3772 output3771)).val
theorem output3773_def : output3773 = (.seq output3772 output3771) := by
  unfold output3773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3773_skip : Flapjack.WordAlloc.isSkip output3773 = false := by
  rw [output3773_def]
  conv => lhs; cbv
  try rfl
theorem node3773_eq : Flapjack.WordAlloc.removeDeadStructural input3773 value683 value1 value2 = (output3773, value684, value1) := by
  rw [input3773_def, output3773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3771_eq]
  try dsimp only
  rw [node3772_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value685 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 717 [2])).val
theorem input3774_def : input3774 = (Flapjack.WordLangProgHOL.return 717 [2]) := by
  unfold input3774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 717 [2])).val
theorem output3774_def : output3774 = (Flapjack.WordLangProgHOL.return 717 [2]) := by
  unfold output3774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3774_skip : Flapjack.WordAlloc.isSkip output3774 = false := by
  rw [output3774_def]
  conv => lhs; cbv
  try rfl
theorem node3774_eq : Flapjack.WordAlloc.removeDeadStructural input3774 value684 value1 value2 = (output3774, value685, value1) := by
  rw [input3774_def, output3774_def]
  try (conv => lhs; cbv)
  try rfl

def value686 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 737)])).val
theorem input3775_def : input3775 = (Flapjack.WordLangProgHOL.move 0 [(2, 737)]) := by
  unfold input3775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 737)])).val
theorem output3775_def : output3775 = (Flapjack.WordLangProgHOL.move 0 [(2, 737)]) := by
  unfold output3775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3775_skip : Flapjack.WordAlloc.isSkip output3775 = false := by
  rw [output3775_def]
  conv => lhs; cbv
  try rfl
theorem node3775_eq : Flapjack.WordAlloc.removeDeadStructural input3775 value685 value1 value2 = (output3775, value686, value1) := by
  rw [input3775_def, output3775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3775 input3774)).val
theorem input3776_def : input3776 = (.seq input3775 input3774) := by
  unfold input3776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3775 output3774)).val
theorem output3776_def : output3776 = (.seq output3775 output3774) := by
  unfold output3776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3776_skip : Flapjack.WordAlloc.isSkip output3776 = false := by
  rw [output3776_def]
  conv => lhs; cbv
  try rfl
theorem node3776_eq : Flapjack.WordAlloc.removeDeadStructural input3776 value684 value1 value2 = (output3776, value686, value1) := by
  rw [input3776_def, output3776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3774_eq]
  try dsimp only
  rw [node3775_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64))).val
theorem input3777_def : input3777 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)) := by
  unfold input3777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64))).val
theorem output3777_def : output3777 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)) := by
  unfold output3777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3777_skip : Flapjack.WordAlloc.isSkip output3777 = false := by
  rw [output3777_def]
  conv => lhs; cbv
  try rfl
theorem node3777_eq : Flapjack.WordAlloc.removeDeadStructural input3777 value686 value1 value2 = (output3777, value684, value1) := by
  rw [input3777_def, output3777_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3778_def : input3778 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3778_def : output3778 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3778_skip : Flapjack.WordAlloc.isSkip output3778 = false := by
  rw [output3778_def]
  conv => lhs; cbv
  try rfl
theorem node3778_eq : Flapjack.WordAlloc.removeDeadStructural input3778 value684 value1 value2 = (output3778, value684, value1) := by
  rw [input3778_def, output3778_def]
  try (conv => lhs; cbv)
  try rfl

def value687 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(721, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(729, 721)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)))),
      597, 18))
  (some 506) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(725, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 725)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(733, 725)]))),
      597, 19)))).val
theorem input3779_def : input3779 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(721, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(729, 721)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)))),
      597, 18))
  (some 506) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(725, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 725)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(733, 725)]))),
      597, 19))) := by
  unfold input3779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(717, 711)], 597, 18))
  (some 506) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(725, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 725)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 19)))).val
theorem output3779_def : output3779 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(717, 711)], 597, 18))
  (some 506) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(717, 711)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(725, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 725)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 19))) := by
  unfold output3779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3779_skip : Flapjack.WordAlloc.isSkip output3779 = false := by
  rw [output3779_def]
  conv => lhs; cbv
  try rfl
theorem node3779_eq : Flapjack.WordAlloc.removeDeadStructural input3779 value684 value1 value2 = (output3779, value687, value1) := by
  rw [input3779_def, output3779_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3780_def : input3780 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3780_def : output3780 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3780_skip : Flapjack.WordAlloc.isSkip output3780 = true := by
  rw [output3780_def]
  conv => lhs; cbv
  try rfl
theorem node3780_eq : Flapjack.WordAlloc.removeDeadStructural input3780 value687 value1 value2 = (output3780, value687, value1) := by
  rw [input3780_def, output3780_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3780 input3779)).val
theorem input3781_def : input3781 = (.seq input3780 input3779) := by
  unfold input3781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3779)).val
theorem output3781_def : output3781 = (output3779) := by
  unfold output3781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3781_skip : Flapjack.WordAlloc.isSkip output3781 = false := by
  rw [output3781_def]
  conv => lhs; cbv
  try rfl
theorem node3781_eq : Flapjack.WordAlloc.removeDeadStructural input3781 value684 value1 value2 = (output3781, value687, value1) := by
  rw [input3781_def, output3781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3779_eq]
  try dsimp only
  rw [node3780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value688 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(711, 669)])).val
theorem input3782_def : input3782 = (Flapjack.WordLangProgHOL.move 0 [(711, 669)]) := by
  unfold input3782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(711, 669)])).val
theorem output3782_def : output3782 = (Flapjack.WordLangProgHOL.move 0 [(711, 669)]) := by
  unfold output3782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3782_skip : Flapjack.WordAlloc.isSkip output3782 = false := by
  rw [output3782_def]
  conv => lhs; cbv
  try rfl
theorem node3782_eq : Flapjack.WordAlloc.removeDeadStructural input3782 value687 value1 value2 = (output3782, value688, value1) := by
  rw [input3782_def, output3782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3782 input3781)).val
theorem input3783_def : input3783 = (.seq input3782 input3781) := by
  unfold input3783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3782 output3781)).val
theorem output3783_def : output3783 = (.seq output3782 output3781) := by
  unfold output3783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3783_skip : Flapjack.WordAlloc.isSkip output3783 = false := by
  rw [output3783_def]
  conv => lhs; cbv
  try rfl
theorem node3783_eq : Flapjack.WordAlloc.removeDeadStructural input3783 value684 value1 value2 = (output3783, value688, value1) := by
  rw [input3783_def, output3783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3781_eq]
  try dsimp only
  rw [node3782_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 1#64))).val
theorem input3784_def : input3784 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 1#64)) := by
  unfold input3784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3784_def : output3784 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3784_skip : Flapjack.WordAlloc.isSkip output3784 = true := by
  rw [output3784_def]
  conv => lhs; cbv
  try rfl
theorem node3784_eq : Flapjack.WordAlloc.removeDeadStructural input3784 value688 value1 value2 = (output3784, value688, value1) := by
  rw [input3784_def, output3784_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3785_def : input3785 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3785_def : output3785 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3785_skip : Flapjack.WordAlloc.isSkip output3785 = false := by
  rw [output3785_def]
  conv => lhs; cbv
  try rfl
theorem node3785_eq : Flapjack.WordAlloc.removeDeadStructural input3785 value688 value1 value2 = (output3785, value688, value1) := by
  rw [input3785_def, output3785_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 1#64))).val
theorem input3786_def : input3786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 1#64)) := by
  unfold input3786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3786_def : output3786 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3786_skip : Flapjack.WordAlloc.isSkip output3786 = true := by
  rw [output3786_def]
  conv => lhs; cbv
  try rfl
theorem node3786_eq : Flapjack.WordAlloc.removeDeadStructural input3786 value688 value1 value2 = (output3786, value688, value1) := by
  rw [input3786_def, output3786_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3786 input3785)).val
theorem input3787_def : input3787 = (.seq input3786 input3785) := by
  unfold input3787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3785)).val
theorem output3787_def : output3787 = (output3785) := by
  unfold output3787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3787_skip : Flapjack.WordAlloc.isSkip output3787 = false := by
  rw [output3787_def]
  conv => lhs; cbv
  try rfl
theorem node3787_eq : Flapjack.WordAlloc.removeDeadStructural input3787 value688 value1 value2 = (output3787, value688, value1) := by
  rw [input3787_def, output3787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3785_eq]
  try dsimp only
  rw [node3786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3787 input3784)).val
theorem input3788_def : input3788 = (.seq input3787 input3784) := by
  unfold input3788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3787)).val
theorem output3788_def : output3788 = (output3787) := by
  unfold output3788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3788_skip : Flapjack.WordAlloc.isSkip output3788 = false := by
  rw [output3788_def]
  conv => lhs; cbv
  try rfl
theorem node3788_eq : Flapjack.WordAlloc.removeDeadStructural input3788 value688 value1 value2 = (output3788, value688, value1) := by
  rw [input3788_def, output3788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3784_eq]
  try dsimp only
  rw [node3787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3788 input3783)).val
theorem input3789_def : input3789 = (.seq input3788 input3783) := by
  unfold input3789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3788 output3783)).val
theorem output3789_def : output3789 = (.seq output3788 output3783) := by
  unfold output3789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3789_skip : Flapjack.WordAlloc.isSkip output3789 = false := by
  rw [output3789_def]
  conv => lhs; cbv
  try rfl
theorem node3789_eq : Flapjack.WordAlloc.removeDeadStructural input3789 value684 value1 value2 = (output3789, value688, value1) := by
  rw [input3789_def, output3789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3783_eq]
  try dsimp only
  rw [node3788_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3789 input3778)).val
theorem input3790_def : input3790 = (.seq input3789 input3778) := by
  unfold input3790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3789 output3778)).val
theorem output3790_def : output3790 = (.seq output3789 output3778) := by
  unfold output3790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3790_skip : Flapjack.WordAlloc.isSkip output3790 = false := by
  rw [output3790_def]
  conv => lhs; cbv
  try rfl
theorem node3790_eq : Flapjack.WordAlloc.removeDeadStructural input3790 value684 value1 value2 = (output3790, value688, value1) := by
  rw [input3790_def, output3790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3778_eq]
  try dsimp only
  rw [node3789_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3790 input3777)).val
theorem input3791_def : input3791 = (.seq input3790 input3777) := by
  unfold input3791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3790 output3777)).val
theorem output3791_def : output3791 = (.seq output3790 output3777) := by
  unfold output3791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3791_skip : Flapjack.WordAlloc.isSkip output3791 = false := by
  rw [output3791_def]
  conv => lhs; cbv
  try rfl
theorem node3791_eq : Flapjack.WordAlloc.removeDeadStructural input3791 value686 value1 value2 = (output3791, value688, value1) := by
  rw [input3791_def, output3791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3777_eq]
  try dsimp only
  rw [node3790_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3791 input3776)).val
theorem input3792_def : input3792 = (.seq input3791 input3776) := by
  unfold input3792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3791 output3776)).val
theorem output3792_def : output3792 = (.seq output3791 output3776) := by
  unfold output3792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3792_skip : Flapjack.WordAlloc.isSkip output3792 = false := by
  rw [output3792_def]
  conv => lhs; cbv
  try rfl
theorem node3792_eq : Flapjack.WordAlloc.removeDeadStructural input3792 value684 value1 value2 = (output3792, value688, value1) := by
  rw [input3792_def, output3792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3776_eq]
  try dsimp only
  rw [node3791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3792 input3773)).val
theorem input3793_def : input3793 = (.seq input3792 input3773) := by
  unfold input3793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3792 output3773)).val
theorem output3793_def : output3793 = (.seq output3792 output3773) := by
  unfold output3793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3793_skip : Flapjack.WordAlloc.isSkip output3793 = false := by
  rw [output3793_def]
  conv => lhs; cbv
  try rfl
theorem node3793_eq : Flapjack.WordAlloc.removeDeadStructural input3793 value683 value1 value2 = (output3793, value688, value1) := by
  rw [input3793_def, output3793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3773_eq]
  try dsimp only
  rw [node3792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(761, 689)])).val
theorem input3794_def : input3794 = (Flapjack.WordLangProgHOL.move 2 [(761, 689)]) := by
  unfold input3794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3794_def : output3794 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3794_skip : Flapjack.WordAlloc.isSkip output3794 = true := by
  rw [output3794_def]
  conv => lhs; cbv
  try rfl
theorem node3794_eq : Flapjack.WordAlloc.removeDeadStructural input3794 value683 value1 value2 = (output3794, value683, value1) := by
  rw [input3794_def, output3794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(757, 697)])).val
theorem input3795_def : input3795 = (Flapjack.WordLangProgHOL.move 2 [(757, 697)]) := by
  unfold input3795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3795_def : output3795 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3795_skip : Flapjack.WordAlloc.isSkip output3795 = true := by
  rw [output3795_def]
  conv => lhs; cbv
  try rfl
theorem node3795_eq : Flapjack.WordAlloc.removeDeadStructural input3795 value683 value1 value2 = (output3795, value683, value1) := by
  rw [input3795_def, output3795_def]
  try (conv => lhs; cbv)
  try rfl

def value689 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(753, 693)])).val
theorem input3796_def : input3796 = (Flapjack.WordLangProgHOL.move 2 [(753, 693)]) := by
  unfold input3796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(753, 693)])).val
theorem output3796_def : output3796 = (Flapjack.WordLangProgHOL.move 2 [(753, 693)]) := by
  unfold output3796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3796_skip : Flapjack.WordAlloc.isSkip output3796 = false := by
  rw [output3796_def]
  conv => lhs; cbv
  try rfl
theorem node3796_eq : Flapjack.WordAlloc.removeDeadStructural input3796 value683 value1 value2 = (output3796, value689, value1) := by
  rw [input3796_def, output3796_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3797_def : input3797 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3797_def : output3797 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3797_skip : Flapjack.WordAlloc.isSkip output3797 = true := by
  rw [output3797_def]
  conv => lhs; cbv
  try rfl
theorem node3797_eq : Flapjack.WordAlloc.removeDeadStructural input3797 value689 value1 value2 = (output3797, value689, value1) := by
  rw [input3797_def, output3797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3797 input3796)).val
theorem input3798_def : input3798 = (.seq input3797 input3796) := by
  unfold input3798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3796)).val
theorem output3798_def : output3798 = (output3796) := by
  unfold output3798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3798_skip : Flapjack.WordAlloc.isSkip output3798 = false := by
  rw [output3798_def]
  conv => lhs; cbv
  try rfl
theorem node3798_eq : Flapjack.WordAlloc.removeDeadStructural input3798 value683 value1 value2 = (output3798, value689, value1) := by
  rw [input3798_def, output3798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3796_eq]
  try dsimp only
  rw [node3797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3798 input3795)).val
theorem input3799_def : input3799 = (.seq input3798 input3795) := by
  unfold input3799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3798)).val
theorem output3799_def : output3799 = (output3798) := by
  unfold output3799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3799_skip : Flapjack.WordAlloc.isSkip output3799 = false := by
  rw [output3799_def]
  conv => lhs; cbv
  try rfl
theorem node3799_eq : Flapjack.WordAlloc.removeDeadStructural input3799 value683 value1 value2 = (output3799, value689, value1) := by
  rw [input3799_def, output3799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3795_eq]
  try dsimp only
  rw [node3798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3799 input3794)).val
theorem input3800_def : input3800 = (.seq input3799 input3794) := by
  unfold input3800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3799)).val
theorem output3800_def : output3800 = (output3799) := by
  unfold output3800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3800_skip : Flapjack.WordAlloc.isSkip output3800 = false := by
  rw [output3800_def]
  conv => lhs; cbv
  try rfl
theorem node3800_eq : Flapjack.WordAlloc.removeDeadStructural input3800 value683 value1 value2 = (output3800, value689, value1) := by
  rw [input3800_def, output3800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3794_eq]
  try dsimp only
  rw [node3799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value690 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(749, 669), (745, 693), (741, 661)])).val
theorem input3801_def : input3801 = (Flapjack.WordLangProgHOL.move 2 [(749, 669), (745, 693), (741, 661)]) := by
  unfold input3801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(749, 669)])).val
theorem output3801_def : output3801 = (Flapjack.WordLangProgHOL.move 2 [(749, 669)]) := by
  unfold output3801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3801_skip : Flapjack.WordAlloc.isSkip output3801 = false := by
  rw [output3801_def]
  conv => lhs; cbv
  try rfl
theorem node3801_eq : Flapjack.WordAlloc.removeDeadStructural input3801 value689 value1 value2 = (output3801, value690, value1) := by
  rw [input3801_def, output3801_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3801 input3800)).val
theorem input3802_def : input3802 = (.seq input3801 input3800) := by
  unfold input3802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3801 output3800)).val
theorem output3802_def : output3802 = (.seq output3801 output3800) := by
  unfold output3802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3802_skip : Flapjack.WordAlloc.isSkip output3802 = false := by
  rw [output3802_def]
  conv => lhs; cbv
  try rfl
theorem node3802_eq : Flapjack.WordAlloc.removeDeadStructural input3802 value683 value1 value2 = (output3802, value690, value1) := by
  rw [input3802_def, output3802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3800_eq]
  try dsimp only
  rw [node3801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3803_def : input3803 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3803_def : output3803 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3803_skip : Flapjack.WordAlloc.isSkip output3803 = true := by
  rw [output3803_def]
  conv => lhs; cbv
  try rfl
theorem node3803_eq : Flapjack.WordAlloc.removeDeadStructural input3803 value690 value1 value2 = (output3803, value690, value1) := by
  rw [input3803_def, output3803_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3803 input3802)).val
theorem input3804_def : input3804 = (.seq input3803 input3802) := by
  unfold input3804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3802)).val
theorem output3804_def : output3804 = (output3802) := by
  unfold output3804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3804_skip : Flapjack.WordAlloc.isSkip output3804 = false := by
  rw [output3804_def]
  conv => lhs; cbv
  try rfl
theorem node3804_eq : Flapjack.WordAlloc.removeDeadStructural input3804 value683 value1 value2 = (output3804, value690, value1) := by
  rw [input3804_def, output3804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3802_eq]
  try dsimp only
  rw [node3803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value691 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 697

def value692 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 693 value691 input3793 input3804)).val
theorem input3805_def : input3805 = (.ite value15 693 value691 input3793 input3804) := by
  unfold input3805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 693 value691 output3793 output3804)).val
theorem output3805_def : output3805 = (.ite value15 693 value691 output3793 output3804) := by
  unfold output3805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3805_skip : Flapjack.WordAlloc.isSkip output3805 = false := by
  rw [output3805_def]
  conv => lhs; cbv
  try rfl
theorem node3805_eq : Flapjack.WordAlloc.removeDeadStructural input3805 value683 value1 value2 = (output3805, value692, value1) := by
  rw [input3805_def, output3805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3793_eq]
  try dsimp only
  rw [node3804_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3805 input3764)).val
theorem input3806_def : input3806 = (.seq input3805 input3764) := by
  unfold input3806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3805 output3764)).val
theorem output3806_def : output3806 = (.seq output3805 output3764) := by
  unfold output3806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3806_skip : Flapjack.WordAlloc.isSkip output3806 = false := by
  rw [output3806_def]
  conv => lhs; cbv
  try rfl
theorem node3806_eq : Flapjack.WordAlloc.removeDeadStructural input3806 value683 value1 value2 = (output3806, value692, value1) := by
  rw [input3806_def, output3806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3764_eq]
  try dsimp only
  rw [node3805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 8#64))).val
theorem input3807_def : input3807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 8#64)) := by
  unfold input3807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 8#64))).val
theorem output3807_def : output3807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 8#64)) := by
  unfold output3807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3807_skip : Flapjack.WordAlloc.isSkip output3807 = false := by
  rw [output3807_def]
  conv => lhs; cbv
  try rfl
theorem node3807_eq : Flapjack.WordAlloc.removeDeadStructural input3807 value692 value1 value2 = (output3807, value690, value1) := by
  rw [input3807_def, output3807_def]
  try (conv => lhs; cbv)
  try rfl

def value693 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(693, 673)])).val
theorem input3808_def : input3808 = (Flapjack.WordLangProgHOL.move 0 [(693, 673)]) := by
  unfold input3808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(693, 673)])).val
theorem output3808_def : output3808 = (Flapjack.WordLangProgHOL.move 0 [(693, 673)]) := by
  unfold output3808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3808_skip : Flapjack.WordAlloc.isSkip output3808 = false := by
  rw [output3808_def]
  conv => lhs; cbv
  try rfl
theorem node3808_eq : Flapjack.WordAlloc.removeDeadStructural input3808 value690 value1 value2 = (output3808, value693, value1) := by
  rw [input3808_def, output3808_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3809_def : input3809 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3809_def : output3809 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3809_skip : Flapjack.WordAlloc.isSkip output3809 = false := by
  rw [output3809_def]
  conv => lhs; cbv
  try rfl
theorem node3809_eq : Flapjack.WordAlloc.removeDeadStructural input3809 value693 value1 value2 = (output3809, value693, value1) := by
  rw [input3809_def, output3809_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 689 0#64))).val
theorem input3810_def : input3810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 689 0#64)) := by
  unfold input3810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3810_def : output3810 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3810_skip : Flapjack.WordAlloc.isSkip output3810 = true := by
  rw [output3810_def]
  conv => lhs; cbv
  try rfl
theorem node3810_eq : Flapjack.WordAlloc.removeDeadStructural input3810 value693 value1 value2 = (output3810, value693, value1) := by
  rw [input3810_def, output3810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3811_def : input3811 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3811_def : output3811 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3811_skip : Flapjack.WordAlloc.isSkip output3811 = false := by
  rw [output3811_def]
  conv => lhs; cbv
  try rfl
theorem node3811_eq : Flapjack.WordAlloc.removeDeadStructural input3811 value693 value1 value2 = (output3811, value693, value1) := by
  rw [input3811_def, output3811_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 685 0#64))).val
theorem input3812_def : input3812 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 685 0#64)) := by
  unfold input3812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3812_def : output3812 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3812_skip : Flapjack.WordAlloc.isSkip output3812 = true := by
  rw [output3812_def]
  conv => lhs; cbv
  try rfl
theorem node3812_eq : Flapjack.WordAlloc.removeDeadStructural input3812 value693 value1 value2 = (output3812, value693, value1) := by
  rw [input3812_def, output3812_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3812 input3811)).val
theorem input3813_def : input3813 = (.seq input3812 input3811) := by
  unfold input3813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3811)).val
theorem output3813_def : output3813 = (output3811) := by
  unfold output3813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3813_skip : Flapjack.WordAlloc.isSkip output3813 = false := by
  rw [output3813_def]
  conv => lhs; cbv
  try rfl
theorem node3813_eq : Flapjack.WordAlloc.removeDeadStructural input3813 value693 value1 value2 = (output3813, value693, value1) := by
  rw [input3813_def, output3813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3811_eq]
  try dsimp only
  rw [node3812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3813 input3810)).val
theorem input3814_def : input3814 = (.seq input3813 input3810) := by
  unfold input3814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3813)).val
theorem output3814_def : output3814 = (output3813) := by
  unfold output3814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3814_skip : Flapjack.WordAlloc.isSkip output3814 = false := by
  rw [output3814_def]
  conv => lhs; cbv
  try rfl
theorem node3814_eq : Flapjack.WordAlloc.removeDeadStructural input3814 value693 value1 value2 = (output3814, value693, value1) := by
  rw [input3814_def, output3814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3810_eq]
  try dsimp only
  rw [node3813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 681 0#64))).val
theorem input3815_def : input3815 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 681 0#64)) := by
  unfold input3815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3815_def : output3815 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3815_skip : Flapjack.WordAlloc.isSkip output3815 = true := by
  rw [output3815_def]
  conv => lhs; cbv
  try rfl
theorem node3815_eq : Flapjack.WordAlloc.removeDeadStructural input3815 value693 value1 value2 = (output3815, value693, value1) := by
  rw [input3815_def, output3815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64))).val
theorem input3816_def : input3816 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64)) := by
  unfold input3816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3816_def : output3816 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3816_skip : Flapjack.WordAlloc.isSkip output3816 = true := by
  rw [output3816_def]
  conv => lhs; cbv
  try rfl
theorem node3816_eq : Flapjack.WordAlloc.removeDeadStructural input3816 value693 value1 value2 = (output3816, value693, value1) := by
  rw [input3816_def, output3816_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64))).val
theorem input3817_def : input3817 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64)) := by
  unfold input3817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64))).val
theorem output3817_def : output3817 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64)) := by
  unfold output3817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3817_skip : Flapjack.WordAlloc.isSkip output3817 = false := by
  rw [output3817_def]
  conv => lhs; cbv
  try rfl
theorem node3817_eq : Flapjack.WordAlloc.removeDeadStructural input3817 value693 value1 value2 = (output3817, value688, value1) := by
  rw [input3817_def, output3817_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3818_def : input3818 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3818_def : output3818 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3818_skip : Flapjack.WordAlloc.isSkip output3818 = true := by
  rw [output3818_def]
  conv => lhs; cbv
  try rfl
theorem node3818_eq : Flapjack.WordAlloc.removeDeadStructural input3818 value688 value1 value2 = (output3818, value688, value1) := by
  rw [input3818_def, output3818_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3818 input3817)).val
theorem input3819_def : input3819 = (.seq input3818 input3817) := by
  unfold input3819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3817)).val
theorem output3819_def : output3819 = (output3817) := by
  unfold output3819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3819_skip : Flapjack.WordAlloc.isSkip output3819 = false := by
  rw [output3819_def]
  conv => lhs; cbv
  try rfl
theorem node3819_eq : Flapjack.WordAlloc.removeDeadStructural input3819 value693 value1 value2 = (output3819, value688, value1) := by
  rw [input3819_def, output3819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3817_eq]
  try dsimp only
  rw [node3818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3819 input3816)).val
theorem input3820_def : input3820 = (.seq input3819 input3816) := by
  unfold input3820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3819)).val
theorem output3820_def : output3820 = (output3819) := by
  unfold output3820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3820_skip : Flapjack.WordAlloc.isSkip output3820 = false := by
  rw [output3820_def]
  conv => lhs; cbv
  try rfl
theorem node3820_eq : Flapjack.WordAlloc.removeDeadStructural input3820 value693 value1 value2 = (output3820, value688, value1) := by
  rw [input3820_def, output3820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3816_eq]
  try dsimp only
  rw [node3819_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3820 input3815)).val
theorem input3821_def : input3821 = (.seq input3820 input3815) := by
  unfold input3821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3820)).val
theorem output3821_def : output3821 = (output3820) := by
  unfold output3821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3821_skip : Flapjack.WordAlloc.isSkip output3821 = false := by
  rw [output3821_def]
  conv => lhs; cbv
  try rfl
theorem node3821_eq : Flapjack.WordAlloc.removeDeadStructural input3821 value693 value1 value2 = (output3821, value688, value1) := by
  rw [input3821_def, output3821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3815_eq]
  try dsimp only
  rw [node3820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value694 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(669, 637), (665, 653), (661, 657)])).val
theorem input3822_def : input3822 = (Flapjack.WordLangProgHOL.move 1 [(669, 637), (665, 653), (661, 657)]) := by
  unfold input3822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(669, 637)])).val
theorem output3822_def : output3822 = (Flapjack.WordLangProgHOL.move 1 [(669, 637)]) := by
  unfold output3822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3822_skip : Flapjack.WordAlloc.isSkip output3822 = false := by
  rw [output3822_def]
  conv => lhs; cbv
  try rfl
theorem node3822_eq : Flapjack.WordAlloc.removeDeadStructural input3822 value688 value1 value2 = (output3822, value694, value1) := by
  rw [input3822_def, output3822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3822 input3821)).val
theorem input3823_def : input3823 = (.seq input3822 input3821) := by
  unfold input3823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3822 output3821)).val
theorem output3823_def : output3823 = (.seq output3822 output3821) := by
  unfold output3823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3823_skip : Flapjack.WordAlloc.isSkip output3823 = false := by
  rw [output3823_def]
  conv => lhs; cbv
  try rfl
theorem node3823_eq : Flapjack.WordAlloc.removeDeadStructural input3823 value693 value1 value2 = (output3823, value694, value1) := by
  rw [input3823_def, output3823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3821_eq]
  try dsimp only
  rw [node3822_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value695 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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

@[irreducible, cbv_opaque] def input3824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 637 [2])).val
theorem input3824_def : input3824 = (Flapjack.WordLangProgHOL.return 637 [2]) := by
  unfold input3824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 637 [2])).val
theorem output3824_def : output3824 = (Flapjack.WordLangProgHOL.return 637 [2]) := by
  unfold output3824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3824_skip : Flapjack.WordAlloc.isSkip output3824 = false := by
  rw [output3824_def]
  conv => lhs; cbv
  try rfl
theorem node3824_eq : Flapjack.WordAlloc.removeDeadStructural input3824 value694 value1 value2 = (output3824, value695, value1) := by
  rw [input3824_def, output3824_def]
  try (conv => lhs; cbv)
  try rfl

def value696 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 657)])).val
theorem input3825_def : input3825 = (Flapjack.WordLangProgHOL.move 0 [(2, 657)]) := by
  unfold input3825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 657)])).val
theorem output3825_def : output3825 = (Flapjack.WordLangProgHOL.move 0 [(2, 657)]) := by
  unfold output3825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3825_skip : Flapjack.WordAlloc.isSkip output3825 = false := by
  rw [output3825_def]
  conv => lhs; cbv
  try rfl
theorem node3825_eq : Flapjack.WordAlloc.removeDeadStructural input3825 value695 value1 value2 = (output3825, value696, value1) := by
  rw [input3825_def, output3825_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3825 input3824)).val
theorem input3826_def : input3826 = (.seq input3825 input3824) := by
  unfold input3826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3825 output3824)).val
theorem output3826_def : output3826 = (.seq output3825 output3824) := by
  unfold output3826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3826_skip : Flapjack.WordAlloc.isSkip output3826 = false := by
  rw [output3826_def]
  conv => lhs; cbv
  try rfl
theorem node3826_eq : Flapjack.WordAlloc.removeDeadStructural input3826 value694 value1 value2 = (output3826, value696, value1) := by
  rw [input3826_def, output3826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3824_eq]
  try dsimp only
  rw [node3825_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64))).val
theorem input3827_def : input3827 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)) := by
  unfold input3827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64))).val
theorem output3827_def : output3827 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 657 0#64)) := by
  unfold output3827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3827_skip : Flapjack.WordAlloc.isSkip output3827 = false := by
  rw [output3827_def]
  conv => lhs; cbv
  try rfl
theorem node3827_eq : Flapjack.WordAlloc.removeDeadStructural input3827 value696 value1 value2 = (output3827, value694, value1) := by
  rw [input3827_def, output3827_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3828_def : input3828 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3828_def : output3828 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3828_skip : Flapjack.WordAlloc.isSkip output3828 = false := by
  rw [output3828_def]
  conv => lhs; cbv
  try rfl
theorem node3828_eq : Flapjack.WordAlloc.removeDeadStructural input3828 value694 value1 value2 = (output3828, value694, value1) := by
  rw [input3828_def, output3828_def]
  try (conv => lhs; cbv)
  try rfl

def value697 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(641, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(649, 641)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 0#64)))),
      597, 16))
  (some 505) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(645, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 645)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(653, 645)]))),
      597, 17)))).val
theorem input3829_def : input3829 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(641, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(649, 641)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 0#64)))),
      597, 16))
  (some 505) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(645, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 645)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(653, 645)]))),
      597, 17))) := by
  unfold input3829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(637, 631)], 597, 16))
  (some 505) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(645, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 645)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 17)))).val
theorem output3829_def : output3829 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(637, 631)], 597, 16))
  (some 505) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(637, 631)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(645, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 645)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 17))) := by
  unfold output3829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3829_skip : Flapjack.WordAlloc.isSkip output3829 = false := by
  rw [output3829_def]
  conv => lhs; cbv
  try rfl
theorem node3829_eq : Flapjack.WordAlloc.removeDeadStructural input3829 value694 value1 value2 = (output3829, value697, value1) := by
  rw [input3829_def, output3829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3830_def : input3830 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3830_def : output3830 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3830_skip : Flapjack.WordAlloc.isSkip output3830 = true := by
  rw [output3830_def]
  conv => lhs; cbv
  try rfl
theorem node3830_eq : Flapjack.WordAlloc.removeDeadStructural input3830 value697 value1 value2 = (output3830, value697, value1) := by
  rw [input3830_def, output3830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3830 input3829)).val
theorem input3831_def : input3831 = (.seq input3830 input3829) := by
  unfold input3831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3829)).val
theorem output3831_def : output3831 = (output3829) := by
  unfold output3831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3831_skip : Flapjack.WordAlloc.isSkip output3831 = false := by
  rw [output3831_def]
  conv => lhs; cbv
  try rfl
theorem node3831_eq : Flapjack.WordAlloc.removeDeadStructural input3831 value694 value1 value2 = (output3831, value697, value1) := by
  rw [input3831_def, output3831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3829_eq]
  try dsimp only
  rw [node3830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value698 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(631, 589)])).val
theorem input3832_def : input3832 = (Flapjack.WordLangProgHOL.move 0 [(631, 589)]) := by
  unfold input3832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(631, 589)])).val
theorem output3832_def : output3832 = (Flapjack.WordLangProgHOL.move 0 [(631, 589)]) := by
  unfold output3832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3832_skip : Flapjack.WordAlloc.isSkip output3832 = false := by
  rw [output3832_def]
  conv => lhs; cbv
  try rfl
theorem node3832_eq : Flapjack.WordAlloc.removeDeadStructural input3832 value697 value1 value2 = (output3832, value698, value1) := by
  rw [input3832_def, output3832_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3832 input3831)).val
theorem input3833_def : input3833 = (.seq input3832 input3831) := by
  unfold input3833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3832 output3831)).val
theorem output3833_def : output3833 = (.seq output3832 output3831) := by
  unfold output3833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3833_skip : Flapjack.WordAlloc.isSkip output3833 = false := by
  rw [output3833_def]
  conv => lhs; cbv
  try rfl
theorem node3833_eq : Flapjack.WordAlloc.removeDeadStructural input3833 value694 value1 value2 = (output3833, value698, value1) := by
  rw [input3833_def, output3833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3831_eq]
  try dsimp only
  rw [node3832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 1#64))).val
theorem input3834_def : input3834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 1#64)) := by
  unfold input3834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3834_def : output3834 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3834_skip : Flapjack.WordAlloc.isSkip output3834 = true := by
  rw [output3834_def]
  conv => lhs; cbv
  try rfl
theorem node3834_eq : Flapjack.WordAlloc.removeDeadStructural input3834 value698 value1 value2 = (output3834, value698, value1) := by
  rw [input3834_def, output3834_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3835_def : input3835 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3835_def : output3835 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3835_skip : Flapjack.WordAlloc.isSkip output3835 = false := by
  rw [output3835_def]
  conv => lhs; cbv
  try rfl
theorem node3835_eq : Flapjack.WordAlloc.removeDeadStructural input3835 value698 value1 value2 = (output3835, value698, value1) := by
  rw [input3835_def, output3835_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 1#64))).val
theorem input3836_def : input3836 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 1#64)) := by
  unfold input3836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3836_def : output3836 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3836_skip : Flapjack.WordAlloc.isSkip output3836 = true := by
  rw [output3836_def]
  conv => lhs; cbv
  try rfl
theorem node3836_eq : Flapjack.WordAlloc.removeDeadStructural input3836 value698 value1 value2 = (output3836, value698, value1) := by
  rw [input3836_def, output3836_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3836 input3835)).val
theorem input3837_def : input3837 = (.seq input3836 input3835) := by
  unfold input3837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3835)).val
theorem output3837_def : output3837 = (output3835) := by
  unfold output3837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3837_skip : Flapjack.WordAlloc.isSkip output3837 = false := by
  rw [output3837_def]
  conv => lhs; cbv
  try rfl
theorem node3837_eq : Flapjack.WordAlloc.removeDeadStructural input3837 value698 value1 value2 = (output3837, value698, value1) := by
  rw [input3837_def, output3837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3835_eq]
  try dsimp only
  rw [node3836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3837 input3834)).val
theorem input3838_def : input3838 = (.seq input3837 input3834) := by
  unfold input3838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3837)).val
theorem output3838_def : output3838 = (output3837) := by
  unfold output3838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3838_skip : Flapjack.WordAlloc.isSkip output3838 = false := by
  rw [output3838_def]
  conv => lhs; cbv
  try rfl
theorem node3838_eq : Flapjack.WordAlloc.removeDeadStructural input3838 value698 value1 value2 = (output3838, value698, value1) := by
  rw [input3838_def, output3838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3834_eq]
  try dsimp only
  rw [node3837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3838 input3833)).val
theorem input3839_def : input3839 = (.seq input3838 input3833) := by
  unfold input3839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3838 output3833)).val
theorem output3839_def : output3839 = (.seq output3838 output3833) := by
  unfold output3839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3839_skip : Flapjack.WordAlloc.isSkip output3839 = false := by
  rw [output3839_def]
  conv => lhs; cbv
  try rfl
theorem node3839_eq : Flapjack.WordAlloc.removeDeadStructural input3839 value694 value1 value2 = (output3839, value698, value1) := by
  rw [input3839_def, output3839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3833_eq]
  try dsimp only
  rw [node3838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node3839_eq
end InitECandidate.Proofs.DeadStages597
