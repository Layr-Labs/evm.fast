import InitECandidate.Proofs.DeadStages597.Chunk006
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input1792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 0#64))).val
theorem input1792_def : input1792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 0#64)) := by
  unfold input1792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1792_def : output1792 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1792_skip : Flapjack.WordAlloc.isSkip output1792 = true := by
  rw [output1792_def]
  conv => lhs; cbv
  try rfl
theorem node1792_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value348 value1 value2 = (output1792, value348, value1) := by
  rw [input1792_def, output1792_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2389 0#64))).val
theorem input1793_def : input1793 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2389 0#64)) := by
  unfold input1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1793_def : output1793 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1793_skip : Flapjack.WordAlloc.isSkip output1793 = true := by
  rw [output1793_def]
  conv => lhs; cbv
  try rfl
theorem node1793_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value348 value1 value2 = (output1793, value348, value1) := by
  rw [input1793_def, output1793_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64))).val
theorem input1794_def : input1794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64)) := by
  unfold input1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64))).val
theorem output1794_def : output1794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64)) := by
  unfold output1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1794_skip : Flapjack.WordAlloc.isSkip output1794 = false := by
  rw [output1794_def]
  conv => lhs; cbv
  try rfl
theorem node1794_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value348 value1 value2 = (output1794, value343, value1) := by
  rw [input1794_def, output1794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1795_def : input1795 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1795_def : output1795 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1795_skip : Flapjack.WordAlloc.isSkip output1795 = true := by
  rw [output1795_def]
  conv => lhs; cbv
  try rfl
theorem node1795_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value343 value1 value2 = (output1795, value343, value1) := by
  rw [input1795_def, output1795_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1795 input1794)).val
theorem input1796_def : input1796 = (.seq input1795 input1794) := by
  unfold input1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1794)).val
theorem output1796_def : output1796 = (output1794) := by
  unfold output1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1796_skip : Flapjack.WordAlloc.isSkip output1796 = false := by
  rw [output1796_def]
  conv => lhs; cbv
  try rfl
theorem node1796_eq : Flapjack.WordAlloc.removeDeadStructural input1796 value348 value1 value2 = (output1796, value343, value1) := by
  rw [input1796_def, output1796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1794_eq]
  try dsimp only
  rw [node1795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1796 input1793)).val
theorem input1797_def : input1797 = (.seq input1796 input1793) := by
  unfold input1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1796)).val
theorem output1797_def : output1797 = (output1796) := by
  unfold output1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1797_skip : Flapjack.WordAlloc.isSkip output1797 = false := by
  rw [output1797_def]
  conv => lhs; cbv
  try rfl
theorem node1797_eq : Flapjack.WordAlloc.removeDeadStructural input1797 value348 value1 value2 = (output1797, value343, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1793_eq]
  try dsimp only
  rw [node1796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1797 input1792)).val
theorem input1798_def : input1798 = (.seq input1797 input1792) := by
  unfold input1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1797)).val
theorem output1798_def : output1798 = (output1797) := by
  unfold output1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1798_skip : Flapjack.WordAlloc.isSkip output1798 = false := by
  rw [output1798_def]
  conv => lhs; cbv
  try rfl
theorem node1798_eq : Flapjack.WordAlloc.removeDeadStructural input1798 value348 value1 value2 = (output1798, value343, value1) := by
  rw [input1798_def, output1798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1792_eq]
  try dsimp only
  rw [node1797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1798 input1791)).val
theorem input1799_def : input1799 = (.seq input1798 input1791) := by
  unfold input1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1798)).val
theorem output1799_def : output1799 = (output1798) := by
  unfold output1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1799_skip : Flapjack.WordAlloc.isSkip output1799 = false := by
  rw [output1799_def]
  conv => lhs; cbv
  try rfl
theorem node1799_eq : Flapjack.WordAlloc.removeDeadStructural input1799 value348 value1 value2 = (output1799, value343, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1791_eq]
  try dsimp only
  rw [node1798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value349 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2381, 2349), (2377, 2365), (2373, 2369)])).val
theorem input1800_def : input1800 = (Flapjack.WordLangProgHOL.move 1 [(2381, 2349), (2377, 2365), (2373, 2369)]) := by
  unfold input1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2381, 2349)])).val
theorem output1800_def : output1800 = (Flapjack.WordLangProgHOL.move 1 [(2381, 2349)]) := by
  unfold output1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1800_skip : Flapjack.WordAlloc.isSkip output1800 = false := by
  rw [output1800_def]
  conv => lhs; cbv
  try rfl
theorem node1800_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value343 value1 value2 = (output1800, value349, value1) := by
  rw [input1800_def, output1800_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1800 input1799)).val
theorem input1801_def : input1801 = (.seq input1800 input1799) := by
  unfold input1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1800 output1799)).val
theorem output1801_def : output1801 = (.seq output1800 output1799) := by
  unfold output1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1801_skip : Flapjack.WordAlloc.isSkip output1801 = false := by
  rw [output1801_def]
  conv => lhs; cbv
  try rfl
theorem node1801_eq : Flapjack.WordAlloc.removeDeadStructural input1801 value348 value1 value2 = (output1801, value349, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1799_eq]
  try dsimp only
  rw [node1800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value350 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 2349 [2])).val
theorem input1802_def : input1802 = (Flapjack.WordLangProgHOL.return 2349 [2]) := by
  unfold input1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 2349 [2])).val
theorem output1802_def : output1802 = (Flapjack.WordLangProgHOL.return 2349 [2]) := by
  unfold output1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1802_skip : Flapjack.WordAlloc.isSkip output1802 = false := by
  rw [output1802_def]
  conv => lhs; cbv
  try rfl
theorem node1802_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value349 value1 value2 = (output1802, value350, value1) := by
  rw [input1802_def, output1802_def]
  try (conv => lhs; cbv)
  try rfl

def value351 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 2369)])).val
theorem input1803_def : input1803 = (Flapjack.WordLangProgHOL.move 0 [(2, 2369)]) := by
  unfold input1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 2369)])).val
theorem output1803_def : output1803 = (Flapjack.WordLangProgHOL.move 0 [(2, 2369)]) := by
  unfold output1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1803_skip : Flapjack.WordAlloc.isSkip output1803 = false := by
  rw [output1803_def]
  conv => lhs; cbv
  try rfl
theorem node1803_eq : Flapjack.WordAlloc.removeDeadStructural input1803 value350 value1 value2 = (output1803, value351, value1) := by
  rw [input1803_def, output1803_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1803 input1802)).val
theorem input1804_def : input1804 = (.seq input1803 input1802) := by
  unfold input1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1803 output1802)).val
theorem output1804_def : output1804 = (.seq output1803 output1802) := by
  unfold output1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1804_skip : Flapjack.WordAlloc.isSkip output1804 = false := by
  rw [output1804_def]
  conv => lhs; cbv
  try rfl
theorem node1804_eq : Flapjack.WordAlloc.removeDeadStructural input1804 value349 value1 value2 = (output1804, value351, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1802_eq]
  try dsimp only
  rw [node1803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2369 0#64))).val
theorem input1805_def : input1805 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2369 0#64)) := by
  unfold input1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2369 0#64))).val
theorem output1805_def : output1805 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2369 0#64)) := by
  unfold output1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1805_skip : Flapjack.WordAlloc.isSkip output1805 = false := by
  rw [output1805_def]
  conv => lhs; cbv
  try rfl
theorem node1805_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value351 value1 value2 = (output1805, value349, value1) := by
  rw [input1805_def, output1805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1806_def : input1806 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1806_def : output1806 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1806_skip : Flapjack.WordAlloc.isSkip output1806 = false := by
  rw [output1806_def]
  conv => lhs; cbv
  try rfl
theorem node1806_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value349 value1 value2 = (output1806, value349, value1) := by
  rw [input1806_def, output1806_def]
  try (conv => lhs; cbv)
  try rfl

def value352 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2353, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(2361, 2353)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2365 0#64)))),
      597, 56))
  (some 525) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2357, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2357)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(2365, 2357)]))),
      597, 57)))).val
theorem input1807_def : input1807 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2353, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(2361, 2353)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2365 0#64)))),
      597, 56))
  (some 525) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2357, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2357)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(2365, 2357)]))),
      597, 57))) := by
  unfold input1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(2349, 2343)], 597, 56))
  (some 525) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2357, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2357)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 57)))).val
theorem output1807_def : output1807 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(2349, 2343)], 597, 56))
  (some 525) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2349, 2343)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2357, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2357)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 57))) := by
  unfold output1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1807_skip : Flapjack.WordAlloc.isSkip output1807 = false := by
  rw [output1807_def]
  conv => lhs; cbv
  try rfl
theorem node1807_eq : Flapjack.WordAlloc.removeDeadStructural input1807 value349 value1 value2 = (output1807, value352, value1) := by
  rw [input1807_def, output1807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input1808_def : input1808 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1808_def : output1808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1808_skip : Flapjack.WordAlloc.isSkip output1808 = true := by
  rw [output1808_def]
  conv => lhs; cbv
  try rfl
theorem node1808_eq : Flapjack.WordAlloc.removeDeadStructural input1808 value352 value1 value2 = (output1808, value352, value1) := by
  rw [input1808_def, output1808_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1808 input1807)).val
theorem input1809_def : input1809 = (.seq input1808 input1807) := by
  unfold input1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1807)).val
theorem output1809_def : output1809 = (output1807) := by
  unfold output1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1809_skip : Flapjack.WordAlloc.isSkip output1809 = false := by
  rw [output1809_def]
  conv => lhs; cbv
  try rfl
theorem node1809_eq : Flapjack.WordAlloc.removeDeadStructural input1809 value349 value1 value2 = (output1809, value352, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1807_eq]
  try dsimp only
  rw [node1808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value353 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2343, 2269)])).val
theorem input1810_def : input1810 = (Flapjack.WordLangProgHOL.move 0 [(2343, 2269)]) := by
  unfold input1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2343, 2269)])).val
theorem output1810_def : output1810 = (Flapjack.WordLangProgHOL.move 0 [(2343, 2269)]) := by
  unfold output1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1810_skip : Flapjack.WordAlloc.isSkip output1810 = false := by
  rw [output1810_def]
  conv => lhs; cbv
  try rfl
theorem node1810_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value352 value1 value2 = (output1810, value353, value1) := by
  rw [input1810_def, output1810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1810 input1809)).val
theorem input1811_def : input1811 = (.seq input1810 input1809) := by
  unfold input1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1810 output1809)).val
theorem output1811_def : output1811 = (.seq output1810 output1809) := by
  unfold output1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1811_skip : Flapjack.WordAlloc.isSkip output1811 = false := by
  rw [output1811_def]
  conv => lhs; cbv
  try rfl
theorem node1811_eq : Flapjack.WordAlloc.removeDeadStructural input1811 value349 value1 value2 = (output1811, value353, value1) := by
  rw [input1811_def, output1811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1809_eq]
  try dsimp only
  rw [node1810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2337 1#64))).val
theorem input1812_def : input1812 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2337 1#64)) := by
  unfold input1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1812_def : output1812 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1812_skip : Flapjack.WordAlloc.isSkip output1812 = true := by
  rw [output1812_def]
  conv => lhs; cbv
  try rfl
theorem node1812_eq : Flapjack.WordAlloc.removeDeadStructural input1812 value353 value1 value2 = (output1812, value353, value1) := by
  rw [input1812_def, output1812_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1813_def : input1813 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1813_def : output1813 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1813_skip : Flapjack.WordAlloc.isSkip output1813 = false := by
  rw [output1813_def]
  conv => lhs; cbv
  try rfl
theorem node1813_eq : Flapjack.WordAlloc.removeDeadStructural input1813 value353 value1 value2 = (output1813, value353, value1) := by
  rw [input1813_def, output1813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2333 1#64))).val
theorem input1814_def : input1814 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2333 1#64)) := by
  unfold input1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1814_def : output1814 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1814_skip : Flapjack.WordAlloc.isSkip output1814 = true := by
  rw [output1814_def]
  conv => lhs; cbv
  try rfl
theorem node1814_eq : Flapjack.WordAlloc.removeDeadStructural input1814 value353 value1 value2 = (output1814, value353, value1) := by
  rw [input1814_def, output1814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1814 input1813)).val
theorem input1815_def : input1815 = (.seq input1814 input1813) := by
  unfold input1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1813)).val
theorem output1815_def : output1815 = (output1813) := by
  unfold output1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1815_skip : Flapjack.WordAlloc.isSkip output1815 = false := by
  rw [output1815_def]
  conv => lhs; cbv
  try rfl
theorem node1815_eq : Flapjack.WordAlloc.removeDeadStructural input1815 value353 value1 value2 = (output1815, value353, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1813_eq]
  try dsimp only
  rw [node1814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1815 input1812)).val
theorem input1816_def : input1816 = (.seq input1815 input1812) := by
  unfold input1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1815)).val
theorem output1816_def : output1816 = (output1815) := by
  unfold output1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1816_skip : Flapjack.WordAlloc.isSkip output1816 = false := by
  rw [output1816_def]
  conv => lhs; cbv
  try rfl
theorem node1816_eq : Flapjack.WordAlloc.removeDeadStructural input1816 value353 value1 value2 = (output1816, value353, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1812_eq]
  try dsimp only
  rw [node1815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1816 input1811)).val
theorem input1817_def : input1817 = (.seq input1816 input1811) := by
  unfold input1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1816 output1811)).val
theorem output1817_def : output1817 = (.seq output1816 output1811) := by
  unfold output1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1817_skip : Flapjack.WordAlloc.isSkip output1817 = false := by
  rw [output1817_def]
  conv => lhs; cbv
  try rfl
theorem node1817_eq : Flapjack.WordAlloc.removeDeadStructural input1817 value349 value1 value2 = (output1817, value353, value1) := by
  rw [input1817_def, output1817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1811_eq]
  try dsimp only
  rw [node1816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1817 input1806)).val
theorem input1818_def : input1818 = (.seq input1817 input1806) := by
  unfold input1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1817 output1806)).val
theorem output1818_def : output1818 = (.seq output1817 output1806) := by
  unfold output1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1818_skip : Flapjack.WordAlloc.isSkip output1818 = false := by
  rw [output1818_def]
  conv => lhs; cbv
  try rfl
theorem node1818_eq : Flapjack.WordAlloc.removeDeadStructural input1818 value349 value1 value2 = (output1818, value353, value1) := by
  rw [input1818_def, output1818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1806_eq]
  try dsimp only
  rw [node1817_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1818 input1805)).val
theorem input1819_def : input1819 = (.seq input1818 input1805) := by
  unfold input1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1818 output1805)).val
theorem output1819_def : output1819 = (.seq output1818 output1805) := by
  unfold output1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1819_skip : Flapjack.WordAlloc.isSkip output1819 = false := by
  rw [output1819_def]
  conv => lhs; cbv
  try rfl
theorem node1819_eq : Flapjack.WordAlloc.removeDeadStructural input1819 value351 value1 value2 = (output1819, value353, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1805_eq]
  try dsimp only
  rw [node1818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1819 input1804)).val
theorem input1820_def : input1820 = (.seq input1819 input1804) := by
  unfold input1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1819 output1804)).val
theorem output1820_def : output1820 = (.seq output1819 output1804) := by
  unfold output1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1820_skip : Flapjack.WordAlloc.isSkip output1820 = false := by
  rw [output1820_def]
  conv => lhs; cbv
  try rfl
theorem node1820_eq : Flapjack.WordAlloc.removeDeadStructural input1820 value349 value1 value2 = (output1820, value353, value1) := by
  rw [input1820_def, output1820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1804_eq]
  try dsimp only
  rw [node1819_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1820 input1801)).val
theorem input1821_def : input1821 = (.seq input1820 input1801) := by
  unfold input1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1820 output1801)).val
theorem output1821_def : output1821 = (.seq output1820 output1801) := by
  unfold output1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1821_skip : Flapjack.WordAlloc.isSkip output1821 = false := by
  rw [output1821_def]
  conv => lhs; cbv
  try rfl
theorem node1821_eq : Flapjack.WordAlloc.removeDeadStructural input1821 value348 value1 value2 = (output1821, value353, value1) := by
  rw [input1821_def, output1821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1801_eq]
  try dsimp only
  rw [node1820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2397, 2281)])).val
theorem input1822_def : input1822 = (Flapjack.WordLangProgHOL.move 2 [(2397, 2281)]) := by
  unfold input1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1822_def : output1822 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1822_skip : Flapjack.WordAlloc.isSkip output1822 = true := by
  rw [output1822_def]
  conv => lhs; cbv
  try rfl
theorem node1822_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value348 value1 value2 = (output1822, value348, value1) := by
  rw [input1822_def, output1822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2393, 2321)])).val
theorem input1823_def : input1823 = (Flapjack.WordLangProgHOL.move 2 [(2393, 2321)]) := by
  unfold input1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1823_def : output1823 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1823_skip : Flapjack.WordAlloc.isSkip output1823 = true := by
  rw [output1823_def]
  conv => lhs; cbv
  try rfl
theorem node1823_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value348 value1 value2 = (output1823, value348, value1) := by
  rw [input1823_def, output1823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2389, 2329)])).val
theorem input1824_def : input1824 = (Flapjack.WordLangProgHOL.move 2 [(2389, 2329)]) := by
  unfold input1824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1824_def : output1824 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1824_skip : Flapjack.WordAlloc.isSkip output1824 = true := by
  rw [output1824_def]
  conv => lhs; cbv
  try rfl
