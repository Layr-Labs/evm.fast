import InitECandidate.Proofs.DeadStages79.Chunk006
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages79
@[irreducible, cbv_opaque] def input1792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64))).val
theorem input1792_def : input1792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 177 0#64)) := by
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
theorem node1792_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value438 value1 value2 = (output1792, value438, value1) := by
  rw [input1792_def, output1792_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1792 input1791)).val
theorem input1793_def : input1793 = (.seq input1792 input1791) := by
  unfold input1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1791)).val
theorem output1793_def : output1793 = (output1791) := by
  unfold output1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1793_skip : Flapjack.WordAlloc.isSkip output1793 = false := by
  rw [output1793_def]
  conv => lhs; cbv
  try rfl
theorem node1793_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value438 value1 value2 = (output1793, value438, value1) := by
  rw [input1793_def, output1793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1791_eq]
  try dsimp only
  rw [node1792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1793 input1790)).val
theorem input1794_def : input1794 = (.seq input1793 input1790) := by
  unfold input1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1793)).val
theorem output1794_def : output1794 = (output1793) := by
  unfold output1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1794_skip : Flapjack.WordAlloc.isSkip output1794 = false := by
  rw [output1794_def]
  conv => lhs; cbv
  try rfl
theorem node1794_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value438 value1 value2 = (output1794, value438, value1) := by
  rw [input1794_def, output1794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1790_eq]
  try dsimp only
  rw [node1793_eq]
  try dsimp only
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
theorem node1795_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value438 value1 value2 = (output1795, value438, value1) := by
  rw [input1795_def, output1795_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(173, 157), (169, 161), (165, 153)])).val
theorem input1796_def : input1796 = (Flapjack.WordLangProgHOL.move 1 [(173, 157), (169, 161), (165, 153)]) := by
  unfold input1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1796_def : output1796 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1796_skip : Flapjack.WordAlloc.isSkip output1796 = true := by
  rw [output1796_def]
  conv => lhs; cbv
  try rfl
theorem node1796_eq : Flapjack.WordAlloc.removeDeadStructural input1796 value438 value1 value2 = (output1796, value438, value1) := by
  rw [input1796_def, output1796_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1796 input1795)).val
theorem input1797_def : input1797 = (.seq input1796 input1795) := by
  unfold input1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1795)).val
theorem output1797_def : output1797 = (output1795) := by
  unfold output1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1797_skip : Flapjack.WordAlloc.isSkip output1797 = true := by
  rw [output1797_def]
  conv => lhs; cbv
  try rfl
theorem node1797_eq : Flapjack.WordAlloc.removeDeadStructural input1797 value438 value1 value2 = (output1797, value438, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1795_eq]
  try dsimp only
  rw [node1796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value439 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1798_def : input1798 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1798_def : output1798 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1798_skip : Flapjack.WordAlloc.isSkip output1798 = false := by
  rw [output1798_def]
  conv => lhs; cbv
  try rfl
theorem node1798_eq : Flapjack.WordAlloc.removeDeadStructural input1798 value438 value1 value2 = (output1798, value439, value1) := by
  rw [input1798_def, output1798_def]
  try (conv => lhs; cbv)
  try rfl

def value440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 161)])).val
theorem input1799_def : input1799 = (Flapjack.WordLangProgHOL.move 0 [(2, 161)]) := by
  unfold input1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 161)])).val
theorem output1799_def : output1799 = (Flapjack.WordLangProgHOL.move 0 [(2, 161)]) := by
  unfold output1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1799_skip : Flapjack.WordAlloc.isSkip output1799 = false := by
  rw [output1799_def]
  conv => lhs; cbv
  try rfl
theorem node1799_eq : Flapjack.WordAlloc.removeDeadStructural input1799 value439 value1 value2 = (output1799, value440, value1) := by
  rw [input1799_def, output1799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1799 input1798)).val
theorem input1800_def : input1800 = (.seq input1799 input1798) := by
  unfold input1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1799 output1798)).val
theorem output1800_def : output1800 = (.seq output1799 output1798) := by
  unfold output1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1800_skip : Flapjack.WordAlloc.isSkip output1800 = false := by
  rw [output1800_def]
  conv => lhs; cbv
  try rfl
theorem node1800_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value438 value1 value2 = (output1800, value440, value1) := by
  rw [input1800_def, output1800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1798_eq]
  try dsimp only
  rw [node1799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64))).val
theorem input1801_def : input1801 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)) := by
  unfold input1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64))).val
theorem output1801_def : output1801 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)) := by
  unfold output1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1801_skip : Flapjack.WordAlloc.isSkip output1801 = false := by
  rw [output1801_def]
  conv => lhs; cbv
  try rfl
theorem node1801_eq : Flapjack.WordAlloc.removeDeadStructural input1801 value440 value1 value2 = (output1801, value438, value1) := by
  rw [input1801_def, output1801_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 1#64))).val
theorem input1802_def : input1802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 1#64)) := by
  unfold input1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1802_def : output1802 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1802_skip : Flapjack.WordAlloc.isSkip output1802 = true := by
  rw [output1802_def]
  conv => lhs; cbv
  try rfl
theorem node1802_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value438 value1 value2 = (output1802, value438, value1) := by
  rw [input1802_def, output1802_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1803_def : input1803 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1803_def : output1803 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1803_skip : Flapjack.WordAlloc.isSkip output1803 = false := by
  rw [output1803_def]
  conv => lhs; cbv
  try rfl
theorem node1803_eq : Flapjack.WordAlloc.removeDeadStructural input1803 value438 value1 value2 = (output1803, value438, value1) := by
  rw [input1803_def, output1803_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64))).val
theorem input1804_def : input1804 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64)) := by
  unfold input1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1804_def : output1804 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1804_skip : Flapjack.WordAlloc.isSkip output1804 = true := by
  rw [output1804_def]
  conv => lhs; cbv
  try rfl
theorem node1804_eq : Flapjack.WordAlloc.removeDeadStructural input1804 value438 value1 value2 = (output1804, value438, value1) := by
  rw [input1804_def, output1804_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1804 input1803)).val
theorem input1805_def : input1805 = (.seq input1804 input1803) := by
  unfold input1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1803)).val
theorem output1805_def : output1805 = (output1803) := by
  unfold output1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1805_skip : Flapjack.WordAlloc.isSkip output1805 = false := by
  rw [output1805_def]
  conv => lhs; cbv
  try rfl
theorem node1805_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value438 value1 value2 = (output1805, value438, value1) := by
  rw [input1805_def, output1805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1803_eq]
  try dsimp only
  rw [node1804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1805 input1802)).val
theorem input1806_def : input1806 = (.seq input1805 input1802) := by
  unfold input1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1805)).val
theorem output1806_def : output1806 = (output1805) := by
  unfold output1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1806_skip : Flapjack.WordAlloc.isSkip output1806 = false := by
  rw [output1806_def]
  conv => lhs; cbv
  try rfl
theorem node1806_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value438 value1 value2 = (output1806, value438, value1) := by
  rw [input1806_def, output1806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1802_eq]
  try dsimp only
  rw [node1805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1806 input1801)).val
theorem input1807_def : input1807 = (.seq input1806 input1801) := by
  unfold input1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1806 output1801)).val
theorem output1807_def : output1807 = (.seq output1806 output1801) := by
  unfold output1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1807_skip : Flapjack.WordAlloc.isSkip output1807 = false := by
  rw [output1807_def]
  conv => lhs; cbv
  try rfl
theorem node1807_eq : Flapjack.WordAlloc.removeDeadStructural input1807 value440 value1 value2 = (output1807, value438, value1) := by
  rw [input1807_def, output1807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1801_eq]
  try dsimp only
  rw [node1806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1807 input1800)).val
theorem input1808_def : input1808 = (.seq input1807 input1800) := by
  unfold input1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1807 output1800)).val
theorem output1808_def : output1808 = (.seq output1807 output1800) := by
  unfold output1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1808_skip : Flapjack.WordAlloc.isSkip output1808 = false := by
  rw [output1808_def]
  conv => lhs; cbv
  try rfl
theorem node1808_eq : Flapjack.WordAlloc.removeDeadStructural input1808 value438 value1 value2 = (output1808, value438, value1) := by
  rw [input1808_def, output1808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1800_eq]
  try dsimp only
  rw [node1807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1808 input1797)).val
theorem input1809_def : input1809 = (.seq input1808 input1797) := by
  unfold input1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1808)).val
theorem output1809_def : output1809 = (output1808) := by
  unfold output1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1809_skip : Flapjack.WordAlloc.isSkip output1809 = false := by
  rw [output1809_def]
  conv => lhs; cbv
  try rfl
theorem node1809_eq : Flapjack.WordAlloc.removeDeadStructural input1809 value438 value1 value2 = (output1809, value438, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1797_eq]
  try dsimp only
  rw [node1808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1810_def : input1810 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1810_def : output1810 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1810_skip : Flapjack.WordAlloc.isSkip output1810 = true := by
  rw [output1810_def]
  conv => lhs; cbv
  try rfl
theorem node1810_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value438 value1 value2 = (output1810, value438, value1) := by
  rw [input1810_def, output1810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(173, 133), (169, 125), (165, 141)])).val
theorem input1811_def : input1811 = (Flapjack.WordLangProgHOL.move 2 [(173, 133), (169, 125), (165, 141)]) := by
  unfold input1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1811_def : output1811 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1811_skip : Flapjack.WordAlloc.isSkip output1811 = true := by
  rw [output1811_def]
  conv => lhs; cbv
  try rfl
theorem node1811_eq : Flapjack.WordAlloc.removeDeadStructural input1811 value438 value1 value2 = (output1811, value438, value1) := by
  rw [input1811_def, output1811_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1811 input1810)).val
theorem input1812_def : input1812 = (.seq input1811 input1810) := by
  unfold input1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1810)).val
theorem output1812_def : output1812 = (output1810) := by
  unfold output1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1812_skip : Flapjack.WordAlloc.isSkip output1812 = true := by
  rw [output1812_def]
  conv => lhs; cbv
  try rfl
theorem node1812_eq : Flapjack.WordAlloc.removeDeadStructural input1812 value438 value1 value2 = (output1812, value438, value1) := by
  rw [input1812_def, output1812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1810_eq]
  try dsimp only
  rw [node1811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1813_def : input1813 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1813_def : output1813 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1813_skip : Flapjack.WordAlloc.isSkip output1813 = true := by
  rw [output1813_def]
  conv => lhs; cbv
  try rfl
theorem node1813_eq : Flapjack.WordAlloc.removeDeadStructural input1813 value438 value1 value2 = (output1813, value438, value1) := by
  rw [input1813_def, output1813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1813 input1812)).val
theorem input1814_def : input1814 = (.seq input1813 input1812) := by
  unfold input1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1812)).val
theorem output1814_def : output1814 = (output1812) := by
  unfold output1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1814_skip : Flapjack.WordAlloc.isSkip output1814 = true := by
  rw [output1814_def]
  conv => lhs; cbv
  try rfl
theorem node1814_eq : Flapjack.WordAlloc.removeDeadStructural input1814 value438 value1 value2 = (output1814, value438, value1) := by
  rw [input1814_def, output1814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1812_eq]
  try dsimp only
  rw [node1813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value441 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 149

def value442 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 141 value441 input1809 input1814)).val
theorem input1815_def : input1815 = (.ite value15 141 value441 input1809 input1814) := by
  unfold input1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 141 value441 output1809 output1814)).val
theorem output1815_def : output1815 = (.ite value15 141 value441 output1809 output1814) := by
  unfold output1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1815_skip : Flapjack.WordAlloc.isSkip output1815 = false := by
  rw [output1815_def]
  conv => lhs; cbv
  try rfl
theorem node1815_eq : Flapjack.WordAlloc.removeDeadStructural input1815 value438 value1 value2 = (output1815, value442, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1809_eq]
  try dsimp only
  rw [node1814_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1815 input1794)).val
theorem input1816_def : input1816 = (.seq input1815 input1794) := by
  unfold input1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1815 output1794)).val
theorem output1816_def : output1816 = (.seq output1815 output1794) := by
  unfold output1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1816_skip : Flapjack.WordAlloc.isSkip output1816 = false := by
  rw [output1816_def]
  conv => lhs; cbv
  try rfl
theorem node1816_eq : Flapjack.WordAlloc.removeDeadStructural input1816 value438 value1 value2 = (output1816, value442, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1794_eq]
  try dsimp only
  rw [node1815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value443 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 8#64)))).val
theorem input1817_def : input1817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 8#64))) := by
  unfold input1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 8#64)))).val
theorem output1817_def : output1817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 8#64))) := by
  unfold output1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1817_skip : Flapjack.WordAlloc.isSkip output1817 = false := by
  rw [output1817_def]
  conv => lhs; cbv
  try rfl
theorem node1817_eq : Flapjack.WordAlloc.removeDeadStructural input1817 value442 value1 value2 = (output1817, value443, value1) := by
  rw [input1817_def, output1817_def]
  try (conv => lhs; cbv)
  try rfl

def value444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(145, 97)])).val
theorem input1818_def : input1818 = (Flapjack.WordLangProgHOL.move 0 [(145, 97)]) := by
  unfold input1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(145, 97)])).val