theorem node1824_eq : Flapjack.WordAlloc.removeDeadStructural input1824 value348 value1 value2 = (output1824, value348, value1) := by
  rw [input1824_def, output1824_def]
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
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2385, 2325)])).val
theorem input1825_def : input1825 = (Flapjack.WordLangProgHOL.move 2 [(2385, 2325)]) := by
  unfold input1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2385, 2325)])).val
theorem output1825_def : output1825 = (Flapjack.WordLangProgHOL.move 2 [(2385, 2325)]) := by
  unfold output1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1825_skip : Flapjack.WordAlloc.isSkip output1825 = false := by
  rw [output1825_def]
  conv => lhs; cbv
  try rfl
theorem node1825_eq : Flapjack.WordAlloc.removeDeadStructural input1825 value348 value1 value2 = (output1825, value354, value1) := by
  rw [input1825_def, output1825_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1826_def : input1826 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1826_def : output1826 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1826_skip : Flapjack.WordAlloc.isSkip output1826 = true := by
  rw [output1826_def]
  conv => lhs; cbv
  try rfl
theorem node1826_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value354 value1 value2 = (output1826, value354, value1) := by
  rw [input1826_def, output1826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1826 input1825)).val
theorem input1827_def : input1827 = (.seq input1826 input1825) := by
  unfold input1827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1825)).val
theorem output1827_def : output1827 = (output1825) := by
  unfold output1827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1827_skip : Flapjack.WordAlloc.isSkip output1827 = false := by
  rw [output1827_def]
  conv => lhs; cbv
  try rfl
theorem node1827_eq : Flapjack.WordAlloc.removeDeadStructural input1827 value348 value1 value2 = (output1827, value354, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1825_eq]
  try dsimp only
  rw [node1826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1827 input1824)).val
theorem input1828_def : input1828 = (.seq input1827 input1824) := by
  unfold input1828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1827)).val
theorem output1828_def : output1828 = (output1827) := by
  unfold output1828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1828_skip : Flapjack.WordAlloc.isSkip output1828 = false := by
  rw [output1828_def]
  conv => lhs; cbv
  try rfl
theorem node1828_eq : Flapjack.WordAlloc.removeDeadStructural input1828 value348 value1 value2 = (output1828, value354, value1) := by
  rw [input1828_def, output1828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1824_eq]
  try dsimp only
  rw [node1827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1828 input1823)).val
theorem input1829_def : input1829 = (.seq input1828 input1823) := by
  unfold input1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1828)).val
theorem output1829_def : output1829 = (output1828) := by
  unfold output1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1829_skip : Flapjack.WordAlloc.isSkip output1829 = false := by
  rw [output1829_def]
  conv => lhs; cbv
  try rfl
theorem node1829_eq : Flapjack.WordAlloc.removeDeadStructural input1829 value348 value1 value2 = (output1829, value354, value1) := by
  rw [input1829_def, output1829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1823_eq]
  try dsimp only
  rw [node1828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1829 input1822)).val
theorem input1830_def : input1830 = (.seq input1829 input1822) := by
  unfold input1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1829)).val
theorem output1830_def : output1830 = (output1829) := by
  unfold output1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1830_skip : Flapjack.WordAlloc.isSkip output1830 = false := by
  rw [output1830_def]
  conv => lhs; cbv
  try rfl
theorem node1830_eq : Flapjack.WordAlloc.removeDeadStructural input1830 value348 value1 value2 = (output1830, value354, value1) := by
  rw [input1830_def, output1830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1822_eq]
  try dsimp only
  rw [node1829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value355 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2381, 2269), (2377, 2325), (2373, 2273)])).val
theorem input1831_def : input1831 = (Flapjack.WordLangProgHOL.move 2 [(2381, 2269), (2377, 2325), (2373, 2273)]) := by
  unfold input1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2381, 2269)])).val
theorem output1831_def : output1831 = (Flapjack.WordLangProgHOL.move 2 [(2381, 2269)]) := by
  unfold output1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1831_skip : Flapjack.WordAlloc.isSkip output1831 = false := by
  rw [output1831_def]
  conv => lhs; cbv
  try rfl
theorem node1831_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value354 value1 value2 = (output1831, value355, value1) := by
  rw [input1831_def, output1831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1831 input1830)).val
theorem input1832_def : input1832 = (.seq input1831 input1830) := by
  unfold input1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1831 output1830)).val
theorem output1832_def : output1832 = (.seq output1831 output1830) := by
  unfold output1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1832_skip : Flapjack.WordAlloc.isSkip output1832 = false := by
  rw [output1832_def]
  conv => lhs; cbv
  try rfl
theorem node1832_eq : Flapjack.WordAlloc.removeDeadStructural input1832 value348 value1 value2 = (output1832, value355, value1) := by
  rw [input1832_def, output1832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1830_eq]
  try dsimp only
  rw [node1831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1833_def : input1833 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1833_def : output1833 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1833_skip : Flapjack.WordAlloc.isSkip output1833 = true := by
  rw [output1833_def]
  conv => lhs; cbv
  try rfl
theorem node1833_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value355 value1 value2 = (output1833, value355, value1) := by
  rw [input1833_def, output1833_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1833 input1832)).val
theorem input1834_def : input1834 = (.seq input1833 input1832) := by
  unfold input1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1832)).val
theorem output1834_def : output1834 = (output1832) := by
  unfold output1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1834_skip : Flapjack.WordAlloc.isSkip output1834 = false := by
  rw [output1834_def]
  conv => lhs; cbv
  try rfl
theorem node1834_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value348 value1 value2 = (output1834, value355, value1) := by
  rw [input1834_def, output1834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1832_eq]
  try dsimp only
  rw [node1833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value356 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 2329

def value357 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 2325 value356 input1821 input1834)).val
theorem input1835_def : input1835 = (.ite value15 2325 value356 input1821 input1834) := by
  unfold input1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 2325 value356 output1821 output1834)).val
theorem output1835_def : output1835 = (.ite value15 2325 value356 output1821 output1834) := by
  unfold output1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1835_skip : Flapjack.WordAlloc.isSkip output1835 = false := by
  rw [output1835_def]
  conv => lhs; cbv
  try rfl
theorem node1835_eq : Flapjack.WordAlloc.removeDeadStructural input1835 value348 value1 value2 = (output1835, value357, value1) := by
  rw [input1835_def, output1835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1821_eq]
  try dsimp only
  rw [node1834_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1835 input1790)).val
theorem input1836_def : input1836 = (.seq input1835 input1790) := by
  unfold input1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1835 output1790)).val
theorem output1836_def : output1836 = (.seq output1835 output1790) := by
  unfold output1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1836_skip : Flapjack.WordAlloc.isSkip output1836 = false := by
  rw [output1836_def]
  conv => lhs; cbv
  try rfl
theorem node1836_eq : Flapjack.WordAlloc.removeDeadStructural input1836 value348 value1 value2 = (output1836, value357, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1790_eq]
  try dsimp only
  rw [node1835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 32#64))).val
theorem input1837_def : input1837 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 32#64)) := by
  unfold input1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 32#64))).val
theorem output1837_def : output1837 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 32#64)) := by
  unfold output1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1837_skip : Flapjack.WordAlloc.isSkip output1837 = false := by
  rw [output1837_def]
  conv => lhs; cbv
  try rfl
theorem node1837_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value357 value1 value2 = (output1837, value355, value1) := by
  rw [input1837_def, output1837_def]
  try (conv => lhs; cbv)
  try rfl

def value358 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2325, 2309)])).val
theorem input1838_def : input1838 = (Flapjack.WordLangProgHOL.move 0 [(2325, 2309)]) := by
  unfold input1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2325, 2309)])).val
theorem output1838_def : output1838 = (Flapjack.WordLangProgHOL.move 0 [(2325, 2309)]) := by
  unfold output1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1838_skip : Flapjack.WordAlloc.isSkip output1838 = false := by
  rw [output1838_def]
  conv => lhs; cbv
  try rfl
theorem node1838_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value355 value1 value2 = (output1838, value358, value1) := by
  rw [input1838_def, output1838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 1#64))).val
theorem input1839_def : input1839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 1#64)) := by
  unfold input1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1839_def : output1839 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1839_skip : Flapjack.WordAlloc.isSkip output1839 = true := by
  rw [output1839_def]
  conv => lhs; cbv
  try rfl
theorem node1839_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value358 value1 value2 = (output1839, value358, value1) := by
  rw [input1839_def, output1839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1840_def : input1840 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1840_def : output1840 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1840_skip : Flapjack.WordAlloc.isSkip output1840 = false := by
  rw [output1840_def]
  conv => lhs; cbv
  try rfl
theorem node1840_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value358 value1 value2 = (output1840, value358, value1) := by
  rw [input1840_def, output1840_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 1#64))).val
theorem input1841_def : input1841 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 1#64)) := by
  unfold input1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1841_def : output1841 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1841_skip : Flapjack.WordAlloc.isSkip output1841 = true := by
  rw [output1841_def]
  conv => lhs; cbv
  try rfl
theorem node1841_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value358 value1 value2 = (output1841, value358, value1) := by
  rw [input1841_def, output1841_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1841 input1840)).val
theorem input1842_def : input1842 = (.seq input1841 input1840) := by
  unfold input1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1840)).val
theorem output1842_def : output1842 = (output1840) := by
  unfold output1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1842_skip : Flapjack.WordAlloc.isSkip output1842 = false := by
  rw [output1842_def]
  conv => lhs; cbv
  try rfl
theorem node1842_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value358 value1 value2 = (output1842, value358, value1) := by
  rw [input1842_def, output1842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1840_eq]
  try dsimp only
  rw [node1841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1842 input1839)).val
theorem input1843_def : input1843 = (.seq input1842 input1839) := by
  unfold input1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1842)).val
theorem output1843_def : output1843 = (output1842) := by
  unfold output1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1843_skip : Flapjack.WordAlloc.isSkip output1843 = false := by
  rw [output1843_def]
  conv => lhs; cbv
  try rfl
theorem node1843_eq : Flapjack.WordAlloc.removeDeadStructural input1843 value358 value1 value2 = (output1843, value358, value1) := by
  rw [input1843_def, output1843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1839_eq]
  try dsimp only
  rw [node1842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1843 input1838)).val
theorem input1844_def : input1844 = (.seq input1843 input1838) := by
  unfold input1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1843 output1838)).val
theorem output1844_def : output1844 = (.seq output1843 output1838) := by
  unfold output1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1844_skip : Flapjack.WordAlloc.isSkip output1844 = false := by
  rw [output1844_def]
  conv => lhs; cbv
  try rfl
theorem node1844_eq : Flapjack.WordAlloc.removeDeadStructural input1844 value355 value1 value2 = (output1844, value358, value1) := by
  rw [input1844_def, output1844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1838_eq]
  try dsimp only
  rw [node1843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1844 input1837)).val
theorem input1845_def : input1845 = (.seq input1844 input1837) := by
  unfold input1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1844 output1837)).val
theorem output1845_def : output1845 = (.seq output1844 output1837) := by
  unfold output1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1845_skip : Flapjack.WordAlloc.isSkip output1845 = false := by
  rw [output1845_def]
  conv => lhs; cbv
  try rfl
theorem node1845_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value357 value1 value2 = (output1845, value358, value1) := by
  rw [input1845_def, output1845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1837_eq]
  try dsimp only
  rw [node1844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1845 input1836)).val
theorem input1846_def : input1846 = (.seq input1845 input1836) := by
  unfold input1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1845 output1836)).val
theorem output1846_def : output1846 = (.seq output1845 output1836) := by
  unfold output1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1846_skip : Flapjack.WordAlloc.isSkip output1846 = false := by
  rw [output1846_def]
  conv => lhs; cbv
  try rfl
theorem node1846_eq : Flapjack.WordAlloc.removeDeadStructural input1846 value348 value1 value2 = (output1846, value358, value1) := by
  rw [input1846_def, output1846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1836_eq]
  try dsimp only
  rw [node1845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1846 input1785)).val
theorem input1847_def : input1847 = (.seq input1846 input1785) := by
  unfold input1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1846 output1785)).val
theorem output1847_def : output1847 = (.seq output1846 output1785) := by
  unfold output1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1847_skip : Flapjack.WordAlloc.isSkip output1847 = false := by
  rw [output1847_def]
  conv => lhs; cbv
  try rfl
theorem node1847_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value348 value1 value2 = (output1847, value358, value1) := by
  rw [input1847_def, output1847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1785_eq]
  try dsimp only
  rw [node1846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1847 input1784)).val
theorem input1848_def : input1848 = (.seq input1847 input1784) := by
  unfold input1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1847 output1784)).val
theorem output1848_def : output1848 = (.seq output1847 output1784) := by
  unfold output1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1848_skip : Flapjack.WordAlloc.isSkip output1848 = false := by
  rw [output1848_def]
  conv => lhs; cbv
  try rfl
theorem node1848_eq : Flapjack.WordAlloc.removeDeadStructural input1848 value345 value1 value2 = (output1848, value358, value1) := by
  rw [input1848_def, output1848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1784_eq]
  try dsimp only
  rw [node1847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1848 input1783)).val
theorem input1849_def : input1849 = (.seq input1848 input1783) := by
  unfold input1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1848 output1783)).val
theorem output1849_def : output1849 = (.seq output1848 output1783) := by
  unfold output1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1849_skip : Flapjack.WordAlloc.isSkip output1849 = false := by
  rw [output1849_def]
  conv => lhs; cbv
  try rfl
theorem node1849_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value347 value1 value2 = (output1849, value358, value1) := by
  rw [input1849_def, output1849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1783_eq]
  try dsimp only
  rw [node1848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1849 input1782)).val
theorem input1850_def : input1850 = (.seq input1849 input1782) := by
  unfold input1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1849 output1782)).val
theorem output1850_def : output1850 = (.seq output1849 output1782) := by
  unfold output1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1850_skip : Flapjack.WordAlloc.isSkip output1850 = false := by
  rw [output1850_def]
  conv => lhs; cbv
  try rfl
theorem node1850_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value338 value1 value2 = (output1850, value358, value1) := by
  rw [input1850_def, output1850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1782_eq]
  try dsimp only
  rw [node1849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1850 input1731)).val
theorem input1851_def : input1851 = (.seq input1850 input1731) := by
  unfold input1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1850 output1731)).val
theorem output1851_def : output1851 = (.seq output1850 output1731) := by
  unfold output1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1851_skip : Flapjack.WordAlloc.isSkip output1851 = false := by
  rw [output1851_def]
  conv => lhs; cbv
  try rfl
theorem node1851_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value338 value1 value2 = (output1851, value358, value1) := by
  rw [input1851_def, output1851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1731_eq]
  try dsimp only
  rw [node1850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1851 input1730)).val
theorem input1852_def : input1852 = (.seq input1851 input1730) := by
  unfold input1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1851 output1730)).val
theorem output1852_def : output1852 = (.seq output1851 output1730) := by
  unfold output1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1852_skip : Flapjack.WordAlloc.isSkip output1852 = false := by
  rw [output1852_def]
  conv => lhs; cbv
  try rfl
theorem node1852_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value335 value1 value2 = (output1852, value358, value1) := by
  rw [input1852_def, output1852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1730_eq]
  try dsimp only
  rw [node1851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1852 input1729)).val
theorem input1853_def : input1853 = (.seq input1852 input1729) := by
  unfold input1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1852 output1729)).val
theorem output1853_def : output1853 = (.seq output1852 output1729) := by
  unfold output1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1853_skip : Flapjack.WordAlloc.isSkip output1853 = false := by
  rw [output1853_def]
  conv => lhs; cbv
  try rfl
theorem node1853_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value337 value1 value2 = (output1853, value358, value1) := by
  rw [input1853_def, output1853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1729_eq]
  try dsimp only
  rw [node1852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1853 input1728)).val
theorem input1854_def : input1854 = (.seq input1853 input1728) := by
  unfold input1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1853 output1728)).val
theorem output1854_def : output1854 = (.seq output1853 output1728) := by
  unfold output1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1854_skip : Flapjack.WordAlloc.isSkip output1854 = false := by
  rw [output1854_def]
  conv => lhs; cbv
  try rfl
theorem node1854_eq : Flapjack.WordAlloc.removeDeadStructural input1854 value328 value1 value2 = (output1854, value358, value1) := by
  rw [input1854_def, output1854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1728_eq]
  try dsimp only
  rw [node1853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1854 input1677)).val
theorem input1855_def : input1855 = (.seq input1854 input1677) := by
  unfold input1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1854 output1677)).val
theorem output1855_def : output1855 = (.seq output1854 output1677) := by
  unfold output1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1855_skip : Flapjack.WordAlloc.isSkip output1855 = false := by
  rw [output1855_def]
  conv => lhs; cbv
  try rfl
theorem node1855_eq : Flapjack.WordAlloc.removeDeadStructural input1855 value328 value1 value2 = (output1855, value358, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1677_eq]
  try dsimp only
  rw [node1854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1855 input1676)).val
theorem input1856_def : input1856 = (.seq input1855 input1676) := by
  unfold input1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1855 output1676)).val
theorem output1856_def : output1856 = (.seq output1855 output1676) := by
  unfold output1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1856_skip : Flapjack.WordAlloc.isSkip output1856 = false := by
  rw [output1856_def]
  conv => lhs; cbv
  try rfl
theorem node1856_eq : Flapjack.WordAlloc.removeDeadStructural input1856 value325 value1 value2 = (output1856, value358, value1) := by
  rw [input1856_def, output1856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1676_eq]
  try dsimp only
  rw [node1855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1856 input1675)).val
theorem input1857_def : input1857 = (.seq input1856 input1675) := by
  unfold input1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1856 output1675)).val
theorem output1857_def : output1857 = (.seq output1856 output1675) := by
  unfold output1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1857_skip : Flapjack.WordAlloc.isSkip output1857 = false := by
  rw [output1857_def]
  conv => lhs; cbv
  try rfl
theorem node1857_eq : Flapjack.WordAlloc.removeDeadStructural input1857 value327 value1 value2 = (output1857, value358, value1) := by
  rw [input1857_def, output1857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1675_eq]
  try dsimp only
  rw [node1856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1857 input1674)).val
theorem input1858_def : input1858 = (.seq input1857 input1674) := by
  unfold input1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1857 output1674)).val
theorem output1858_def : output1858 = (.seq output1857 output1674) := by
  unfold output1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1858_skip : Flapjack.WordAlloc.isSkip output1858 = false := by
  rw [output1858_def]
  conv => lhs; cbv
  try rfl
theorem node1858_eq : Flapjack.WordAlloc.removeDeadStructural input1858 value318 value1 value2 = (output1858, value358, value1) := by
  rw [input1858_def, output1858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1674_eq]
  try dsimp only
  rw [node1857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1858 input1623)).val
theorem input1859_def : input1859 = (.seq input1858 input1623) := by
  unfold input1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1858 output1623)).val
theorem output1859_def : output1859 = (.seq output1858 output1623) := by
  unfold output1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1859_skip : Flapjack.WordAlloc.isSkip output1859 = false := by
  rw [output1859_def]
  conv => lhs; cbv
  try rfl
theorem node1859_eq : Flapjack.WordAlloc.removeDeadStructural input1859 value318 value1 value2 = (output1859, value358, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1623_eq]
  try dsimp only
  rw [node1858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1859 input1622)).val
theorem input1860_def : input1860 = (.seq input1859 input1622) := by
  unfold input1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1859 output1622)).val
theorem output1860_def : output1860 = (.seq output1859 output1622) := by
  unfold output1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1860_skip : Flapjack.WordAlloc.isSkip output1860 = false := by
  rw [output1860_def]
  conv => lhs; cbv
  try rfl
theorem node1860_eq : Flapjack.WordAlloc.removeDeadStructural input1860 value315 value1 value2 = (output1860, value358, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1622_eq]
  try dsimp only
  rw [node1859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1860 input1621)).val
theorem input1861_def : input1861 = (.seq input1860 input1621) := by
  unfold input1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1860 output1621)).val
theorem output1861_def : output1861 = (.seq output1860 output1621) := by
  unfold output1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1861_skip : Flapjack.WordAlloc.isSkip output1861 = false := by
  rw [output1861_def]
  conv => lhs; cbv
  try rfl
theorem node1861_eq : Flapjack.WordAlloc.removeDeadStructural input1861 value317 value1 value2 = (output1861, value358, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1621_eq]
  try dsimp only
  rw [node1860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1861 input1620)).val
theorem input1862_def : input1862 = (.seq input1861 input1620) := by
  unfold input1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1861 output1620)).val
theorem output1862_def : output1862 = (.seq output1861 output1620) := by
  unfold output1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1862_skip : Flapjack.WordAlloc.isSkip output1862 = false := by
  rw [output1862_def]
  conv => lhs; cbv
  try rfl
theorem node1862_eq : Flapjack.WordAlloc.removeDeadStructural input1862 value308 value1 value2 = (output1862, value358, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1620_eq]
  try dsimp only
  rw [node1861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1862 input1569)).val
theorem input1863_def : input1863 = (.seq input1862 input1569) := by
  unfold input1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1862 output1569)).val
theorem output1863_def : output1863 = (.seq output1862 output1569) := by
  unfold output1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1863_skip : Flapjack.WordAlloc.isSkip output1863 = false := by
  rw [output1863_def]
  conv => lhs; cbv
  try rfl
theorem node1863_eq : Flapjack.WordAlloc.removeDeadStructural input1863 value308 value1 value2 = (output1863, value358, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1569_eq]
  try dsimp only
  rw [node1862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1863 input1568)).val
theorem input1864_def : input1864 = (.seq input1863 input1568) := by
  unfold input1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1863 output1568)).val
theorem output1864_def : output1864 = (.seq output1863 output1568) := by
  unfold output1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1864_skip : Flapjack.WordAlloc.isSkip output1864 = false := by
  rw [output1864_def]
  conv => lhs; cbv
  try rfl
theorem node1864_eq : Flapjack.WordAlloc.removeDeadStructural input1864 value305 value1 value2 = (output1864, value358, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1568_eq]
  try dsimp only
  rw [node1863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1864 input1567)).val
theorem input1865_def : input1865 = (.seq input1864 input1567) := by
  unfold input1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1864 output1567)).val
theorem output1865_def : output1865 = (.seq output1864 output1567) := by
  unfold output1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1865_skip : Flapjack.WordAlloc.isSkip output1865 = false := by
  rw [output1865_def]
  conv => lhs; cbv
  try rfl
theorem node1865_eq : Flapjack.WordAlloc.removeDeadStructural input1865 value307 value1 value2 = (output1865, value358, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1567_eq]
  try dsimp only
  rw [node1864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1865 input1566)).val
theorem input1866_def : input1866 = (.seq input1865 input1566) := by
  unfold input1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1865 output1566)).val
theorem output1866_def : output1866 = (.seq output1865 output1566) := by
  unfold output1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1866_skip : Flapjack.WordAlloc.isSkip output1866 = false := by
  rw [output1866_def]
  conv => lhs; cbv
  try rfl
theorem node1866_eq : Flapjack.WordAlloc.removeDeadStructural input1866 value298 value1 value2 = (output1866, value358, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1566_eq]
  try dsimp only
  rw [node1865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1866 input1515)).val
theorem input1867_def : input1867 = (.seq input1866 input1515) := by
  unfold input1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1866 output1515)).val
theorem output1867_def : output1867 = (.seq output1866 output1515) := by
  unfold output1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1867_skip : Flapjack.WordAlloc.isSkip output1867 = false := by
  rw [output1867_def]
  conv => lhs; cbv
  try rfl
theorem node1867_eq : Flapjack.WordAlloc.removeDeadStructural input1867 value298 value1 value2 = (output1867, value358, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1515_eq]
  try dsimp only
  rw [node1866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1867 input1514)).val
theorem input1868_def : input1868 = (.seq input1867 input1514) := by
  unfold input1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1867 output1514)).val
theorem output1868_def : output1868 = (.seq output1867 output1514) := by
  unfold output1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1868_skip : Flapjack.WordAlloc.isSkip output1868 = false := by
  rw [output1868_def]
  conv => lhs; cbv
  try rfl
theorem node1868_eq : Flapjack.WordAlloc.removeDeadStructural input1868 value295 value1 value2 = (output1868, value358, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1514_eq]
  try dsimp only
  rw [node1867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1868 input1513)).val
theorem input1869_def : input1869 = (.seq input1868 input1513) := by
  unfold input1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1868 output1513)).val
theorem output1869_def : output1869 = (.seq output1868 output1513) := by
  unfold output1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1869_skip : Flapjack.WordAlloc.isSkip output1869 = false := by
  rw [output1869_def]
  conv => lhs; cbv
  try rfl
theorem node1869_eq : Flapjack.WordAlloc.removeDeadStructural input1869 value297 value1 value2 = (output1869, value358, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1513_eq]
  try dsimp only
  rw [node1868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1869 input1512)).val
theorem input1870_def : input1870 = (.seq input1869 input1512) := by
  unfold input1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1869 output1512)).val
theorem output1870_def : output1870 = (.seq output1869 output1512) := by
  unfold output1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1870_skip : Flapjack.WordAlloc.isSkip output1870 = false := by
  rw [output1870_def]
  conv => lhs; cbv
  try rfl
theorem node1870_eq : Flapjack.WordAlloc.removeDeadStructural input1870 value288 value1 value2 = (output1870, value358, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1512_eq]
  try dsimp only
  rw [node1869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1870 input1461)).val
theorem input1871_def : input1871 = (.seq input1870 input1461) := by
  unfold input1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1870 output1461)).val
theorem output1871_def : output1871 = (.seq output1870 output1461) := by
  unfold output1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1871_skip : Flapjack.WordAlloc.isSkip output1871 = false := by
  rw [output1871_def]
  conv => lhs; cbv
  try rfl
theorem node1871_eq : Flapjack.WordAlloc.removeDeadStructural input1871 value288 value1 value2 = (output1871, value358, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1461_eq]
  try dsimp only
  rw [node1870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1871 input1460)).val
theorem input1872_def : input1872 = (.seq input1871 input1460) := by
  unfold input1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1871 output1460)).val
theorem output1872_def : output1872 = (.seq output1871 output1460) := by
  unfold output1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1872_skip : Flapjack.WordAlloc.isSkip output1872 = false := by
  rw [output1872_def]
  conv => lhs; cbv
  try rfl
theorem node1872_eq : Flapjack.WordAlloc.removeDeadStructural input1872 value285 value1 value2 = (output1872, value358, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1460_eq]
  try dsimp only
  rw [node1871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1872 input1459)).val
theorem input1873_def : input1873 = (.seq input1872 input1459) := by
  unfold input1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1872 output1459)).val
theorem output1873_def : output1873 = (.seq output1872 output1459) := by
  unfold output1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1873_skip : Flapjack.WordAlloc.isSkip output1873 = false := by
  rw [output1873_def]
  conv => lhs; cbv
  try rfl
theorem node1873_eq : Flapjack.WordAlloc.removeDeadStructural input1873 value287 value1 value2 = (output1873, value358, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1459_eq]
  try dsimp only
  rw [node1872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1873 input1458)).val
theorem input1874_def : input1874 = (.seq input1873 input1458) := by
  unfold input1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1873 output1458)).val
theorem output1874_def : output1874 = (.seq output1873 output1458) := by
  unfold output1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1874_skip : Flapjack.WordAlloc.isSkip output1874 = false := by
  rw [output1874_def]
  conv => lhs; cbv
  try rfl
theorem node1874_eq : Flapjack.WordAlloc.removeDeadStructural input1874 value278 value1 value2 = (output1874, value358, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1458_eq]
  try dsimp only
  rw [node1873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1874 input1407)).val
theorem input1875_def : input1875 = (.seq input1874 input1407) := by
  unfold input1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1874 output1407)).val
theorem output1875_def : output1875 = (.seq output1874 output1407) := by
  unfold output1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1875_skip : Flapjack.WordAlloc.isSkip output1875 = false := by
  rw [output1875_def]
  conv => lhs; cbv
  try rfl
theorem node1875_eq : Flapjack.WordAlloc.removeDeadStructural input1875 value278 value1 value2 = (output1875, value358, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1407_eq]
  try dsimp only
  rw [node1874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1875 input1406)).val
theorem input1876_def : input1876 = (.seq input1875 input1406) := by
  unfold input1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1875 output1406)).val
theorem output1876_def : output1876 = (.seq output1875 output1406) := by
  unfold output1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1876_skip : Flapjack.WordAlloc.isSkip output1876 = false := by
  rw [output1876_def]
  conv => lhs; cbv
  try rfl
theorem node1876_eq : Flapjack.WordAlloc.removeDeadStructural input1876 value275 value1 value2 = (output1876, value358, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1406_eq]
  try dsimp only
  rw [node1875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1876 input1405)).val
theorem input1877_def : input1877 = (.seq input1876 input1405) := by
  unfold input1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1876 output1405)).val
theorem output1877_def : output1877 = (.seq output1876 output1405) := by
  unfold output1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1877_skip : Flapjack.WordAlloc.isSkip output1877 = false := by
  rw [output1877_def]
  conv => lhs; cbv
  try rfl
theorem node1877_eq : Flapjack.WordAlloc.removeDeadStructural input1877 value277 value1 value2 = (output1877, value358, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1405_eq]
  try dsimp only
  rw [node1876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1877 input1404)).val
theorem input1878_def : input1878 = (.seq input1877 input1404) := by
  unfold input1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1877 output1404)).val
theorem output1878_def : output1878 = (.seq output1877 output1404) := by
  unfold output1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1878_skip : Flapjack.WordAlloc.isSkip output1878 = false := by
  rw [output1878_def]
  conv => lhs; cbv
  try rfl
theorem node1878_eq : Flapjack.WordAlloc.removeDeadStructural input1878 value268 value1 value2 = (output1878, value358, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1404_eq]
  try dsimp only
  rw [node1877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1878 input1353)).val
theorem input1879_def : input1879 = (.seq input1878 input1353) := by
  unfold input1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1878 output1353)).val
theorem output1879_def : output1879 = (.seq output1878 output1353) := by
  unfold output1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1879_skip : Flapjack.WordAlloc.isSkip output1879 = false := by
  rw [output1879_def]
  conv => lhs; cbv
  try rfl
theorem node1879_eq : Flapjack.WordAlloc.removeDeadStructural input1879 value268 value1 value2 = (output1879, value358, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1353_eq]
  try dsimp only
  rw [node1878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1879 input1352)).val
theorem input1880_def : input1880 = (.seq input1879 input1352) := by
  unfold input1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1879 output1352)).val
theorem output1880_def : output1880 = (.seq output1879 output1352) := by
  unfold output1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1880_skip : Flapjack.WordAlloc.isSkip output1880 = false := by
  rw [output1880_def]
  conv => lhs; cbv
  try rfl
theorem node1880_eq : Flapjack.WordAlloc.removeDeadStructural input1880 value265 value1 value2 = (output1880, value358, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1352_eq]
  try dsimp only
  rw [node1879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1880 input1351)).val
theorem input1881_def : input1881 = (.seq input1880 input1351) := by
  unfold input1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1880 output1351)).val
theorem output1881_def : output1881 = (.seq output1880 output1351) := by
  unfold output1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1881_skip : Flapjack.WordAlloc.isSkip output1881 = false := by
  rw [output1881_def]
  conv => lhs; cbv
  try rfl
theorem node1881_eq : Flapjack.WordAlloc.removeDeadStructural input1881 value267 value1 value2 = (output1881, value358, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1351_eq]
  try dsimp only
  rw [node1880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1881 input1350)).val
theorem input1882_def : input1882 = (.seq input1881 input1350) := by
  unfold input1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1881 output1350)).val
theorem output1882_def : output1882 = (.seq output1881 output1350) := by
  unfold output1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1882_skip : Flapjack.WordAlloc.isSkip output1882 = false := by
  rw [output1882_def]
  conv => lhs; cbv
  try rfl
theorem node1882_eq : Flapjack.WordAlloc.removeDeadStructural input1882 value258 value1 value2 = (output1882, value358, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1350_eq]
  try dsimp only
  rw [node1881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1882 input1299)).val
theorem input1883_def : input1883 = (.seq input1882 input1299) := by
  unfold input1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1882 output1299)).val
theorem output1883_def : output1883 = (.seq output1882 output1299) := by
  unfold output1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1883_skip : Flapjack.WordAlloc.isSkip output1883 = false := by
  rw [output1883_def]
  conv => lhs; cbv
  try rfl
theorem node1883_eq : Flapjack.WordAlloc.removeDeadStructural input1883 value258 value1 value2 = (output1883, value358, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1299_eq]
  try dsimp only
  rw [node1882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1883 input1298)).val
theorem input1884_def : input1884 = (.seq input1883 input1298) := by
  unfold input1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1883 output1298)).val
theorem output1884_def : output1884 = (.seq output1883 output1298) := by
  unfold output1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1884_skip : Flapjack.WordAlloc.isSkip output1884 = false := by
  rw [output1884_def]
  conv => lhs; cbv
  try rfl
theorem node1884_eq : Flapjack.WordAlloc.removeDeadStructural input1884 value255 value1 value2 = (output1884, value358, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1298_eq]
  try dsimp only
  rw [node1883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1884 input1297)).val
theorem input1885_def : input1885 = (.seq input1884 input1297) := by
  unfold input1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1884 output1297)).val
theorem output1885_def : output1885 = (.seq output1884 output1297) := by
  unfold output1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1885_skip : Flapjack.WordAlloc.isSkip output1885 = false := by
  rw [output1885_def]
  conv => lhs; cbv
  try rfl
theorem node1885_eq : Flapjack.WordAlloc.removeDeadStructural input1885 value257 value1 value2 = (output1885, value358, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1297_eq]
  try dsimp only
  rw [node1884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1885 input1296)).val
theorem input1886_def : input1886 = (.seq input1885 input1296) := by
  unfold input1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1885 output1296)).val
theorem output1886_def : output1886 = (.seq output1885 output1296) := by
  unfold output1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1886_skip : Flapjack.WordAlloc.isSkip output1886 = false := by
  rw [output1886_def]
  conv => lhs; cbv
  try rfl
theorem node1886_eq : Flapjack.WordAlloc.removeDeadStructural input1886 value248 value1 value2 = (output1886, value358, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1296_eq]
  try dsimp only
  rw [node1885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1886 input1245)).val