theorem output1818_def : output1818 = (Flapjack.WordLangProgHOL.move 0 [(145, 97)]) := by
  unfold output1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1818_skip : Flapjack.WordAlloc.isSkip output1818 = false := by
  rw [output1818_def]
  conv => lhs; cbv
  try rfl
theorem node1818_eq : Flapjack.WordAlloc.removeDeadStructural input1818 value443 value1 value2 = (output1818, value444, value1) := by
  rw [input1818_def, output1818_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1818 input1817)).val
theorem input1819_def : input1819 = (.seq input1818 input1817) := by
  unfold input1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1818 output1817)).val
theorem output1819_def : output1819 = (.seq output1818 output1817) := by
  unfold output1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1819_skip : Flapjack.WordAlloc.isSkip output1819 = false := by
  rw [output1819_def]
  conv => lhs; cbv
  try rfl
theorem node1819_eq : Flapjack.WordAlloc.removeDeadStructural input1819 value442 value1 value2 = (output1819, value444, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1817_eq]
  try dsimp only
  rw [node1818_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value445 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 8#64)))).val
theorem input1820_def : input1820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 8#64))) := by
  unfold input1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 8#64)))).val
theorem output1820_def : output1820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 141 (Flapjack.WordLangAddr.addr 137 8#64))) := by
  unfold output1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1820_skip : Flapjack.WordAlloc.isSkip output1820 = false := by
  rw [output1820_def]
  conv => lhs; cbv
  try rfl
theorem node1820_eq : Flapjack.WordAlloc.removeDeadStructural input1820 value444 value1 value2 = (output1820, value445, value1) := by
  rw [input1820_def, output1820_def]
  try (conv => lhs; cbv)
  try rfl

def value446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(137, 89)])).val
theorem input1821_def : input1821 = (Flapjack.WordLangProgHOL.move 0 [(137, 89)]) := by
  unfold input1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(137, 89)])).val
theorem output1821_def : output1821 = (Flapjack.WordLangProgHOL.move 0 [(137, 89)]) := by
  unfold output1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1821_skip : Flapjack.WordAlloc.isSkip output1821 = false := by
  rw [output1821_def]
  conv => lhs; cbv
  try rfl
theorem node1821_eq : Flapjack.WordAlloc.removeDeadStructural input1821 value445 value1 value2 = (output1821, value446, value1) := by
  rw [input1821_def, output1821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1821 input1820)).val
theorem input1822_def : input1822 = (.seq input1821 input1820) := by
  unfold input1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1821 output1820)).val
theorem output1822_def : output1822 = (.seq output1821 output1820) := by
  unfold output1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1822_skip : Flapjack.WordAlloc.isSkip output1822 = false := by
  rw [output1822_def]
  conv => lhs; cbv
  try rfl
theorem node1822_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value444 value1 value2 = (output1822, value446, value1) := by
  rw [input1822_def, output1822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1820_eq]
  try dsimp only
  rw [node1821_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1823_def : input1823 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1823_def : output1823 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1823_skip : Flapjack.WordAlloc.isSkip output1823 = false := by
  rw [output1823_def]
  conv => lhs; cbv
  try rfl
theorem node1823_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value446 value1 value2 = (output1823, value446, value1) := by
  rw [input1823_def, output1823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64))).val
theorem input1824_def : input1824 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)) := by
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
theorem node1824_eq : Flapjack.WordAlloc.removeDeadStructural input1824 value446 value1 value2 = (output1824, value446, value1) := by
  rw [input1824_def, output1824_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1825_def : input1825 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1825_def : output1825 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1825_skip : Flapjack.WordAlloc.isSkip output1825 = false := by
  rw [output1825_def]
  conv => lhs; cbv
  try rfl
theorem node1825_eq : Flapjack.WordAlloc.removeDeadStructural input1825 value446 value1 value2 = (output1825, value446, value1) := by
  rw [input1825_def, output1825_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64))).val
theorem input1826_def : input1826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)) := by
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
theorem node1826_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value446 value1 value2 = (output1826, value446, value1) := by
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
theorem node1827_eq : Flapjack.WordAlloc.removeDeadStructural input1827 value446 value1 value2 = (output1827, value446, value1) := by
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
theorem node1828_eq : Flapjack.WordAlloc.removeDeadStructural input1828 value446 value1 value2 = (output1828, value446, value1) := by
  rw [input1828_def, output1828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1824_eq]
  try dsimp only
  rw [node1827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(125, 113)])).val
theorem input1829_def : input1829 = (Flapjack.WordLangProgHOL.move 1 [(125, 113)]) := by
  unfold input1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1829_def : output1829 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1829_skip : Flapjack.WordAlloc.isSkip output1829 = true := by
  rw [output1829_def]
  conv => lhs; cbv
  try rfl
theorem node1829_eq : Flapjack.WordAlloc.removeDeadStructural input1829 value446 value1 value2 = (output1829, value446, value1) := by
  rw [input1829_def, output1829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1830_def : input1830 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1830_def : output1830 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1830_skip : Flapjack.WordAlloc.isSkip output1830 = true := by
  rw [output1830_def]
  conv => lhs; cbv
  try rfl
theorem node1830_eq : Flapjack.WordAlloc.removeDeadStructural input1830 value446 value1 value2 = (output1830, value446, value1) := by
  rw [input1830_def, output1830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1830 input1829)).val
theorem input1831_def : input1831 = (.seq input1830 input1829) := by
  unfold input1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1829)).val
theorem output1831_def : output1831 = (output1829) := by
  unfold output1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1831_skip : Flapjack.WordAlloc.isSkip output1831 = true := by
  rw [output1831_def]
  conv => lhs; cbv
  try rfl
theorem node1831_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value446 value1 value2 = (output1831, value446, value1) := by
  rw [input1831_def, output1831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1829_eq]
  try dsimp only
  rw [node1830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(121, 109), (117, 105)])).val
theorem input1832_def : input1832 = (Flapjack.WordLangProgHOL.move 1 [(121, 109), (117, 105)]) := by
  unfold input1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1832_def : output1832 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1832_skip : Flapjack.WordAlloc.isSkip output1832 = true := by
  rw [output1832_def]
  conv => lhs; cbv
  try rfl
theorem node1832_eq : Flapjack.WordAlloc.removeDeadStructural input1832 value446 value1 value2 = (output1832, value446, value1) := by
  rw [input1832_def, output1832_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1832 input1831)).val
theorem input1833_def : input1833 = (.seq input1832 input1831) := by
  unfold input1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1831)).val
theorem output1833_def : output1833 = (output1831) := by
  unfold output1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1833_skip : Flapjack.WordAlloc.isSkip output1833 = true := by
  rw [output1833_def]
  conv => lhs; cbv
  try rfl
theorem node1833_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value446 value1 value2 = (output1833, value446, value1) := by
  rw [input1833_def, output1833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1831_eq]
  try dsimp only
  rw [node1832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value447 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1834_def : input1834 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1834_def : output1834 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1834_skip : Flapjack.WordAlloc.isSkip output1834 = false := by
  rw [output1834_def]
  conv => lhs; cbv
  try rfl
theorem node1834_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value446 value1 value2 = (output1834, value447, value1) := by
  rw [input1834_def, output1834_def]
  try (conv => lhs; cbv)
  try rfl

def value448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 113)])).val
theorem input1835_def : input1835 = (Flapjack.WordLangProgHOL.move 0 [(2, 113)]) := by
  unfold input1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 113)])).val
theorem output1835_def : output1835 = (Flapjack.WordLangProgHOL.move 0 [(2, 113)]) := by
  unfold output1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1835_skip : Flapjack.WordAlloc.isSkip output1835 = false := by
  rw [output1835_def]
  conv => lhs; cbv
  try rfl
theorem node1835_eq : Flapjack.WordAlloc.removeDeadStructural input1835 value447 value1 value2 = (output1835, value448, value1) := by
  rw [input1835_def, output1835_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1835 input1834)).val
theorem input1836_def : input1836 = (.seq input1835 input1834) := by
  unfold input1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1835 output1834)).val
theorem output1836_def : output1836 = (.seq output1835 output1834) := by
  unfold output1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1836_skip : Flapjack.WordAlloc.isSkip output1836 = false := by
  rw [output1836_def]
  conv => lhs; cbv
  try rfl
theorem node1836_eq : Flapjack.WordAlloc.removeDeadStructural input1836 value446 value1 value2 = (output1836, value448, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1834_eq]
  try dsimp only
  rw [node1835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64))).val
theorem input1837_def : input1837 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)) := by
  unfold input1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64))).val
theorem output1837_def : output1837 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)) := by
  unfold output1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1837_skip : Flapjack.WordAlloc.isSkip output1837 = false := by
  rw [output1837_def]
  conv => lhs; cbv
  try rfl
theorem node1837_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value448 value1 value2 = (output1837, value446, value1) := by
  rw [input1837_def, output1837_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64))).val
theorem input1838_def : input1838 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 109 1#64)) := by
  unfold input1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1838_def : output1838 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1838_skip : Flapjack.WordAlloc.isSkip output1838 = true := by
  rw [output1838_def]
  conv => lhs; cbv
  try rfl
theorem node1838_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value446 value1 value2 = (output1838, value446, value1) := by
  rw [input1838_def, output1838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1839_def : input1839 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1839_def : output1839 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1839_skip : Flapjack.WordAlloc.isSkip output1839 = false := by
  rw [output1839_def]
  conv => lhs; cbv
  try rfl
theorem node1839_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value446 value1 value2 = (output1839, value446, value1) := by
  rw [input1839_def, output1839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 1#64))).val
theorem input1840_def : input1840 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 105 1#64)) := by
  unfold input1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1840_def : output1840 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1840_skip : Flapjack.WordAlloc.isSkip output1840 = true := by
  rw [output1840_def]
  conv => lhs; cbv
  try rfl
theorem node1840_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value446 value1 value2 = (output1840, value446, value1) := by
  rw [input1840_def, output1840_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1840 input1839)).val
theorem input1841_def : input1841 = (.seq input1840 input1839) := by
  unfold input1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1839)).val
theorem output1841_def : output1841 = (output1839) := by
  unfold output1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1841_skip : Flapjack.WordAlloc.isSkip output1841 = false := by
  rw [output1841_def]
  conv => lhs; cbv
  try rfl
theorem node1841_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value446 value1 value2 = (output1841, value446, value1) := by
  rw [input1841_def, output1841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1839_eq]
  try dsimp only
  rw [node1840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1841 input1838)).val
theorem input1842_def : input1842 = (.seq input1841 input1838) := by
  unfold input1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1841)).val
theorem output1842_def : output1842 = (output1841) := by
  unfold output1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1842_skip : Flapjack.WordAlloc.isSkip output1842 = false := by
  rw [output1842_def]
  conv => lhs; cbv
  try rfl
theorem node1842_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value446 value1 value2 = (output1842, value446, value1) := by
  rw [input1842_def, output1842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1838_eq]
  try dsimp only
  rw [node1841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1842 input1837)).val
theorem input1843_def : input1843 = (.seq input1842 input1837) := by
  unfold input1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1842 output1837)).val
theorem output1843_def : output1843 = (.seq output1842 output1837) := by
  unfold output1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1843_skip : Flapjack.WordAlloc.isSkip output1843 = false := by
  rw [output1843_def]
  conv => lhs; cbv
  try rfl
theorem node1843_eq : Flapjack.WordAlloc.removeDeadStructural input1843 value448 value1 value2 = (output1843, value446, value1) := by
  rw [input1843_def, output1843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1837_eq]
  try dsimp only
  rw [node1842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1843 input1836)).val
theorem input1844_def : input1844 = (.seq input1843 input1836) := by
  unfold input1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1843 output1836)).val
theorem output1844_def : output1844 = (.seq output1843 output1836) := by
  unfold output1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1844_skip : Flapjack.WordAlloc.isSkip output1844 = false := by
  rw [output1844_def]
  conv => lhs; cbv
  try rfl
theorem node1844_eq : Flapjack.WordAlloc.removeDeadStructural input1844 value446 value1 value2 = (output1844, value446, value1) := by
  rw [input1844_def, output1844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1836_eq]
  try dsimp only
  rw [node1843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1844 input1833)).val
theorem input1845_def : input1845 = (.seq input1844 input1833) := by
  unfold input1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1844)).val
theorem output1845_def : output1845 = (output1844) := by
  unfold output1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1845_skip : Flapjack.WordAlloc.isSkip output1845 = false := by
  rw [output1845_def]
  conv => lhs; cbv
  try rfl
theorem node1845_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value446 value1 value2 = (output1845, value446, value1) := by
  rw [input1845_def, output1845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1833_eq]
  try dsimp only
  rw [node1844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64))).val
theorem input1846_def : input1846 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 125 0#64)) := by
  unfold input1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1846_def : output1846 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1846_skip : Flapjack.WordAlloc.isSkip output1846 = true := by
  rw [output1846_def]
  conv => lhs; cbv
  try rfl
theorem node1846_eq : Flapjack.WordAlloc.removeDeadStructural input1846 value446 value1 value2 = (output1846, value446, value1) := by
  rw [input1846_def, output1846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1847_def : input1847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1847_def : output1847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1847_skip : Flapjack.WordAlloc.isSkip output1847 = true := by
  rw [output1847_def]
  conv => lhs; cbv
  try rfl
theorem node1847_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value446 value1 value2 = (output1847, value446, value1) := by
  rw [input1847_def, output1847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1847 input1846)).val
theorem input1848_def : input1848 = (.seq input1847 input1846) := by
  unfold input1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1846)).val
theorem output1848_def : output1848 = (output1846) := by
  unfold output1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1848_skip : Flapjack.WordAlloc.isSkip output1848 = true := by
  rw [output1848_def]
  conv => lhs; cbv
  try rfl
theorem node1848_eq : Flapjack.WordAlloc.removeDeadStructural input1848 value446 value1 value2 = (output1848, value446, value1) := by
  rw [input1848_def, output1848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1846_eq]
  try dsimp only
  rw [node1847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(121, 85), (117, 93)])).val
theorem input1849_def : input1849 = (Flapjack.WordLangProgHOL.move 2 [(121, 85), (117, 93)]) := by
  unfold input1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1849_def : output1849 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1849_skip : Flapjack.WordAlloc.isSkip output1849 = true := by
  rw [output1849_def]
  conv => lhs; cbv
  try rfl
theorem node1849_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value446 value1 value2 = (output1849, value446, value1) := by
  rw [input1849_def, output1849_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1849 input1848)).val
theorem input1850_def : input1850 = (.seq input1849 input1848) := by
  unfold input1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1848)).val
theorem output1850_def : output1850 = (output1848) := by
  unfold output1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1850_skip : Flapjack.WordAlloc.isSkip output1850 = true := by
  rw [output1850_def]
  conv => lhs; cbv
  try rfl
theorem node1850_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value446 value1 value2 = (output1850, value446, value1) := by
  rw [input1850_def, output1850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1848_eq]
  try dsimp only
  rw [node1849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1851_def : input1851 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1851_def : output1851 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1851_skip : Flapjack.WordAlloc.isSkip output1851 = true := by
  rw [output1851_def]
  conv => lhs; cbv
  try rfl
theorem node1851_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value446 value1 value2 = (output1851, value446, value1) := by
  rw [input1851_def, output1851_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1851 input1850)).val
theorem input1852_def : input1852 = (.seq input1851 input1850) := by
  unfold input1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1850)).val
theorem output1852_def : output1852 = (output1850) := by
  unfold output1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1852_skip : Flapjack.WordAlloc.isSkip output1852 = true := by
  rw [output1852_def]
  conv => lhs; cbv
  try rfl
theorem node1852_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value446 value1 value2 = (output1852, value446, value1) := by
  rw [input1852_def, output1852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1850_eq]
  try dsimp only
  rw [node1851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value449 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 101

def value450 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 93 value449 input1845 input1852)).val
theorem input1853_def : input1853 = (.ite value15 93 value449 input1845 input1852) := by
  unfold input1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 93 value449 output1845 output1852)).val
theorem output1853_def : output1853 = (.ite value15 93 value449 output1845 output1852) := by
  unfold output1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1853_skip : Flapjack.WordAlloc.isSkip output1853 = false := by
  rw [output1853_def]
  conv => lhs; cbv
  try rfl
theorem node1853_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value446 value1 value2 = (output1853, value450, value1) := by
  rw [input1853_def, output1853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1845_eq]
  try dsimp only
  rw [node1852_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1853 input1828)).val
theorem input1854_def : input1854 = (.seq input1853 input1828) := by
  unfold input1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1853 output1828)).val
theorem output1854_def : output1854 = (.seq output1853 output1828) := by
  unfold output1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1854_skip : Flapjack.WordAlloc.isSkip output1854 = false := by
  rw [output1854_def]
  conv => lhs; cbv
  try rfl
theorem node1854_eq : Flapjack.WordAlloc.removeDeadStructural input1854 value446 value1 value2 = (output1854, value450, value1) := by
  rw [input1854_def, output1854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1828_eq]
  try dsimp only
  rw [node1853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 0#64)))).val
theorem input1855_def : input1855 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 0#64))) := by
  unfold input1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 0#64)))).val
theorem output1855_def : output1855 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 101 (Flapjack.WordLangAddr.addr 97 0#64))) := by
  unfold output1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1855_skip : Flapjack.WordAlloc.isSkip output1855 = false := by
  rw [output1855_def]
  conv => lhs; cbv
  try rfl
theorem node1855_eq : Flapjack.WordAlloc.removeDeadStructural input1855 value450 value1 value2 = (output1855, value451, value1) := by
  rw [input1855_def, output1855_def]
  try (conv => lhs; cbv)
  try rfl

def value452 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(97, 45)])).val
theorem input1856_def : input1856 = (Flapjack.WordLangProgHOL.move 0 [(97, 45)]) := by
  unfold input1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(97, 45)])).val
theorem output1856_def : output1856 = (Flapjack.WordLangProgHOL.move 0 [(97, 45)]) := by
  unfold output1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1856_skip : Flapjack.WordAlloc.isSkip output1856 = false := by
  rw [output1856_def]
  conv => lhs; cbv
  try rfl
theorem node1856_eq : Flapjack.WordAlloc.removeDeadStructural input1856 value451 value1 value2 = (output1856, value452, value1) := by
  rw [input1856_def, output1856_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1856 input1855)).val
theorem input1857_def : input1857 = (.seq input1856 input1855) := by
  unfold input1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1856 output1855)).val
theorem output1857_def : output1857 = (.seq output1856 output1855) := by
  unfold output1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1857_skip : Flapjack.WordAlloc.isSkip output1857 = false := by
  rw [output1857_def]
  conv => lhs; cbv
  try rfl
theorem node1857_eq : Flapjack.WordAlloc.removeDeadStructural input1857 value450 value1 value2 = (output1857, value452, value1) := by
  rw [input1857_def, output1857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1855_eq]
  try dsimp only
  rw [node1856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 0#64)))).val
theorem input1858_def : input1858 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 0#64))) := by
  unfold input1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 0#64)))).val
theorem output1858_def : output1858 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 93 (Flapjack.WordLangAddr.addr 89 0#64))) := by
  unfold output1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1858_skip : Flapjack.WordAlloc.isSkip output1858 = false := by
  rw [output1858_def]
  conv => lhs; cbv
  try rfl
theorem node1858_eq : Flapjack.WordAlloc.removeDeadStructural input1858 value452 value1 value2 = (output1858, value453, value1) := by
  rw [input1858_def, output1858_def]
  try (conv => lhs; cbv)
  try rfl

def value454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(89, 49)])).val
theorem input1859_def : input1859 = (Flapjack.WordLangProgHOL.move 0 [(89, 49)]) := by
  unfold input1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(89, 49)])).val
theorem output1859_def : output1859 = (Flapjack.WordLangProgHOL.move 0 [(89, 49)]) := by
  unfold output1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1859_skip : Flapjack.WordAlloc.isSkip output1859 = false := by
  rw [output1859_def]
  conv => lhs; cbv
  try rfl
theorem node1859_eq : Flapjack.WordAlloc.removeDeadStructural input1859 value453 value1 value2 = (output1859, value454, value1) := by
  rw [input1859_def, output1859_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1859 input1858)).val
theorem input1860_def : input1860 = (.seq input1859 input1858) := by
  unfold input1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1859 output1858)).val
theorem output1860_def : output1860 = (.seq output1859 output1858) := by
  unfold output1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1860_skip : Flapjack.WordAlloc.isSkip output1860 = false := by
  rw [output1860_def]
  conv => lhs; cbv
  try rfl
theorem node1860_eq : Flapjack.WordAlloc.removeDeadStructural input1860 value452 value1 value2 = (output1860, value454, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1858_eq]
  try dsimp only
  rw [node1859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64))).val
theorem input1861_def : input1861 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 1#64)) := by
  unfold input1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1861_def : output1861 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1861_skip : Flapjack.WordAlloc.isSkip output1861 = true := by
  rw [output1861_def]
  conv => lhs; cbv
  try rfl
theorem node1861_eq : Flapjack.WordAlloc.removeDeadStructural input1861 value454 value1 value2 = (output1861, value454, value1) := by
  rw [input1861_def, output1861_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1862_def : input1862 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1862_def : output1862 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1862_skip : Flapjack.WordAlloc.isSkip output1862 = false := by
  rw [output1862_def]
  conv => lhs; cbv
  try rfl
theorem node1862_eq : Flapjack.WordAlloc.removeDeadStructural input1862 value454 value1 value2 = (output1862, value454, value1) := by
  rw [input1862_def, output1862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 1#64))).val
theorem input1863_def : input1863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 1#64)) := by
  unfold input1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1863_def : output1863 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1863_skip : Flapjack.WordAlloc.isSkip output1863 = true := by
  rw [output1863_def]
  conv => lhs; cbv
  try rfl
theorem node1863_eq : Flapjack.WordAlloc.removeDeadStructural input1863 value454 value1 value2 = (output1863, value454, value1) := by
  rw [input1863_def, output1863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1863 input1862)).val
theorem input1864_def : input1864 = (.seq input1863 input1862) := by
  unfold input1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1862)).val
theorem output1864_def : output1864 = (output1862) := by
  unfold output1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1864_skip : Flapjack.WordAlloc.isSkip output1864 = false := by
  rw [output1864_def]
  conv => lhs; cbv
  try rfl
theorem node1864_eq : Flapjack.WordAlloc.removeDeadStructural input1864 value454 value1 value2 = (output1864, value454, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1862_eq]
  try dsimp only
  rw [node1863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1864 input1861)).val
theorem input1865_def : input1865 = (.seq input1864 input1861) := by
  unfold input1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1864)).val
theorem output1865_def : output1865 = (output1864) := by
  unfold output1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1865_skip : Flapjack.WordAlloc.isSkip output1865 = false := by
  rw [output1865_def]
  conv => lhs; cbv
  try rfl
theorem node1865_eq : Flapjack.WordAlloc.removeDeadStructural input1865 value454 value1 value2 = (output1865, value454, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1861_eq]
  try dsimp only
  rw [node1864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1865 input1860)).val
theorem input1866_def : input1866 = (.seq input1865 input1860) := by
  unfold input1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1865 output1860)).val
theorem output1866_def : output1866 = (.seq output1865 output1860) := by
  unfold output1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1866_skip : Flapjack.WordAlloc.isSkip output1866 = false := by
  rw [output1866_def]
  conv => lhs; cbv
  try rfl
theorem node1866_eq : Flapjack.WordAlloc.removeDeadStructural input1866 value452 value1 value2 = (output1866, value454, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1860_eq]
  try dsimp only
  rw [node1865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1866 input1857)).val
theorem input1867_def : input1867 = (.seq input1866 input1857) := by
  unfold input1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1866 output1857)).val
theorem output1867_def : output1867 = (.seq output1866 output1857) := by
  unfold output1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1867_skip : Flapjack.WordAlloc.isSkip output1867 = false := by
  rw [output1867_def]
  conv => lhs; cbv
  try rfl
theorem node1867_eq : Flapjack.WordAlloc.removeDeadStructural input1867 value450 value1 value2 = (output1867, value454, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1857_eq]
  try dsimp only
  rw [node1866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1867 input1854)).val
theorem input1868_def : input1868 = (.seq input1867 input1854) := by
  unfold input1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1867 output1854)).val
theorem output1868_def : output1868 = (.seq output1867 output1854) := by
  unfold output1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1868_skip : Flapjack.WordAlloc.isSkip output1868 = false := by
  rw [output1868_def]
  conv => lhs; cbv
  try rfl
theorem node1868_eq : Flapjack.WordAlloc.removeDeadStructural input1868 value446 value1 value2 = (output1868, value454, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1854_eq]
  try dsimp only
  rw [node1867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1868 input1823)).val
theorem input1869_def : input1869 = (.seq input1868 input1823) := by
  unfold input1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1868 output1823)).val
theorem output1869_def : output1869 = (.seq output1868 output1823) := by
  unfold output1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1869_skip : Flapjack.WordAlloc.isSkip output1869 = false := by
  rw [output1869_def]
  conv => lhs; cbv
  try rfl
theorem node1869_eq : Flapjack.WordAlloc.removeDeadStructural input1869 value446 value1 value2 = (output1869, value454, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1823_eq]
  try dsimp only
  rw [node1868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1869 input1822)).val
theorem input1870_def : input1870 = (.seq input1869 input1822) := by
  unfold input1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1869 output1822)).val