theorem input1887_def : input1887 = (.seq input1886 input1245) := by
  unfold input1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1886 output1245)).val
theorem output1887_def : output1887 = (.seq output1886 output1245) := by
  unfold output1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1887_skip : Flapjack.WordAlloc.isSkip output1887 = false := by
  rw [output1887_def]
  conv => lhs; cbv
  try rfl
theorem node1887_eq : Flapjack.WordAlloc.removeDeadStructural input1887 value248 value1 value2 = (output1887, value358, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1245_eq]
  try dsimp only
  rw [node1886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1887 input1244)).val
theorem input1888_def : input1888 = (.seq input1887 input1244) := by
  unfold input1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1887 output1244)).val
theorem output1888_def : output1888 = (.seq output1887 output1244) := by
  unfold output1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1888_skip : Flapjack.WordAlloc.isSkip output1888 = false := by
  rw [output1888_def]
  conv => lhs; cbv
  try rfl
theorem node1888_eq : Flapjack.WordAlloc.removeDeadStructural input1888 value245 value1 value2 = (output1888, value358, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1244_eq]
  try dsimp only
  rw [node1887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1888 input1243)).val
theorem input1889_def : input1889 = (.seq input1888 input1243) := by
  unfold input1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1888 output1243)).val
theorem output1889_def : output1889 = (.seq output1888 output1243) := by
  unfold output1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1889_skip : Flapjack.WordAlloc.isSkip output1889 = false := by
  rw [output1889_def]
  conv => lhs; cbv
  try rfl
theorem node1889_eq : Flapjack.WordAlloc.removeDeadStructural input1889 value247 value1 value2 = (output1889, value358, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1243_eq]
  try dsimp only
  rw [node1888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1889 input1242)).val
theorem input1890_def : input1890 = (.seq input1889 input1242) := by
  unfold input1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1889 output1242)).val
theorem output1890_def : output1890 = (.seq output1889 output1242) := by
  unfold output1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1890_skip : Flapjack.WordAlloc.isSkip output1890 = false := by
  rw [output1890_def]
  conv => lhs; cbv
  try rfl
theorem node1890_eq : Flapjack.WordAlloc.removeDeadStructural input1890 value238 value1 value2 = (output1890, value358, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1242_eq]
  try dsimp only
  rw [node1889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1890 input1191)).val
theorem input1891_def : input1891 = (.seq input1890 input1191) := by
  unfold input1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1890 output1191)).val
theorem output1891_def : output1891 = (.seq output1890 output1191) := by
  unfold output1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1891_skip : Flapjack.WordAlloc.isSkip output1891 = false := by
  rw [output1891_def]
  conv => lhs; cbv
  try rfl
theorem node1891_eq : Flapjack.WordAlloc.removeDeadStructural input1891 value238 value1 value2 = (output1891, value358, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1191_eq]
  try dsimp only
  rw [node1890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1891 input1190)).val
theorem input1892_def : input1892 = (.seq input1891 input1190) := by
  unfold input1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1891 output1190)).val
theorem output1892_def : output1892 = (.seq output1891 output1190) := by
  unfold output1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1892_skip : Flapjack.WordAlloc.isSkip output1892 = false := by
  rw [output1892_def]
  conv => lhs; cbv
  try rfl
theorem node1892_eq : Flapjack.WordAlloc.removeDeadStructural input1892 value235 value1 value2 = (output1892, value358, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1190_eq]
  try dsimp only
  rw [node1891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1892 input1189)).val
theorem input1893_def : input1893 = (.seq input1892 input1189) := by
  unfold input1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1892 output1189)).val
theorem output1893_def : output1893 = (.seq output1892 output1189) := by
  unfold output1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1893_skip : Flapjack.WordAlloc.isSkip output1893 = false := by
  rw [output1893_def]
  conv => lhs; cbv
  try rfl
theorem node1893_eq : Flapjack.WordAlloc.removeDeadStructural input1893 value237 value1 value2 = (output1893, value358, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1189_eq]
  try dsimp only
  rw [node1892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1893 input1188)).val
theorem input1894_def : input1894 = (.seq input1893 input1188) := by
  unfold input1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1893 output1188)).val
theorem output1894_def : output1894 = (.seq output1893 output1188) := by
  unfold output1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1894_skip : Flapjack.WordAlloc.isSkip output1894 = false := by
  rw [output1894_def]
  conv => lhs; cbv
  try rfl
theorem node1894_eq : Flapjack.WordAlloc.removeDeadStructural input1894 value228 value1 value2 = (output1894, value358, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1188_eq]
  try dsimp only
  rw [node1893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1894 input1137)).val
theorem input1895_def : input1895 = (.seq input1894 input1137) := by
  unfold input1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1894 output1137)).val
theorem output1895_def : output1895 = (.seq output1894 output1137) := by
  unfold output1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1895_skip : Flapjack.WordAlloc.isSkip output1895 = false := by
  rw [output1895_def]
  conv => lhs; cbv
  try rfl
theorem node1895_eq : Flapjack.WordAlloc.removeDeadStructural input1895 value228 value1 value2 = (output1895, value358, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1137_eq]
  try dsimp only
  rw [node1894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1895 input1136)).val
theorem input1896_def : input1896 = (.seq input1895 input1136) := by
  unfold input1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1895 output1136)).val
theorem output1896_def : output1896 = (.seq output1895 output1136) := by
  unfold output1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1896_skip : Flapjack.WordAlloc.isSkip output1896 = false := by
  rw [output1896_def]
  conv => lhs; cbv
  try rfl
theorem node1896_eq : Flapjack.WordAlloc.removeDeadStructural input1896 value225 value1 value2 = (output1896, value358, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1136_eq]
  try dsimp only
  rw [node1895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1896 input1135)).val
theorem input1897_def : input1897 = (.seq input1896 input1135) := by
  unfold input1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1896 output1135)).val
theorem output1897_def : output1897 = (.seq output1896 output1135) := by
  unfold output1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1897_skip : Flapjack.WordAlloc.isSkip output1897 = false := by
  rw [output1897_def]
  conv => lhs; cbv
  try rfl
theorem node1897_eq : Flapjack.WordAlloc.removeDeadStructural input1897 value227 value1 value2 = (output1897, value358, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1135_eq]
  try dsimp only
  rw [node1896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1897 input1134)).val
theorem input1898_def : input1898 = (.seq input1897 input1134) := by
  unfold input1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1897 output1134)).val
theorem output1898_def : output1898 = (.seq output1897 output1134) := by
  unfold output1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1898_skip : Flapjack.WordAlloc.isSkip output1898 = false := by
  rw [output1898_def]
  conv => lhs; cbv
  try rfl
theorem node1898_eq : Flapjack.WordAlloc.removeDeadStructural input1898 value218 value1 value2 = (output1898, value358, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1134_eq]
  try dsimp only
  rw [node1897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1898 input1083)).val
theorem input1899_def : input1899 = (.seq input1898 input1083) := by
  unfold input1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1898 output1083)).val
theorem output1899_def : output1899 = (.seq output1898 output1083) := by
  unfold output1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1899_skip : Flapjack.WordAlloc.isSkip output1899 = false := by
  rw [output1899_def]
  conv => lhs; cbv
  try rfl
theorem node1899_eq : Flapjack.WordAlloc.removeDeadStructural input1899 value218 value1 value2 = (output1899, value358, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1083_eq]
  try dsimp only
  rw [node1898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1899 input1082)).val
theorem input1900_def : input1900 = (.seq input1899 input1082) := by
  unfold input1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1899 output1082)).val
theorem output1900_def : output1900 = (.seq output1899 output1082) := by
  unfold output1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1900_skip : Flapjack.WordAlloc.isSkip output1900 = false := by
  rw [output1900_def]
  conv => lhs; cbv
  try rfl
theorem node1900_eq : Flapjack.WordAlloc.removeDeadStructural input1900 value215 value1 value2 = (output1900, value358, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1082_eq]
  try dsimp only
  rw [node1899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1900 input1081)).val
theorem input1901_def : input1901 = (.seq input1900 input1081) := by
  unfold input1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1900 output1081)).val
theorem output1901_def : output1901 = (.seq output1900 output1081) := by
  unfold output1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1901_skip : Flapjack.WordAlloc.isSkip output1901 = false := by
  rw [output1901_def]
  conv => lhs; cbv
  try rfl
theorem node1901_eq : Flapjack.WordAlloc.removeDeadStructural input1901 value217 value1 value2 = (output1901, value358, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1081_eq]
  try dsimp only
  rw [node1900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1901 input1080)).val
theorem input1902_def : input1902 = (.seq input1901 input1080) := by
  unfold input1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1901 output1080)).val
theorem output1902_def : output1902 = (.seq output1901 output1080) := by
  unfold output1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1902_skip : Flapjack.WordAlloc.isSkip output1902 = false := by
  rw [output1902_def]
  conv => lhs; cbv
  try rfl
theorem node1902_eq : Flapjack.WordAlloc.removeDeadStructural input1902 value208 value1 value2 = (output1902, value358, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1080_eq]
  try dsimp only
  rw [node1901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1902 input1029)).val
theorem input1903_def : input1903 = (.seq input1902 input1029) := by
  unfold input1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1902 output1029)).val
theorem output1903_def : output1903 = (.seq output1902 output1029) := by
  unfold output1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1903_skip : Flapjack.WordAlloc.isSkip output1903 = false := by
  rw [output1903_def]
  conv => lhs; cbv
  try rfl
theorem node1903_eq : Flapjack.WordAlloc.removeDeadStructural input1903 value208 value1 value2 = (output1903, value358, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1029_eq]
  try dsimp only
  rw [node1902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1903 input1028)).val
theorem input1904_def : input1904 = (.seq input1903 input1028) := by
  unfold input1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1903 output1028)).val
theorem output1904_def : output1904 = (.seq output1903 output1028) := by
  unfold output1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1904_skip : Flapjack.WordAlloc.isSkip output1904 = false := by
  rw [output1904_def]
  conv => lhs; cbv
  try rfl
theorem node1904_eq : Flapjack.WordAlloc.removeDeadStructural input1904 value205 value1 value2 = (output1904, value358, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1028_eq]
  try dsimp only
  rw [node1903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1904 input1027)).val
theorem input1905_def : input1905 = (.seq input1904 input1027) := by
  unfold input1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1904 output1027)).val
theorem output1905_def : output1905 = (.seq output1904 output1027) := by
  unfold output1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1905_skip : Flapjack.WordAlloc.isSkip output1905 = false := by
  rw [output1905_def]
  conv => lhs; cbv
  try rfl
theorem node1905_eq : Flapjack.WordAlloc.removeDeadStructural input1905 value207 value1 value2 = (output1905, value358, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1027_eq]
  try dsimp only
  rw [node1904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1905 input1026)).val
theorem input1906_def : input1906 = (.seq input1905 input1026) := by
  unfold input1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1905 output1026)).val
theorem output1906_def : output1906 = (.seq output1905 output1026) := by
  unfold output1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1906_skip : Flapjack.WordAlloc.isSkip output1906 = false := by
  rw [output1906_def]
  conv => lhs; cbv
  try rfl
theorem node1906_eq : Flapjack.WordAlloc.removeDeadStructural input1906 value198 value1 value2 = (output1906, value358, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1026_eq]
  try dsimp only
  rw [node1905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1906 input975)).val
theorem input1907_def : input1907 = (.seq input1906 input975) := by
  unfold input1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1906 output975)).val
theorem output1907_def : output1907 = (.seq output1906 output975) := by
  unfold output1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1907_skip : Flapjack.WordAlloc.isSkip output1907 = false := by
  rw [output1907_def]
  conv => lhs; cbv
  try rfl
theorem node1907_eq : Flapjack.WordAlloc.removeDeadStructural input1907 value198 value1 value2 = (output1907, value358, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node975_eq]
  try dsimp only
  rw [node1906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1907 input974)).val
theorem input1908_def : input1908 = (.seq input1907 input974) := by
  unfold input1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1907 output974)).val
theorem output1908_def : output1908 = (.seq output1907 output974) := by
  unfold output1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1908_skip : Flapjack.WordAlloc.isSkip output1908 = false := by
  rw [output1908_def]
  conv => lhs; cbv
  try rfl
theorem node1908_eq : Flapjack.WordAlloc.removeDeadStructural input1908 value195 value1 value2 = (output1908, value358, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node974_eq]
  try dsimp only
  rw [node1907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1908 input973)).val
theorem input1909_def : input1909 = (.seq input1908 input973) := by
  unfold input1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1908 output973)).val
theorem output1909_def : output1909 = (.seq output1908 output973) := by
  unfold output1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1909_skip : Flapjack.WordAlloc.isSkip output1909 = false := by
  rw [output1909_def]
  conv => lhs; cbv
  try rfl
theorem node1909_eq : Flapjack.WordAlloc.removeDeadStructural input1909 value197 value1 value2 = (output1909, value358, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node973_eq]
  try dsimp only
  rw [node1908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1909 input972)).val
theorem input1910_def : input1910 = (.seq input1909 input972) := by
  unfold input1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1909 output972)).val
theorem output1910_def : output1910 = (.seq output1909 output972) := by
  unfold output1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1910_skip : Flapjack.WordAlloc.isSkip output1910 = false := by
  rw [output1910_def]
  conv => lhs; cbv
  try rfl
theorem node1910_eq : Flapjack.WordAlloc.removeDeadStructural input1910 value187 value8 value2 = (output1910, value358, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node972_eq]
  try dsimp only
  rw [node1909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1910 input921)).val
theorem input1911_def : input1911 = (.seq input1910 input921) := by
  unfold input1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1910 output921)).val
theorem output1911_def : output1911 = (.seq output1910 output921) := by
  unfold output1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1911_skip : Flapjack.WordAlloc.isSkip output1911 = false := by
  rw [output1911_def]
  conv => lhs; cbv
  try rfl
theorem node1911_eq : Flapjack.WordAlloc.removeDeadStructural input1911 value187 value8 value2 = (output1911, value358, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node921_eq]
  try dsimp only
  rw [node1910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1911 input920)).val
theorem input1912_def : input1912 = (.seq input1911 input920) := by
  unfold input1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1911 output920)).val
theorem output1912_def : output1912 = (.seq output1911 output920) := by
  unfold output1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1912_skip : Flapjack.WordAlloc.isSkip output1912 = false := by
  rw [output1912_def]
  conv => lhs; cbv
  try rfl
theorem node1912_eq : Flapjack.WordAlloc.removeDeadStructural input1912 value182 value8 value2 = (output1912, value358, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node920_eq]
  try dsimp only
  rw [node1911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1913_def : input1913 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1913_def : output1913 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1913_skip : Flapjack.WordAlloc.isSkip output1913 = true := by
  rw [output1913_def]
  conv => lhs; cbv
  try rfl
theorem node1913_eq : Flapjack.WordAlloc.removeDeadStructural input1913 value182 value8 value2 = (output1913, value182, value8) := by
  rw [input1913_def, output1913_def]
  try (conv => lhs; cbv)
  try rfl

def value359 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(6157, 6121), (6153, 6105), (6149, 6129), (6145, 6113), (6141, 6109), (6137, 6125), (6133, 6097)])).val
theorem input1914_def : input1914 = (Flapjack.WordLangProgHOL.move 1
  [(6157, 6121), (6153, 6105), (6149, 6129), (6145, 6113), (6141, 6109), (6137, 6125), (6133, 6097)]) := by
  unfold input1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6153, 6105), (6141, 6109)])).val
theorem output1914_def : output1914 = (Flapjack.WordLangProgHOL.move 1 [(6153, 6105), (6141, 6109)]) := by
  unfold output1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1914_skip : Flapjack.WordAlloc.isSkip output1914 = false := by
  rw [output1914_def]
  conv => lhs; cbv
  try rfl
theorem node1914_eq : Flapjack.WordAlloc.removeDeadStructural input1914 value182 value8 value2 = (output1914, value359, value8) := by
  rw [input1914_def, output1914_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1914 input1913)).val
theorem input1915_def : input1915 = (.seq input1914 input1913) := by
  unfold input1915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1914)).val
theorem output1915_def : output1915 = (output1914) := by
  unfold output1915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1915_skip : Flapjack.WordAlloc.isSkip output1915 = false := by
  rw [output1915_def]
  conv => lhs; cbv
  try rfl