theorem output1870_def : output1870 = (.seq output1869 output1822) := by
  unfold output1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1870_skip : Flapjack.WordAlloc.isSkip output1870 = false := by
  rw [output1870_def]
  conv => lhs; cbv
  try rfl
theorem node1870_eq : Flapjack.WordAlloc.removeDeadStructural input1870 value444 value1 value2 = (output1870, value454, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1822_eq]
  try dsimp only
  rw [node1869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1870 input1819)).val
theorem input1871_def : input1871 = (.seq input1870 input1819) := by
  unfold input1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1870 output1819)).val
theorem output1871_def : output1871 = (.seq output1870 output1819) := by
  unfold output1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1871_skip : Flapjack.WordAlloc.isSkip output1871 = false := by
  rw [output1871_def]
  conv => lhs; cbv
  try rfl
theorem node1871_eq : Flapjack.WordAlloc.removeDeadStructural input1871 value442 value1 value2 = (output1871, value454, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1819_eq]
  try dsimp only
  rw [node1870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1871 input1816)).val
theorem input1872_def : input1872 = (.seq input1871 input1816) := by
  unfold input1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1871 output1816)).val
theorem output1872_def : output1872 = (.seq output1871 output1816) := by
  unfold output1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1872_skip : Flapjack.WordAlloc.isSkip output1872 = false := by
  rw [output1872_def]
  conv => lhs; cbv
  try rfl
theorem node1872_eq : Flapjack.WordAlloc.removeDeadStructural input1872 value438 value1 value2 = (output1872, value454, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1816_eq]
  try dsimp only
  rw [node1871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1872 input1789)).val
theorem input1873_def : input1873 = (.seq input1872 input1789) := by
  unfold input1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1872 output1789)).val
theorem output1873_def : output1873 = (.seq output1872 output1789) := by
  unfold output1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1873_skip : Flapjack.WordAlloc.isSkip output1873 = false := by
  rw [output1873_def]
  conv => lhs; cbv
  try rfl
theorem node1873_eq : Flapjack.WordAlloc.removeDeadStructural input1873 value438 value1 value2 = (output1873, value454, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1789_eq]
  try dsimp only
  rw [node1872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1873 input1788)).val
theorem input1874_def : input1874 = (.seq input1873 input1788) := by
  unfold input1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1873 output1788)).val
theorem output1874_def : output1874 = (.seq output1873 output1788) := by
  unfold output1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1874_skip : Flapjack.WordAlloc.isSkip output1874 = false := by
  rw [output1874_def]
  conv => lhs; cbv
  try rfl
theorem node1874_eq : Flapjack.WordAlloc.removeDeadStructural input1874 value436 value1 value2 = (output1874, value454, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1788_eq]
  try dsimp only
  rw [node1873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1874 input1785)).val
theorem input1875_def : input1875 = (.seq input1874 input1785) := by
  unfold input1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1874 output1785)).val
theorem output1875_def : output1875 = (.seq output1874 output1785) := by
  unfold output1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1875_skip : Flapjack.WordAlloc.isSkip output1875 = false := by
  rw [output1875_def]
  conv => lhs; cbv
  try rfl
theorem node1875_eq : Flapjack.WordAlloc.removeDeadStructural input1875 value435 value1 value2 = (output1875, value454, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1785_eq]
  try dsimp only
  rw [node1874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1875 input1784)).val
theorem input1876_def : input1876 = (.seq input1875 input1784) := by
  unfold input1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1875 output1784)).val
theorem output1876_def : output1876 = (.seq output1875 output1784) := by
  unfold output1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1876_skip : Flapjack.WordAlloc.isSkip output1876 = false := by
  rw [output1876_def]
  conv => lhs; cbv
  try rfl
theorem node1876_eq : Flapjack.WordAlloc.removeDeadStructural input1876 value433 value1 value2 = (output1876, value454, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1784_eq]
  try dsimp only
  rw [node1875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1876 input1781)).val
theorem input1877_def : input1877 = (.seq input1876 input1781) := by
  unfold input1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1876 output1781)).val
theorem output1877_def : output1877 = (.seq output1876 output1781) := by
  unfold output1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1877_skip : Flapjack.WordAlloc.isSkip output1877 = false := by
  rw [output1877_def]
  conv => lhs; cbv
  try rfl
theorem node1877_eq : Flapjack.WordAlloc.removeDeadStructural input1877 value432 value1 value2 = (output1877, value454, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1781_eq]
  try dsimp only
  rw [node1876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1877 input1780)).val
theorem input1878_def : input1878 = (.seq input1877 input1780) := by
  unfold input1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1877 output1780)).val
theorem output1878_def : output1878 = (.seq output1877 output1780) := by
  unfold output1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1878_skip : Flapjack.WordAlloc.isSkip output1878 = false := by
  rw [output1878_def]
  conv => lhs; cbv
  try rfl
theorem node1878_eq : Flapjack.WordAlloc.removeDeadStructural input1878 value431 value1 value2 = (output1878, value454, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1780_eq]
  try dsimp only
  rw [node1877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1878 input1779)).val
theorem input1879_def : input1879 = (.seq input1878 input1779) := by
  unfold input1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1878 output1779)).val
theorem output1879_def : output1879 = (.seq output1878 output1779) := by
  unfold output1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1879_skip : Flapjack.WordAlloc.isSkip output1879 = false := by
  rw [output1879_def]
  conv => lhs; cbv
  try rfl
theorem node1879_eq : Flapjack.WordAlloc.removeDeadStructural input1879 value430 value1 value2 = (output1879, value454, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1779_eq]
  try dsimp only
  rw [node1878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1879 input1778)).val
theorem input1880_def : input1880 = (.seq input1879 input1778) := by
  unfold input1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1879 output1778)).val
theorem output1880_def : output1880 = (.seq output1879 output1778) := by
  unfold output1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1880_skip : Flapjack.WordAlloc.isSkip output1880 = false := by
  rw [output1880_def]
  conv => lhs; cbv
  try rfl
theorem node1880_eq : Flapjack.WordAlloc.removeDeadStructural input1880 value426 value1 value2 = (output1880, value454, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1778_eq]
  try dsimp only
  rw [node1879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1880 input1747)).val
theorem input1881_def : input1881 = (.seq input1880 input1747) := by
  unfold input1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1880 output1747)).val
theorem output1881_def : output1881 = (.seq output1880 output1747) := by
  unfold output1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1881_skip : Flapjack.WordAlloc.isSkip output1881 = false := by
  rw [output1881_def]
  conv => lhs; cbv
  try rfl
theorem node1881_eq : Flapjack.WordAlloc.removeDeadStructural input1881 value426 value1 value2 = (output1881, value454, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1747_eq]
  try dsimp only
  rw [node1880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1881 input1746)).val
theorem input1882_def : input1882 = (.seq input1881 input1746) := by
  unfold input1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1881 output1746)).val
theorem output1882_def : output1882 = (.seq output1881 output1746) := by
  unfold output1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1882_skip : Flapjack.WordAlloc.isSkip output1882 = false := by
  rw [output1882_def]
  conv => lhs; cbv
  try rfl
theorem node1882_eq : Flapjack.WordAlloc.removeDeadStructural input1882 value424 value1 value2 = (output1882, value454, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1746_eq]
  try dsimp only
  rw [node1881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1882 input1743)).val
theorem input1883_def : input1883 = (.seq input1882 input1743) := by
  unfold input1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1882 output1743)).val
theorem output1883_def : output1883 = (.seq output1882 output1743) := by
  unfold output1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1883_skip : Flapjack.WordAlloc.isSkip output1883 = false := by
  rw [output1883_def]
  conv => lhs; cbv
  try rfl
theorem node1883_eq : Flapjack.WordAlloc.removeDeadStructural input1883 value423 value1 value2 = (output1883, value454, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1743_eq]
  try dsimp only
  rw [node1882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1883 input1742)).val
theorem input1884_def : input1884 = (.seq input1883 input1742) := by
  unfold input1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1883 output1742)).val
theorem output1884_def : output1884 = (.seq output1883 output1742) := by
  unfold output1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1884_skip : Flapjack.WordAlloc.isSkip output1884 = false := by
  rw [output1884_def]
  conv => lhs; cbv
  try rfl
theorem node1884_eq : Flapjack.WordAlloc.removeDeadStructural input1884 value421 value1 value2 = (output1884, value454, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1742_eq]
  try dsimp only
  rw [node1883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1884 input1739)).val
theorem input1885_def : input1885 = (.seq input1884 input1739) := by
  unfold input1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1884 output1739)).val
theorem output1885_def : output1885 = (.seq output1884 output1739) := by
  unfold output1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1885_skip : Flapjack.WordAlloc.isSkip output1885 = false := by
  rw [output1885_def]
  conv => lhs; cbv
  try rfl
theorem node1885_eq : Flapjack.WordAlloc.removeDeadStructural input1885 value420 value1 value2 = (output1885, value454, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1739_eq]
  try dsimp only
  rw [node1884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1885 input1738)).val
theorem input1886_def : input1886 = (.seq input1885 input1738) := by
  unfold input1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1885 output1738)).val
theorem output1886_def : output1886 = (.seq output1885 output1738) := by
  unfold output1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1886_skip : Flapjack.WordAlloc.isSkip output1886 = false := by
  rw [output1886_def]
  conv => lhs; cbv
  try rfl
theorem node1886_eq : Flapjack.WordAlloc.removeDeadStructural input1886 value419 value1 value2 = (output1886, value454, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1738_eq]
  try dsimp only
  rw [node1885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1886 input1737)).val
theorem input1887_def : input1887 = (.seq input1886 input1737) := by
  unfold input1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1886 output1737)).val
theorem output1887_def : output1887 = (.seq output1886 output1737) := by
  unfold output1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1887_skip : Flapjack.WordAlloc.isSkip output1887 = false := by
  rw [output1887_def]
  conv => lhs; cbv
  try rfl
theorem node1887_eq : Flapjack.WordAlloc.removeDeadStructural input1887 value418 value1 value2 = (output1887, value454, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1737_eq]
  try dsimp only
  rw [node1886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1887 input1736)).val
theorem input1888_def : input1888 = (.seq input1887 input1736) := by
  unfold input1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1887 output1736)).val
theorem output1888_def : output1888 = (.seq output1887 output1736) := by
  unfold output1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1888_skip : Flapjack.WordAlloc.isSkip output1888 = false := by
  rw [output1888_def]
  conv => lhs; cbv
  try rfl
theorem node1888_eq : Flapjack.WordAlloc.removeDeadStructural input1888 value414 value1 value2 = (output1888, value454, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1736_eq]
  try dsimp only
  rw [node1887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1888 input1709)).val
theorem input1889_def : input1889 = (.seq input1888 input1709) := by
  unfold input1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1888 output1709)).val
theorem output1889_def : output1889 = (.seq output1888 output1709) := by
  unfold output1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1889_skip : Flapjack.WordAlloc.isSkip output1889 = false := by
  rw [output1889_def]
  conv => lhs; cbv
  try rfl
theorem node1889_eq : Flapjack.WordAlloc.removeDeadStructural input1889 value414 value1 value2 = (output1889, value454, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1709_eq]
  try dsimp only
  rw [node1888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1889 input1708)).val
theorem input1890_def : input1890 = (.seq input1889 input1708) := by
  unfold input1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1889 output1708)).val
theorem output1890_def : output1890 = (.seq output1889 output1708) := by
  unfold output1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1890_skip : Flapjack.WordAlloc.isSkip output1890 = false := by
  rw [output1890_def]
  conv => lhs; cbv
  try rfl
theorem node1890_eq : Flapjack.WordAlloc.removeDeadStructural input1890 value412 value1 value2 = (output1890, value454, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1708_eq]
  try dsimp only
  rw [node1889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1890 input1705)).val
theorem input1891_def : input1891 = (.seq input1890 input1705) := by
  unfold input1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1890 output1705)).val
theorem output1891_def : output1891 = (.seq output1890 output1705) := by
  unfold output1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1891_skip : Flapjack.WordAlloc.isSkip output1891 = false := by
  rw [output1891_def]
  conv => lhs; cbv
  try rfl
theorem node1891_eq : Flapjack.WordAlloc.removeDeadStructural input1891 value411 value1 value2 = (output1891, value454, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1705_eq]
  try dsimp only
  rw [node1890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1891 input1704)).val
theorem input1892_def : input1892 = (.seq input1891 input1704) := by
  unfold input1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1891 output1704)).val
theorem output1892_def : output1892 = (.seq output1891 output1704) := by
  unfold output1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1892_skip : Flapjack.WordAlloc.isSkip output1892 = false := by
  rw [output1892_def]
  conv => lhs; cbv
  try rfl
theorem node1892_eq : Flapjack.WordAlloc.removeDeadStructural input1892 value409 value1 value2 = (output1892, value454, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1704_eq]
  try dsimp only
  rw [node1891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1892 input1701)).val
theorem input1893_def : input1893 = (.seq input1892 input1701) := by
  unfold input1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1892 output1701)).val
theorem output1893_def : output1893 = (.seq output1892 output1701) := by
  unfold output1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1893_skip : Flapjack.WordAlloc.isSkip output1893 = false := by
  rw [output1893_def]
  conv => lhs; cbv
  try rfl
theorem node1893_eq : Flapjack.WordAlloc.removeDeadStructural input1893 value408 value1 value2 = (output1893, value454, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1701_eq]
  try dsimp only
  rw [node1892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1893 input1700)).val
theorem input1894_def : input1894 = (.seq input1893 input1700) := by
  unfold input1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1893 output1700)).val
theorem output1894_def : output1894 = (.seq output1893 output1700) := by
  unfold output1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1894_skip : Flapjack.WordAlloc.isSkip output1894 = false := by
  rw [output1894_def]
  conv => lhs; cbv
  try rfl
theorem node1894_eq : Flapjack.WordAlloc.removeDeadStructural input1894 value407 value1 value2 = (output1894, value454, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1700_eq]
  try dsimp only
  rw [node1893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1894 input1699)).val
theorem input1895_def : input1895 = (.seq input1894 input1699) := by
  unfold input1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1894 output1699)).val
theorem output1895_def : output1895 = (.seq output1894 output1699) := by
  unfold output1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1895_skip : Flapjack.WordAlloc.isSkip output1895 = false := by
  rw [output1895_def]
  conv => lhs; cbv
  try rfl
theorem node1895_eq : Flapjack.WordAlloc.removeDeadStructural input1895 value406 value1 value2 = (output1895, value454, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1699_eq]
  try dsimp only
  rw [node1894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1895 input1698)).val
theorem input1896_def : input1896 = (.seq input1895 input1698) := by
  unfold input1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1895 output1698)).val
theorem output1896_def : output1896 = (.seq output1895 output1698) := by
  unfold output1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1896_skip : Flapjack.WordAlloc.isSkip output1896 = false := by
  rw [output1896_def]
  conv => lhs; cbv
  try rfl
theorem node1896_eq : Flapjack.WordAlloc.removeDeadStructural input1896 value402 value1 value2 = (output1896, value454, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1698_eq]
  try dsimp only
  rw [node1895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1896 input1671)).val
theorem input1897_def : input1897 = (.seq input1896 input1671) := by
  unfold input1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1896 output1671)).val
theorem output1897_def : output1897 = (.seq output1896 output1671) := by
  unfold output1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1897_skip : Flapjack.WordAlloc.isSkip output1897 = false := by
  rw [output1897_def]
  conv => lhs; cbv
  try rfl
theorem node1897_eq : Flapjack.WordAlloc.removeDeadStructural input1897 value402 value1 value2 = (output1897, value454, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1671_eq]
  try dsimp only
  rw [node1896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1897 input1670)).val
theorem input1898_def : input1898 = (.seq input1897 input1670) := by
  unfold input1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1897 output1670)).val
theorem output1898_def : output1898 = (.seq output1897 output1670) := by
  unfold output1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1898_skip : Flapjack.WordAlloc.isSkip output1898 = false := by
  rw [output1898_def]
  conv => lhs; cbv
  try rfl
theorem node1898_eq : Flapjack.WordAlloc.removeDeadStructural input1898 value400 value1 value2 = (output1898, value454, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1670_eq]
  try dsimp only
  rw [node1897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1898 input1667)).val
theorem input1899_def : input1899 = (.seq input1898 input1667) := by
  unfold input1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1898 output1667)).val
theorem output1899_def : output1899 = (.seq output1898 output1667) := by
  unfold output1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1899_skip : Flapjack.WordAlloc.isSkip output1899 = false := by
  rw [output1899_def]
  conv => lhs; cbv
  try rfl
theorem node1899_eq : Flapjack.WordAlloc.removeDeadStructural input1899 value399 value1 value2 = (output1899, value454, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1667_eq]
  try dsimp only
  rw [node1898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1899 input1666)).val
theorem input1900_def : input1900 = (.seq input1899 input1666) := by
  unfold input1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1899 output1666)).val
theorem output1900_def : output1900 = (.seq output1899 output1666) := by
  unfold output1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1900_skip : Flapjack.WordAlloc.isSkip output1900 = false := by
  rw [output1900_def]
  conv => lhs; cbv
  try rfl
theorem node1900_eq : Flapjack.WordAlloc.removeDeadStructural input1900 value397 value1 value2 = (output1900, value454, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1666_eq]
  try dsimp only
  rw [node1899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1900 input1663)).val
theorem input1901_def : input1901 = (.seq input1900 input1663) := by
  unfold input1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1900 output1663)).val
theorem output1901_def : output1901 = (.seq output1900 output1663) := by
  unfold output1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1901_skip : Flapjack.WordAlloc.isSkip output1901 = false := by
  rw [output1901_def]
  conv => lhs; cbv
  try rfl
theorem node1901_eq : Flapjack.WordAlloc.removeDeadStructural input1901 value396 value1 value2 = (output1901, value454, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1663_eq]
  try dsimp only
  rw [node1900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1901 input1662)).val
theorem input1902_def : input1902 = (.seq input1901 input1662) := by
  unfold input1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1901 output1662)).val
theorem output1902_def : output1902 = (.seq output1901 output1662) := by
  unfold output1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1902_skip : Flapjack.WordAlloc.isSkip output1902 = false := by
  rw [output1902_def]
  conv => lhs; cbv
  try rfl
theorem node1902_eq : Flapjack.WordAlloc.removeDeadStructural input1902 value395 value1 value2 = (output1902, value454, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1662_eq]
  try dsimp only
  rw [node1901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1902 input1661)).val
theorem input1903_def : input1903 = (.seq input1902 input1661) := by
  unfold input1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1902 output1661)).val
theorem output1903_def : output1903 = (.seq output1902 output1661) := by
  unfold output1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1903_skip : Flapjack.WordAlloc.isSkip output1903 = false := by
  rw [output1903_def]
  conv => lhs; cbv
  try rfl
theorem node1903_eq : Flapjack.WordAlloc.removeDeadStructural input1903 value394 value1 value2 = (output1903, value454, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1661_eq]
  try dsimp only
  rw [node1902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1903 input1660)).val
theorem input1904_def : input1904 = (.seq input1903 input1660) := by
  unfold input1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1903 output1660)).val
theorem output1904_def : output1904 = (.seq output1903 output1660) := by
  unfold output1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1904_skip : Flapjack.WordAlloc.isSkip output1904 = false := by
  rw [output1904_def]
  conv => lhs; cbv
  try rfl
theorem node1904_eq : Flapjack.WordAlloc.removeDeadStructural input1904 value389 value1 value2 = (output1904, value454, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1660_eq]
  try dsimp only
  rw [node1903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1904 input1633)).val
theorem input1905_def : input1905 = (.seq input1904 input1633) := by
  unfold input1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1904 output1633)).val
theorem output1905_def : output1905 = (.seq output1904 output1633) := by
  unfold output1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1905_skip : Flapjack.WordAlloc.isSkip output1905 = false := by
  rw [output1905_def]
  conv => lhs; cbv
  try rfl
theorem node1905_eq : Flapjack.WordAlloc.removeDeadStructural input1905 value389 value1 value2 = (output1905, value454, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1633_eq]
  try dsimp only
  rw [node1904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1905 input1632)).val
theorem input1906_def : input1906 = (.seq input1905 input1632) := by
  unfold input1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1905 output1632)).val
theorem output1906_def : output1906 = (.seq output1905 output1632) := by
  unfold output1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1906_skip : Flapjack.WordAlloc.isSkip output1906 = false := by
  rw [output1906_def]
  conv => lhs; cbv
  try rfl
theorem node1906_eq : Flapjack.WordAlloc.removeDeadStructural input1906 value391 value1 value2 = (output1906, value454, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1632_eq]
  try dsimp only
  rw [node1905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1906 input1631)).val
theorem input1907_def : input1907 = (.seq input1906 input1631) := by
  unfold input1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1906 output1631)).val
theorem output1907_def : output1907 = (.seq output1906 output1631) := by
  unfold output1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1907_skip : Flapjack.WordAlloc.isSkip output1907 = false := by
  rw [output1907_def]
  conv => lhs; cbv
  try rfl
theorem node1907_eq : Flapjack.WordAlloc.removeDeadStructural input1907 value389 value1 value2 = (output1907, value454, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1631_eq]
  try dsimp only
  rw [node1906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1907 input1628)).val
theorem input1908_def : input1908 = (.seq input1907 input1628) := by
  unfold input1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1907 output1628)).val
theorem output1908_def : output1908 = (.seq output1907 output1628) := by
  unfold output1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1908_skip : Flapjack.WordAlloc.isSkip output1908 = false := by
  rw [output1908_def]
  conv => lhs; cbv
  try rfl
theorem node1908_eq : Flapjack.WordAlloc.removeDeadStructural input1908 value388 value1 value2 = (output1908, value454, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1628_eq]
  try dsimp only
  rw [node1907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64))).val
theorem input1909_def : input1909 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)) := by
  unfold input1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1909_def : output1909 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1909_skip : Flapjack.WordAlloc.isSkip output1909 = true := by
  rw [output1909_def]
  conv => lhs; cbv
  try rfl
theorem node1909_eq : Flapjack.WordAlloc.removeDeadStructural input1909 value388 value1 value2 = (output1909, value388, value1) := by
  rw [input1909_def, output1909_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64))).val
theorem input1910_def : input1910 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 0#64)) := by
  unfold input1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1910_def : output1910 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1910_skip : Flapjack.WordAlloc.isSkip output1910 = true := by
  rw [output1910_def]
  conv => lhs; cbv
  try rfl
theorem node1910_eq : Flapjack.WordAlloc.removeDeadStructural input1910 value388 value1 value2 = (output1910, value388, value1) := by
  rw [input1910_def, output1910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64))).val
theorem input1911_def : input1911 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64)) := by
  unfold input1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1911_def : output1911 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1911_skip : Flapjack.WordAlloc.isSkip output1911 = true := by
  rw [output1911_def]
  conv => lhs; cbv
  try rfl
theorem node1911_eq : Flapjack.WordAlloc.removeDeadStructural input1911 value388 value1 value2 = (output1911, value388, value1) := by
  rw [input1911_def, output1911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1912_def : input1912 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1912_def : output1912 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1912_skip : Flapjack.WordAlloc.isSkip output1912 = true := by
  rw [output1912_def]
  conv => lhs; cbv
  try rfl
theorem node1912_eq : Flapjack.WordAlloc.removeDeadStructural input1912 value388 value1 value2 = (output1912, value388, value1) := by
  rw [input1912_def, output1912_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1912 input1911)).val
theorem input1913_def : input1913 = (.seq input1912 input1911) := by
  unfold input1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1911)).val
theorem output1913_def : output1913 = (output1911) := by
  unfold output1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1913_skip : Flapjack.WordAlloc.isSkip output1913 = true := by
  rw [output1913_def]
  conv => lhs; cbv
  try rfl
theorem node1913_eq : Flapjack.WordAlloc.removeDeadStructural input1913 value388 value1 value2 = (output1913, value388, value1) := by
  rw [input1913_def, output1913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1911_eq]
  try dsimp only
  rw [node1912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1913 input1910)).val
theorem input1914_def : input1914 = (.seq input1913 input1910) := by
  unfold input1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1910)).val
theorem output1914_def : output1914 = (output1910) := by
  unfold output1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1914_skip : Flapjack.WordAlloc.isSkip output1914 = true := by
  rw [output1914_def]
  conv => lhs; cbv
  try rfl
theorem node1914_eq : Flapjack.WordAlloc.removeDeadStructural input1914 value388 value1 value2 = (output1914, value388, value1) := by
  rw [input1914_def, output1914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1910_eq]
  try dsimp only
  rw [node1913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1914 input1909)).val
theorem input1915_def : input1915 = (.seq input1914 input1909) := by
  unfold input1915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1909)).val
theorem output1915_def : output1915 = (output1909) := by
  unfold output1915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1915_skip : Flapjack.WordAlloc.isSkip output1915 = true := by
  rw [output1915_def]
  conv => lhs; cbv
  try rfl
theorem node1915_eq : Flapjack.WordAlloc.removeDeadStructural input1915 value388 value1 value2 = (output1915, value388, value1) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1909_eq]
  try dsimp only
  rw [node1914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(465, 53), (461, 69), (457, 45), (453, 77), (449, 49), (445, 73)])).val
theorem input1916_def : input1916 = (Flapjack.WordLangProgHOL.move 2 [(465, 53), (461, 69), (457, 45), (453, 77), (449, 49), (445, 73)]) := by
  unfold input1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(457, 45), (449, 49)])).val
theorem output1916_def : output1916 = (Flapjack.WordLangProgHOL.move 2 [(457, 45), (449, 49)]) := by
  unfold output1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1916_skip : Flapjack.WordAlloc.isSkip output1916 = false := by
  rw [output1916_def]
  conv => lhs; cbv
  try rfl