theorem node1915_eq : Flapjack.WordAlloc.removeDeadStructural input1915 value182 value8 value2 = (output1915, value359, value8) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1913_eq]
  try dsimp only
  rw [node1914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1916_def : input1916 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1916_def : output1916 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1916_skip : Flapjack.WordAlloc.isSkip output1916 = false := by
  rw [output1916_def]
  conv => lhs; cbv
  try rfl
theorem node1916_eq : Flapjack.WordAlloc.removeDeadStructural input1916 value359 value8 value2 = (output1916, value359, value8) := by
  rw [input1916_def, output1916_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6129 0#64))).val
theorem input1917_def : input1917 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6129 0#64)) := by
  unfold input1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1917_def : output1917 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1917_skip : Flapjack.WordAlloc.isSkip output1917 = true := by
  rw [output1917_def]
  conv => lhs; cbv
  try rfl
theorem node1917_eq : Flapjack.WordAlloc.removeDeadStructural input1917 value359 value8 value2 = (output1917, value359, value8) := by
  rw [input1917_def, output1917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1918_def : input1918 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1918_def : output1918 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1918_skip : Flapjack.WordAlloc.isSkip output1918 = false := by
  rw [output1918_def]
  conv => lhs; cbv
  try rfl
theorem node1918_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value359 value8 value2 = (output1918, value359, value8) := by
  rw [input1918_def, output1918_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6125 0#64))).val
theorem input1919_def : input1919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6125 0#64)) := by
  unfold input1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1919_def : output1919 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1919_skip : Flapjack.WordAlloc.isSkip output1919 = true := by
  rw [output1919_def]
  conv => lhs; cbv
  try rfl
theorem node1919_eq : Flapjack.WordAlloc.removeDeadStructural input1919 value359 value8 value2 = (output1919, value359, value8) := by
  rw [input1919_def, output1919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1919 input1918)).val
theorem input1920_def : input1920 = (.seq input1919 input1918) := by
  unfold input1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1918)).val
theorem output1920_def : output1920 = (output1918) := by
  unfold output1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1920_skip : Flapjack.WordAlloc.isSkip output1920 = false := by
  rw [output1920_def]
  conv => lhs; cbv
  try rfl
theorem node1920_eq : Flapjack.WordAlloc.removeDeadStructural input1920 value359 value8 value2 = (output1920, value359, value8) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1918_eq]
  try dsimp only
  rw [node1919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1920 input1917)).val
theorem input1921_def : input1921 = (.seq input1920 input1917) := by
  unfold input1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1920)).val
theorem output1921_def : output1921 = (output1920) := by
  unfold output1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1921_skip : Flapjack.WordAlloc.isSkip output1921 = false := by
  rw [output1921_def]
  conv => lhs; cbv
  try rfl
theorem node1921_eq : Flapjack.WordAlloc.removeDeadStructural input1921 value359 value8 value2 = (output1921, value359, value8) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1917_eq]
  try dsimp only
  rw [node1920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6121 0#64))).val
theorem input1922_def : input1922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6121 0#64)) := by
  unfold input1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1922_def : output1922 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1922_skip : Flapjack.WordAlloc.isSkip output1922 = true := by
  rw [output1922_def]
  conv => lhs; cbv
  try rfl
theorem node1922_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value359 value8 value2 = (output1922, value359, value8) := by
  rw [input1922_def, output1922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6117 0#64))).val
theorem input1923_def : input1923 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6117 0#64)) := by
  unfold input1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1923_def : output1923 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1923_skip : Flapjack.WordAlloc.isSkip output1923 = true := by
  rw [output1923_def]
  conv => lhs; cbv
  try rfl
theorem node1923_eq : Flapjack.WordAlloc.removeDeadStructural input1923 value359 value8 value2 = (output1923, value359, value8) := by
  rw [input1923_def, output1923_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6113 0#64))).val
theorem input1924_def : input1924 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6113 0#64)) := by
  unfold input1924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1924_def : output1924 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1924_skip : Flapjack.WordAlloc.isSkip output1924 = true := by
  rw [output1924_def]
  conv => lhs; cbv
  try rfl
theorem node1924_eq : Flapjack.WordAlloc.removeDeadStructural input1924 value359 value8 value2 = (output1924, value359, value8) := by
  rw [input1924_def, output1924_def]
  try (conv => lhs; cbv)
  try rfl

def value360 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6109 0#64))).val
theorem input1925_def : input1925 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6109 0#64)) := by
  unfold input1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6109 0#64))).val
theorem output1925_def : output1925 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6109 0#64)) := by
  unfold output1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1925_skip : Flapjack.WordAlloc.isSkip output1925 = false := by
  rw [output1925_def]
  conv => lhs; cbv
  try rfl
theorem node1925_eq : Flapjack.WordAlloc.removeDeadStructural input1925 value359 value8 value2 = (output1925, value360, value8) := by
  rw [input1925_def, output1925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1926_def : input1926 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1926_def : output1926 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1926_skip : Flapjack.WordAlloc.isSkip output1926 = true := by
  rw [output1926_def]
  conv => lhs; cbv
  try rfl
theorem node1926_eq : Flapjack.WordAlloc.removeDeadStructural input1926 value360 value8 value2 = (output1926, value360, value8) := by
  rw [input1926_def, output1926_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1926 input1925)).val
theorem input1927_def : input1927 = (.seq input1926 input1925) := by
  unfold input1927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1925)).val
theorem output1927_def : output1927 = (output1925) := by
  unfold output1927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1927_skip : Flapjack.WordAlloc.isSkip output1927 = false := by
  rw [output1927_def]
  conv => lhs; cbv
  try rfl
theorem node1927_eq : Flapjack.WordAlloc.removeDeadStructural input1927 value359 value8 value2 = (output1927, value360, value8) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1925_eq]
  try dsimp only
  rw [node1926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1927 input1924)).val
theorem input1928_def : input1928 = (.seq input1927 input1924) := by
  unfold input1928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1927)).val
theorem output1928_def : output1928 = (output1927) := by
  unfold output1928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1928_skip : Flapjack.WordAlloc.isSkip output1928 = false := by
  rw [output1928_def]
  conv => lhs; cbv
  try rfl
theorem node1928_eq : Flapjack.WordAlloc.removeDeadStructural input1928 value359 value8 value2 = (output1928, value360, value8) := by
  rw [input1928_def, output1928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1924_eq]
  try dsimp only
  rw [node1927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1928 input1923)).val
theorem input1929_def : input1929 = (.seq input1928 input1923) := by
  unfold input1929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1928)).val
theorem output1929_def : output1929 = (output1928) := by
  unfold output1929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1929_skip : Flapjack.WordAlloc.isSkip output1929 = false := by
  rw [output1929_def]
  conv => lhs; cbv
  try rfl
theorem node1929_eq : Flapjack.WordAlloc.removeDeadStructural input1929 value359 value8 value2 = (output1929, value360, value8) := by
  rw [input1929_def, output1929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1923_eq]
  try dsimp only
  rw [node1928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1929 input1922)).val
theorem input1930_def : input1930 = (.seq input1929 input1922) := by
  unfold input1930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1929)).val
theorem output1930_def : output1930 = (output1929) := by
  unfold output1930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1930_skip : Flapjack.WordAlloc.isSkip output1930 = false := by
  rw [output1930_def]
  conv => lhs; cbv
  try rfl
theorem node1930_eq : Flapjack.WordAlloc.removeDeadStructural input1930 value359 value8 value2 = (output1930, value360, value8) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1922_eq]
  try dsimp only
  rw [node1929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value361 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6105, 6073), (6101, 6089), (6097, 6093)])).val
theorem input1931_def : input1931 = (Flapjack.WordLangProgHOL.move 1 [(6105, 6073), (6101, 6089), (6097, 6093)]) := by
  unfold input1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6105, 6073)])).val
theorem output1931_def : output1931 = (Flapjack.WordLangProgHOL.move 1 [(6105, 6073)]) := by
  unfold output1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1931_skip : Flapjack.WordAlloc.isSkip output1931 = false := by
  rw [output1931_def]
  conv => lhs; cbv
  try rfl
theorem node1931_eq : Flapjack.WordAlloc.removeDeadStructural input1931 value360 value8 value2 = (output1931, value361, value8) := by
  rw [input1931_def, output1931_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1931 input1930)).val
theorem input1932_def : input1932 = (.seq input1931 input1930) := by
  unfold input1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1931 output1930)).val
theorem output1932_def : output1932 = (.seq output1931 output1930) := by
  unfold output1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1932_skip : Flapjack.WordAlloc.isSkip output1932 = false := by
  rw [output1932_def]
  conv => lhs; cbv
  try rfl
theorem node1932_eq : Flapjack.WordAlloc.removeDeadStructural input1932 value359 value8 value2 = (output1932, value361, value8) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1930_eq]
  try dsimp only
  rw [node1931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value362 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6073 [2])).val
theorem input1933_def : input1933 = (Flapjack.WordLangProgHOL.return 6073 [2]) := by
  unfold input1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6073 [2])).val
theorem output1933_def : output1933 = (Flapjack.WordLangProgHOL.return 6073 [2]) := by
  unfold output1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1933_skip : Flapjack.WordAlloc.isSkip output1933 = false := by
  rw [output1933_def]
  conv => lhs; cbv
  try rfl
theorem node1933_eq : Flapjack.WordAlloc.removeDeadStructural input1933 value361 value8 value2 = (output1933, value362, value1) := by
  rw [input1933_def, output1933_def]
  try (conv => lhs; cbv)
  try rfl

def value363 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6093)])).val
theorem input1934_def : input1934 = (Flapjack.WordLangProgHOL.move 0 [(2, 6093)]) := by
  unfold input1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6093)])).val
theorem output1934_def : output1934 = (Flapjack.WordLangProgHOL.move 0 [(2, 6093)]) := by
  unfold output1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1934_skip : Flapjack.WordAlloc.isSkip output1934 = false := by
  rw [output1934_def]
  conv => lhs; cbv
  try rfl
theorem node1934_eq : Flapjack.WordAlloc.removeDeadStructural input1934 value362 value1 value2 = (output1934, value363, value1) := by
  rw [input1934_def, output1934_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1934 input1933)).val
theorem input1935_def : input1935 = (.seq input1934 input1933) := by
  unfold input1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1934 output1933)).val
theorem output1935_def : output1935 = (.seq output1934 output1933) := by
  unfold output1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1935_skip : Flapjack.WordAlloc.isSkip output1935 = false := by
  rw [output1935_def]
  conv => lhs; cbv
  try rfl
theorem node1935_eq : Flapjack.WordAlloc.removeDeadStructural input1935 value361 value8 value2 = (output1935, value363, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1933_eq]
  try dsimp only
  rw [node1934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6093 0#64))).val
theorem input1936_def : input1936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6093 0#64)) := by
  unfold input1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6093 0#64))).val
theorem output1936_def : output1936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6093 0#64)) := by
  unfold output1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1936_skip : Flapjack.WordAlloc.isSkip output1936 = false := by
  rw [output1936_def]
  conv => lhs; cbv
  try rfl
theorem node1936_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value363 value1 value2 = (output1936, value361, value1) := by
  rw [input1936_def, output1936_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1937_def : input1937 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1937_def : output1937 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1937_skip : Flapjack.WordAlloc.isSkip output1937 = false := by
  rw [output1937_def]
  conv => lhs; cbv
  try rfl
theorem node1937_eq : Flapjack.WordAlloc.removeDeadStructural input1937 value361 value1 value2 = (output1937, value361, value1) := by
  rw [input1937_def, output1937_def]
  try (conv => lhs; cbv)
  try rfl

def value364 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6077, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6085, 6077)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6089 0#64)))),
      597, 144))
  (some 538) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6081, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6081)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6085 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6089, 6081)]))),
      597, 145)))).val
theorem input1938_def : input1938 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6077, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6085, 6077)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6089 0#64)))),
      597, 144))
  (some 538) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6081, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6081)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6085 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6089, 6081)]))),
      597, 145))) := by
  unfold input1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6073, 6067)], 597, 144))
  (some 538) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6081, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6081)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 145)))).val
theorem output1938_def : output1938 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6073, 6067)], 597, 144))
  (some 538) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6073, 6067)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6081, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6081)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 145))) := by
  unfold output1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1938_skip : Flapjack.WordAlloc.isSkip output1938 = false := by
  rw [output1938_def]
  conv => lhs; cbv
  try rfl
theorem node1938_eq : Flapjack.WordAlloc.removeDeadStructural input1938 value361 value1 value2 = (output1938, value364, value1) := by
  rw [input1938_def, output1938_def]
  try (conv => lhs; cbv)
  try rfl

def value365 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6061)])).val
theorem input1939_def : input1939 = (Flapjack.WordLangProgHOL.move 1 [(2, 6061)]) := by
  unfold input1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 6061)])).val
theorem output1939_def : output1939 = (Flapjack.WordLangProgHOL.move 1 [(2, 6061)]) := by
  unfold output1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1939_skip : Flapjack.WordAlloc.isSkip output1939 = false := by
  rw [output1939_def]
  conv => lhs; cbv
  try rfl
theorem node1939_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value364 value1 value2 = (output1939, value365, value1) := by
  rw [input1939_def, output1939_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1939 input1938)).val
theorem input1940_def : input1940 = (.seq input1939 input1938) := by
  unfold input1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1939 output1938)).val
theorem output1940_def : output1940 = (.seq output1939 output1938) := by
  unfold output1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1940_skip : Flapjack.WordAlloc.isSkip output1940 = false := by
  rw [output1940_def]
  conv => lhs; cbv
  try rfl
theorem node1940_eq : Flapjack.WordAlloc.removeDeadStructural input1940 value361 value1 value2 = (output1940, value365, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1938_eq]
  try dsimp only
  rw [node1939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value366 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6067, 6001)])).val
theorem input1941_def : input1941 = (Flapjack.WordLangProgHOL.move 0 [(6067, 6001)]) := by
  unfold input1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6067, 6001)])).val
theorem output1941_def : output1941 = (Flapjack.WordLangProgHOL.move 0 [(6067, 6001)]) := by
  unfold output1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1941_skip : Flapjack.WordAlloc.isSkip output1941 = false := by
  rw [output1941_def]
  conv => lhs; cbv
  try rfl
theorem node1941_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value365 value1 value2 = (output1941, value366, value1) := by
  rw [input1941_def, output1941_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1941 input1940)).val
theorem input1942_def : input1942 = (.seq input1941 input1940) := by
  unfold input1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1941 output1940)).val
theorem output1942_def : output1942 = (.seq output1941 output1940) := by
  unfold output1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1942_skip : Flapjack.WordAlloc.isSkip output1942 = false := by
  rw [output1942_def]
  conv => lhs; cbv
  try rfl
theorem node1942_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value361 value1 value2 = (output1942, value366, value1) := by
  rw [input1942_def, output1942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1940_eq]
  try dsimp only
  rw [node1941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value367 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6061 0#64))).val
theorem input1943_def : input1943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6061 0#64)) := by
  unfold input1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6061 0#64))).val
theorem output1943_def : output1943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6061 0#64)) := by
  unfold output1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1943_skip : Flapjack.WordAlloc.isSkip output1943 = false := by
  rw [output1943_def]
  conv => lhs; cbv
  try rfl
theorem node1943_eq : Flapjack.WordAlloc.removeDeadStructural input1943 value366 value1 value2 = (output1943, value367, value1) := by
  rw [input1943_def, output1943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6057 0#64))).val
theorem input1944_def : input1944 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6057 0#64)) := by
  unfold input1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1944_def : output1944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1944_skip : Flapjack.WordAlloc.isSkip output1944 = true := by
  rw [output1944_def]
  conv => lhs; cbv
  try rfl
theorem node1944_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value367 value1 value2 = (output1944, value367, value1) := by
  rw [input1944_def, output1944_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6053 0#64))).val
theorem input1945_def : input1945 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6053 0#64)) := by
  unfold input1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1945_def : output1945 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1945_skip : Flapjack.WordAlloc.isSkip output1945 = true := by
  rw [output1945_def]
  conv => lhs; cbv
  try rfl
theorem node1945_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value367 value1 value2 = (output1945, value367, value1) := by
  rw [input1945_def, output1945_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6049 0#64))).val
theorem input1946_def : input1946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6049 0#64)) := by
  unfold input1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1946_def : output1946 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1946_skip : Flapjack.WordAlloc.isSkip output1946 = true := by
  rw [output1946_def]
  conv => lhs; cbv
  try rfl
theorem node1946_eq : Flapjack.WordAlloc.removeDeadStructural input1946 value367 value1 value2 = (output1946, value367, value1) := by
  rw [input1946_def, output1946_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6045 0#64))).val
theorem input1947_def : input1947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6045 0#64)) := by
  unfold input1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1947_def : output1947 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1947_skip : Flapjack.WordAlloc.isSkip output1947 = true := by
  rw [output1947_def]
  conv => lhs; cbv
  try rfl
theorem node1947_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value367 value1 value2 = (output1947, value367, value1) := by
  rw [input1947_def, output1947_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 1#64))).val
theorem input1948_def : input1948 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 1#64)) := by
  unfold input1948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1948_def : output1948 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1948_skip : Flapjack.WordAlloc.isSkip output1948 = true := by
  rw [output1948_def]
  conv => lhs; cbv
  try rfl
theorem node1948_eq : Flapjack.WordAlloc.removeDeadStructural input1948 value367 value1 value2 = (output1948, value367, value1) := by
  rw [input1948_def, output1948_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1949_def : input1949 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1949_def : output1949 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1949_skip : Flapjack.WordAlloc.isSkip output1949 = false := by
  rw [output1949_def]
  conv => lhs; cbv
  try rfl
theorem node1949_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value367 value1 value2 = (output1949, value367, value1) := by
  rw [input1949_def, output1949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6037 1#64))).val
theorem input1950_def : input1950 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6037 1#64)) := by
  unfold input1950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1950_def : output1950 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1950_skip : Flapjack.WordAlloc.isSkip output1950 = true := by
  rw [output1950_def]
  conv => lhs; cbv
  try rfl
theorem node1950_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value367 value1 value2 = (output1950, value367, value1) := by
  rw [input1950_def, output1950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1950 input1949)).val
theorem input1951_def : input1951 = (.seq input1950 input1949) := by
  unfold input1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1949)).val
theorem output1951_def : output1951 = (output1949) := by
  unfold output1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1951_skip : Flapjack.WordAlloc.isSkip output1951 = false := by
  rw [output1951_def]
  conv => lhs; cbv
  try rfl
theorem node1951_eq : Flapjack.WordAlloc.removeDeadStructural input1951 value367 value1 value2 = (output1951, value367, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1949_eq]
  try dsimp only
  rw [node1950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1951 input1948)).val
theorem input1952_def : input1952 = (.seq input1951 input1948) := by
  unfold input1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1951)).val
theorem output1952_def : output1952 = (output1951) := by
  unfold output1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1952_skip : Flapjack.WordAlloc.isSkip output1952 = false := by
  rw [output1952_def]
  conv => lhs; cbv
  try rfl
theorem node1952_eq : Flapjack.WordAlloc.removeDeadStructural input1952 value367 value1 value2 = (output1952, value367, value1) := by
  rw [input1952_def, output1952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1948_eq]
  try dsimp only
  rw [node1951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1952 input1947)).val
theorem input1953_def : input1953 = (.seq input1952 input1947) := by
  unfold input1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1952)).val