theorem node1916_eq : Flapjack.WordAlloc.removeDeadStructural input1916 value388 value1 value2 = (output1916, value454, value1) := by
  rw [input1916_def, output1916_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1916 input1915)).val
theorem input1917_def : input1917 = (.seq input1916 input1915) := by
  unfold input1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1916)).val
theorem output1917_def : output1917 = (output1916) := by
  unfold output1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1917_skip : Flapjack.WordAlloc.isSkip output1917 = false := by
  rw [output1917_def]
  conv => lhs; cbv
  try rfl
theorem node1917_eq : Flapjack.WordAlloc.removeDeadStructural input1917 value388 value1 value2 = (output1917, value454, value1) := by
  rw [input1917_def, output1917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1915_eq]
  try dsimp only
  rw [node1916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1918_def : input1918 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1918_def : output1918 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1918_skip : Flapjack.WordAlloc.isSkip output1918 = true := by
  rw [output1918_def]
  conv => lhs; cbv
  try rfl
theorem node1918_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value454 value1 value2 = (output1918, value454, value1) := by
  rw [input1918_def, output1918_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1918 input1917)).val
theorem input1919_def : input1919 = (.seq input1918 input1917) := by
  unfold input1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1917)).val
theorem output1919_def : output1919 = (output1917) := by
  unfold output1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1919_skip : Flapjack.WordAlloc.isSkip output1919 = false := by
  rw [output1919_def]
  conv => lhs; cbv
  try rfl
theorem node1919_eq : Flapjack.WordAlloc.removeDeadStructural input1919 value388 value1 value2 = (output1919, value454, value1) := by
  rw [input1919_def, output1919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1917_eq]
  try dsimp only
  rw [node1918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value455 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 77

def value456 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 73 value455 input1908 input1919)).val
theorem input1920_def : input1920 = (.ite value348 73 value455 input1908 input1919) := by
  unfold input1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 73 value455 output1908 output1919)).val
theorem output1920_def : output1920 = (.ite value348 73 value455 output1908 output1919) := by
  unfold output1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1920_skip : Flapjack.WordAlloc.isSkip output1920 = false := by
  rw [output1920_def]
  conv => lhs; cbv
  try rfl
theorem node1920_eq : Flapjack.WordAlloc.removeDeadStructural input1920 value388 value1 value2 = (output1920, value456, value1) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1908_eq]
  try dsimp only
  rw [node1919_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1920 input1619)).val
theorem input1921_def : input1921 = (.seq input1920 input1619) := by
  unfold input1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1920 output1619)).val
theorem output1921_def : output1921 = (.seq output1920 output1619) := by
  unfold output1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1921_skip : Flapjack.WordAlloc.isSkip output1921 = false := by
  rw [output1921_def]
  conv => lhs; cbv
  try rfl
theorem node1921_eq : Flapjack.WordAlloc.removeDeadStructural input1921 value388 value1 value2 = (output1921, value456, value1) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1619_eq]
  try dsimp only
  rw [node1920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 20#64))).val
theorem input1922_def : input1922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 20#64)) := by
  unfold input1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 20#64))).val
theorem output1922_def : output1922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 20#64)) := by
  unfold output1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1922_skip : Flapjack.WordAlloc.isSkip output1922 = false := by
  rw [output1922_def]
  conv => lhs; cbv
  try rfl
theorem node1922_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value456 value1 value2 = (output1922, value454, value1) := by
  rw [input1922_def, output1922_def]
  try (conv => lhs; cbv)
  try rfl

def value457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(73, 37)])).val
theorem input1923_def : input1923 = (Flapjack.WordLangProgHOL.move 0 [(73, 37)]) := by
  unfold input1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(73, 37)])).val
theorem output1923_def : output1923 = (Flapjack.WordLangProgHOL.move 0 [(73, 37)]) := by
  unfold output1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1923_skip : Flapjack.WordAlloc.isSkip output1923 = false := by
  rw [output1923_def]
  conv => lhs; cbv
  try rfl
theorem node1923_eq : Flapjack.WordAlloc.removeDeadStructural input1923 value454 value1 value2 = (output1923, value457, value1) := by
  rw [input1923_def, output1923_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 1#64))).val
theorem input1924_def : input1924 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 1#64)) := by
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
theorem node1924_eq : Flapjack.WordAlloc.removeDeadStructural input1924 value457 value1 value2 = (output1924, value457, value1) := by
  rw [input1924_def, output1924_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1925_def : input1925 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1925_def : output1925 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1925_skip : Flapjack.WordAlloc.isSkip output1925 = false := by
  rw [output1925_def]
  conv => lhs; cbv
  try rfl
theorem node1925_eq : Flapjack.WordAlloc.removeDeadStructural input1925 value457 value1 value2 = (output1925, value457, value1) := by
  rw [input1925_def, output1925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 1#64))).val
theorem input1926_def : input1926 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 1#64)) := by
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
theorem node1926_eq : Flapjack.WordAlloc.removeDeadStructural input1926 value457 value1 value2 = (output1926, value457, value1) := by
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
theorem node1927_eq : Flapjack.WordAlloc.removeDeadStructural input1927 value457 value1 value2 = (output1927, value457, value1) := by
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
theorem node1928_eq : Flapjack.WordAlloc.removeDeadStructural input1928 value457 value1 value2 = (output1928, value457, value1) := by
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
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1928 output1923)).val
theorem output1929_def : output1929 = (.seq output1928 output1923) := by
  unfold output1929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1929_skip : Flapjack.WordAlloc.isSkip output1929 = false := by
  rw [output1929_def]
  conv => lhs; cbv
  try rfl
theorem node1929_eq : Flapjack.WordAlloc.removeDeadStructural input1929 value454 value1 value2 = (output1929, value457, value1) := by
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
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1929 output1922)).val
theorem output1930_def : output1930 = (.seq output1929 output1922) := by
  unfold output1930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1930_skip : Flapjack.WordAlloc.isSkip output1930 = false := by
  rw [output1930_def]
  conv => lhs; cbv
  try rfl
theorem node1930_eq : Flapjack.WordAlloc.removeDeadStructural input1930 value456 value1 value2 = (output1930, value457, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1922_eq]
  try dsimp only
  rw [node1929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1930 input1921)).val
theorem input1931_def : input1931 = (.seq input1930 input1921) := by
  unfold input1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1930 output1921)).val
theorem output1931_def : output1931 = (.seq output1930 output1921) := by
  unfold output1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1931_skip : Flapjack.WordAlloc.isSkip output1931 = false := by
  rw [output1931_def]
  conv => lhs; cbv
  try rfl
theorem node1931_eq : Flapjack.WordAlloc.removeDeadStructural input1931 value388 value1 value2 = (output1931, value457, value1) := by
  rw [input1931_def, output1931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1921_eq]
  try dsimp only
  rw [node1930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1931 input1614)).val
theorem input1932_def : input1932 = (.seq input1931 input1614) := by
  unfold input1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1931 output1614)).val
theorem output1932_def : output1932 = (.seq output1931 output1614) := by
  unfold output1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1932_skip : Flapjack.WordAlloc.isSkip output1932 = false := by
  rw [output1932_def]
  conv => lhs; cbv
  try rfl
theorem node1932_eq : Flapjack.WordAlloc.removeDeadStructural input1932 value388 value1 value2 = (output1932, value457, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1614_eq]
  try dsimp only
  rw [node1931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1932 input1613)).val
theorem input1933_def : input1933 = (.seq input1932 input1613) := by
  unfold input1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1932 output1613)).val
theorem output1933_def : output1933 = (.seq output1932 output1613) := by
  unfold output1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1933_skip : Flapjack.WordAlloc.isSkip output1933 = false := by
  rw [output1933_def]
  conv => lhs; cbv
  try rfl
theorem node1933_eq : Flapjack.WordAlloc.removeDeadStructural input1933 value385 value1 value2 = (output1933, value457, value1) := by
  rw [input1933_def, output1933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1613_eq]
  try dsimp only
  rw [node1932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1933 input1612)).val
theorem input1934_def : input1934 = (.seq input1933 input1612) := by
  unfold input1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1933 output1612)).val
theorem output1934_def : output1934 = (.seq output1933 output1612) := by
  unfold output1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1934_skip : Flapjack.WordAlloc.isSkip output1934 = false := by
  rw [output1934_def]
  conv => lhs; cbv
  try rfl
theorem node1934_eq : Flapjack.WordAlloc.removeDeadStructural input1934 value387 value1 value2 = (output1934, value457, value1) := by
  rw [input1934_def, output1934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1612_eq]
  try dsimp only
  rw [node1933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1934 input1611)).val
theorem input1935_def : input1935 = (.seq input1934 input1611) := by
  unfold input1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1934 output1611)).val
theorem output1935_def : output1935 = (.seq output1934 output1611) := by
  unfold output1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1935_skip : Flapjack.WordAlloc.isSkip output1935 = false := by
  rw [output1935_def]
  conv => lhs; cbv
  try rfl
theorem node1935_eq : Flapjack.WordAlloc.removeDeadStructural input1935 value351 value1 value2 = (output1935, value457, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1611_eq]
  try dsimp only
  rw [node1934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1935 input1432)).val
theorem input1936_def : input1936 = (.seq input1935 input1432) := by
  unfold input1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1935 output1432)).val
theorem output1936_def : output1936 = (.seq output1935 output1432) := by
  unfold output1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1936_skip : Flapjack.WordAlloc.isSkip output1936 = false := by
  rw [output1936_def]
  conv => lhs; cbv
  try rfl
theorem node1936_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value351 value1 value2 = (output1936, value457, value1) := by
  rw [input1936_def, output1936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1432_eq]
  try dsimp only
  rw [node1935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1936 input1431)).val
theorem input1937_def : input1937 = (.seq input1936 input1431) := by
  unfold input1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1936 output1431)).val
theorem output1937_def : output1937 = (.seq output1936 output1431) := by
  unfold output1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1937_skip : Flapjack.WordAlloc.isSkip output1937 = false := by
  rw [output1937_def]
  conv => lhs; cbv
  try rfl
theorem node1937_eq : Flapjack.WordAlloc.removeDeadStructural input1937 value347 value1 value2 = (output1937, value457, value1) := by
  rw [input1937_def, output1937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1431_eq]
  try dsimp only
  rw [node1936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1937 input1430)).val
theorem input1938_def : input1938 = (.seq input1937 input1430) := by
  unfold input1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1937 output1430)).val
theorem output1938_def : output1938 = (.seq output1937 output1430) := by
  unfold output1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1938_skip : Flapjack.WordAlloc.isSkip output1938 = false := by
  rw [output1938_def]
  conv => lhs; cbv
  try rfl
theorem node1938_eq : Flapjack.WordAlloc.removeDeadStructural input1938 value350 value1 value2 = (output1938, value457, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1430_eq]
  try dsimp only
  rw [node1937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1938 input1429)).val
theorem input1939_def : input1939 = (.seq input1938 input1429) := by
  unfold input1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1938 output1429)).val
theorem output1939_def : output1939 = (.seq output1938 output1429) := by
  unfold output1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1939_skip : Flapjack.WordAlloc.isSkip output1939 = false := by
  rw [output1939_def]
  conv => lhs; cbv
  try rfl
theorem node1939_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value249 value1 value2 = (output1939, value457, value1) := by
  rw [input1939_def, output1939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1429_eq]
  try dsimp only
  rw [node1938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1939 input990)).val
theorem input1940_def : input1940 = (.seq input1939 input990) := by
  unfold input1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1939 output990)).val
theorem output1940_def : output1940 = (.seq output1939 output990) := by
  unfold output1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1940_skip : Flapjack.WordAlloc.isSkip output1940 = false := by
  rw [output1940_def]
  conv => lhs; cbv
  try rfl
theorem node1940_eq : Flapjack.WordAlloc.removeDeadStructural input1940 value249 value1 value2 = (output1940, value457, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node990_eq]
  try dsimp only
  rw [node1939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1940 input989)).val
theorem input1941_def : input1941 = (.seq input1940 input989) := by
  unfold input1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1940 output989)).val
theorem output1941_def : output1941 = (.seq output1940 output989) := by
  unfold output1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1941_skip : Flapjack.WordAlloc.isSkip output1941 = false := by
  rw [output1941_def]
  conv => lhs; cbv
  try rfl
theorem node1941_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value249 value1 value2 = (output1941, value457, value1) := by
  rw [input1941_def, output1941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node989_eq]
  try dsimp only
  rw [node1940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1941 input988)).val
theorem input1942_def : input1942 = (.seq input1941 input988) := by
  unfold input1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1941 output988)).val
theorem output1942_def : output1942 = (.seq output1941 output988) := by
  unfold output1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1942_skip : Flapjack.WordAlloc.isSkip output1942 = false := by
  rw [output1942_def]
  conv => lhs; cbv
  try rfl