theorem output1953_def : output1953 = (output1952) := by
  unfold output1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1953_skip : Flapjack.WordAlloc.isSkip output1953 = false := by
  rw [output1953_def]
  conv => lhs; cbv
  try rfl
theorem node1953_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value367 value1 value2 = (output1953, value367, value1) := by
  rw [input1953_def, output1953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1947_eq]
  try dsimp only
  rw [node1952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1953 input1946)).val
theorem input1954_def : input1954 = (.seq input1953 input1946) := by
  unfold input1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1953)).val
theorem output1954_def : output1954 = (output1953) := by
  unfold output1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1954_skip : Flapjack.WordAlloc.isSkip output1954 = false := by
  rw [output1954_def]
  conv => lhs; cbv
  try rfl
theorem node1954_eq : Flapjack.WordAlloc.removeDeadStructural input1954 value367 value1 value2 = (output1954, value367, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1946_eq]
  try dsimp only
  rw [node1953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1954 input1945)).val
theorem input1955_def : input1955 = (.seq input1954 input1945) := by
  unfold input1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1954)).val
theorem output1955_def : output1955 = (output1954) := by
  unfold output1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1955_skip : Flapjack.WordAlloc.isSkip output1955 = false := by
  rw [output1955_def]
  conv => lhs; cbv
  try rfl
theorem node1955_eq : Flapjack.WordAlloc.removeDeadStructural input1955 value367 value1 value2 = (output1955, value367, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1945_eq]
  try dsimp only
  rw [node1954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1955 input1944)).val
theorem input1956_def : input1956 = (.seq input1955 input1944) := by
  unfold input1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1955)).val
theorem output1956_def : output1956 = (output1955) := by
  unfold output1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1956_skip : Flapjack.WordAlloc.isSkip output1956 = false := by
  rw [output1956_def]
  conv => lhs; cbv
  try rfl
theorem node1956_eq : Flapjack.WordAlloc.removeDeadStructural input1956 value367 value1 value2 = (output1956, value367, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1944_eq]
  try dsimp only
  rw [node1955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1956 input1943)).val
theorem input1957_def : input1957 = (.seq input1956 input1943) := by
  unfold input1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1956 output1943)).val
theorem output1957_def : output1957 = (.seq output1956 output1943) := by
  unfold output1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1957_skip : Flapjack.WordAlloc.isSkip output1957 = false := by
  rw [output1957_def]
  conv => lhs; cbv
  try rfl
theorem node1957_eq : Flapjack.WordAlloc.removeDeadStructural input1957 value366 value1 value2 = (output1957, value367, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1943_eq]
  try dsimp only
  rw [node1956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1957 input1942)).val
theorem input1958_def : input1958 = (.seq input1957 input1942) := by
  unfold input1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1957 output1942)).val
theorem output1958_def : output1958 = (.seq output1957 output1942) := by
  unfold output1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1958_skip : Flapjack.WordAlloc.isSkip output1958 = false := by
  rw [output1958_def]
  conv => lhs; cbv
  try rfl
theorem node1958_eq : Flapjack.WordAlloc.removeDeadStructural input1958 value361 value1 value2 = (output1958, value367, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1942_eq]
  try dsimp only
  rw [node1957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1958 input1937)).val
theorem input1959_def : input1959 = (.seq input1958 input1937) := by
  unfold input1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1958 output1937)).val
theorem output1959_def : output1959 = (.seq output1958 output1937) := by
  unfold output1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1959_skip : Flapjack.WordAlloc.isSkip output1959 = false := by
  rw [output1959_def]
  conv => lhs; cbv
  try rfl
theorem node1959_eq : Flapjack.WordAlloc.removeDeadStructural input1959 value361 value1 value2 = (output1959, value367, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1937_eq]
  try dsimp only
  rw [node1958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1959 input1936)).val
theorem input1960_def : input1960 = (.seq input1959 input1936) := by
  unfold input1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1959 output1936)).val
theorem output1960_def : output1960 = (.seq output1959 output1936) := by
  unfold output1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1960_skip : Flapjack.WordAlloc.isSkip output1960 = false := by
  rw [output1960_def]
  conv => lhs; cbv
  try rfl
theorem node1960_eq : Flapjack.WordAlloc.removeDeadStructural input1960 value363 value1 value2 = (output1960, value367, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1936_eq]
  try dsimp only
  rw [node1959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1960 input1935)).val
theorem input1961_def : input1961 = (.seq input1960 input1935) := by
  unfold input1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1960 output1935)).val
theorem output1961_def : output1961 = (.seq output1960 output1935) := by
  unfold output1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1961_skip : Flapjack.WordAlloc.isSkip output1961 = false := by
  rw [output1961_def]
  conv => lhs; cbv
  try rfl
theorem node1961_eq : Flapjack.WordAlloc.removeDeadStructural input1961 value361 value8 value2 = (output1961, value367, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1935_eq]
  try dsimp only
  rw [node1960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1961 input1932)).val
theorem input1962_def : input1962 = (.seq input1961 input1932) := by
  unfold input1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1961 output1932)).val
theorem output1962_def : output1962 = (.seq output1961 output1932) := by
  unfold output1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1962_skip : Flapjack.WordAlloc.isSkip output1962 = false := by
  rw [output1962_def]
  conv => lhs; cbv
  try rfl
theorem node1962_eq : Flapjack.WordAlloc.removeDeadStructural input1962 value359 value8 value2 = (output1962, value367, value1) := by
  rw [input1962_def, output1962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1932_eq]
  try dsimp only
  rw [node1961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6121, 6017)])).val
theorem input1963_def : input1963 = (Flapjack.WordLangProgHOL.move 2 [(6121, 6017)]) := by
  unfold input1963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1963_def : output1963 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1963_skip : Flapjack.WordAlloc.isSkip output1963 = true := by
  rw [output1963_def]
  conv => lhs; cbv
  try rfl
theorem node1963_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value359 value8 value2 = (output1963, value359, value8) := by
  rw [input1963_def, output1963_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6117, 6025)])).val
theorem input1964_def : input1964 = (Flapjack.WordLangProgHOL.move 2 [(6117, 6025)]) := by
  unfold input1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1964_def : output1964 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1964_skip : Flapjack.WordAlloc.isSkip output1964 = true := by
  rw [output1964_def]
  conv => lhs; cbv
  try rfl
theorem node1964_eq : Flapjack.WordAlloc.removeDeadStructural input1964 value359 value8 value2 = (output1964, value359, value8) := by
  rw [input1964_def, output1964_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6113, 6033)])).val
theorem input1965_def : input1965 = (Flapjack.WordLangProgHOL.move 2 [(6113, 6033)]) := by
  unfold input1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1965_def : output1965 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1965_skip : Flapjack.WordAlloc.isSkip output1965 = true := by
  rw [output1965_def]
  conv => lhs; cbv
  try rfl
theorem node1965_eq : Flapjack.WordAlloc.removeDeadStructural input1965 value359 value8 value2 = (output1965, value359, value8) := by
  rw [input1965_def, output1965_def]
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6109, 6029)])).val
theorem input1966_def : input1966 = (Flapjack.WordLangProgHOL.move 2 [(6109, 6029)]) := by
  unfold input1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6109, 6029)])).val
theorem output1966_def : output1966 = (Flapjack.WordLangProgHOL.move 2 [(6109, 6029)]) := by
  unfold output1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1966_skip : Flapjack.WordAlloc.isSkip output1966 = false := by
  rw [output1966_def]
  conv => lhs; cbv
  try rfl
theorem node1966_eq : Flapjack.WordAlloc.removeDeadStructural input1966 value359 value8 value2 = (output1966, value368, value8) := by
  rw [input1966_def, output1966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1967_def : input1967 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1967_def : output1967 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1967_skip : Flapjack.WordAlloc.isSkip output1967 = true := by
  rw [output1967_def]
  conv => lhs; cbv
  try rfl
theorem node1967_eq : Flapjack.WordAlloc.removeDeadStructural input1967 value368 value8 value2 = (output1967, value368, value8) := by
  rw [input1967_def, output1967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1967 input1966)).val
theorem input1968_def : input1968 = (.seq input1967 input1966) := by
  unfold input1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1966)).val
theorem output1968_def : output1968 = (output1966) := by
  unfold output1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1968_skip : Flapjack.WordAlloc.isSkip output1968 = false := by
  rw [output1968_def]
  conv => lhs; cbv
  try rfl
theorem node1968_eq : Flapjack.WordAlloc.removeDeadStructural input1968 value359 value8 value2 = (output1968, value368, value8) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1966_eq]
  try dsimp only
  rw [node1967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1968 input1965)).val
theorem input1969_def : input1969 = (.seq input1968 input1965) := by
  unfold input1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1968)).val
theorem output1969_def : output1969 = (output1968) := by
  unfold output1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1969_skip : Flapjack.WordAlloc.isSkip output1969 = false := by
  rw [output1969_def]
  conv => lhs; cbv
  try rfl
theorem node1969_eq : Flapjack.WordAlloc.removeDeadStructural input1969 value359 value8 value2 = (output1969, value368, value8) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1965_eq]
  try dsimp only
  rw [node1968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1969 input1964)).val
theorem input1970_def : input1970 = (.seq input1969 input1964) := by
  unfold input1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1969)).val
theorem output1970_def : output1970 = (output1969) := by
  unfold output1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1970_skip : Flapjack.WordAlloc.isSkip output1970 = false := by
  rw [output1970_def]
  conv => lhs; cbv
  try rfl
theorem node1970_eq : Flapjack.WordAlloc.removeDeadStructural input1970 value359 value8 value2 = (output1970, value368, value8) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1964_eq]
  try dsimp only
  rw [node1969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1970 input1963)).val
theorem input1971_def : input1971 = (.seq input1970 input1963) := by
  unfold input1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1970)).val
theorem output1971_def : output1971 = (output1970) := by
  unfold output1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1971_skip : Flapjack.WordAlloc.isSkip output1971 = false := by
  rw [output1971_def]
  conv => lhs; cbv
  try rfl
theorem node1971_eq : Flapjack.WordAlloc.removeDeadStructural input1971 value359 value8 value2 = (output1971, value368, value8) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1963_eq]
  try dsimp only
  rw [node1970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value369 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6105, 6001), (6101, 6029), (6097, 5993)])).val
theorem input1972_def : input1972 = (Flapjack.WordLangProgHOL.move 2 [(6105, 6001), (6101, 6029), (6097, 5993)]) := by
  unfold input1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6105, 6001)])).val
theorem output1972_def : output1972 = (Flapjack.WordLangProgHOL.move 2 [(6105, 6001)]) := by
  unfold output1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1972_skip : Flapjack.WordAlloc.isSkip output1972 = false := by
  rw [output1972_def]
  conv => lhs; cbv
  try rfl
theorem node1972_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value368 value8 value2 = (output1972, value369, value8) := by
  rw [input1972_def, output1972_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1972 input1971)).val
theorem input1973_def : input1973 = (.seq input1972 input1971) := by
  unfold input1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1972 output1971)).val
theorem output1973_def : output1973 = (.seq output1972 output1971) := by
  unfold output1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1973_skip : Flapjack.WordAlloc.isSkip output1973 = false := by
  rw [output1973_def]
  conv => lhs; cbv
  try rfl
theorem node1973_eq : Flapjack.WordAlloc.removeDeadStructural input1973 value359 value8 value2 = (output1973, value369, value8) := by
  rw [input1973_def, output1973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1971_eq]
  try dsimp only
  rw [node1972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1974_def : input1974 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1974_def : output1974 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1974_skip : Flapjack.WordAlloc.isSkip output1974 = true := by
  rw [output1974_def]
  conv => lhs; cbv
  try rfl
theorem node1974_eq : Flapjack.WordAlloc.removeDeadStructural input1974 value369 value8 value2 = (output1974, value369, value8) := by
  rw [input1974_def, output1974_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1974 input1973)).val
theorem input1975_def : input1975 = (.seq input1974 input1973) := by
  unfold input1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1973)).val
theorem output1975_def : output1975 = (output1973) := by
  unfold output1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1975_skip : Flapjack.WordAlloc.isSkip output1975 = false := by
  rw [output1975_def]
  conv => lhs; cbv
  try rfl
theorem node1975_eq : Flapjack.WordAlloc.removeDeadStructural input1975 value359 value8 value2 = (output1975, value369, value8) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1973_eq]
  try dsimp only
  rw [node1974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value370 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6033

def value371 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6029 value370 input1962 input1975)).val
theorem input1976_def : input1976 = (.ite value15 6029 value370 input1962 input1975) := by
  unfold input1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6029 value370 output1962 output1975)).val
theorem output1976_def : output1976 = (.ite value15 6029 value370 output1962 output1975) := by
  unfold output1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1976_skip : Flapjack.WordAlloc.isSkip output1976 = false := by
  rw [output1976_def]
  conv => lhs; cbv
  try rfl
theorem node1976_eq : Flapjack.WordAlloc.removeDeadStructural input1976 value359 value8 value2 = (output1976, value371, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1962_eq]
  try dsimp only
  rw [node1975_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1976 input1921)).val
theorem input1977_def : input1977 = (.seq input1976 input1921) := by
  unfold input1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1976 output1921)).val
theorem output1977_def : output1977 = (.seq output1976 output1921) := by
  unfold output1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1977_skip : Flapjack.WordAlloc.isSkip output1977 = false := by
  rw [output1977_def]
  conv => lhs; cbv
  try rfl
theorem node1977_eq : Flapjack.WordAlloc.removeDeadStructural input1977 value359 value8 value2 = (output1977, value371, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1921_eq]
  try dsimp only
  rw [node1976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6033 95#64))).val
theorem input1978_def : input1978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6033 95#64)) := by
  unfold input1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6033 95#64))).val
theorem output1978_def : output1978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6033 95#64)) := by
  unfold output1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1978_skip : Flapjack.WordAlloc.isSkip output1978 = false := by
  rw [output1978_def]
  conv => lhs; cbv
  try rfl
theorem node1978_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value371 value1 value2 = (output1978, value369, value1) := by
  rw [input1978_def, output1978_def]
  try (conv => lhs; cbv)
  try rfl

def value372 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6029, 6005)])).val
theorem input1979_def : input1979 = (Flapjack.WordLangProgHOL.move 0 [(6029, 6005)]) := by
  unfold input1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6029, 6005)])).val
theorem output1979_def : output1979 = (Flapjack.WordLangProgHOL.move 0 [(6029, 6005)]) := by
  unfold output1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1979_skip : Flapjack.WordAlloc.isSkip output1979 = false := by
  rw [output1979_def]
  conv => lhs; cbv
  try rfl
theorem node1979_eq : Flapjack.WordAlloc.removeDeadStructural input1979 value369 value1 value2 = (output1979, value372, value1) := by
  rw [input1979_def, output1979_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1980_def : input1980 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1980_def : output1980 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1980_skip : Flapjack.WordAlloc.isSkip output1980 = false := by
  rw [output1980_def]
  conv => lhs; cbv
  try rfl
theorem node1980_eq : Flapjack.WordAlloc.removeDeadStructural input1980 value372 value1 value2 = (output1980, value372, value1) := by
  rw [input1980_def, output1980_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6025 0#64))).val
theorem input1981_def : input1981 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6025 0#64)) := by
  unfold input1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1981_def : output1981 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1981_skip : Flapjack.WordAlloc.isSkip output1981 = true := by
  rw [output1981_def]
  conv => lhs; cbv
  try rfl
theorem node1981_eq : Flapjack.WordAlloc.removeDeadStructural input1981 value372 value1 value2 = (output1981, value372, value1) := by
  rw [input1981_def, output1981_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1982_def : input1982 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1982_def : output1982 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1982_skip : Flapjack.WordAlloc.isSkip output1982 = false := by
  rw [output1982_def]
  conv => lhs; cbv
  try rfl
theorem node1982_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value372 value1 value2 = (output1982, value372, value1) := by
  rw [input1982_def, output1982_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6021 0#64))).val
theorem input1983_def : input1983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6021 0#64)) := by
  unfold input1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1983_def : output1983 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1983_skip : Flapjack.WordAlloc.isSkip output1983 = true := by
  rw [output1983_def]
  conv => lhs; cbv
  try rfl
theorem node1983_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value372 value1 value2 = (output1983, value372, value1) := by
  rw [input1983_def, output1983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1983 input1982)).val
theorem input1984_def : input1984 = (.seq input1983 input1982) := by
  unfold input1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1982)).val
theorem output1984_def : output1984 = (output1982) := by
  unfold output1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1984_skip : Flapjack.WordAlloc.isSkip output1984 = false := by
  rw [output1984_def]
  conv => lhs; cbv
  try rfl
theorem node1984_eq : Flapjack.WordAlloc.removeDeadStructural input1984 value372 value1 value2 = (output1984, value372, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1982_eq]
  try dsimp only
  rw [node1983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1984 input1981)).val
theorem input1985_def : input1985 = (.seq input1984 input1981) := by
  unfold input1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1984)).val
theorem output1985_def : output1985 = (output1984) := by
  unfold output1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1985_skip : Flapjack.WordAlloc.isSkip output1985 = false := by
  rw [output1985_def]
  conv => lhs; cbv
  try rfl
theorem node1985_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value372 value1 value2 = (output1985, value372, value1) := by
  rw [input1985_def, output1985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1981_eq]
  try dsimp only
  rw [node1984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6017 0#64))).val
theorem input1986_def : input1986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6017 0#64)) := by
  unfold input1986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1986_def : output1986 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1986_skip : Flapjack.WordAlloc.isSkip output1986 = true := by
  rw [output1986_def]
  conv => lhs; cbv
  try rfl
theorem node1986_eq : Flapjack.WordAlloc.removeDeadStructural input1986 value372 value1 value2 = (output1986, value372, value1) := by
  rw [input1986_def, output1986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6013 0#64))).val
theorem input1987_def : input1987 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6013 0#64)) := by
  unfold input1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1987_def : output1987 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1987_skip : Flapjack.WordAlloc.isSkip output1987 = true := by
  rw [output1987_def]
  conv => lhs; cbv
  try rfl
theorem node1987_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value372 value1 value2 = (output1987, value372, value1) := by
  rw [input1987_def, output1987_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 0#64))).val
theorem input1988_def : input1988 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 0#64)) := by
  unfold input1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1988_def : output1988 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1988_skip : Flapjack.WordAlloc.isSkip output1988 = true := by
  rw [output1988_def]
  conv => lhs; cbv
  try rfl
theorem node1988_eq : Flapjack.WordAlloc.removeDeadStructural input1988 value372 value1 value2 = (output1988, value372, value1) := by
  rw [input1988_def, output1988_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 0#64))).val
theorem input1989_def : input1989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 0#64)) := by
  unfold input1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 0#64))).val
theorem output1989_def : output1989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 0#64)) := by
  unfold output1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1989_skip : Flapjack.WordAlloc.isSkip output1989 = false := by
  rw [output1989_def]
  conv => lhs; cbv
  try rfl
theorem node1989_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value372 value1 value2 = (output1989, value367, value1) := by
  rw [input1989_def, output1989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1990_def : input1990 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1990_def : output1990 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1990_skip : Flapjack.WordAlloc.isSkip output1990 = true := by
  rw [output1990_def]
  conv => lhs; cbv
  try rfl
theorem node1990_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value367 value1 value2 = (output1990, value367, value1) := by
  rw [input1990_def, output1990_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1990 input1989)).val
theorem input1991_def : input1991 = (.seq input1990 input1989) := by
  unfold input1991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1989)).val
theorem output1991_def : output1991 = (output1989) := by
  unfold output1991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1991_skip : Flapjack.WordAlloc.isSkip output1991 = false := by
  rw [output1991_def]
  conv => lhs; cbv
  try rfl
theorem node1991_eq : Flapjack.WordAlloc.removeDeadStructural input1991 value372 value1 value2 = (output1991, value367, value1) := by
  rw [input1991_def, output1991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1989_eq]
  try dsimp only
  rw [node1990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1991 input1988)).val
theorem input1992_def : input1992 = (.seq input1991 input1988) := by
  unfold input1992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1991)).val
theorem output1992_def : output1992 = (output1991) := by
  unfold output1992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1992_skip : Flapjack.WordAlloc.isSkip output1992 = false := by
  rw [output1992_def]
  conv => lhs; cbv
  try rfl
theorem node1992_eq : Flapjack.WordAlloc.removeDeadStructural input1992 value372 value1 value2 = (output1992, value367, value1) := by
  rw [input1992_def, output1992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1988_eq]
  try dsimp only
  rw [node1991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1992 input1987)).val
theorem input1993_def : input1993 = (.seq input1992 input1987) := by
  unfold input1993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1992)).val
theorem output1993_def : output1993 = (output1992) := by
  unfold output1993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1993_skip : Flapjack.WordAlloc.isSkip output1993 = false := by
  rw [output1993_def]
  conv => lhs; cbv
  try rfl
theorem node1993_eq : Flapjack.WordAlloc.removeDeadStructural input1993 value372 value1 value2 = (output1993, value367, value1) := by
  rw [input1993_def, output1993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1987_eq]
  try dsimp only
  rw [node1992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1993 input1986)).val
theorem input1994_def : input1994 = (.seq input1993 input1986) := by
  unfold input1994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1993)).val
theorem output1994_def : output1994 = (output1993) := by
  unfold output1994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1994_skip : Flapjack.WordAlloc.isSkip output1994 = false := by
  rw [output1994_def]
  conv => lhs; cbv
  try rfl
theorem node1994_eq : Flapjack.WordAlloc.removeDeadStructural input1994 value372 value1 value2 = (output1994, value367, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1986_eq]
  try dsimp only
  rw [node1993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value373 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6001, 5969), (5997, 5985), (5993, 5989)])).val
theorem input1995_def : input1995 = (Flapjack.WordLangProgHOL.move 1 [(6001, 5969), (5997, 5985), (5993, 5989)]) := by
  unfold input1995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6001, 5969)])).val
theorem output1995_def : output1995 = (Flapjack.WordLangProgHOL.move 1 [(6001, 5969)]) := by
  unfold output1995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1995_skip : Flapjack.WordAlloc.isSkip output1995 = false := by
  rw [output1995_def]
  conv => lhs; cbv
  try rfl
theorem node1995_eq : Flapjack.WordAlloc.removeDeadStructural input1995 value367 value1 value2 = (output1995, value373, value1) := by
  rw [input1995_def, output1995_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1995 input1994)).val
theorem input1996_def : input1996 = (.seq input1995 input1994) := by
  unfold input1996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1995 output1994)).val
theorem output1996_def : output1996 = (.seq output1995 output1994) := by
  unfold output1996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1996_skip : Flapjack.WordAlloc.isSkip output1996 = false := by
  rw [output1996_def]
  conv => lhs; cbv
  try rfl
theorem node1996_eq : Flapjack.WordAlloc.removeDeadStructural input1996 value372 value1 value2 = (output1996, value373, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1994_eq]
  try dsimp only
  rw [node1995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value374 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 5969 [2])).val
theorem input1997_def : input1997 = (Flapjack.WordLangProgHOL.return 5969 [2]) := by
  unfold input1997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 5969 [2])).val
theorem output1997_def : output1997 = (Flapjack.WordLangProgHOL.return 5969 [2]) := by
  unfold output1997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1997_skip : Flapjack.WordAlloc.isSkip output1997 = false := by
  rw [output1997_def]
  conv => lhs; cbv
  try rfl
theorem node1997_eq : Flapjack.WordAlloc.removeDeadStructural input1997 value373 value1 value2 = (output1997, value374, value1) := by
  rw [input1997_def, output1997_def]
  try (conv => lhs; cbv)
  try rfl

def value375 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 5989)])).val
theorem input1998_def : input1998 = (Flapjack.WordLangProgHOL.move 0 [(2, 5989)]) := by
  unfold input1998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 5989)])).val
theorem output1998_def : output1998 = (Flapjack.WordLangProgHOL.move 0 [(2, 5989)]) := by
  unfold output1998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1998_skip : Flapjack.WordAlloc.isSkip output1998 = false := by
  rw [output1998_def]
  conv => lhs; cbv
  try rfl
theorem node1998_eq : Flapjack.WordAlloc.removeDeadStructural input1998 value374 value1 value2 = (output1998, value375, value1) := by
  rw [input1998_def, output1998_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1998 input1997)).val
theorem input1999_def : input1999 = (.seq input1998 input1997) := by
  unfold input1999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1998 output1997)).val
theorem output1999_def : output1999 = (.seq output1998 output1997) := by
  unfold output1999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1999_skip : Flapjack.WordAlloc.isSkip output1999 = false := by
  rw [output1999_def]
  conv => lhs; cbv
  try rfl
theorem node1999_eq : Flapjack.WordAlloc.removeDeadStructural input1999 value373 value1 value2 = (output1999, value375, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1997_eq]
  try dsimp only
  rw [node1998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5989 0#64))).val
theorem input2000_def : input2000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5989 0#64)) := by
  unfold input2000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5989 0#64))).val
theorem output2000_def : output2000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5989 0#64)) := by
  unfold output2000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2000_skip : Flapjack.WordAlloc.isSkip output2000 = false := by
  rw [output2000_def]
  conv => lhs; cbv
  try rfl
theorem node2000_eq : Flapjack.WordAlloc.removeDeadStructural input2000 value375 value1 value2 = (output2000, value373, value1) := by
  rw [input2000_def, output2000_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2001_def : input2001 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2001_def : output2001 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2001_skip : Flapjack.WordAlloc.isSkip output2001 = false := by
  rw [output2001_def]
  conv => lhs; cbv
  try rfl
theorem node2001_eq : Flapjack.WordAlloc.removeDeadStructural input2001 value373 value1 value2 = (output2001, value373, value1) := by
  rw [input2001_def, output2001_def]
  try (conv => lhs; cbv)
  try rfl

def value376 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input2002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5973, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(5981, 5973)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5985 0#64)))),
      597, 142))
  (some 536) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5977, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 5977)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5981 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(5985, 5977)]))),
      597, 143)))).val
theorem input2002_def : input2002 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5973, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(5981, 5973)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5985 0#64)))),
      597, 142))
  (some 536) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5977, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 5977)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5981 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(5985, 5977)]))),
      597, 143))) := by
  unfold input2002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(5969, 5963)], 597, 142))
  (some 536) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5977, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 5977)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 143)))).val
theorem output2002_def : output2002 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(5969, 5963)], 597, 142))
  (some 536) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(5969, 5963)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(5977, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 5977)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 143))) := by
  unfold output2002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2002_skip : Flapjack.WordAlloc.isSkip output2002 = false := by
  rw [output2002_def]
  conv => lhs; cbv
  try rfl
theorem node2002_eq : Flapjack.WordAlloc.removeDeadStructural input2002 value373 value1 value2 = (output2002, value376, value1) := by
  rw [input2002_def, output2002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input2003_def : input2003 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input2003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2003_def : output2003 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2003_skip : Flapjack.WordAlloc.isSkip output2003 = true := by
  rw [output2003_def]
  conv => lhs; cbv
  try rfl
theorem node2003_eq : Flapjack.WordAlloc.removeDeadStructural input2003 value376 value1 value2 = (output2003, value376, value1) := by
  rw [input2003_def, output2003_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2003 input2002)).val
theorem input2004_def : input2004 = (.seq input2003 input2002) := by
  unfold input2004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2002)).val
theorem output2004_def : output2004 = (output2002) := by
  unfold output2004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2004_skip : Flapjack.WordAlloc.isSkip output2004 = false := by
  rw [output2004_def]
  conv => lhs; cbv
  try rfl
theorem node2004_eq : Flapjack.WordAlloc.removeDeadStructural input2004 value373 value1 value2 = (output2004, value376, value1) := by
  rw [input2004_def, output2004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2002_eq]
  try dsimp only
  rw [node2003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value377 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5963, 5917)])).val
theorem input2005_def : input2005 = (Flapjack.WordLangProgHOL.move 0 [(5963, 5917)]) := by
  unfold input2005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5963, 5917)])).val
theorem output2005_def : output2005 = (Flapjack.WordLangProgHOL.move 0 [(5963, 5917)]) := by
  unfold output2005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2005_skip : Flapjack.WordAlloc.isSkip output2005 = false := by
  rw [output2005_def]
  conv => lhs; cbv
  try rfl
theorem node2005_eq : Flapjack.WordAlloc.removeDeadStructural input2005 value376 value1 value2 = (output2005, value377, value1) := by
  rw [input2005_def, output2005_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2005 input2004)).val
theorem input2006_def : input2006 = (.seq input2005 input2004) := by
  unfold input2006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2005 output2004)).val
theorem output2006_def : output2006 = (.seq output2005 output2004) := by
  unfold output2006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2006_skip : Flapjack.WordAlloc.isSkip output2006 = false := by
  rw [output2006_def]
  conv => lhs; cbv
  try rfl
theorem node2006_eq : Flapjack.WordAlloc.removeDeadStructural input2006 value373 value1 value2 = (output2006, value377, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2004_eq]
  try dsimp only
  rw [node2005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5957 1#64))).val
theorem input2007_def : input2007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5957 1#64)) := by
  unfold input2007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2007_def : output2007 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2007_skip : Flapjack.WordAlloc.isSkip output2007 = true := by
  rw [output2007_def]
  conv => lhs; cbv
  try rfl
theorem node2007_eq : Flapjack.WordAlloc.removeDeadStructural input2007 value377 value1 value2 = (output2007, value377, value1) := by
  rw [input2007_def, output2007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2008_def : input2008 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2008_def : output2008 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2008_skip : Flapjack.WordAlloc.isSkip output2008 = false := by
  rw [output2008_def]
  conv => lhs; cbv
  try rfl
theorem node2008_eq : Flapjack.WordAlloc.removeDeadStructural input2008 value377 value1 value2 = (output2008, value377, value1) := by
  rw [input2008_def, output2008_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5953 1#64))).val
theorem input2009_def : input2009 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5953 1#64)) := by
  unfold input2009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2009_def : output2009 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2009_skip : Flapjack.WordAlloc.isSkip output2009 = true := by
  rw [output2009_def]
  conv => lhs; cbv
  try rfl
theorem node2009_eq : Flapjack.WordAlloc.removeDeadStructural input2009 value377 value1 value2 = (output2009, value377, value1) := by
  rw [input2009_def, output2009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2009 input2008)).val
theorem input2010_def : input2010 = (.seq input2009 input2008) := by
  unfold input2010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2008)).val
theorem output2010_def : output2010 = (output2008) := by
  unfold output2010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2010_skip : Flapjack.WordAlloc.isSkip output2010 = false := by
  rw [output2010_def]
  conv => lhs; cbv
  try rfl
theorem node2010_eq : Flapjack.WordAlloc.removeDeadStructural input2010 value377 value1 value2 = (output2010, value377, value1) := by
  rw [input2010_def, output2010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2008_eq]
  try dsimp only
  rw [node2009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2010 input2007)).val
theorem input2011_def : input2011 = (.seq input2010 input2007) := by
  unfold input2011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2010)).val
theorem output2011_def : output2011 = (output2010) := by
  unfold output2011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2011_skip : Flapjack.WordAlloc.isSkip output2011 = false := by
  rw [output2011_def]
  conv => lhs; cbv
  try rfl
theorem node2011_eq : Flapjack.WordAlloc.removeDeadStructural input2011 value377 value1 value2 = (output2011, value377, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2007_eq]
  try dsimp only
  rw [node2010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2011 input2006)).val
theorem input2012_def : input2012 = (.seq input2011 input2006) := by
  unfold input2012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2011 output2006)).val
theorem output2012_def : output2012 = (.seq output2011 output2006) := by
  unfold output2012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2012_skip : Flapjack.WordAlloc.isSkip output2012 = false := by
  rw [output2012_def]
  conv => lhs; cbv
  try rfl
theorem node2012_eq : Flapjack.WordAlloc.removeDeadStructural input2012 value373 value1 value2 = (output2012, value377, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2006_eq]
  try dsimp only
  rw [node2011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2012 input2001)).val
theorem input2013_def : input2013 = (.seq input2012 input2001) := by
  unfold input2013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2012 output2001)).val
theorem output2013_def : output2013 = (.seq output2012 output2001) := by
  unfold output2013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2013_skip : Flapjack.WordAlloc.isSkip output2013 = false := by
  rw [output2013_def]
  conv => lhs; cbv
  try rfl
theorem node2013_eq : Flapjack.WordAlloc.removeDeadStructural input2013 value373 value1 value2 = (output2013, value377, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2001_eq]
  try dsimp only
  rw [node2012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2013 input2000)).val
theorem input2014_def : input2014 = (.seq input2013 input2000) := by
  unfold input2014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2013 output2000)).val
theorem output2014_def : output2014 = (.seq output2013 output2000) := by
  unfold output2014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2014_skip : Flapjack.WordAlloc.isSkip output2014 = false := by
  rw [output2014_def]
  conv => lhs; cbv
  try rfl
theorem node2014_eq : Flapjack.WordAlloc.removeDeadStructural input2014 value375 value1 value2 = (output2014, value377, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2000_eq]
  try dsimp only
  rw [node2013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2014 input1999)).val
theorem input2015_def : input2015 = (.seq input2014 input1999) := by
  unfold input2015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2014 output1999)).val
theorem output2015_def : output2015 = (.seq output2014 output1999) := by
  unfold output2015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2015_skip : Flapjack.WordAlloc.isSkip output2015 = false := by
  rw [output2015_def]
  conv => lhs; cbv
  try rfl