theorem node1942_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value191 value1 value2 = (output1942, value457, value1) := by
  rw [input1942_def, output1942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node988_eq]
  try dsimp only
  rw [node1941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1942 input744)).val
theorem input1943_def : input1943 = (.seq input1942 input744) := by
  unfold input1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1942 output744)).val
theorem output1943_def : output1943 = (.seq output1942 output744) := by
  unfold output1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1943_skip : Flapjack.WordAlloc.isSkip output1943 = false := by
  rw [output1943_def]
  conv => lhs; cbv
  try rfl
theorem node1943_eq : Flapjack.WordAlloc.removeDeadStructural input1943 value191 value1 value2 = (output1943, value457, value1) := by
  rw [input1943_def, output1943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node744_eq]
  try dsimp only
  rw [node1942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1943 input743)).val
theorem input1944_def : input1944 = (.seq input1943 input743) := by
  unfold input1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1943 output743)).val
theorem output1944_def : output1944 = (.seq output1943 output743) := by
  unfold output1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1944_skip : Flapjack.WordAlloc.isSkip output1944 = false := by
  rw [output1944_def]
  conv => lhs; cbv
  try rfl
theorem node1944_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value191 value1 value2 = (output1944, value457, value1) := by
  rw [input1944_def, output1944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node743_eq]
  try dsimp only
  rw [node1943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1944 input742)).val
theorem input1945_def : input1945 = (.seq input1944 input742) := by
  unfold input1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1944 output742)).val
theorem output1945_def : output1945 = (.seq output1944 output742) := by
  unfold output1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1945_skip : Flapjack.WordAlloc.isSkip output1945 = false := by
  rw [output1945_def]
  conv => lhs; cbv
  try rfl
theorem node1945_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value169 value1 value2 = (output1945, value457, value1) := by
  rw [input1945_def, output1945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  try dsimp only
  rw [node1944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1945 input636)).val
theorem input1946_def : input1946 = (.seq input1945 input636) := by
  unfold input1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1945 output636)).val
theorem output1946_def : output1946 = (.seq output1945 output636) := by
  unfold output1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1946_skip : Flapjack.WordAlloc.isSkip output1946 = false := by
  rw [output1946_def]
  conv => lhs; cbv
  try rfl
theorem node1946_eq : Flapjack.WordAlloc.removeDeadStructural input1946 value169 value1 value2 = (output1946, value457, value1) := by
  rw [input1946_def, output1946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node636_eq]
  try dsimp only
  rw [node1945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1946 input635)).val
theorem input1947_def : input1947 = (.seq input1946 input635) := by
  unfold input1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1946 output635)).val
theorem output1947_def : output1947 = (.seq output1946 output635) := by
  unfold output1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1947_skip : Flapjack.WordAlloc.isSkip output1947 = false := by
  rw [output1947_def]
  conv => lhs; cbv
  try rfl
theorem node1947_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value168 value1 value2 = (output1947, value457, value1) := by
  rw [input1947_def, output1947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node635_eq]
  try dsimp only
  rw [node1946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1901, 53)])).val
theorem input1948_def : input1948 = (Flapjack.WordLangProgHOL.move 1 [(1901, 53)]) := by
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
theorem node1948_eq : Flapjack.WordAlloc.removeDeadStructural input1948 value168 value1 value2 = (output1948, value168, value1) := by
  rw [input1948_def, output1948_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1897, 1861)])).val
theorem input1949_def : input1949 = (Flapjack.WordLangProgHOL.move 1 [(1897, 1861)]) := by
  unfold input1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1949_def : output1949 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1949_skip : Flapjack.WordAlloc.isSkip output1949 = true := by
  rw [output1949_def]
  conv => lhs; cbv
  try rfl
theorem node1949_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value168 value1 value2 = (output1949, value168, value1) := by
  rw [input1949_def, output1949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1893, 61)])).val
theorem input1950_def : input1950 = (Flapjack.WordLangProgHOL.move 1 [(1893, 61)]) := by
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
theorem node1950_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value168 value1 value2 = (output1950, value168, value1) := by
  rw [input1950_def, output1950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1889, 49)])).val
theorem input1951_def : input1951 = (Flapjack.WordLangProgHOL.move 1 [(1889, 49)]) := by
  unfold input1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1951_def : output1951 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1951_skip : Flapjack.WordAlloc.isSkip output1951 = true := by
  rw [output1951_def]
  conv => lhs; cbv
  try rfl
theorem node1951_eq : Flapjack.WordAlloc.removeDeadStructural input1951 value168 value1 value2 = (output1951, value168, value1) := by
  rw [input1951_def, output1951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1885, 1857)])).val
theorem input1952_def : input1952 = (Flapjack.WordLangProgHOL.move 1 [(1885, 1857)]) := by
  unfold input1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1952_def : output1952 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1952_skip : Flapjack.WordAlloc.isSkip output1952 = true := by
  rw [output1952_def]
  conv => lhs; cbv
  try rfl
theorem node1952_eq : Flapjack.WordAlloc.removeDeadStructural input1952 value168 value1 value2 = (output1952, value168, value1) := by
  rw [input1952_def, output1952_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1953_def : input1953 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1953_def : output1953 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1953_skip : Flapjack.WordAlloc.isSkip output1953 = true := by
  rw [output1953_def]
  conv => lhs; cbv
  try rfl
theorem node1953_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value168 value1 value2 = (output1953, value168, value1) := by
  rw [input1953_def, output1953_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1953 input1952)).val
theorem input1954_def : input1954 = (.seq input1953 input1952) := by
  unfold input1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1952)).val
theorem output1954_def : output1954 = (output1952) := by
  unfold output1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1954_skip : Flapjack.WordAlloc.isSkip output1954 = true := by
  rw [output1954_def]
  conv => lhs; cbv
  try rfl
theorem node1954_eq : Flapjack.WordAlloc.removeDeadStructural input1954 value168 value1 value2 = (output1954, value168, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1952_eq]
  try dsimp only
  rw [node1953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1954 input1951)).val
theorem input1955_def : input1955 = (.seq input1954 input1951) := by
  unfold input1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1951)).val
theorem output1955_def : output1955 = (output1951) := by
  unfold output1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1955_skip : Flapjack.WordAlloc.isSkip output1955 = true := by
  rw [output1955_def]
  conv => lhs; cbv
  try rfl
theorem node1955_eq : Flapjack.WordAlloc.removeDeadStructural input1955 value168 value1 value2 = (output1955, value168, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1951_eq]
  try dsimp only
  rw [node1954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1955 input1950)).val
theorem input1956_def : input1956 = (.seq input1955 input1950) := by
  unfold input1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1950)).val
theorem output1956_def : output1956 = (output1950) := by
  unfold output1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1956_skip : Flapjack.WordAlloc.isSkip output1956 = true := by
  rw [output1956_def]
  conv => lhs; cbv
  try rfl
theorem node1956_eq : Flapjack.WordAlloc.removeDeadStructural input1956 value168 value1 value2 = (output1956, value168, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1950_eq]
  try dsimp only
  rw [node1955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1956 input1949)).val
theorem input1957_def : input1957 = (.seq input1956 input1949) := by
  unfold input1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1949)).val
theorem output1957_def : output1957 = (output1949) := by
  unfold output1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1957_skip : Flapjack.WordAlloc.isSkip output1957 = true := by
  rw [output1957_def]
  conv => lhs; cbv
  try rfl
theorem node1957_eq : Flapjack.WordAlloc.removeDeadStructural input1957 value168 value1 value2 = (output1957, value168, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1949_eq]
  try dsimp only
  rw [node1956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1957 input1948)).val
theorem input1958_def : input1958 = (.seq input1957 input1948) := by
  unfold input1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1948)).val
theorem output1958_def : output1958 = (output1948) := by
  unfold output1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1958_skip : Flapjack.WordAlloc.isSkip output1958 = true := by
  rw [output1958_def]
  conv => lhs; cbv
  try rfl
theorem node1958_eq : Flapjack.WordAlloc.removeDeadStructural input1958 value168 value1 value2 = (output1958, value168, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1948_eq]
  try dsimp only
  rw [node1957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1881, 25), (1877, 45), (1873, 49), (1869, 41), (1865, 37)])).val
theorem input1959_def : input1959 = (Flapjack.WordLangProgHOL.move 1 [(1881, 25), (1877, 45), (1873, 49), (1869, 41), (1865, 37)]) := by
  unfold input1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1881, 25), (1877, 45), (1873, 49), (1869, 41), (1865, 37)])).val
theorem output1959_def : output1959 = (Flapjack.WordLangProgHOL.move 1 [(1881, 25), (1877, 45), (1873, 49), (1869, 41), (1865, 37)]) := by
  unfold output1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1959_skip : Flapjack.WordAlloc.isSkip output1959 = false := by
  rw [output1959_def]
  conv => lhs; cbv
  try rfl
theorem node1959_eq : Flapjack.WordAlloc.removeDeadStructural input1959 value168 value1 value2 = (output1959, value457, value1) := by
  rw [input1959_def, output1959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1959 input1958)).val
theorem input1960_def : input1960 = (.seq input1959 input1958) := by
  unfold input1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1959)).val
theorem output1960_def : output1960 = (output1959) := by
  unfold output1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1960_skip : Flapjack.WordAlloc.isSkip output1960 = false := by
  rw [output1960_def]
  conv => lhs; cbv
  try rfl
theorem node1960_eq : Flapjack.WordAlloc.removeDeadStructural input1960 value168 value1 value2 = (output1960, value457, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1958_eq]
  try dsimp only
  rw [node1959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1861 0#64))).val
theorem input1961_def : input1961 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1861 0#64)) := by
  unfold input1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1961_def : output1961 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1961_skip : Flapjack.WordAlloc.isSkip output1961 = true := by
  rw [output1961_def]
  conv => lhs; cbv
  try rfl
theorem node1961_eq : Flapjack.WordAlloc.removeDeadStructural input1961 value457 value1 value2 = (output1961, value457, value1) := by
  rw [input1961_def, output1961_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1962_def : input1962 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1962_def : output1962 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1962_skip : Flapjack.WordAlloc.isSkip output1962 = false := by
  rw [output1962_def]
  conv => lhs; cbv
  try rfl
theorem node1962_eq : Flapjack.WordAlloc.removeDeadStructural input1962 value457 value1 value2 = (output1962, value457, value1) := by
  rw [input1962_def, output1962_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1857 0#64))).val
theorem input1963_def : input1963 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1857 0#64)) := by
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
theorem node1963_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value457 value1 value2 = (output1963, value457, value1) := by
  rw [input1963_def, output1963_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1963 input1962)).val
theorem input1964_def : input1964 = (.seq input1963 input1962) := by
  unfold input1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1962)).val
theorem output1964_def : output1964 = (output1962) := by
  unfold output1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1964_skip : Flapjack.WordAlloc.isSkip output1964 = false := by
  rw [output1964_def]
  conv => lhs; cbv
  try rfl
theorem node1964_eq : Flapjack.WordAlloc.removeDeadStructural input1964 value457 value1 value2 = (output1964, value457, value1) := by
  rw [input1964_def, output1964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1962_eq]
  try dsimp only
  rw [node1963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1964 input1961)).val
theorem input1965_def : input1965 = (.seq input1964 input1961) := by
  unfold input1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1964)).val
theorem output1965_def : output1965 = (output1964) := by
  unfold output1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1965_skip : Flapjack.WordAlloc.isSkip output1965 = false := by
  rw [output1965_def]
  conv => lhs; cbv
  try rfl
theorem node1965_eq : Flapjack.WordAlloc.removeDeadStructural input1965 value457 value1 value2 = (output1965, value457, value1) := by
  rw [input1965_def, output1965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1961_eq]
  try dsimp only
  rw [node1964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1965 input1960)).val
theorem input1966_def : input1966 = (.seq input1965 input1960) := by
  unfold input1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1965 output1960)).val
theorem output1966_def : output1966 = (.seq output1965 output1960) := by
  unfold output1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1966_skip : Flapjack.WordAlloc.isSkip output1966 = false := by
  rw [output1966_def]
  conv => lhs; cbv
  try rfl
theorem node1966_eq : Flapjack.WordAlloc.removeDeadStructural input1966 value168 value1 value2 = (output1966, value457, value1) := by
  rw [input1966_def, output1966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1960_eq]
  try dsimp only
  rw [node1965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value458 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 61

def value459 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 57 value458 input1947 input1966)).val
theorem input1967_def : input1967 = (.ite value348 57 value458 input1947 input1966) := by
  unfold input1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 57 value458 output1947 output1966)).val
theorem output1967_def : output1967 = (.ite value348 57 value458 output1947 output1966) := by
  unfold output1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1967_skip : Flapjack.WordAlloc.isSkip output1967 = false := by
  rw [output1967_def]
  conv => lhs; cbv
  try rfl