theorem node2015_eq : Flapjack.WordAlloc.removeDeadStructural input2015 value373 value1 value2 = (output2015, value377, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1999_eq]
  try dsimp only
  rw [node2014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2015 input1996)).val
theorem input2016_def : input2016 = (.seq input2015 input1996) := by
  unfold input2016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2015 output1996)).val
theorem output2016_def : output2016 = (.seq output2015 output1996) := by
  unfold output2016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2016_skip : Flapjack.WordAlloc.isSkip output2016 = false := by
  rw [output2016_def]
  conv => lhs; cbv
  try rfl
theorem node2016_eq : Flapjack.WordAlloc.removeDeadStructural input2016 value372 value1 value2 = (output2016, value377, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1996_eq]
  try dsimp only
  rw [node2015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6017, 5933)])).val
theorem input2017_def : input2017 = (Flapjack.WordLangProgHOL.move 2 [(6017, 5933)]) := by
  unfold input2017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2017_def : output2017 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2017_skip : Flapjack.WordAlloc.isSkip output2017 = true := by
  rw [output2017_def]
  conv => lhs; cbv
  try rfl
theorem node2017_eq : Flapjack.WordAlloc.removeDeadStructural input2017 value372 value1 value2 = (output2017, value372, value1) := by
  rw [input2017_def, output2017_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6013, 5941)])).val
theorem input2018_def : input2018 = (Flapjack.WordLangProgHOL.move 2 [(6013, 5941)]) := by
  unfold input2018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2018_def : output2018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2018_skip : Flapjack.WordAlloc.isSkip output2018 = true := by
  rw [output2018_def]
  conv => lhs; cbv
  try rfl
theorem node2018_eq : Flapjack.WordAlloc.removeDeadStructural input2018 value372 value1 value2 = (output2018, value372, value1) := by
  rw [input2018_def, output2018_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6009, 5949)])).val
theorem input2019_def : input2019 = (Flapjack.WordLangProgHOL.move 2 [(6009, 5949)]) := by
  unfold input2019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2019_def : output2019 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2019_skip : Flapjack.WordAlloc.isSkip output2019 = true := by
  rw [output2019_def]
  conv => lhs; cbv
  try rfl
theorem node2019_eq : Flapjack.WordAlloc.removeDeadStructural input2019 value372 value1 value2 = (output2019, value372, value1) := by
  rw [input2019_def, output2019_def]
  try (conv => lhs; cbv)
  try rfl

def value378 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6005, 5945)])).val
theorem input2020_def : input2020 = (Flapjack.WordLangProgHOL.move 2 [(6005, 5945)]) := by
  unfold input2020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6005, 5945)])).val
theorem output2020_def : output2020 = (Flapjack.WordLangProgHOL.move 2 [(6005, 5945)]) := by
  unfold output2020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2020_skip : Flapjack.WordAlloc.isSkip output2020 = false := by
  rw [output2020_def]
  conv => lhs; cbv
  try rfl
theorem node2020_eq : Flapjack.WordAlloc.removeDeadStructural input2020 value372 value1 value2 = (output2020, value378, value1) := by
  rw [input2020_def, output2020_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2021_def : input2021 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2021_def : output2021 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2021_skip : Flapjack.WordAlloc.isSkip output2021 = true := by
  rw [output2021_def]
  conv => lhs; cbv
  try rfl
theorem node2021_eq : Flapjack.WordAlloc.removeDeadStructural input2021 value378 value1 value2 = (output2021, value378, value1) := by
  rw [input2021_def, output2021_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2021 input2020)).val
theorem input2022_def : input2022 = (.seq input2021 input2020) := by
  unfold input2022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2020)).val
theorem output2022_def : output2022 = (output2020) := by
  unfold output2022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2022_skip : Flapjack.WordAlloc.isSkip output2022 = false := by
  rw [output2022_def]
  conv => lhs; cbv
  try rfl
theorem node2022_eq : Flapjack.WordAlloc.removeDeadStructural input2022 value372 value1 value2 = (output2022, value378, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2020_eq]
  try dsimp only
  rw [node2021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2022 input2019)).val
theorem input2023_def : input2023 = (.seq input2022 input2019) := by
  unfold input2023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2022)).val
theorem output2023_def : output2023 = (output2022) := by
  unfold output2023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2023_skip : Flapjack.WordAlloc.isSkip output2023 = false := by
  rw [output2023_def]
  conv => lhs; cbv
  try rfl
theorem node2023_eq : Flapjack.WordAlloc.removeDeadStructural input2023 value372 value1 value2 = (output2023, value378, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2019_eq]
  try dsimp only
  rw [node2022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2023 input2018)).val
theorem input2024_def : input2024 = (.seq input2023 input2018) := by
  unfold input2024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2023)).val
theorem output2024_def : output2024 = (output2023) := by
  unfold output2024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2024_skip : Flapjack.WordAlloc.isSkip output2024 = false := by
  rw [output2024_def]
  conv => lhs; cbv
  try rfl
theorem node2024_eq : Flapjack.WordAlloc.removeDeadStructural input2024 value372 value1 value2 = (output2024, value378, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2018_eq]
  try dsimp only
  rw [node2023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2024 input2017)).val
theorem input2025_def : input2025 = (.seq input2024 input2017) := by
  unfold input2025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2024)).val
theorem output2025_def : output2025 = (output2024) := by
  unfold output2025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2025_skip : Flapjack.WordAlloc.isSkip output2025 = false := by
  rw [output2025_def]
  conv => lhs; cbv
  try rfl
theorem node2025_eq : Flapjack.WordAlloc.removeDeadStructural input2025 value372 value1 value2 = (output2025, value378, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2017_eq]
  try dsimp only
  rw [node2024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value379 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6001, 5917), (5997, 5945), (5993, 5909)])).val
theorem input2026_def : input2026 = (Flapjack.WordLangProgHOL.move 2 [(6001, 5917), (5997, 5945), (5993, 5909)]) := by
  unfold input2026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6001, 5917)])).val
theorem output2026_def : output2026 = (Flapjack.WordLangProgHOL.move 2 [(6001, 5917)]) := by
  unfold output2026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2026_skip : Flapjack.WordAlloc.isSkip output2026 = false := by
  rw [output2026_def]
  conv => lhs; cbv
  try rfl
theorem node2026_eq : Flapjack.WordAlloc.removeDeadStructural input2026 value378 value1 value2 = (output2026, value379, value1) := by
  rw [input2026_def, output2026_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2026 input2025)).val
theorem input2027_def : input2027 = (.seq input2026 input2025) := by
  unfold input2027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2026 output2025)).val
theorem output2027_def : output2027 = (.seq output2026 output2025) := by
  unfold output2027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2027_skip : Flapjack.WordAlloc.isSkip output2027 = false := by
  rw [output2027_def]
  conv => lhs; cbv
  try rfl
theorem node2027_eq : Flapjack.WordAlloc.removeDeadStructural input2027 value372 value1 value2 = (output2027, value379, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2025_eq]
  try dsimp only
  rw [node2026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2028_def : input2028 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2028_def : output2028 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2028_skip : Flapjack.WordAlloc.isSkip output2028 = true := by
  rw [output2028_def]
  conv => lhs; cbv
  try rfl
theorem node2028_eq : Flapjack.WordAlloc.removeDeadStructural input2028 value379 value1 value2 = (output2028, value379, value1) := by
  rw [input2028_def, output2028_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2028 input2027)).val
theorem input2029_def : input2029 = (.seq input2028 input2027) := by
  unfold input2029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2027)).val
theorem output2029_def : output2029 = (output2027) := by
  unfold output2029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2029_skip : Flapjack.WordAlloc.isSkip output2029 = false := by
  rw [output2029_def]
  conv => lhs; cbv
  try rfl
theorem node2029_eq : Flapjack.WordAlloc.removeDeadStructural input2029 value372 value1 value2 = (output2029, value379, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2027_eq]
  try dsimp only
  rw [node2028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value380 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 5949

def value381 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 5945 value380 input2016 input2029)).val
theorem input2030_def : input2030 = (.ite value15 5945 value380 input2016 input2029) := by
  unfold input2030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 5945 value380 output2016 output2029)).val
theorem output2030_def : output2030 = (.ite value15 5945 value380 output2016 output2029) := by
  unfold output2030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2030_skip : Flapjack.WordAlloc.isSkip output2030 = false := by
  rw [output2030_def]
  conv => lhs; cbv
  try rfl
theorem node2030_eq : Flapjack.WordAlloc.removeDeadStructural input2030 value372 value1 value2 = (output2030, value381, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node2016_eq]
  try dsimp only
  rw [node2029_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2030 input1985)).val
theorem input2031_def : input2031 = (.seq input2030 input1985) := by
  unfold input2031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2030 output1985)).val
theorem output2031_def : output2031 = (.seq output2030 output1985) := by
  unfold output2031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2031_skip : Flapjack.WordAlloc.isSkip output2031 = false := by
  rw [output2031_def]
  conv => lhs; cbv
  try rfl
theorem node2031_eq : Flapjack.WordAlloc.removeDeadStructural input2031 value372 value1 value2 = (output2031, value381, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1985_eq]
  try dsimp only
  rw [node2030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5949 94#64))).val
theorem input2032_def : input2032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5949 94#64)) := by
  unfold input2032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5949 94#64))).val
theorem output2032_def : output2032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5949 94#64)) := by
  unfold output2032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2032_skip : Flapjack.WordAlloc.isSkip output2032 = false := by
  rw [output2032_def]
  conv => lhs; cbv
  try rfl
theorem node2032_eq : Flapjack.WordAlloc.removeDeadStructural input2032 value381 value1 value2 = (output2032, value379, value1) := by
  rw [input2032_def, output2032_def]
  try (conv => lhs; cbv)
  try rfl

def value382 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5945, 5921)])).val
theorem input2033_def : input2033 = (Flapjack.WordLangProgHOL.move 0 [(5945, 5921)]) := by
  unfold input2033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5945, 5921)])).val
theorem output2033_def : output2033 = (Flapjack.WordLangProgHOL.move 0 [(5945, 5921)]) := by
  unfold output2033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2033_skip : Flapjack.WordAlloc.isSkip output2033 = false := by
  rw [output2033_def]
  conv => lhs; cbv
  try rfl
theorem node2033_eq : Flapjack.WordAlloc.removeDeadStructural input2033 value379 value1 value2 = (output2033, value382, value1) := by
  rw [input2033_def, output2033_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2034_def : input2034 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2034_def : output2034 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2034_skip : Flapjack.WordAlloc.isSkip output2034 = false := by
  rw [output2034_def]
  conv => lhs; cbv
  try rfl
theorem node2034_eq : Flapjack.WordAlloc.removeDeadStructural input2034 value382 value1 value2 = (output2034, value382, value1) := by
  rw [input2034_def, output2034_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5941 0#64))).val
theorem input2035_def : input2035 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5941 0#64)) := by
  unfold input2035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2035_def : output2035 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2035_skip : Flapjack.WordAlloc.isSkip output2035 = true := by
  rw [output2035_def]
  conv => lhs; cbv
  try rfl
theorem node2035_eq : Flapjack.WordAlloc.removeDeadStructural input2035 value382 value1 value2 = (output2035, value382, value1) := by
  rw [input2035_def, output2035_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2036_def : input2036 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2036_def : output2036 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2036_skip : Flapjack.WordAlloc.isSkip output2036 = false := by
  rw [output2036_def]
  conv => lhs; cbv
  try rfl
theorem node2036_eq : Flapjack.WordAlloc.removeDeadStructural input2036 value382 value1 value2 = (output2036, value382, value1) := by
  rw [input2036_def, output2036_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5937 0#64))).val
theorem input2037_def : input2037 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5937 0#64)) := by
  unfold input2037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2037_def : output2037 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2037_skip : Flapjack.WordAlloc.isSkip output2037 = true := by
  rw [output2037_def]
  conv => lhs; cbv
  try rfl
theorem node2037_eq : Flapjack.WordAlloc.removeDeadStructural input2037 value382 value1 value2 = (output2037, value382, value1) := by
  rw [input2037_def, output2037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2037 input2036)).val
theorem input2038_def : input2038 = (.seq input2037 input2036) := by
  unfold input2038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2036)).val
theorem output2038_def : output2038 = (output2036) := by
  unfold output2038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2038_skip : Flapjack.WordAlloc.isSkip output2038 = false := by
  rw [output2038_def]
  conv => lhs; cbv
  try rfl
theorem node2038_eq : Flapjack.WordAlloc.removeDeadStructural input2038 value382 value1 value2 = (output2038, value382, value1) := by
  rw [input2038_def, output2038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2036_eq]
  try dsimp only
  rw [node2037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2038 input2035)).val
theorem input2039_def : input2039 = (.seq input2038 input2035) := by
  unfold input2039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2038)).val
theorem output2039_def : output2039 = (output2038) := by
  unfold output2039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2039_skip : Flapjack.WordAlloc.isSkip output2039 = false := by
  rw [output2039_def]
  conv => lhs; cbv
  try rfl
theorem node2039_eq : Flapjack.WordAlloc.removeDeadStructural input2039 value382 value1 value2 = (output2039, value382, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2035_eq]
  try dsimp only
  rw [node2038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5933 0#64))).val
theorem input2040_def : input2040 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5933 0#64)) := by
  unfold input2040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2040_def : output2040 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2040_skip : Flapjack.WordAlloc.isSkip output2040 = true := by
  rw [output2040_def]
  conv => lhs; cbv
  try rfl
theorem node2040_eq : Flapjack.WordAlloc.removeDeadStructural input2040 value382 value1 value2 = (output2040, value382, value1) := by
  rw [input2040_def, output2040_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5929 0#64))).val
theorem input2041_def : input2041 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5929 0#64)) := by
  unfold input2041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2041_def : output2041 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2041_skip : Flapjack.WordAlloc.isSkip output2041 = true := by
  rw [output2041_def]
  conv => lhs; cbv
  try rfl
theorem node2041_eq : Flapjack.WordAlloc.removeDeadStructural input2041 value382 value1 value2 = (output2041, value382, value1) := by
  rw [input2041_def, output2041_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5925 0#64))).val
theorem input2042_def : input2042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5925 0#64)) := by
  unfold input2042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2042_def : output2042 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2042_skip : Flapjack.WordAlloc.isSkip output2042 = true := by
  rw [output2042_def]
  conv => lhs; cbv
  try rfl
theorem node2042_eq : Flapjack.WordAlloc.removeDeadStructural input2042 value382 value1 value2 = (output2042, value382, value1) := by
  rw [input2042_def, output2042_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5921 0#64))).val
theorem input2043_def : input2043 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5921 0#64)) := by
  unfold input2043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5921 0#64))).val
theorem output2043_def : output2043 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5921 0#64)) := by
  unfold output2043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2043_skip : Flapjack.WordAlloc.isSkip output2043 = false := by
  rw [output2043_def]
  conv => lhs; cbv
  try rfl
theorem node2043_eq : Flapjack.WordAlloc.removeDeadStructural input2043 value382 value1 value2 = (output2043, value377, value1) := by
  rw [input2043_def, output2043_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2044_def : input2044 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2044_def : output2044 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2044_skip : Flapjack.WordAlloc.isSkip output2044 = true := by
  rw [output2044_def]
  conv => lhs; cbv
  try rfl
theorem node2044_eq : Flapjack.WordAlloc.removeDeadStructural input2044 value377 value1 value2 = (output2044, value377, value1) := by
  rw [input2044_def, output2044_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2044 input2043)).val
theorem input2045_def : input2045 = (.seq input2044 input2043) := by
  unfold input2045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2043)).val
theorem output2045_def : output2045 = (output2043) := by
  unfold output2045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2045_skip : Flapjack.WordAlloc.isSkip output2045 = false := by
  rw [output2045_def]
  conv => lhs; cbv
  try rfl
theorem node2045_eq : Flapjack.WordAlloc.removeDeadStructural input2045 value382 value1 value2 = (output2045, value377, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2043_eq]
  try dsimp only
  rw [node2044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2045 input2042)).val
theorem input2046_def : input2046 = (.seq input2045 input2042) := by
  unfold input2046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2045)).val
theorem output2046_def : output2046 = (output2045) := by
  unfold output2046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2046_skip : Flapjack.WordAlloc.isSkip output2046 = false := by
  rw [output2046_def]
  conv => lhs; cbv
  try rfl
theorem node2046_eq : Flapjack.WordAlloc.removeDeadStructural input2046 value382 value1 value2 = (output2046, value377, value1) := by
  rw [input2046_def, output2046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2042_eq]
  try dsimp only
  rw [node2045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2046 input2041)).val
theorem input2047_def : input2047 = (.seq input2046 input2041) := by
  unfold input2047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2046)).val
theorem output2047_def : output2047 = (output2046) := by
  unfold output2047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2047_skip : Flapjack.WordAlloc.isSkip output2047 = false := by
  rw [output2047_def]
  conv => lhs; cbv
  try rfl
theorem node2047_eq : Flapjack.WordAlloc.removeDeadStructural input2047 value382 value1 value2 = (output2047, value377, value1) := by
  rw [input2047_def, output2047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2041_eq]
  try dsimp only
  rw [node2046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2047_eq
end InitECandidate.Proofs.DeadStages597