theorem node1967_eq : Flapjack.WordAlloc.removeDeadStructural input1967 value168 value1 value2 = (output1967, value459, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1947_eq]
  try dsimp only
  rw [node1966_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

def value460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem input1968_def : input1968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold input1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem output1968_def : output1968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold output1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1968_skip : Flapjack.WordAlloc.isSkip output1968 = false := by
  rw [output1968_def]
  conv => lhs; cbv
  try rfl
theorem node1968_eq : Flapjack.WordAlloc.removeDeadStructural input1968 value459 value1 value2 = (output1968, value460, value1) := by
  rw [input1968_def, output1968_def]
  try (conv => lhs; cbv)
  try rfl

def value461 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64))))).val
theorem input1969_def : input1969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64)))) := by
  unfold input1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64))))).val
theorem output1969_def : output1969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64)))) := by
  unfold output1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1969_skip : Flapjack.WordAlloc.isSkip output1969 = false := by
  rw [output1969_def]
  conv => lhs; cbv
  try rfl
theorem node1969_eq : Flapjack.WordAlloc.removeDeadStructural input1969 value460 value1 value2 = (output1969, value461, value1) := by
  rw [input1969_def, output1969_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49))))).val
theorem input1970_def : input1970 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))) := by
  unfold input1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49))))).val
theorem output1970_def : output1970 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 53 45 (Flapjack.WordRegImm.reg 49)))) := by
  unfold output1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1970_skip : Flapjack.WordAlloc.isSkip output1970 = false := by
  rw [output1970_def]
  conv => lhs; cbv
  try rfl
theorem node1970_eq : Flapjack.WordAlloc.removeDeadStructural input1970 value461 value1 value2 = (output1970, value457, value1) := by
  rw [input1970_def, output1970_def]
  try (conv => lhs; cbv)
  try rfl

def value462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(49, 29)])).val
theorem input1971_def : input1971 = (Flapjack.WordLangProgHOL.move 0 [(49, 29)]) := by
  unfold input1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(49, 29)])).val
theorem output1971_def : output1971 = (Flapjack.WordLangProgHOL.move 0 [(49, 29)]) := by
  unfold output1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1971_skip : Flapjack.WordAlloc.isSkip output1971 = false := by
  rw [output1971_def]
  conv => lhs; cbv
  try rfl
theorem node1971_eq : Flapjack.WordAlloc.removeDeadStructural input1971 value457 value1 value2 = (output1971, value462, value1) := by
  rw [input1971_def, output1971_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1971 input1970)).val
theorem input1972_def : input1972 = (.seq input1971 input1970) := by
  unfold input1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1971 output1970)).val
theorem output1972_def : output1972 = (.seq output1971 output1970) := by
  unfold output1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1972_skip : Flapjack.WordAlloc.isSkip output1972 = false := by
  rw [output1972_def]
  conv => lhs; cbv
  try rfl
theorem node1972_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value461 value1 value2 = (output1972, value462, value1) := by
  rw [input1972_def, output1972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1970_eq]
  try dsimp only
  rw [node1971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value463 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(45, 33)])).val
theorem input1973_def : input1973 = (Flapjack.WordLangProgHOL.move 0 [(45, 33)]) := by
  unfold input1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(45, 33)])).val
theorem output1973_def : output1973 = (Flapjack.WordLangProgHOL.move 0 [(45, 33)]) := by
  unfold output1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1973_skip : Flapjack.WordAlloc.isSkip output1973 = false := by
  rw [output1973_def]
  conv => lhs; cbv
  try rfl
theorem node1973_eq : Flapjack.WordAlloc.removeDeadStructural input1973 value462 value1 value2 = (output1973, value463, value1) := by
  rw [input1973_def, output1973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1973 input1972)).val
theorem input1974_def : input1974 = (.seq input1973 input1972) := by
  unfold input1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1973 output1972)).val
theorem output1974_def : output1974 = (.seq output1973 output1972) := by
  unfold output1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1974_skip : Flapjack.WordAlloc.isSkip output1974 = false := by
  rw [output1974_def]
  conv => lhs; cbv
  try rfl
theorem node1974_eq : Flapjack.WordAlloc.removeDeadStructural input1974 value461 value1 value2 = (output1974, value463, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1972_eq]
  try dsimp only
  rw [node1973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1974 input1969)).val
theorem input1975_def : input1975 = (.seq input1974 input1969) := by
  unfold input1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1974 output1969)).val
theorem output1975_def : output1975 = (.seq output1974 output1969) := by
  unfold output1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1975_skip : Flapjack.WordAlloc.isSkip output1975 = false := by
  rw [output1975_def]
  conv => lhs; cbv
  try rfl
theorem node1975_eq : Flapjack.WordAlloc.removeDeadStructural input1975 value460 value1 value2 = (output1975, value463, value1) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1969_eq]
  try dsimp only
  rw [node1974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value464 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64))).val
theorem input1976_def : input1976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)) := by
  unfold input1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64))).val
theorem output1976_def : output1976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 0#64)) := by
  unfold output1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1976_skip : Flapjack.WordAlloc.isSkip output1976 = false := by
  rw [output1976_def]
  conv => lhs; cbv
  try rfl
theorem node1976_eq : Flapjack.WordAlloc.removeDeadStructural input1976 value463 value1 value2 = (output1976, value464, value1) := by
  rw [input1976_def, output1976_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1976 input1975)).val
theorem input1977_def : input1977 = (.seq input1976 input1975) := by
  unfold input1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1976 output1975)).val
theorem output1977_def : output1977 = (.seq output1976 output1975) := by
  unfold output1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1977_skip : Flapjack.WordAlloc.isSkip output1977 = false := by
  rw [output1977_def]
  conv => lhs; cbv
  try rfl
theorem node1977_eq : Flapjack.WordAlloc.removeDeadStructural input1977 value460 value1 value2 = (output1977, value464, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1975_eq]
  try dsimp only
  rw [node1976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1977 input1968)).val
theorem input1978_def : input1978 = (.seq input1977 input1968) := by
  unfold input1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1977 output1968)).val
theorem output1978_def : output1978 = (.seq output1977 output1968) := by
  unfold output1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1978_skip : Flapjack.WordAlloc.isSkip output1978 = false := by
  rw [output1978_def]
  conv => lhs; cbv
  try rfl
theorem node1978_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value459 value1 value2 = (output1978, value464, value1) := by
  rw [input1978_def, output1978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1968_eq]
  try dsimp only
  rw [node1977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1978 input1967)).val
theorem input1979_def : input1979 = (.seq input1978 input1967) := by
  unfold input1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1978 output1967)).val
theorem output1979_def : output1979 = (.seq output1978 output1967) := by
  unfold output1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1979_skip : Flapjack.WordAlloc.isSkip output1979 = false := by
  rw [output1979_def]
  conv => lhs; cbv
  try rfl
theorem node1979_eq : Flapjack.WordAlloc.removeDeadStructural input1979 value168 value1 value2 = (output1979, value464, value1) := by
  rw [input1979_def, output1979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1967_eq]
  try dsimp only
  rw [node1978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1979 input622)).val
theorem input1980_def : input1980 = (.seq input1979 input622) := by
  unfold input1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1979 output622)).val
theorem output1980_def : output1980 = (.seq output1979 output622) := by
  unfold output1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1980_skip : Flapjack.WordAlloc.isSkip output1980 = false := by
  rw [output1980_def]
  conv => lhs; cbv
  try rfl
theorem node1980_eq : Flapjack.WordAlloc.removeDeadStructural input1980 value168 value1 value2 = (output1980, value464, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node622_eq]
  try dsimp only
  rw [node1979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1980 input621)).val
theorem input1981_def : input1981 = (.seq input1980 input621) := by
  unfold input1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1980 output621)).val
theorem output1981_def : output1981 = (.seq output1980 output621) := by
  unfold output1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1981_skip : Flapjack.WordAlloc.isSkip output1981 = false := by
  rw [output1981_def]
  conv => lhs; cbv
  try rfl
theorem node1981_eq : Flapjack.WordAlloc.removeDeadStructural input1981 value168 value1 value2 = (output1981, value464, value1) := by
  rw [input1981_def, output1981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node621_eq]
  try dsimp only
  rw [node1980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1981 input620)).val
theorem input1982_def : input1982 = (.seq input1981 input620) := by
  unfold input1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1981 output620)).val
theorem output1982_def : output1982 = (.seq output1981 output620) := by
  unfold output1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1982_skip : Flapjack.WordAlloc.isSkip output1982 = false := by
  rw [output1982_def]
  conv => lhs; cbv
  try rfl
theorem node1982_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value31 value1 value2 = (output1982, value464, value1) := by
  rw [input1982_def, output1982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node620_eq]
  try dsimp only
  rw [node1981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1982 input124)).val
theorem input1983_def : input1983 = (.seq input1982 input124) := by
  unfold input1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1982 output124)).val
theorem output1983_def : output1983 = (.seq output1982 output124) := by
  unfold output1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1983_skip : Flapjack.WordAlloc.isSkip output1983 = false := by
  rw [output1983_def]
  conv => lhs; cbv
  try rfl
theorem node1983_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value31 value1 value2 = (output1983, value464, value1) := by
  rw [input1983_def, output1983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node124_eq]
  try dsimp only
  rw [node1982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1983 input123)).val
theorem input1984_def : input1984 = (.seq input1983 input123) := by
  unfold input1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1983 output123)).val
theorem output1984_def : output1984 = (.seq output1983 output123) := by
  unfold output1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1984_skip : Flapjack.WordAlloc.isSkip output1984 = false := by
  rw [output1984_def]
  conv => lhs; cbv
  try rfl
theorem node1984_eq : Flapjack.WordAlloc.removeDeadStructural input1984 value31 value1 value2 = (output1984, value464, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node123_eq]
  try dsimp only
  rw [node1983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1984 input122)).val
theorem input1985_def : input1985 = (.seq input1984 input122) := by
  unfold input1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1984 output122)).val
theorem output1985_def : output1985 = (.seq output1984 output122) := by
  unfold output1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1985_skip : Flapjack.WordAlloc.isSkip output1985 = false := by
  rw [output1985_def]
  conv => lhs; cbv
  try rfl
theorem node1985_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value5 value1 value2 = (output1985, value464, value1) := by
  rw [input1985_def, output1985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node122_eq]
  try dsimp only
  rw [node1984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1985 input4)).val
theorem input1986_def : input1986 = (.seq input1985 input4) := by
  unfold input1986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1985 output4)).val
theorem output1986_def : output1986 = (.seq output1985 output4) := by
  unfold output1986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1986_skip : Flapjack.WordAlloc.isSkip output1986 = false := by
  rw [output1986_def]
  conv => lhs; cbv
  try rfl
theorem node1986_eq : Flapjack.WordAlloc.removeDeadStructural input1986 value5 value1 value2 = (output1986, value464, value1) := by
  rw [input1986_def, output1986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node1985_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1986 input3)).val
theorem input1987_def : input1987 = (.seq input1986 input3) := by
  unfold input1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1986 output3)).val
theorem output1987_def : output1987 = (.seq output1986 output3) := by
  unfold output1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1987_skip : Flapjack.WordAlloc.isSkip output1987 = false := by
  rw [output1987_def]
  conv => lhs; cbv
  try rfl
theorem node1987_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value4 value1 value2 = (output1987, value464, value1) := by
  rw [input1987_def, output1987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node1986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1987 input2)).val
theorem input1988_def : input1988 = (.seq input1987 input2) := by
  unfold input1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1987 output2)).val
theorem output1988_def : output1988 = (.seq output1987 output2) := by
  unfold output1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1988_skip : Flapjack.WordAlloc.isSkip output1988 = false := by
  rw [output1988_def]
  conv => lhs; cbv
  try rfl
theorem node1988_eq : Flapjack.WordAlloc.removeDeadStructural input1988 value0 value1 value2 = (output1988, value464, value1) := by
  rw [input1988_def, output1988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node1987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value465 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)])).val
theorem input1989_def : input1989 = (Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]) := by
  unfold input1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)])).val
theorem output1989_def : output1989 = (Flapjack.WordLangProgHOL.move 1 [(25, 0), (29, 2), (33, 4), (37, 6)]) := by
  unfold output1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1989_skip : Flapjack.WordAlloc.isSkip output1989 = false := by
  rw [output1989_def]
  conv => lhs; cbv
  try rfl
theorem node1989_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value464 value1 value2 = (output1989, value465, value1) := by
  rw [input1989_def, output1989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1989 input1988)).val
theorem input1990_def : input1990 = (.seq input1989 input1988) := by
  unfold input1990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1989 output1988)).val
theorem output1990_def : output1990 = (.seq output1989 output1988) := by
  unfold output1990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1990_skip : Flapjack.WordAlloc.isSkip output1990 = false := by
  rw [output1990_def]
  conv => lhs; cbv
  try rfl
theorem node1990_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value0 value1 value2 = (output1990, value465, value1) := by
  rw [input1990_def, output1990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1988_eq]
  try dsimp only
  rw [node1989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1990_eq
end InitECandidate.Proofs.DeadStages79
