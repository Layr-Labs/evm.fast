import InitECandidate.Proofs.DeadStages692.Chunk006
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages692
@[irreducible, cbv_opaque] def input1792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1791 input1728)).val
theorem input1792_def : input1792 = (.seq input1791 input1728) := by
  unfold input1792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1791 output1728)).val
theorem output1792_def : output1792 = (.seq output1791 output1728) := by
  unfold output1792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1792_skip : Flapjack.WordAlloc.isSkip output1792 = false := by
  rw [output1792_def]
  conv => lhs; cbv
  try rfl
theorem node1792_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value776 value1 value2 = (output1792, value807, value1) := by
  rw [input1792_def, output1792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1728_eq]
  try dsimp only
  rw [node1791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1792 input1725)).val
theorem input1793_def : input1793 = (.seq input1792 input1725) := by
  unfold input1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1792 output1725)).val
theorem output1793_def : output1793 = (.seq output1792 output1725) := by
  unfold output1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1793_skip : Flapjack.WordAlloc.isSkip output1793 = false := by
  rw [output1793_def]
  conv => lhs; cbv
  try rfl
theorem node1793_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value775 value1 value2 = (output1793, value807, value1) := by
  rw [input1793_def, output1793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1725_eq]
  try dsimp only
  rw [node1792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1793 input1724)).val
theorem input1794_def : input1794 = (.seq input1793 input1724) := by
  unfold input1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1793 output1724)).val
theorem output1794_def : output1794 = (.seq output1793 output1724) := by
  unfold output1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1794_skip : Flapjack.WordAlloc.isSkip output1794 = false := by
  rw [output1794_def]
  conv => lhs; cbv
  try rfl
theorem node1794_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value773 value1 value2 = (output1794, value807, value1) := by
  rw [input1794_def, output1794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1724_eq]
  try dsimp only
  rw [node1793_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1794 input1721)).val
theorem input1795_def : input1795 = (.seq input1794 input1721) := by
  unfold input1795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1794 output1721)).val
theorem output1795_def : output1795 = (.seq output1794 output1721) := by
  unfold output1795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1795_skip : Flapjack.WordAlloc.isSkip output1795 = false := by
  rw [output1795_def]
  conv => lhs; cbv
  try rfl
theorem node1795_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value772 value1 value2 = (output1795, value807, value1) := by
  rw [input1795_def, output1795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1721_eq]
  try dsimp only
  rw [node1794_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1795 input1720)).val
theorem input1796_def : input1796 = (.seq input1795 input1720) := by
  unfold input1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1795 output1720)).val
theorem output1796_def : output1796 = (.seq output1795 output1720) := by
  unfold output1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1796_skip : Flapjack.WordAlloc.isSkip output1796 = false := by
  rw [output1796_def]
  conv => lhs; cbv
  try rfl
theorem node1796_eq : Flapjack.WordAlloc.removeDeadStructural input1796 value770 value1 value2 = (output1796, value807, value1) := by
  rw [input1796_def, output1796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1720_eq]
  try dsimp only
  rw [node1795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1796 input1717)).val
theorem input1797_def : input1797 = (.seq input1796 input1717) := by
  unfold input1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1796 output1717)).val
theorem output1797_def : output1797 = (.seq output1796 output1717) := by
  unfold output1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1797_skip : Flapjack.WordAlloc.isSkip output1797 = false := by
  rw [output1797_def]
  conv => lhs; cbv
  try rfl
theorem node1797_eq : Flapjack.WordAlloc.removeDeadStructural input1797 value769 value1 value2 = (output1797, value807, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1717_eq]
  try dsimp only
  rw [node1796_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1797 input1716)).val
theorem input1798_def : input1798 = (.seq input1797 input1716) := by
  unfold input1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1797 output1716)).val
theorem output1798_def : output1798 = (.seq output1797 output1716) := by
  unfold output1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1798_skip : Flapjack.WordAlloc.isSkip output1798 = false := by
  rw [output1798_def]
  conv => lhs; cbv
  try rfl
theorem node1798_eq : Flapjack.WordAlloc.removeDeadStructural input1798 value767 value1 value2 = (output1798, value807, value1) := by
  rw [input1798_def, output1798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1716_eq]
  try dsimp only
  rw [node1797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1798 input1713)).val
theorem input1799_def : input1799 = (.seq input1798 input1713) := by
  unfold input1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1798 output1713)).val
theorem output1799_def : output1799 = (.seq output1798 output1713) := by
  unfold output1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1799_skip : Flapjack.WordAlloc.isSkip output1799 = false := by
  rw [output1799_def]
  conv => lhs; cbv
  try rfl
theorem node1799_eq : Flapjack.WordAlloc.removeDeadStructural input1799 value766 value1 value2 = (output1799, value807, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1713_eq]
  try dsimp only
  rw [node1798_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1799 input1712)).val
theorem input1800_def : input1800 = (.seq input1799 input1712) := by
  unfold input1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1799 output1712)).val
theorem output1800_def : output1800 = (.seq output1799 output1712) := by
  unfold output1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1800_skip : Flapjack.WordAlloc.isSkip output1800 = false := by
  rw [output1800_def]
  conv => lhs; cbv
  try rfl
theorem node1800_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value764 value1 value2 = (output1800, value807, value1) := by
  rw [input1800_def, output1800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1712_eq]
  try dsimp only
  rw [node1799_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1800 input1709)).val
theorem input1801_def : input1801 = (.seq input1800 input1709) := by
  unfold input1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1800 output1709)).val
theorem output1801_def : output1801 = (.seq output1800 output1709) := by
  unfold output1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1801_skip : Flapjack.WordAlloc.isSkip output1801 = false := by
  rw [output1801_def]
  conv => lhs; cbv
  try rfl
theorem node1801_eq : Flapjack.WordAlloc.removeDeadStructural input1801 value762 value1 value2 = (output1801, value807, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1709_eq]
  try dsimp only
  rw [node1800_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1801 input1706)).val
theorem input1802_def : input1802 = (.seq input1801 input1706) := by
  unfold input1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1801 output1706)).val
theorem output1802_def : output1802 = (.seq output1801 output1706) := by
  unfold output1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1802_skip : Flapjack.WordAlloc.isSkip output1802 = false := by
  rw [output1802_def]
  conv => lhs; cbv
  try rfl
theorem node1802_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value760 value1 value2 = (output1802, value807, value1) := by
  rw [input1802_def, output1802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1706_eq]
  try dsimp only
  rw [node1801_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1802 input1703)).val
theorem input1803_def : input1803 = (.seq input1802 input1703) := by
  unfold input1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1802 output1703)).val
theorem output1803_def : output1803 = (.seq output1802 output1703) := by
  unfold output1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1803_skip : Flapjack.WordAlloc.isSkip output1803 = false := by
  rw [output1803_def]
  conv => lhs; cbv
  try rfl
theorem node1803_eq : Flapjack.WordAlloc.removeDeadStructural input1803 value758 value1 value2 = (output1803, value807, value1) := by
  rw [input1803_def, output1803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1703_eq]
  try dsimp only
  rw [node1802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1803 input1700)).val
theorem input1804_def : input1804 = (.seq input1803 input1700) := by
  unfold input1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1803 output1700)).val
theorem output1804_def : output1804 = (.seq output1803 output1700) := by
  unfold output1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1804_skip : Flapjack.WordAlloc.isSkip output1804 = false := by
  rw [output1804_def]
  conv => lhs; cbv
  try rfl
theorem node1804_eq : Flapjack.WordAlloc.removeDeadStructural input1804 value756 value1 value2 = (output1804, value807, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1700_eq]
  try dsimp only
  rw [node1803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1804 input1697)).val
theorem input1805_def : input1805 = (.seq input1804 input1697) := by
  unfold input1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1804 output1697)).val
theorem output1805_def : output1805 = (.seq output1804 output1697) := by
  unfold output1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1805_skip : Flapjack.WordAlloc.isSkip output1805 = false := by
  rw [output1805_def]
  conv => lhs; cbv
  try rfl
theorem node1805_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value754 value1 value2 = (output1805, value807, value1) := by
  rw [input1805_def, output1805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1697_eq]
  try dsimp only
  rw [node1804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1805 input1694)).val
theorem input1806_def : input1806 = (.seq input1805 input1694) := by
  unfold input1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1805 output1694)).val
theorem output1806_def : output1806 = (.seq output1805 output1694) := by
  unfold output1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1806_skip : Flapjack.WordAlloc.isSkip output1806 = false := by
  rw [output1806_def]
  conv => lhs; cbv
  try rfl
theorem node1806_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value753 value1 value2 = (output1806, value807, value1) := by
  rw [input1806_def, output1806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1694_eq]
  try dsimp only
  rw [node1805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1806 input1693)).val
theorem input1807_def : input1807 = (.seq input1806 input1693) := by
  unfold input1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1806 output1693)).val
theorem output1807_def : output1807 = (.seq output1806 output1693) := by
  unfold output1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1807_skip : Flapjack.WordAlloc.isSkip output1807 = false := by
  rw [output1807_def]
  conv => lhs; cbv
  try rfl
theorem node1807_eq : Flapjack.WordAlloc.removeDeadStructural input1807 value751 value1 value2 = (output1807, value807, value1) := by
  rw [input1807_def, output1807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1693_eq]
  try dsimp only
  rw [node1806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1807 input1690)).val
theorem input1808_def : input1808 = (.seq input1807 input1690) := by
  unfold input1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1807 output1690)).val
theorem output1808_def : output1808 = (.seq output1807 output1690) := by
  unfold output1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1808_skip : Flapjack.WordAlloc.isSkip output1808 = false := by
  rw [output1808_def]
  conv => lhs; cbv
  try rfl
theorem node1808_eq : Flapjack.WordAlloc.removeDeadStructural input1808 value750 value1 value2 = (output1808, value807, value1) := by
  rw [input1808_def, output1808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1690_eq]
  try dsimp only
  rw [node1807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1808 input1689)).val
theorem input1809_def : input1809 = (.seq input1808 input1689) := by
  unfold input1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1808 output1689)).val
theorem output1809_def : output1809 = (.seq output1808 output1689) := by
  unfold output1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1809_skip : Flapjack.WordAlloc.isSkip output1809 = false := by
  rw [output1809_def]
  conv => lhs; cbv
  try rfl
theorem node1809_eq : Flapjack.WordAlloc.removeDeadStructural input1809 value748 value1 value2 = (output1809, value807, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1689_eq]
  try dsimp only
  rw [node1808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1809 input1686)).val
theorem input1810_def : input1810 = (.seq input1809 input1686) := by
  unfold input1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1809 output1686)).val
theorem output1810_def : output1810 = (.seq output1809 output1686) := by
  unfold output1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1810_skip : Flapjack.WordAlloc.isSkip output1810 = false := by
  rw [output1810_def]
  conv => lhs; cbv
  try rfl
theorem node1810_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value747 value1 value2 = (output1810, value807, value1) := by
  rw [input1810_def, output1810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1686_eq]
  try dsimp only
  rw [node1809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1810 input1685)).val
theorem input1811_def : input1811 = (.seq input1810 input1685) := by
  unfold input1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1810 output1685)).val
theorem output1811_def : output1811 = (.seq output1810 output1685) := by
  unfold output1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1811_skip : Flapjack.WordAlloc.isSkip output1811 = false := by
  rw [output1811_def]
  conv => lhs; cbv
  try rfl
theorem node1811_eq : Flapjack.WordAlloc.removeDeadStructural input1811 value745 value1 value2 = (output1811, value807, value1) := by
  rw [input1811_def, output1811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1685_eq]
  try dsimp only
  rw [node1810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1811 input1682)).val
theorem input1812_def : input1812 = (.seq input1811 input1682) := by
  unfold input1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1811 output1682)).val
theorem output1812_def : output1812 = (.seq output1811 output1682) := by
  unfold output1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1812_skip : Flapjack.WordAlloc.isSkip output1812 = false := by
  rw [output1812_def]
  conv => lhs; cbv
  try rfl
theorem node1812_eq : Flapjack.WordAlloc.removeDeadStructural input1812 value744 value1 value2 = (output1812, value807, value1) := by
  rw [input1812_def, output1812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1682_eq]
  try dsimp only
  rw [node1811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1812 input1681)).val
theorem input1813_def : input1813 = (.seq input1812 input1681) := by
  unfold input1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1812 output1681)).val
theorem output1813_def : output1813 = (.seq output1812 output1681) := by
  unfold output1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1813_skip : Flapjack.WordAlloc.isSkip output1813 = false := by
  rw [output1813_def]
  conv => lhs; cbv
  try rfl
theorem node1813_eq : Flapjack.WordAlloc.removeDeadStructural input1813 value740 value1 value2 = (output1813, value807, value1) := by
  rw [input1813_def, output1813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1681_eq]
  try dsimp only
  rw [node1812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1813 input1678)).val
theorem input1814_def : input1814 = (.seq input1813 input1678) := by
  unfold input1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1813 output1678)).val
theorem output1814_def : output1814 = (.seq output1813 output1678) := by
  unfold output1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1814_skip : Flapjack.WordAlloc.isSkip output1814 = false := by
  rw [output1814_def]
  conv => lhs; cbv
  try rfl
theorem node1814_eq : Flapjack.WordAlloc.removeDeadStructural input1814 value742 value1 value2 = (output1814, value807, value1) := by
  rw [input1814_def, output1814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1678_eq]
  try dsimp only
  rw [node1813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1814 input1677)).val
theorem input1815_def : input1815 = (.seq input1814 input1677) := by
  unfold input1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1814 output1677)).val
theorem output1815_def : output1815 = (.seq output1814 output1677) := by
  unfold output1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1815_skip : Flapjack.WordAlloc.isSkip output1815 = false := by
  rw [output1815_def]
  conv => lhs; cbv
  try rfl
theorem node1815_eq : Flapjack.WordAlloc.removeDeadStructural input1815 value740 value1 value2 = (output1815, value807, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1677_eq]
  try dsimp only
  rw [node1814_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1815 input1674)).val
theorem input1816_def : input1816 = (.seq input1815 input1674) := by
  unfold input1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1815 output1674)).val
theorem output1816_def : output1816 = (.seq output1815 output1674) := by
  unfold output1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1816_skip : Flapjack.WordAlloc.isSkip output1816 = false := by
  rw [output1816_def]
  conv => lhs; cbv
  try rfl
theorem node1816_eq : Flapjack.WordAlloc.removeDeadStructural input1816 value739 value1 value2 = (output1816, value807, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1674_eq]
  try dsimp only
  rw [node1815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64))).val
theorem input1817_def : input1817 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)) := by
  unfold input1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1817_def : output1817 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1817_skip : Flapjack.WordAlloc.isSkip output1817 = true := by
  rw [output1817_def]
  conv => lhs; cbv
  try rfl
theorem node1817_eq : Flapjack.WordAlloc.removeDeadStructural input1817 value739 value1 value2 = (output1817, value739, value1) := by
  rw [input1817_def, output1817_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64))).val
theorem input1818_def : input1818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64)) := by
  unfold input1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1818_def : output1818 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1818_skip : Flapjack.WordAlloc.isSkip output1818 = true := by
  rw [output1818_def]
  conv => lhs; cbv
  try rfl
theorem node1818_eq : Flapjack.WordAlloc.removeDeadStructural input1818 value739 value1 value2 = (output1818, value739, value1) := by
  rw [input1818_def, output1818_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 0#64))).val
theorem input1819_def : input1819 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 0#64)) := by
  unfold input1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1819_def : output1819 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1819_skip : Flapjack.WordAlloc.isSkip output1819 = true := by
  rw [output1819_def]
  conv => lhs; cbv
  try rfl
theorem node1819_eq : Flapjack.WordAlloc.removeDeadStructural input1819 value739 value1 value2 = (output1819, value739, value1) := by
  rw [input1819_def, output1819_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64))).val
theorem input1820_def : input1820 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)) := by
  unfold input1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1820_def : output1820 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1820_skip : Flapjack.WordAlloc.isSkip output1820 = true := by
  rw [output1820_def]
  conv => lhs; cbv
  try rfl
theorem node1820_eq : Flapjack.WordAlloc.removeDeadStructural input1820 value739 value1 value2 = (output1820, value739, value1) := by
  rw [input1820_def, output1820_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1821_def : input1821 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1821_def : output1821 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1821_skip : Flapjack.WordAlloc.isSkip output1821 = true := by
  rw [output1821_def]
  conv => lhs; cbv
  try rfl
theorem node1821_eq : Flapjack.WordAlloc.removeDeadStructural input1821 value739 value1 value2 = (output1821, value739, value1) := by
  rw [input1821_def, output1821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1821 input1820)).val
theorem input1822_def : input1822 = (.seq input1821 input1820) := by
  unfold input1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1820)).val
theorem output1822_def : output1822 = (output1820) := by
  unfold output1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1822_skip : Flapjack.WordAlloc.isSkip output1822 = true := by
  rw [output1822_def]
  conv => lhs; cbv
  try rfl
theorem node1822_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value739 value1 value2 = (output1822, value739, value1) := by
  rw [input1822_def, output1822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1820_eq]
  try dsimp only
  rw [node1821_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1822 input1819)).val
theorem input1823_def : input1823 = (.seq input1822 input1819) := by
  unfold input1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1819)).val
theorem output1823_def : output1823 = (output1819) := by
  unfold output1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1823_skip : Flapjack.WordAlloc.isSkip output1823 = true := by
  rw [output1823_def]
  conv => lhs; cbv
  try rfl
theorem node1823_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value739 value1 value2 = (output1823, value739, value1) := by
  rw [input1823_def, output1823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1819_eq]
  try dsimp only
  rw [node1822_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1823 input1818)).val
theorem input1824_def : input1824 = (.seq input1823 input1818) := by
  unfold input1824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1818)).val
theorem output1824_def : output1824 = (output1818) := by
  unfold output1824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1824_skip : Flapjack.WordAlloc.isSkip output1824 = true := by
  rw [output1824_def]
  conv => lhs; cbv
  try rfl
theorem node1824_eq : Flapjack.WordAlloc.removeDeadStructural input1824 value739 value1 value2 = (output1824, value739, value1) := by
  rw [input1824_def, output1824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1818_eq]
  try dsimp only
  rw [node1823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1824 input1817)).val
theorem input1825_def : input1825 = (.seq input1824 input1817) := by
  unfold input1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1817)).val
theorem output1825_def : output1825 = (output1817) := by
  unfold output1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1825_skip : Flapjack.WordAlloc.isSkip output1825 = true := by
  rw [output1825_def]
  conv => lhs; cbv
  try rfl
theorem node1825_eq : Flapjack.WordAlloc.removeDeadStructural input1825 value739 value1 value2 = (output1825, value739, value1) := by
  rw [input1825_def, output1825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1817_eq]
  try dsimp only
  rw [node1824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(533, 241), (529, 245), (525, 289), (521, 281), (517, 285)])).val
theorem input1826_def : input1826 = (Flapjack.WordLangProgHOL.move 2 [(533, 241), (529, 245), (525, 289), (521, 281), (517, 285)]) := by
  unfold input1826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(533, 241), (529, 245)])).val
theorem output1826_def : output1826 = (Flapjack.WordLangProgHOL.move 2 [(533, 241), (529, 245)]) := by
  unfold output1826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1826_skip : Flapjack.WordAlloc.isSkip output1826 = false := by
  rw [output1826_def]
  conv => lhs; cbv
  try rfl
theorem node1826_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value739 value1 value2 = (output1826, value807, value1) := by
  rw [input1826_def, output1826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1826 input1825)).val
theorem input1827_def : input1827 = (.seq input1826 input1825) := by
  unfold input1827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1826)).val
theorem output1827_def : output1827 = (output1826) := by
  unfold output1827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1827_skip : Flapjack.WordAlloc.isSkip output1827 = false := by
  rw [output1827_def]
  conv => lhs; cbv
  try rfl
theorem node1827_eq : Flapjack.WordAlloc.removeDeadStructural input1827 value739 value1 value2 = (output1827, value807, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1825_eq]
  try dsimp only
  rw [node1826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1828_def : input1828 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1828_def : output1828 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1828_skip : Flapjack.WordAlloc.isSkip output1828 = true := by
  rw [output1828_def]
  conv => lhs; cbv
  try rfl
theorem node1828_eq : Flapjack.WordAlloc.removeDeadStructural input1828 value807 value1 value2 = (output1828, value807, value1) := by
  rw [input1828_def, output1828_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1828 input1827)).val
theorem input1829_def : input1829 = (.seq input1828 input1827) := by
  unfold input1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1827)).val
theorem output1829_def : output1829 = (output1827) := by
  unfold output1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1829_skip : Flapjack.WordAlloc.isSkip output1829 = false := by
  rw [output1829_def]
  conv => lhs; cbv
  try rfl
theorem node1829_eq : Flapjack.WordAlloc.removeDeadStructural input1829 value739 value1 value2 = (output1829, value807, value1) := by
  rw [input1829_def, output1829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1827_eq]
  try dsimp only
  rw [node1828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value808 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 289

def value809 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value214 285 value808 input1816 input1829)).val
theorem input1830_def : input1830 = (.ite value214 285 value808 input1816 input1829) := by
  unfold input1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value214 285 value808 output1816 output1829)).val
theorem output1830_def : output1830 = (.ite value214 285 value808 output1816 output1829) := by
  unfold output1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1830_skip : Flapjack.WordAlloc.isSkip output1830 = false := by
  rw [output1830_def]
  conv => lhs; cbv
  try rfl
theorem node1830_eq : Flapjack.WordAlloc.removeDeadStructural input1830 value739 value1 value2 = (output1830, value809, value1) := by
  rw [input1830_def, output1830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1816_eq]
  try dsimp only
  rw [node1829_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1830 input1663)).val
theorem input1831_def : input1831 = (.seq input1830 input1663) := by
  unfold input1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1830 output1663)).val
theorem output1831_def : output1831 = (.seq output1830 output1663) := by
  unfold output1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1831_skip : Flapjack.WordAlloc.isSkip output1831 = false := by
  rw [output1831_def]
  conv => lhs; cbv
  try rfl
theorem node1831_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value739 value1 value2 = (output1831, value809, value1) := by
  rw [input1831_def, output1831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1663_eq]
  try dsimp only
  rw [node1830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value810 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64))).val
theorem input1832_def : input1832 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)) := by
  unfold input1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64))).val
theorem output1832_def : output1832 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 1#64)) := by
  unfold output1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1832_skip : Flapjack.WordAlloc.isSkip output1832 = false := by
  rw [output1832_def]
  conv => lhs; cbv
  try rfl
theorem node1832_eq : Flapjack.WordAlloc.removeDeadStructural input1832 value809 value1 value2 = (output1832, value810, value1) := by
  rw [input1832_def, output1832_def]
  try (conv => lhs; cbv)
  try rfl

def value811 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 277)])).val
theorem input1833_def : input1833 = (Flapjack.WordLangProgHOL.move 0 [(285, 277)]) := by
  unfold input1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 277)])).val
theorem output1833_def : output1833 = (Flapjack.WordLangProgHOL.move 0 [(285, 277)]) := by
  unfold output1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1833_skip : Flapjack.WordAlloc.isSkip output1833 = false := by
  rw [output1833_def]
  conv => lhs; cbv
  try rfl
theorem node1833_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value810 value1 value2 = (output1833, value811, value1) := by
  rw [input1833_def, output1833_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1834_def : input1834 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1834_def : output1834 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1834_skip : Flapjack.WordAlloc.isSkip output1834 = false := by
  rw [output1834_def]
  conv => lhs; cbv
  try rfl
theorem node1834_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value811 value1 value2 = (output1834, value811, value1) := by
  rw [input1834_def, output1834_def]
  try (conv => lhs; cbv)
  try rfl

def value812 : Flapjack.NumSet :=
Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(269, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(277, 269)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)))),
      692, 2))
  (some 102) [2, 4, 6, 8]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(273, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 273)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(281, 273)]))),
      692, 3)))).val
theorem input1835_def : input1835 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(269, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(277, 269)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)))),
      692, 2))
  (some 102) [2, 4, 6, 8]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(273, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 273)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(281, 273)]))),
      692, 3))) := by
  unfold input1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.move 1 [(269, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(277, 269)]),
      692, 2))
  (some 102) [2, 4, 6, 8]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(273, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 273)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)),
      692, 3)))).val
theorem output1835_def : output1835 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.move 1 [(269, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(277, 269)]),
      692, 2))
  (some 102) [2, 4, 6, 8]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(233, 195), (237, 199), (241, 203), (245, 207), (249, 211), (253, 215), (257, 219), (261, 223),
              (265, 227)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(273, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 273)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)),
      692, 3))) := by
  unfold output1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1835_skip : Flapjack.WordAlloc.isSkip output1835 = false := by
  rw [output1835_def]
  conv => lhs; cbv
  try rfl
theorem node1835_eq : Flapjack.WordAlloc.removeDeadStructural input1835 value811 value1 value2 = (output1835, value812, value1) := by
  rw [input1835_def, output1835_def]
  try (conv => lhs; cbv)
  try rfl

def value813 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 177), (4, 181), (6, 185), (8, 189)])).val
theorem input1836_def : input1836 = (Flapjack.WordLangProgHOL.move 1 [(2, 177), (4, 181), (6, 185), (8, 189)]) := by
  unfold input1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 177), (4, 181), (6, 185), (8, 189)])).val
theorem output1836_def : output1836 = (Flapjack.WordLangProgHOL.move 1 [(2, 177), (4, 181), (6, 185), (8, 189)]) := by
  unfold output1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1836_skip : Flapjack.WordAlloc.isSkip output1836 = false := by
  rw [output1836_def]
  conv => lhs; cbv
  try rfl
theorem node1836_eq : Flapjack.WordAlloc.removeDeadStructural input1836 value812 value1 value2 = (output1836, value813, value1) := by
  rw [input1836_def, output1836_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1836 input1835)).val
theorem input1837_def : input1837 = (.seq input1836 input1835) := by
  unfold input1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1836 output1835)).val
theorem output1837_def : output1837 = (.seq output1836 output1835) := by
  unfold output1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1837_skip : Flapjack.WordAlloc.isSkip output1837 = false := by
  rw [output1837_def]
  conv => lhs; cbv
  try rfl
theorem node1837_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value811 value1 value2 = (output1837, value813, value1) := by
  rw [input1837_def, output1837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1835_eq]
  try dsimp only
  rw [node1836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value814 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(195, 109), (199, 189), (203, 125), (207, 117), (211, 177), (215, 181), (219, 185), (223, 129), (227, 169)])).val
theorem input1838_def : input1838 = (Flapjack.WordLangProgHOL.move 0
  [(195, 109), (199, 189), (203, 125), (207, 117), (211, 177), (215, 181), (219, 185), (223, 129), (227, 169)]) := by
  unfold input1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(195, 109), (199, 189), (203, 125), (207, 117), (211, 177), (215, 181), (219, 185), (223, 129), (227, 169)])).val
theorem output1838_def : output1838 = (Flapjack.WordLangProgHOL.move 0
  [(195, 109), (199, 189), (203, 125), (207, 117), (211, 177), (215, 181), (219, 185), (223, 129), (227, 169)]) := by
  unfold output1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1838_skip : Flapjack.WordAlloc.isSkip output1838 = false := by
  rw [output1838_def]
  conv => lhs; cbv
  try rfl
theorem node1838_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value813 value1 value2 = (output1838, value814, value1) := by
  rw [input1838_def, output1838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1838 input1837)).val
theorem input1839_def : input1839 = (.seq input1838 input1837) := by
  unfold input1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1838 output1837)).val
theorem output1839_def : output1839 = (.seq output1838 output1837) := by
  unfold output1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1839_skip : Flapjack.WordAlloc.isSkip output1839 = false := by
  rw [output1839_def]
  conv => lhs; cbv
  try rfl
theorem node1839_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value811 value1 value2 = (output1839, value814, value1) := by
  rw [input1839_def, output1839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1837_eq]
  try dsimp only
  rw [node1838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 173)])).val
theorem input1840_def : input1840 = (Flapjack.WordLangProgHOL.move 0 [(189, 173)]) := by
  unfold input1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 173)])).val
theorem output1840_def : output1840 = (Flapjack.WordLangProgHOL.move 0 [(189, 173)]) := by
  unfold output1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1840_skip : Flapjack.WordAlloc.isSkip output1840 = false := by
  rw [output1840_def]
  conv => lhs; cbv
  try rfl
theorem node1840_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value814 value1 value2 = (output1840, value815, value1) := by
  rw [input1840_def, output1840_def]
  try (conv => lhs; cbv)
  try rfl

def value816 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 165)])).val
theorem input1841_def : input1841 = (Flapjack.WordLangProgHOL.move 0 [(185, 165)]) := by
  unfold input1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 165)])).val
theorem output1841_def : output1841 = (Flapjack.WordLangProgHOL.move 0 [(185, 165)]) := by
  unfold output1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1841_skip : Flapjack.WordAlloc.isSkip output1841 = false := by
  rw [output1841_def]
  conv => lhs; cbv
  try rfl
theorem node1841_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value815 value1 value2 = (output1841, value816, value1) := by
  rw [input1841_def, output1841_def]
  try (conv => lhs; cbv)
  try rfl

def value817 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(181, 157)])).val
theorem input1842_def : input1842 = (Flapjack.WordLangProgHOL.move 0 [(181, 157)]) := by
  unfold input1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(181, 157)])).val
theorem output1842_def : output1842 = (Flapjack.WordLangProgHOL.move 0 [(181, 157)]) := by
  unfold output1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1842_skip : Flapjack.WordAlloc.isSkip output1842 = false := by
  rw [output1842_def]
  conv => lhs; cbv
  try rfl
theorem node1842_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value816 value1 value2 = (output1842, value817, value1) := by
  rw [input1842_def, output1842_def]
  try (conv => lhs; cbv)
  try rfl

def value818 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(177, 149)])).val
theorem input1843_def : input1843 = (Flapjack.WordLangProgHOL.move 0 [(177, 149)]) := by
  unfold input1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(177, 149)])).val
theorem output1843_def : output1843 = (Flapjack.WordLangProgHOL.move 0 [(177, 149)]) := by
  unfold output1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1843_skip : Flapjack.WordAlloc.isSkip output1843 = false := by
  rw [output1843_def]
  conv => lhs; cbv
  try rfl
theorem node1843_eq : Flapjack.WordAlloc.removeDeadStructural input1843 value817 value1 value2 = (output1843, value818, value1) := by
  rw [input1843_def, output1843_def]
  try (conv => lhs; cbv)
  try rfl

def value819 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 88#64)))).val
theorem input1844_def : input1844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 88#64))) := by
  unfold input1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 88#64)))).val
theorem output1844_def : output1844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 88#64))) := by
  unfold output1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1844_skip : Flapjack.WordAlloc.isSkip output1844 = false := by
  rw [output1844_def]
  conv => lhs; cbv
  try rfl
theorem node1844_eq : Flapjack.WordAlloc.removeDeadStructural input1844 value818 value1 value2 = (output1844, value819, value1) := by
  rw [input1844_def, output1844_def]
  try (conv => lhs; cbv)
  try rfl

def value820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(169, 161)])).val
theorem input1845_def : input1845 = (Flapjack.WordLangProgHOL.move 0 [(169, 161)]) := by
  unfold input1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(169, 161)])).val
theorem output1845_def : output1845 = (Flapjack.WordLangProgHOL.move 0 [(169, 161)]) := by
  unfold output1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1845_skip : Flapjack.WordAlloc.isSkip output1845 = false := by
  rw [output1845_def]
  conv => lhs; cbv
  try rfl
theorem node1845_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value819 value1 value2 = (output1845, value820, value1) := by
  rw [input1845_def, output1845_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1845 input1844)).val
theorem input1846_def : input1846 = (.seq input1845 input1844) := by
  unfold input1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1845 output1844)).val
theorem output1846_def : output1846 = (.seq output1845 output1844) := by
  unfold output1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1846_skip : Flapjack.WordAlloc.isSkip output1846 = false := by
  rw [output1846_def]
  conv => lhs; cbv
  try rfl
theorem node1846_eq : Flapjack.WordAlloc.removeDeadStructural input1846 value818 value1 value2 = (output1846, value820, value1) := by
  rw [input1846_def, output1846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1844_eq]
  try dsimp only
  rw [node1845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value821 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 80#64)))).val
theorem input1847_def : input1847 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 80#64))) := by
  unfold input1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 80#64)))).val
theorem output1847_def : output1847 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 165 (Flapjack.WordLangAddr.addr 161 80#64))) := by
  unfold output1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1847_skip : Flapjack.WordAlloc.isSkip output1847 = false := by
  rw [output1847_def]
  conv => lhs; cbv
  try rfl
theorem node1847_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value820 value1 value2 = (output1847, value821, value1) := by
  rw [input1847_def, output1847_def]
  try (conv => lhs; cbv)
  try rfl

def value822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(161, 153)])).val
theorem input1848_def : input1848 = (Flapjack.WordLangProgHOL.move 0 [(161, 153)]) := by
  unfold input1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(161, 153)])).val
theorem output1848_def : output1848 = (Flapjack.WordLangProgHOL.move 0 [(161, 153)]) := by
  unfold output1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1848_skip : Flapjack.WordAlloc.isSkip output1848 = false := by
  rw [output1848_def]
  conv => lhs; cbv
  try rfl
theorem node1848_eq : Flapjack.WordAlloc.removeDeadStructural input1848 value821 value1 value2 = (output1848, value822, value1) := by
  rw [input1848_def, output1848_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1848 input1847)).val
theorem input1849_def : input1849 = (.seq input1848 input1847) := by
  unfold input1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1848 output1847)).val
theorem output1849_def : output1849 = (.seq output1848 output1847) := by
  unfold output1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1849_skip : Flapjack.WordAlloc.isSkip output1849 = false := by
  rw [output1849_def]
  conv => lhs; cbv
  try rfl
theorem node1849_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value820 value1 value2 = (output1849, value822, value1) := by
  rw [input1849_def, output1849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1847_eq]
  try dsimp only
  rw [node1848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value823 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 72#64)))).val
theorem input1850_def : input1850 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 72#64))) := by
  unfold input1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 72#64)))).val
theorem output1850_def : output1850 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 157 (Flapjack.WordLangAddr.addr 153 72#64))) := by
  unfold output1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1850_skip : Flapjack.WordAlloc.isSkip output1850 = false := by
  rw [output1850_def]
  conv => lhs; cbv
  try rfl
theorem node1850_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value822 value1 value2 = (output1850, value823, value1) := by
  rw [input1850_def, output1850_def]
  try (conv => lhs; cbv)
  try rfl

def value824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(153, 145)])).val
theorem input1851_def : input1851 = (Flapjack.WordLangProgHOL.move 0 [(153, 145)]) := by
  unfold input1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(153, 145)])).val
theorem output1851_def : output1851 = (Flapjack.WordLangProgHOL.move 0 [(153, 145)]) := by
  unfold output1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1851_skip : Flapjack.WordAlloc.isSkip output1851 = false := by
  rw [output1851_def]
  conv => lhs; cbv
  try rfl
theorem node1851_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value823 value1 value2 = (output1851, value824, value1) := by
  rw [input1851_def, output1851_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1851 input1850)).val
theorem input1852_def : input1852 = (.seq input1851 input1850) := by
  unfold input1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1851 output1850)).val
theorem output1852_def : output1852 = (.seq output1851 output1850) := by
  unfold output1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1852_skip : Flapjack.WordAlloc.isSkip output1852 = false := by
  rw [output1852_def]
  conv => lhs; cbv
  try rfl
theorem node1852_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value822 value1 value2 = (output1852, value824, value1) := by
  rw [input1852_def, output1852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1850_eq]
  try dsimp only
  rw [node1851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 64#64)))).val
theorem input1853_def : input1853 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 64#64))) := by
  unfold input1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 64#64)))).val
theorem output1853_def : output1853 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 149 (Flapjack.WordLangAddr.addr 145 64#64))) := by
  unfold output1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1853_skip : Flapjack.WordAlloc.isSkip output1853 = false := by
  rw [output1853_def]
  conv => lhs; cbv
  try rfl
theorem node1853_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value824 value1 value2 = (output1853, value825, value1) := by
  rw [input1853_def, output1853_def]
  try (conv => lhs; cbv)
  try rfl

def value826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(145, 121)])).val
theorem input1854_def : input1854 = (Flapjack.WordLangProgHOL.move 0 [(145, 121)]) := by
  unfold input1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(145, 121)])).val
theorem output1854_def : output1854 = (Flapjack.WordLangProgHOL.move 0 [(145, 121)]) := by
  unfold output1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1854_skip : Flapjack.WordAlloc.isSkip output1854 = false := by
  rw [output1854_def]
  conv => lhs; cbv
  try rfl
theorem node1854_eq : Flapjack.WordAlloc.removeDeadStructural input1854 value825 value1 value2 = (output1854, value826, value1) := by
  rw [input1854_def, output1854_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1854 input1853)).val
theorem input1855_def : input1855 = (.seq input1854 input1853) := by
  unfold input1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1854 output1853)).val
theorem output1855_def : output1855 = (.seq output1854 output1853) := by
  unfold output1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1855_skip : Flapjack.WordAlloc.isSkip output1855 = false := by
  rw [output1855_def]
  conv => lhs; cbv
  try rfl
theorem node1855_eq : Flapjack.WordAlloc.removeDeadStructural input1855 value824 value1 value2 = (output1855, value826, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1853_eq]
  try dsimp only
  rw [node1854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 1#64))).val
theorem input1856_def : input1856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 1#64)) := by
  unfold input1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1856_def : output1856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1856_skip : Flapjack.WordAlloc.isSkip output1856 = true := by
  rw [output1856_def]
  conv => lhs; cbv
  try rfl
theorem node1856_eq : Flapjack.WordAlloc.removeDeadStructural input1856 value826 value1 value2 = (output1856, value826, value1) := by
  rw [input1856_def, output1856_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1857_def : input1857 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1857_def : output1857 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1857_skip : Flapjack.WordAlloc.isSkip output1857 = false := by
  rw [output1857_def]
  conv => lhs; cbv
  try rfl
theorem node1857_eq : Flapjack.WordAlloc.removeDeadStructural input1857 value826 value1 value2 = (output1857, value826, value1) := by
  rw [input1857_def, output1857_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 1#64))).val
theorem input1858_def : input1858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 1#64)) := by
  unfold input1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1858_def : output1858 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1858_skip : Flapjack.WordAlloc.isSkip output1858 = true := by
  rw [output1858_def]
  conv => lhs; cbv
  try rfl
theorem node1858_eq : Flapjack.WordAlloc.removeDeadStructural input1858 value826 value1 value2 = (output1858, value826, value1) := by
  rw [input1858_def, output1858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1858 input1857)).val
theorem input1859_def : input1859 = (.seq input1858 input1857) := by
  unfold input1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1857)).val
theorem output1859_def : output1859 = (output1857) := by
  unfold output1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1859_skip : Flapjack.WordAlloc.isSkip output1859 = false := by
  rw [output1859_def]
  conv => lhs; cbv
  try rfl
theorem node1859_eq : Flapjack.WordAlloc.removeDeadStructural input1859 value826 value1 value2 = (output1859, value826, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1857_eq]
  try dsimp only
  rw [node1858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1859 input1856)).val
theorem input1860_def : input1860 = (.seq input1859 input1856) := by
  unfold input1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1859)).val
theorem output1860_def : output1860 = (output1859) := by
  unfold output1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1860_skip : Flapjack.WordAlloc.isSkip output1860 = false := by
  rw [output1860_def]
  conv => lhs; cbv
  try rfl
theorem node1860_eq : Flapjack.WordAlloc.removeDeadStructural input1860 value826 value1 value2 = (output1860, value826, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1856_eq]
  try dsimp only
  rw [node1859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1860 input1855)).val
theorem input1861_def : input1861 = (.seq input1860 input1855) := by
  unfold input1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1860 output1855)).val
theorem output1861_def : output1861 = (.seq output1860 output1855) := by
  unfold output1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1861_skip : Flapjack.WordAlloc.isSkip output1861 = false := by
  rw [output1861_def]
  conv => lhs; cbv
  try rfl
theorem node1861_eq : Flapjack.WordAlloc.removeDeadStructural input1861 value824 value1 value2 = (output1861, value826, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1855_eq]
  try dsimp only
  rw [node1860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1861 input1852)).val
theorem input1862_def : input1862 = (.seq input1861 input1852) := by
  unfold input1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1861 output1852)).val
theorem output1862_def : output1862 = (.seq output1861 output1852) := by
  unfold output1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1862_skip : Flapjack.WordAlloc.isSkip output1862 = false := by
  rw [output1862_def]
  conv => lhs; cbv
  try rfl
theorem node1862_eq : Flapjack.WordAlloc.removeDeadStructural input1862 value822 value1 value2 = (output1862, value826, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1852_eq]
  try dsimp only
  rw [node1861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1862 input1849)).val
theorem input1863_def : input1863 = (.seq input1862 input1849) := by
  unfold input1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1862 output1849)).val
theorem output1863_def : output1863 = (.seq output1862 output1849) := by
  unfold output1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1863_skip : Flapjack.WordAlloc.isSkip output1863 = false := by
  rw [output1863_def]
  conv => lhs; cbv
  try rfl
theorem node1863_eq : Flapjack.WordAlloc.removeDeadStructural input1863 value820 value1 value2 = (output1863, value826, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1849_eq]
  try dsimp only
  rw [node1862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1863 input1846)).val
theorem input1864_def : input1864 = (.seq input1863 input1846) := by
  unfold input1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1863 output1846)).val
theorem output1864_def : output1864 = (.seq output1863 output1846) := by
  unfold output1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1864_skip : Flapjack.WordAlloc.isSkip output1864 = false := by
  rw [output1864_def]
  conv => lhs; cbv
  try rfl
theorem node1864_eq : Flapjack.WordAlloc.removeDeadStructural input1864 value818 value1 value2 = (output1864, value826, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1846_eq]
  try dsimp only
  rw [node1863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1864 input1843)).val
theorem input1865_def : input1865 = (.seq input1864 input1843) := by
  unfold input1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1864 output1843)).val
theorem output1865_def : output1865 = (.seq output1864 output1843) := by
  unfold output1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1865_skip : Flapjack.WordAlloc.isSkip output1865 = false := by
  rw [output1865_def]
  conv => lhs; cbv
  try rfl
theorem node1865_eq : Flapjack.WordAlloc.removeDeadStructural input1865 value817 value1 value2 = (output1865, value826, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1843_eq]
  try dsimp only
  rw [node1864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1865 input1842)).val
theorem input1866_def : input1866 = (.seq input1865 input1842) := by
  unfold input1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1865 output1842)).val
theorem output1866_def : output1866 = (.seq output1865 output1842) := by
  unfold output1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1866_skip : Flapjack.WordAlloc.isSkip output1866 = false := by
  rw [output1866_def]
  conv => lhs; cbv
  try rfl
theorem node1866_eq : Flapjack.WordAlloc.removeDeadStructural input1866 value816 value1 value2 = (output1866, value826, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1842_eq]
  try dsimp only
  rw [node1865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1866 input1841)).val
theorem input1867_def : input1867 = (.seq input1866 input1841) := by
  unfold input1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1866 output1841)).val
theorem output1867_def : output1867 = (.seq output1866 output1841) := by
  unfold output1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1867_skip : Flapjack.WordAlloc.isSkip output1867 = false := by
  rw [output1867_def]
  conv => lhs; cbv
  try rfl
theorem node1867_eq : Flapjack.WordAlloc.removeDeadStructural input1867 value815 value1 value2 = (output1867, value826, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1841_eq]
  try dsimp only
  rw [node1866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1867 input1840)).val
theorem input1868_def : input1868 = (.seq input1867 input1840) := by
  unfold input1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1867 output1840)).val
theorem output1868_def : output1868 = (.seq output1867 output1840) := by
  unfold output1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1868_skip : Flapjack.WordAlloc.isSkip output1868 = false := by
  rw [output1868_def]
  conv => lhs; cbv
  try rfl
theorem node1868_eq : Flapjack.WordAlloc.removeDeadStructural input1868 value814 value1 value2 = (output1868, value826, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1840_eq]
  try dsimp only
  rw [node1867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1868 input1839)).val
theorem input1869_def : input1869 = (.seq input1868 input1839) := by
  unfold input1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1868 output1839)).val
theorem output1869_def : output1869 = (.seq output1868 output1839) := by
  unfold output1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1869_skip : Flapjack.WordAlloc.isSkip output1869 = false := by
  rw [output1869_def]
  conv => lhs; cbv
  try rfl
theorem node1869_eq : Flapjack.WordAlloc.removeDeadStructural input1869 value811 value1 value2 = (output1869, value826, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1839_eq]
  try dsimp only
  rw [node1868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1869 input1834)).val
theorem input1870_def : input1870 = (.seq input1869 input1834) := by
  unfold input1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1869 output1834)).val
theorem output1870_def : output1870 = (.seq output1869 output1834) := by
  unfold output1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1870_skip : Flapjack.WordAlloc.isSkip output1870 = false := by
  rw [output1870_def]
  conv => lhs; cbv
  try rfl
theorem node1870_eq : Flapjack.WordAlloc.removeDeadStructural input1870 value811 value1 value2 = (output1870, value826, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1834_eq]
  try dsimp only
  rw [node1869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1870 input1833)).val
theorem input1871_def : input1871 = (.seq input1870 input1833) := by
  unfold input1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1870 output1833)).val
theorem output1871_def : output1871 = (.seq output1870 output1833) := by
  unfold output1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1871_skip : Flapjack.WordAlloc.isSkip output1871 = false := by
  rw [output1871_def]
  conv => lhs; cbv
  try rfl
theorem node1871_eq : Flapjack.WordAlloc.removeDeadStructural input1871 value810 value1 value2 = (output1871, value826, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1833_eq]
  try dsimp only
  rw [node1870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1871 input1832)).val
theorem input1872_def : input1872 = (.seq input1871 input1832) := by
  unfold input1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1871 output1832)).val
theorem output1872_def : output1872 = (.seq output1871 output1832) := by
  unfold output1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1872_skip : Flapjack.WordAlloc.isSkip output1872 = false := by
  rw [output1872_def]
  conv => lhs; cbv
  try rfl
theorem node1872_eq : Flapjack.WordAlloc.removeDeadStructural input1872 value809 value1 value2 = (output1872, value826, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1832_eq]
  try dsimp only
  rw [node1871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1872 input1831)).val
theorem input1873_def : input1873 = (.seq input1872 input1831) := by
  unfold input1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1872 output1831)).val
theorem output1873_def : output1873 = (.seq output1872 output1831) := by
  unfold output1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1873_skip : Flapjack.WordAlloc.isSkip output1873 = false := by
  rw [output1873_def]
  conv => lhs; cbv
  try rfl
theorem node1873_eq : Flapjack.WordAlloc.removeDeadStructural input1873 value739 value1 value2 = (output1873, value826, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1831_eq]
  try dsimp only
  rw [node1872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1873 input1658)).val
theorem input1874_def : input1874 = (.seq input1873 input1658) := by
  unfold input1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1873 output1658)).val
theorem output1874_def : output1874 = (.seq output1873 output1658) := by
  unfold output1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1874_skip : Flapjack.WordAlloc.isSkip output1874 = false := by
  rw [output1874_def]
  conv => lhs; cbv
  try rfl
theorem node1874_eq : Flapjack.WordAlloc.removeDeadStructural input1874 value739 value1 value2 = (output1874, value826, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1658_eq]
  try dsimp only
  rw [node1873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1874 input1657)).val
theorem input1875_def : input1875 = (.seq input1874 input1657) := by
  unfold input1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1874 output1657)).val
theorem output1875_def : output1875 = (.seq output1874 output1657) := by
  unfold output1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1875_skip : Flapjack.WordAlloc.isSkip output1875 = false := by
  rw [output1875_def]
  conv => lhs; cbv
  try rfl
theorem node1875_eq : Flapjack.WordAlloc.removeDeadStructural input1875 value737 value1 value2 = (output1875, value826, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1657_eq]
  try dsimp only
  rw [node1874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1875 input1654)).val
theorem input1876_def : input1876 = (.seq input1875 input1654) := by
  unfold input1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1875 output1654)).val
theorem output1876_def : output1876 = (.seq output1875 output1654) := by
  unfold output1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1876_skip : Flapjack.WordAlloc.isSkip output1876 = false := by
  rw [output1876_def]
  conv => lhs; cbv
  try rfl
theorem node1876_eq : Flapjack.WordAlloc.removeDeadStructural input1876 value735 value1 value2 = (output1876, value826, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1654_eq]
  try dsimp only
  rw [node1875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1876 input1651)).val
theorem input1877_def : input1877 = (.seq input1876 input1651) := by
  unfold input1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1876 output1651)).val
theorem output1877_def : output1877 = (.seq output1876 output1651) := by
  unfold output1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1877_skip : Flapjack.WordAlloc.isSkip output1877 = false := by
  rw [output1877_def]
  conv => lhs; cbv
  try rfl
theorem node1877_eq : Flapjack.WordAlloc.removeDeadStructural input1877 value733 value1 value2 = (output1877, value826, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1651_eq]
  try dsimp only
  rw [node1876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1877 input1648)).val
theorem input1878_def : input1878 = (.seq input1877 input1648) := by
  unfold input1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1877 output1648)).val
theorem output1878_def : output1878 = (.seq output1877 output1648) := by
  unfold output1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1878_skip : Flapjack.WordAlloc.isSkip output1878 = false := by
  rw [output1878_def]
  conv => lhs; cbv
  try rfl
theorem node1878_eq : Flapjack.WordAlloc.removeDeadStructural input1878 value731 value1 value2 = (output1878, value826, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1648_eq]
  try dsimp only
  rw [node1877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1878 input1645)).val
theorem input1879_def : input1879 = (.seq input1878 input1645) := by
  unfold input1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1878 output1645)).val
theorem output1879_def : output1879 = (.seq output1878 output1645) := by
  unfold output1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1879_skip : Flapjack.WordAlloc.isSkip output1879 = false := by
  rw [output1879_def]
  conv => lhs; cbv
  try rfl
theorem node1879_eq : Flapjack.WordAlloc.removeDeadStructural input1879 value730 value1 value2 = (output1879, value826, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1645_eq]
  try dsimp only
  rw [node1878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1879 input1644)).val
theorem input1880_def : input1880 = (.seq input1879 input1644) := by
  unfold input1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1879 output1644)).val
theorem output1880_def : output1880 = (.seq output1879 output1644) := by
  unfold output1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1880_skip : Flapjack.WordAlloc.isSkip output1880 = false := by
  rw [output1880_def]
  conv => lhs; cbv
  try rfl
theorem node1880_eq : Flapjack.WordAlloc.removeDeadStructural input1880 value729 value1 value2 = (output1880, value826, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1644_eq]
  try dsimp only
  rw [node1879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1880 input1643)).val
theorem input1881_def : input1881 = (.seq input1880 input1643) := by
  unfold input1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1880 output1643)).val
theorem output1881_def : output1881 = (.seq output1880 output1643) := by
  unfold output1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1881_skip : Flapjack.WordAlloc.isSkip output1881 = false := by
  rw [output1881_def]
  conv => lhs; cbv
  try rfl
theorem node1881_eq : Flapjack.WordAlloc.removeDeadStructural input1881 value728 value1 value2 = (output1881, value826, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1643_eq]
  try dsimp only
  rw [node1880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1881 input1642)).val
theorem input1882_def : input1882 = (.seq input1881 input1642) := by
  unfold input1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1881 output1642)).val
theorem output1882_def : output1882 = (.seq output1881 output1642) := by
  unfold output1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1882_skip : Flapjack.WordAlloc.isSkip output1882 = false := by
  rw [output1882_def]
  conv => lhs; cbv
  try rfl
theorem node1882_eq : Flapjack.WordAlloc.removeDeadStructural input1882 value727 value1 value2 = (output1882, value826, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1642_eq]
  try dsimp only
  rw [node1881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1882 input1641)).val
theorem input1883_def : input1883 = (.seq input1882 input1641) := by
  unfold input1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1882 output1641)).val
theorem output1883_def : output1883 = (.seq output1882 output1641) := by
  unfold output1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1883_skip : Flapjack.WordAlloc.isSkip output1883 = false := by
  rw [output1883_def]
  conv => lhs; cbv
  try rfl
theorem node1883_eq : Flapjack.WordAlloc.removeDeadStructural input1883 value724 value1 value2 = (output1883, value826, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1641_eq]
  try dsimp only
  rw [node1882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1883 input1636)).val
theorem input1884_def : input1884 = (.seq input1883 input1636) := by
  unfold input1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1883 output1636)).val
theorem output1884_def : output1884 = (.seq output1883 output1636) := by
  unfold output1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1884_skip : Flapjack.WordAlloc.isSkip output1884 = false := by
  rw [output1884_def]
  conv => lhs; cbv
  try rfl
theorem node1884_eq : Flapjack.WordAlloc.removeDeadStructural input1884 value724 value1 value2 = (output1884, value826, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1636_eq]
  try dsimp only
  rw [node1883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1884 input1635)).val
theorem input1885_def : input1885 = (.seq input1884 input1635) := by
  unfold input1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1884 output1635)).val
theorem output1885_def : output1885 = (.seq output1884 output1635) := by
  unfold output1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1885_skip : Flapjack.WordAlloc.isSkip output1885 = false := by
  rw [output1885_def]
  conv => lhs; cbv
  try rfl
theorem node1885_eq : Flapjack.WordAlloc.removeDeadStructural input1885 value723 value1 value2 = (output1885, value826, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1635_eq]
  try dsimp only
  rw [node1884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1885 input1634)).val
theorem input1886_def : input1886 = (.seq input1885 input1634) := by
  unfold input1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1885 output1634)).val
theorem output1886_def : output1886 = (.seq output1885 output1634) := by
  unfold output1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1886_skip : Flapjack.WordAlloc.isSkip output1886 = false := by
  rw [output1886_def]
  conv => lhs; cbv
  try rfl
theorem node1886_eq : Flapjack.WordAlloc.removeDeadStructural input1886 value722 value1 value2 = (output1886, value826, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1634_eq]
  try dsimp only
  rw [node1885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1886 input1633)).val
theorem input1887_def : input1887 = (.seq input1886 input1633) := by
  unfold input1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1886 output1633)).val
theorem output1887_def : output1887 = (.seq output1886 output1633) := by
  unfold output1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1887_skip : Flapjack.WordAlloc.isSkip output1887 = false := by
  rw [output1887_def]
  conv => lhs; cbv
  try rfl
theorem node1887_eq : Flapjack.WordAlloc.removeDeadStructural input1887 value652 value1 value2 = (output1887, value826, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1633_eq]
  try dsimp only
  rw [node1886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1887 input1460)).val
theorem input1888_def : input1888 = (.seq input1887 input1460) := by
  unfold input1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1887 output1460)).val
theorem output1888_def : output1888 = (.seq output1887 output1460) := by
  unfold output1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1888_skip : Flapjack.WordAlloc.isSkip output1888 = false := by
  rw [output1888_def]
  conv => lhs; cbv
  try rfl
theorem node1888_eq : Flapjack.WordAlloc.removeDeadStructural input1888 value652 value1 value2 = (output1888, value826, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1460_eq]
  try dsimp only
  rw [node1887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1888 input1459)).val
theorem input1889_def : input1889 = (.seq input1888 input1459) := by
  unfold input1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1888 output1459)).val
theorem output1889_def : output1889 = (.seq output1888 output1459) := by
  unfold output1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1889_skip : Flapjack.WordAlloc.isSkip output1889 = false := by
  rw [output1889_def]
  conv => lhs; cbv
  try rfl
theorem node1889_eq : Flapjack.WordAlloc.removeDeadStructural input1889 value650 value1 value2 = (output1889, value826, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1459_eq]
  try dsimp only
  rw [node1888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1889 input1456)).val
theorem input1890_def : input1890 = (.seq input1889 input1456) := by
  unfold input1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1889 output1456)).val
theorem output1890_def : output1890 = (.seq output1889 output1456) := by
  unfold output1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1890_skip : Flapjack.WordAlloc.isSkip output1890 = false := by
  rw [output1890_def]
  conv => lhs; cbv
  try rfl
theorem node1890_eq : Flapjack.WordAlloc.removeDeadStructural input1890 value648 value1 value2 = (output1890, value826, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1456_eq]
  try dsimp only
  rw [node1889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1890 input1453)).val
theorem input1891_def : input1891 = (.seq input1890 input1453) := by
  unfold input1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1890 output1453)).val
theorem output1891_def : output1891 = (.seq output1890 output1453) := by
  unfold output1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1891_skip : Flapjack.WordAlloc.isSkip output1891 = false := by
  rw [output1891_def]
  conv => lhs; cbv
  try rfl
theorem node1891_eq : Flapjack.WordAlloc.removeDeadStructural input1891 value646 value1 value2 = (output1891, value826, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1453_eq]
  try dsimp only
  rw [node1890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1891 input1450)).val
theorem input1892_def : input1892 = (.seq input1891 input1450) := by
  unfold input1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1891 output1450)).val
theorem output1892_def : output1892 = (.seq output1891 output1450) := by
  unfold output1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1892_skip : Flapjack.WordAlloc.isSkip output1892 = false := by
  rw [output1892_def]
  conv => lhs; cbv
  try rfl
theorem node1892_eq : Flapjack.WordAlloc.removeDeadStructural input1892 value644 value1 value2 = (output1892, value826, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1450_eq]
  try dsimp only
  rw [node1891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1892 input1447)).val
theorem input1893_def : input1893 = (.seq input1892 input1447) := by
  unfold input1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1892 output1447)).val
theorem output1893_def : output1893 = (.seq output1892 output1447) := by
  unfold output1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1893_skip : Flapjack.WordAlloc.isSkip output1893 = false := by
  rw [output1893_def]
  conv => lhs; cbv
  try rfl
theorem node1893_eq : Flapjack.WordAlloc.removeDeadStructural input1893 value642 value1 value2 = (output1893, value826, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1447_eq]
  try dsimp only
  rw [node1892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1893 input1444)).val
theorem input1894_def : input1894 = (.seq input1893 input1444) := by
  unfold input1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1893 output1444)).val
theorem output1894_def : output1894 = (.seq output1893 output1444) := by
  unfold output1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1894_skip : Flapjack.WordAlloc.isSkip output1894 = false := by
  rw [output1894_def]
  conv => lhs; cbv
  try rfl
theorem node1894_eq : Flapjack.WordAlloc.removeDeadStructural input1894 value640 value1 value2 = (output1894, value826, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1444_eq]
  try dsimp only
  rw [node1893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1894 input1441)).val
theorem input1895_def : input1895 = (.seq input1894 input1441) := by
  unfold input1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1894 output1441)).val
theorem output1895_def : output1895 = (.seq output1894 output1441) := by
  unfold output1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1895_skip : Flapjack.WordAlloc.isSkip output1895 = false := by
  rw [output1895_def]
  conv => lhs; cbv
  try rfl
theorem node1895_eq : Flapjack.WordAlloc.removeDeadStructural input1895 value638 value1 value2 = (output1895, value826, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1441_eq]
  try dsimp only
  rw [node1894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1895 input1438)).val
theorem input1896_def : input1896 = (.seq input1895 input1438) := by
  unfold input1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1895 output1438)).val
theorem output1896_def : output1896 = (.seq output1895 output1438) := by
  unfold output1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1896_skip : Flapjack.WordAlloc.isSkip output1896 = false := by
  rw [output1896_def]
  conv => lhs; cbv
  try rfl
theorem node1896_eq : Flapjack.WordAlloc.removeDeadStructural input1896 value636 value1 value2 = (output1896, value826, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1438_eq]
  try dsimp only
  rw [node1895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1896 input1435)).val
theorem input1897_def : input1897 = (.seq input1896 input1435) := by
  unfold input1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1896 output1435)).val
theorem output1897_def : output1897 = (.seq output1896 output1435) := by
  unfold output1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1897_skip : Flapjack.WordAlloc.isSkip output1897 = false := by
  rw [output1897_def]
  conv => lhs; cbv
  try rfl
theorem node1897_eq : Flapjack.WordAlloc.removeDeadStructural input1897 value634 value1 value2 = (output1897, value826, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1435_eq]
  try dsimp only
  rw [node1896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1897 input1432)).val
theorem input1898_def : input1898 = (.seq input1897 input1432) := by
  unfold input1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1897 output1432)).val
theorem output1898_def : output1898 = (.seq output1897 output1432) := by
  unfold output1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1898_skip : Flapjack.WordAlloc.isSkip output1898 = false := by
  rw [output1898_def]
  conv => lhs; cbv
  try rfl
theorem node1898_eq : Flapjack.WordAlloc.removeDeadStructural input1898 value632 value1 value2 = (output1898, value826, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1432_eq]
  try dsimp only
  rw [node1897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1898 input1429)).val
theorem input1899_def : input1899 = (.seq input1898 input1429) := by
  unfold input1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1898 output1429)).val
theorem output1899_def : output1899 = (.seq output1898 output1429) := by
  unfold output1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1899_skip : Flapjack.WordAlloc.isSkip output1899 = false := by
  rw [output1899_def]
  conv => lhs; cbv
  try rfl
theorem node1899_eq : Flapjack.WordAlloc.removeDeadStructural input1899 value630 value1 value2 = (output1899, value826, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1429_eq]
  try dsimp only
  rw [node1898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1899 input1426)).val
theorem input1900_def : input1900 = (.seq input1899 input1426) := by
  unfold input1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1899 output1426)).val
theorem output1900_def : output1900 = (.seq output1899 output1426) := by
  unfold output1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1900_skip : Flapjack.WordAlloc.isSkip output1900 = false := by
  rw [output1900_def]
  conv => lhs; cbv
  try rfl
theorem node1900_eq : Flapjack.WordAlloc.removeDeadStructural input1900 value628 value1 value2 = (output1900, value826, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1426_eq]
  try dsimp only
  rw [node1899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1900 input1423)).val
theorem input1901_def : input1901 = (.seq input1900 input1423) := by
  unfold input1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1900 output1423)).val
theorem output1901_def : output1901 = (.seq output1900 output1423) := by
  unfold output1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1901_skip : Flapjack.WordAlloc.isSkip output1901 = false := by
  rw [output1901_def]
  conv => lhs; cbv
  try rfl
theorem node1901_eq : Flapjack.WordAlloc.removeDeadStructural input1901 value626 value1 value2 = (output1901, value826, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1423_eq]
  try dsimp only
  rw [node1900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1901 input1420)).val
theorem input1902_def : input1902 = (.seq input1901 input1420) := by
  unfold input1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1901 output1420)).val
theorem output1902_def : output1902 = (.seq output1901 output1420) := by
  unfold output1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1902_skip : Flapjack.WordAlloc.isSkip output1902 = false := by
  rw [output1902_def]
  conv => lhs; cbv
  try rfl
theorem node1902_eq : Flapjack.WordAlloc.removeDeadStructural input1902 value624 value1 value2 = (output1902, value826, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1420_eq]
  try dsimp only
  rw [node1901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1902 input1417)).val
theorem input1903_def : input1903 = (.seq input1902 input1417) := by
  unfold input1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1902 output1417)).val
theorem output1903_def : output1903 = (.seq output1902 output1417) := by
  unfold output1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1903_skip : Flapjack.WordAlloc.isSkip output1903 = false := by
  rw [output1903_def]
  conv => lhs; cbv
  try rfl
theorem node1903_eq : Flapjack.WordAlloc.removeDeadStructural input1903 value622 value1 value2 = (output1903, value826, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1417_eq]
  try dsimp only
  rw [node1902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1903 input1414)).val
theorem input1904_def : input1904 = (.seq input1903 input1414) := by
  unfold input1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1903 output1414)).val
theorem output1904_def : output1904 = (.seq output1903 output1414) := by
  unfold output1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1904_skip : Flapjack.WordAlloc.isSkip output1904 = false := by
  rw [output1904_def]
  conv => lhs; cbv
  try rfl
theorem node1904_eq : Flapjack.WordAlloc.removeDeadStructural input1904 value620 value1 value2 = (output1904, value826, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1414_eq]
  try dsimp only
  rw [node1903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1904 input1411)).val
theorem input1905_def : input1905 = (.seq input1904 input1411) := by
  unfold input1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1904 output1411)).val
theorem output1905_def : output1905 = (.seq output1904 output1411) := by
  unfold output1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1905_skip : Flapjack.WordAlloc.isSkip output1905 = false := by
  rw [output1905_def]
  conv => lhs; cbv
  try rfl
theorem node1905_eq : Flapjack.WordAlloc.removeDeadStructural input1905 value619 value1 value2 = (output1905, value826, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1411_eq]
  try dsimp only
  rw [node1904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1905 input1410)).val
theorem input1906_def : input1906 = (.seq input1905 input1410) := by
  unfold input1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1905 output1410)).val
theorem output1906_def : output1906 = (.seq output1905 output1410) := by
  unfold output1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1906_skip : Flapjack.WordAlloc.isSkip output1906 = false := by
  rw [output1906_def]
  conv => lhs; cbv
  try rfl
theorem node1906_eq : Flapjack.WordAlloc.removeDeadStructural input1906 value618 value1 value2 = (output1906, value826, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1410_eq]
  try dsimp only
  rw [node1905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1906 input1409)).val
theorem input1907_def : input1907 = (.seq input1906 input1409) := by
  unfold input1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1906 output1409)).val
theorem output1907_def : output1907 = (.seq output1906 output1409) := by
  unfold output1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1907_skip : Flapjack.WordAlloc.isSkip output1907 = false := by
  rw [output1907_def]
  conv => lhs; cbv
  try rfl
theorem node1907_eq : Flapjack.WordAlloc.removeDeadStructural input1907 value617 value1 value2 = (output1907, value826, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1409_eq]
  try dsimp only
  rw [node1906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1907 input1408)).val
theorem input1908_def : input1908 = (.seq input1907 input1408) := by
  unfold input1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1907 output1408)).val
theorem output1908_def : output1908 = (.seq output1907 output1408) := by
  unfold output1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1908_skip : Flapjack.WordAlloc.isSkip output1908 = false := by
  rw [output1908_def]
  conv => lhs; cbv
  try rfl
theorem node1908_eq : Flapjack.WordAlloc.removeDeadStructural input1908 value616 value1 value2 = (output1908, value826, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1408_eq]
  try dsimp only
  rw [node1907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1908 input1407)).val
theorem input1909_def : input1909 = (.seq input1908 input1407) := by
  unfold input1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1908)).val
theorem output1909_def : output1909 = (output1908) := by
  unfold output1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1909_skip : Flapjack.WordAlloc.isSkip output1909 = false := by
  rw [output1909_def]
  conv => lhs; cbv
  try rfl
theorem node1909_eq : Flapjack.WordAlloc.removeDeadStructural input1909 value616 value1 value2 = (output1909, value826, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1407_eq]
  try dsimp only
  rw [node1908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1909 input1406)).val
theorem input1910_def : input1910 = (.seq input1909 input1406) := by
  unfold input1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1909)).val
theorem output1910_def : output1910 = (output1909) := by
  unfold output1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1910_skip : Flapjack.WordAlloc.isSkip output1910 = false := by
  rw [output1910_def]
  conv => lhs; cbv
  try rfl
theorem node1910_eq : Flapjack.WordAlloc.removeDeadStructural input1910 value616 value1 value2 = (output1910, value826, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1406_eq]
  try dsimp only
  rw [node1909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1910 input1405)).val
theorem input1911_def : input1911 = (.seq input1910 input1405) := by
  unfold input1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1910)).val
theorem output1911_def : output1911 = (output1910) := by
  unfold output1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1911_skip : Flapjack.WordAlloc.isSkip output1911 = false := by
  rw [output1911_def]
  conv => lhs; cbv
  try rfl
theorem node1911_eq : Flapjack.WordAlloc.removeDeadStructural input1911 value616 value1 value2 = (output1911, value826, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1405_eq]
  try dsimp only
  rw [node1910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1911 input1404)).val
theorem input1912_def : input1912 = (.seq input1911 input1404) := by
  unfold input1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1911)).val
theorem output1912_def : output1912 = (output1911) := by
  unfold output1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1912_skip : Flapjack.WordAlloc.isSkip output1912 = false := by
  rw [output1912_def]
  conv => lhs; cbv
  try rfl
theorem node1912_eq : Flapjack.WordAlloc.removeDeadStructural input1912 value616 value1 value2 = (output1912, value826, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1404_eq]
  try dsimp only
  rw [node1911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1912 input1403)).val
theorem input1913_def : input1913 = (.seq input1912 input1403) := by
  unfold input1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1912)).val
theorem output1913_def : output1913 = (output1912) := by
  unfold output1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1913_skip : Flapjack.WordAlloc.isSkip output1913 = false := by
  rw [output1913_def]
  conv => lhs; cbv
  try rfl
theorem node1913_eq : Flapjack.WordAlloc.removeDeadStructural input1913 value616 value1 value2 = (output1913, value826, value1) := by
  rw [input1913_def, output1913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1403_eq]
  try dsimp only
  rw [node1912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1913 input1402)).val
theorem input1914_def : input1914 = (.seq input1913 input1402) := by
  unfold input1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1913)).val
theorem output1914_def : output1914 = (output1913) := by
  unfold output1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1914_skip : Flapjack.WordAlloc.isSkip output1914 = false := by
  rw [output1914_def]
  conv => lhs; cbv
  try rfl
theorem node1914_eq : Flapjack.WordAlloc.removeDeadStructural input1914 value616 value1 value2 = (output1914, value826, value1) := by
  rw [input1914_def, output1914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1402_eq]
  try dsimp only
  rw [node1913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1914 input1401)).val
theorem input1915_def : input1915 = (.seq input1914 input1401) := by
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
theorem node1915_eq : Flapjack.WordAlloc.removeDeadStructural input1915 value616 value1 value2 = (output1915, value826, value1) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1401_eq]
  try dsimp only
  rw [node1914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1915 input1400)).val
theorem input1916_def : input1916 = (.seq input1915 input1400) := by
  unfold input1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1915)).val
theorem output1916_def : output1916 = (output1915) := by
  unfold output1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1916_skip : Flapjack.WordAlloc.isSkip output1916 = false := by
  rw [output1916_def]
  conv => lhs; cbv
  try rfl
theorem node1916_eq : Flapjack.WordAlloc.removeDeadStructural input1916 value616 value1 value2 = (output1916, value826, value1) := by
  rw [input1916_def, output1916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1400_eq]
  try dsimp only
  rw [node1915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1916 input1399)).val
theorem input1917_def : input1917 = (.seq input1916 input1399) := by
  unfold input1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1916 output1399)).val
theorem output1917_def : output1917 = (.seq output1916 output1399) := by
  unfold output1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1917_skip : Flapjack.WordAlloc.isSkip output1917 = false := by
  rw [output1917_def]
  conv => lhs; cbv
  try rfl
theorem node1917_eq : Flapjack.WordAlloc.removeDeadStructural input1917 value615 value1 value2 = (output1917, value826, value1) := by
  rw [input1917_def, output1917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1399_eq]
  try dsimp only
  rw [node1916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1917 input1398)).val
theorem input1918_def : input1918 = (.seq input1917 input1398) := by
  unfold input1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1917 output1398)).val
theorem output1918_def : output1918 = (.seq output1917 output1398) := by
  unfold output1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1918_skip : Flapjack.WordAlloc.isSkip output1918 = false := by
  rw [output1918_def]
  conv => lhs; cbv
  try rfl
theorem node1918_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value614 value1 value2 = (output1918, value826, value1) := by
  rw [input1918_def, output1918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1398_eq]
  try dsimp only
  rw [node1917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1918 input1397)).val
theorem input1919_def : input1919 = (.seq input1918 input1397) := by
  unfold input1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1918 output1397)).val
theorem output1919_def : output1919 = (.seq output1918 output1397) := by
  unfold output1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1919_skip : Flapjack.WordAlloc.isSkip output1919 = false := by
  rw [output1919_def]
  conv => lhs; cbv
  try rfl
theorem node1919_eq : Flapjack.WordAlloc.removeDeadStructural input1919 value613 value1 value2 = (output1919, value826, value1) := by
  rw [input1919_def, output1919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1397_eq]
  try dsimp only
  rw [node1918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1919 input1396)).val
theorem input1920_def : input1920 = (.seq input1919 input1396) := by
  unfold input1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1919 output1396)).val
theorem output1920_def : output1920 = (.seq output1919 output1396) := by
  unfold output1920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1920_skip : Flapjack.WordAlloc.isSkip output1920 = false := by
  rw [output1920_def]
  conv => lhs; cbv
  try rfl
theorem node1920_eq : Flapjack.WordAlloc.removeDeadStructural input1920 value612 value1 value2 = (output1920, value826, value1) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1396_eq]
  try dsimp only
  rw [node1919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1920 input1395)).val
theorem input1921_def : input1921 = (.seq input1920 input1395) := by
  unfold input1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1920 output1395)).val
theorem output1921_def : output1921 = (.seq output1920 output1395) := by
  unfold output1921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1921_skip : Flapjack.WordAlloc.isSkip output1921 = false := by
  rw [output1921_def]
  conv => lhs; cbv
  try rfl
theorem node1921_eq : Flapjack.WordAlloc.removeDeadStructural input1921 value609 value1 value2 = (output1921, value826, value1) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1395_eq]
  try dsimp only
  rw [node1920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1921 input1390)).val
theorem input1922_def : input1922 = (.seq input1921 input1390) := by
  unfold input1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1921 output1390)).val
theorem output1922_def : output1922 = (.seq output1921 output1390) := by
  unfold output1922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1922_skip : Flapjack.WordAlloc.isSkip output1922 = false := by
  rw [output1922_def]
  conv => lhs; cbv
  try rfl
theorem node1922_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value609 value1 value2 = (output1922, value826, value1) := by
  rw [input1922_def, output1922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1390_eq]
  try dsimp only
  rw [node1921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1922 input1389)).val
theorem input1923_def : input1923 = (.seq input1922 input1389) := by
  unfold input1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1922 output1389)).val
theorem output1923_def : output1923 = (.seq output1922 output1389) := by
  unfold output1923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1923_skip : Flapjack.WordAlloc.isSkip output1923 = false := by
  rw [output1923_def]
  conv => lhs; cbv
  try rfl
theorem node1923_eq : Flapjack.WordAlloc.removeDeadStructural input1923 value608 value1 value2 = (output1923, value826, value1) := by
  rw [input1923_def, output1923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1389_eq]
  try dsimp only
  rw [node1922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1923 input1388)).val
theorem input1924_def : input1924 = (.seq input1923 input1388) := by
  unfold input1924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1923 output1388)).val
theorem output1924_def : output1924 = (.seq output1923 output1388) := by
  unfold output1924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1924_skip : Flapjack.WordAlloc.isSkip output1924 = false := by
  rw [output1924_def]
  conv => lhs; cbv
  try rfl
theorem node1924_eq : Flapjack.WordAlloc.removeDeadStructural input1924 value607 value1 value2 = (output1924, value826, value1) := by
  rw [input1924_def, output1924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1388_eq]
  try dsimp only
  rw [node1923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1924 input1387)).val
theorem input1925_def : input1925 = (.seq input1924 input1387) := by
  unfold input1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1924 output1387)).val
theorem output1925_def : output1925 = (.seq output1924 output1387) := by
  unfold output1925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1925_skip : Flapjack.WordAlloc.isSkip output1925 = false := by
  rw [output1925_def]
  conv => lhs; cbv
  try rfl
theorem node1925_eq : Flapjack.WordAlloc.removeDeadStructural input1925 value574 value1 value2 = (output1925, value826, value1) := by
  rw [input1925_def, output1925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1387_eq]
  try dsimp only
  rw [node1924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1925 input1264)).val
theorem input1926_def : input1926 = (.seq input1925 input1264) := by
  unfold input1926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1925 output1264)).val
theorem output1926_def : output1926 = (.seq output1925 output1264) := by
  unfold output1926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1926_skip : Flapjack.WordAlloc.isSkip output1926 = false := by
  rw [output1926_def]
  conv => lhs; cbv
  try rfl
theorem node1926_eq : Flapjack.WordAlloc.removeDeadStructural input1926 value574 value1 value2 = (output1926, value826, value1) := by
  rw [input1926_def, output1926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1264_eq]
  try dsimp only
  rw [node1925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1926 input1263)).val
theorem input1927_def : input1927 = (.seq input1926 input1263) := by
  unfold input1927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1926 output1263)).val
theorem output1927_def : output1927 = (.seq output1926 output1263) := by
  unfold output1927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1927_skip : Flapjack.WordAlloc.isSkip output1927 = false := by
  rw [output1927_def]
  conv => lhs; cbv
  try rfl
theorem node1927_eq : Flapjack.WordAlloc.removeDeadStructural input1927 value573 value1 value2 = (output1927, value826, value1) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1263_eq]
  try dsimp only
  rw [node1926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1927 input1262)).val
theorem input1928_def : input1928 = (.seq input1927 input1262) := by
  unfold input1928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1927 output1262)).val
theorem output1928_def : output1928 = (.seq output1927 output1262) := by
  unfold output1928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1928_skip : Flapjack.WordAlloc.isSkip output1928 = false := by
  rw [output1928_def]
  conv => lhs; cbv
  try rfl
theorem node1928_eq : Flapjack.WordAlloc.removeDeadStructural input1928 value572 value1 value2 = (output1928, value826, value1) := by
  rw [input1928_def, output1928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1262_eq]
  try dsimp only
  rw [node1927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1928 input1261)).val
theorem input1929_def : input1929 = (.seq input1928 input1261) := by
  unfold input1929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1928 output1261)).val
theorem output1929_def : output1929 = (.seq output1928 output1261) := by
  unfold output1929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1929_skip : Flapjack.WordAlloc.isSkip output1929 = false := by
  rw [output1929_def]
  conv => lhs; cbv
  try rfl
theorem node1929_eq : Flapjack.WordAlloc.removeDeadStructural input1929 value571 value1 value2 = (output1929, value826, value1) := by
  rw [input1929_def, output1929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1261_eq]
  try dsimp only
  rw [node1928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1929 input1260)).val
theorem input1930_def : input1930 = (.seq input1929 input1260) := by
  unfold input1930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1929 output1260)).val
theorem output1930_def : output1930 = (.seq output1929 output1260) := by
  unfold output1930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1930_skip : Flapjack.WordAlloc.isSkip output1930 = false := by
  rw [output1930_def]
  conv => lhs; cbv
  try rfl
theorem node1930_eq : Flapjack.WordAlloc.removeDeadStructural input1930 value570 value1 value2 = (output1930, value826, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1260_eq]
  try dsimp only
  rw [node1929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1930 input1259)).val
theorem input1931_def : input1931 = (.seq input1930 input1259) := by
  unfold input1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1930)).val
theorem output1931_def : output1931 = (output1930) := by
  unfold output1931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1931_skip : Flapjack.WordAlloc.isSkip output1931 = false := by
  rw [output1931_def]
  conv => lhs; cbv
  try rfl
theorem node1931_eq : Flapjack.WordAlloc.removeDeadStructural input1931 value570 value1 value2 = (output1931, value826, value1) := by
  rw [input1931_def, output1931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1259_eq]
  try dsimp only
  rw [node1930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1931 input1258)).val
theorem input1932_def : input1932 = (.seq input1931 input1258) := by
  unfold input1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1931)).val
theorem output1932_def : output1932 = (output1931) := by
  unfold output1932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1932_skip : Flapjack.WordAlloc.isSkip output1932 = false := by
  rw [output1932_def]
  conv => lhs; cbv
  try rfl
theorem node1932_eq : Flapjack.WordAlloc.removeDeadStructural input1932 value570 value1 value2 = (output1932, value826, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1258_eq]
  try dsimp only
  rw [node1931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1932 input1257)).val
theorem input1933_def : input1933 = (.seq input1932 input1257) := by
  unfold input1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1932)).val
theorem output1933_def : output1933 = (output1932) := by
  unfold output1933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1933_skip : Flapjack.WordAlloc.isSkip output1933 = false := by
  rw [output1933_def]
  conv => lhs; cbv
  try rfl
theorem node1933_eq : Flapjack.WordAlloc.removeDeadStructural input1933 value570 value1 value2 = (output1933, value826, value1) := by
  rw [input1933_def, output1933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1257_eq]
  try dsimp only
  rw [node1932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1933 input1256)).val
theorem input1934_def : input1934 = (.seq input1933 input1256) := by
  unfold input1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1933)).val
theorem output1934_def : output1934 = (output1933) := by
  unfold output1934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1934_skip : Flapjack.WordAlloc.isSkip output1934 = false := by
  rw [output1934_def]
  conv => lhs; cbv
  try rfl
theorem node1934_eq : Flapjack.WordAlloc.removeDeadStructural input1934 value570 value1 value2 = (output1934, value826, value1) := by
  rw [input1934_def, output1934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1256_eq]
  try dsimp only
  rw [node1933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1934 input1255)).val
theorem input1935_def : input1935 = (.seq input1934 input1255) := by
  unfold input1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1934)).val
theorem output1935_def : output1935 = (output1934) := by
  unfold output1935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1935_skip : Flapjack.WordAlloc.isSkip output1935 = false := by
  rw [output1935_def]
  conv => lhs; cbv
  try rfl
theorem node1935_eq : Flapjack.WordAlloc.removeDeadStructural input1935 value570 value1 value2 = (output1935, value826, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1255_eq]
  try dsimp only
  rw [node1934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1935 input1254)).val
theorem input1936_def : input1936 = (.seq input1935 input1254) := by
  unfold input1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1935)).val
theorem output1936_def : output1936 = (output1935) := by
  unfold output1936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1936_skip : Flapjack.WordAlloc.isSkip output1936 = false := by
  rw [output1936_def]
  conv => lhs; cbv
  try rfl
theorem node1936_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value570 value1 value2 = (output1936, value826, value1) := by
  rw [input1936_def, output1936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1254_eq]
  try dsimp only
  rw [node1935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1936 input1253)).val
theorem input1937_def : input1937 = (.seq input1936 input1253) := by
  unfold input1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1936)).val
theorem output1937_def : output1937 = (output1936) := by
  unfold output1937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1937_skip : Flapjack.WordAlloc.isSkip output1937 = false := by
  rw [output1937_def]
  conv => lhs; cbv
  try rfl
theorem node1937_eq : Flapjack.WordAlloc.removeDeadStructural input1937 value570 value1 value2 = (output1937, value826, value1) := by
  rw [input1937_def, output1937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1253_eq]
  try dsimp only
  rw [node1936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1937 input1252)).val
theorem input1938_def : input1938 = (.seq input1937 input1252) := by
  unfold input1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1937)).val
theorem output1938_def : output1938 = (output1937) := by
  unfold output1938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1938_skip : Flapjack.WordAlloc.isSkip output1938 = false := by
  rw [output1938_def]
  conv => lhs; cbv
  try rfl
theorem node1938_eq : Flapjack.WordAlloc.removeDeadStructural input1938 value570 value1 value2 = (output1938, value826, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1252_eq]
  try dsimp only
  rw [node1937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1938 input1251)).val
theorem input1939_def : input1939 = (.seq input1938 input1251) := by
  unfold input1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1938 output1251)).val
theorem output1939_def : output1939 = (.seq output1938 output1251) := by
  unfold output1939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1939_skip : Flapjack.WordAlloc.isSkip output1939 = false := by
  rw [output1939_def]
  conv => lhs; cbv
  try rfl
theorem node1939_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value569 value1 value2 = (output1939, value826, value1) := by
  rw [input1939_def, output1939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1251_eq]
  try dsimp only
  rw [node1938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1939 input1250)).val
theorem input1940_def : input1940 = (.seq input1939 input1250) := by
  unfold input1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1939 output1250)).val
theorem output1940_def : output1940 = (.seq output1939 output1250) := by
  unfold output1940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1940_skip : Flapjack.WordAlloc.isSkip output1940 = false := by
  rw [output1940_def]
  conv => lhs; cbv
  try rfl
theorem node1940_eq : Flapjack.WordAlloc.removeDeadStructural input1940 value568 value1 value2 = (output1940, value826, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1250_eq]
  try dsimp only
  rw [node1939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1940 input1249)).val
theorem input1941_def : input1941 = (.seq input1940 input1249) := by
  unfold input1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1940 output1249)).val
theorem output1941_def : output1941 = (.seq output1940 output1249) := by
  unfold output1941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1941_skip : Flapjack.WordAlloc.isSkip output1941 = false := by
  rw [output1941_def]
  conv => lhs; cbv
  try rfl
theorem node1941_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value567 value1 value2 = (output1941, value826, value1) := by
  rw [input1941_def, output1941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1249_eq]
  try dsimp only
  rw [node1940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1941 input1248)).val
theorem input1942_def : input1942 = (.seq input1941 input1248) := by
  unfold input1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1941 output1248)).val
theorem output1942_def : output1942 = (.seq output1941 output1248) := by
  unfold output1942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1942_skip : Flapjack.WordAlloc.isSkip output1942 = false := by
  rw [output1942_def]
  conv => lhs; cbv
  try rfl
theorem node1942_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value566 value1 value2 = (output1942, value826, value1) := by
  rw [input1942_def, output1942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1248_eq]
  try dsimp only
  rw [node1941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1942 input1247)).val
theorem input1943_def : input1943 = (.seq input1942 input1247) := by
  unfold input1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1942 output1247)).val
theorem output1943_def : output1943 = (.seq output1942 output1247) := by
  unfold output1943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1943_skip : Flapjack.WordAlloc.isSkip output1943 = false := by
  rw [output1943_def]
  conv => lhs; cbv
  try rfl
theorem node1943_eq : Flapjack.WordAlloc.removeDeadStructural input1943 value563 value1 value2 = (output1943, value826, value1) := by
  rw [input1943_def, output1943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1247_eq]
  try dsimp only
  rw [node1942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1943 input1242)).val
theorem input1944_def : input1944 = (.seq input1943 input1242) := by
  unfold input1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1943 output1242)).val
theorem output1944_def : output1944 = (.seq output1943 output1242) := by
  unfold output1944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1944_skip : Flapjack.WordAlloc.isSkip output1944 = false := by
  rw [output1944_def]
  conv => lhs; cbv
  try rfl
theorem node1944_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value563 value1 value2 = (output1944, value826, value1) := by
  rw [input1944_def, output1944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1242_eq]
  try dsimp only
  rw [node1943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1944 input1241)).val
theorem input1945_def : input1945 = (.seq input1944 input1241) := by
  unfold input1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1944 output1241)).val
theorem output1945_def : output1945 = (.seq output1944 output1241) := by
  unfold output1945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1945_skip : Flapjack.WordAlloc.isSkip output1945 = false := by
  rw [output1945_def]
  conv => lhs; cbv
  try rfl
theorem node1945_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value562 value1 value2 = (output1945, value826, value1) := by
  rw [input1945_def, output1945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1241_eq]
  try dsimp only
  rw [node1944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1945 input1240)).val
theorem input1946_def : input1946 = (.seq input1945 input1240) := by
  unfold input1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1945 output1240)).val
theorem output1946_def : output1946 = (.seq output1945 output1240) := by
  unfold output1946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1946_skip : Flapjack.WordAlloc.isSkip output1946 = false := by
  rw [output1946_def]
  conv => lhs; cbv
  try rfl
theorem node1946_eq : Flapjack.WordAlloc.removeDeadStructural input1946 value561 value1 value2 = (output1946, value826, value1) := by
  rw [input1946_def, output1946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1240_eq]
  try dsimp only
  rw [node1945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1946 input1239)).val
theorem input1947_def : input1947 = (.seq input1946 input1239) := by
  unfold input1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1946 output1239)).val
theorem output1947_def : output1947 = (.seq output1946 output1239) := by
  unfold output1947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1947_skip : Flapjack.WordAlloc.isSkip output1947 = false := by
  rw [output1947_def]
  conv => lhs; cbv
  try rfl
theorem node1947_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value528 value1 value2 = (output1947, value826, value1) := by
  rw [input1947_def, output1947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1239_eq]
  try dsimp only
  rw [node1946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1947 input1116)).val
theorem input1948_def : input1948 = (.seq input1947 input1116) := by
  unfold input1948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1947 output1116)).val
theorem output1948_def : output1948 = (.seq output1947 output1116) := by
  unfold output1948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1948_skip : Flapjack.WordAlloc.isSkip output1948 = false := by
  rw [output1948_def]
  conv => lhs; cbv
  try rfl
theorem node1948_eq : Flapjack.WordAlloc.removeDeadStructural input1948 value528 value1 value2 = (output1948, value826, value1) := by
  rw [input1948_def, output1948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1116_eq]
  try dsimp only
  rw [node1947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1948 input1115)).val
theorem input1949_def : input1949 = (.seq input1948 input1115) := by
  unfold input1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1948 output1115)).val
theorem output1949_def : output1949 = (.seq output1948 output1115) := by
  unfold output1949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1949_skip : Flapjack.WordAlloc.isSkip output1949 = false := by
  rw [output1949_def]
  conv => lhs; cbv
  try rfl
theorem node1949_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value527 value1 value2 = (output1949, value826, value1) := by
  rw [input1949_def, output1949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1115_eq]
  try dsimp only
  rw [node1948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1949 input1114)).val
theorem input1950_def : input1950 = (.seq input1949 input1114) := by
  unfold input1950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1949 output1114)).val
theorem output1950_def : output1950 = (.seq output1949 output1114) := by
  unfold output1950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1950_skip : Flapjack.WordAlloc.isSkip output1950 = false := by
  rw [output1950_def]
  conv => lhs; cbv
  try rfl
theorem node1950_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value526 value1 value2 = (output1950, value826, value1) := by
  rw [input1950_def, output1950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1114_eq]
  try dsimp only
  rw [node1949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1950 input1113)).val
theorem input1951_def : input1951 = (.seq input1950 input1113) := by
  unfold input1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1950 output1113)).val
theorem output1951_def : output1951 = (.seq output1950 output1113) := by
  unfold output1951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1951_skip : Flapjack.WordAlloc.isSkip output1951 = false := by
  rw [output1951_def]
  conv => lhs; cbv
  try rfl
theorem node1951_eq : Flapjack.WordAlloc.removeDeadStructural input1951 value525 value1 value2 = (output1951, value826, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1113_eq]
  try dsimp only
  rw [node1950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1951 input1112)).val
theorem input1952_def : input1952 = (.seq input1951 input1112) := by
  unfold input1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1951 output1112)).val
theorem output1952_def : output1952 = (.seq output1951 output1112) := by
  unfold output1952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1952_skip : Flapjack.WordAlloc.isSkip output1952 = false := by
  rw [output1952_def]
  conv => lhs; cbv
  try rfl
theorem node1952_eq : Flapjack.WordAlloc.removeDeadStructural input1952 value524 value1 value2 = (output1952, value826, value1) := by
  rw [input1952_def, output1952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1112_eq]
  try dsimp only
  rw [node1951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1952 input1111)).val
theorem input1953_def : input1953 = (.seq input1952 input1111) := by
  unfold input1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1952 output1111)).val
theorem output1953_def : output1953 = (.seq output1952 output1111) := by
  unfold output1953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1953_skip : Flapjack.WordAlloc.isSkip output1953 = false := by
  rw [output1953_def]
  conv => lhs; cbv
  try rfl
theorem node1953_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value523 value1 value2 = (output1953, value826, value1) := by
  rw [input1953_def, output1953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1111_eq]
  try dsimp only
  rw [node1952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1953 input1110)).val
theorem input1954_def : input1954 = (.seq input1953 input1110) := by
  unfold input1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1953 output1110)).val
theorem output1954_def : output1954 = (.seq output1953 output1110) := by
  unfold output1954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1954_skip : Flapjack.WordAlloc.isSkip output1954 = false := by
  rw [output1954_def]
  conv => lhs; cbv
  try rfl
theorem node1954_eq : Flapjack.WordAlloc.removeDeadStructural input1954 value522 value1 value2 = (output1954, value826, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1110_eq]
  try dsimp only
  rw [node1953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1954 input1109)).val
theorem input1955_def : input1955 = (.seq input1954 input1109) := by
  unfold input1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1954 output1109)).val
theorem output1955_def : output1955 = (.seq output1954 output1109) := by
  unfold output1955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1955_skip : Flapjack.WordAlloc.isSkip output1955 = false := by
  rw [output1955_def]
  conv => lhs; cbv
  try rfl
theorem node1955_eq : Flapjack.WordAlloc.removeDeadStructural input1955 value521 value1 value2 = (output1955, value826, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1109_eq]
  try dsimp only
  rw [node1954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1955 input1108)).val
theorem input1956_def : input1956 = (.seq input1955 input1108) := by
  unfold input1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1955 output1108)).val
theorem output1956_def : output1956 = (.seq output1955 output1108) := by
  unfold output1956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1956_skip : Flapjack.WordAlloc.isSkip output1956 = false := by
  rw [output1956_def]
  conv => lhs; cbv
  try rfl
theorem node1956_eq : Flapjack.WordAlloc.removeDeadStructural input1956 value520 value1 value2 = (output1956, value826, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1108_eq]
  try dsimp only
  rw [node1955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1956 input1107)).val
theorem input1957_def : input1957 = (.seq input1956 input1107) := by
  unfold input1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1956 output1107)).val
theorem output1957_def : output1957 = (.seq output1956 output1107) := by
  unfold output1957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1957_skip : Flapjack.WordAlloc.isSkip output1957 = false := by
  rw [output1957_def]
  conv => lhs; cbv
  try rfl
theorem node1957_eq : Flapjack.WordAlloc.removeDeadStructural input1957 value517 value1 value2 = (output1957, value826, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1107_eq]
  try dsimp only
  rw [node1956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1957 input1102)).val
theorem input1958_def : input1958 = (.seq input1957 input1102) := by
  unfold input1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1957 output1102)).val
theorem output1958_def : output1958 = (.seq output1957 output1102) := by
  unfold output1958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1958_skip : Flapjack.WordAlloc.isSkip output1958 = false := by
  rw [output1958_def]
  conv => lhs; cbv
  try rfl
theorem node1958_eq : Flapjack.WordAlloc.removeDeadStructural input1958 value517 value1 value2 = (output1958, value826, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1102_eq]
  try dsimp only
  rw [node1957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1958 input1101)).val
theorem input1959_def : input1959 = (.seq input1958 input1101) := by
  unfold input1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1958 output1101)).val
theorem output1959_def : output1959 = (.seq output1958 output1101) := by
  unfold output1959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1959_skip : Flapjack.WordAlloc.isSkip output1959 = false := by
  rw [output1959_def]
  conv => lhs; cbv
  try rfl
theorem node1959_eq : Flapjack.WordAlloc.removeDeadStructural input1959 value516 value1 value2 = (output1959, value826, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1101_eq]
  try dsimp only
  rw [node1958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1959 input1100)).val
theorem input1960_def : input1960 = (.seq input1959 input1100) := by
  unfold input1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1959 output1100)).val
theorem output1960_def : output1960 = (.seq output1959 output1100) := by
  unfold output1960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1960_skip : Flapjack.WordAlloc.isSkip output1960 = false := by
  rw [output1960_def]
  conv => lhs; cbv
  try rfl
theorem node1960_eq : Flapjack.WordAlloc.removeDeadStructural input1960 value515 value1 value2 = (output1960, value826, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1100_eq]
  try dsimp only
  rw [node1959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1960 input1099)).val
theorem input1961_def : input1961 = (.seq input1960 input1099) := by
  unfold input1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1960 output1099)).val
theorem output1961_def : output1961 = (.seq output1960 output1099) := by
  unfold output1961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1961_skip : Flapjack.WordAlloc.isSkip output1961 = false := by
  rw [output1961_def]
  conv => lhs; cbv
  try rfl
theorem node1961_eq : Flapjack.WordAlloc.removeDeadStructural input1961 value414 value1 value2 = (output1961, value826, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1099_eq]
  try dsimp only
  rw [node1960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1961 input816)).val
theorem input1962_def : input1962 = (.seq input1961 input816) := by
  unfold input1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1961 output816)).val
theorem output1962_def : output1962 = (.seq output1961 output816) := by
  unfold output1962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1962_skip : Flapjack.WordAlloc.isSkip output1962 = false := by
  rw [output1962_def]
  conv => lhs; cbv
  try rfl
theorem node1962_eq : Flapjack.WordAlloc.removeDeadStructural input1962 value414 value1 value2 = (output1962, value826, value1) := by
  rw [input1962_def, output1962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node816_eq]
  try dsimp only
  rw [node1961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1962 input815)).val
theorem input1963_def : input1963 = (.seq input1962 input815) := by
  unfold input1963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1962 output815)).val
theorem output1963_def : output1963 = (.seq output1962 output815) := by
  unfold output1963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1963_skip : Flapjack.WordAlloc.isSkip output1963 = false := by
  rw [output1963_def]
  conv => lhs; cbv
  try rfl
theorem node1963_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value413 value1 value2 = (output1963, value826, value1) := by
  rw [input1963_def, output1963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node815_eq]
  try dsimp only
  rw [node1962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1963 input814)).val
theorem input1964_def : input1964 = (.seq input1963 input814) := by
  unfold input1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1963 output814)).val
theorem output1964_def : output1964 = (.seq output1963 output814) := by
  unfold output1964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1964_skip : Flapjack.WordAlloc.isSkip output1964 = false := by
  rw [output1964_def]
  conv => lhs; cbv
  try rfl
theorem node1964_eq : Flapjack.WordAlloc.removeDeadStructural input1964 value412 value1 value2 = (output1964, value826, value1) := by
  rw [input1964_def, output1964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node814_eq]
  try dsimp only
  rw [node1963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1964 input813)).val
theorem input1965_def : input1965 = (.seq input1964 input813) := by
  unfold input1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1964 output813)).val
theorem output1965_def : output1965 = (.seq output1964 output813) := by
  unfold output1965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1965_skip : Flapjack.WordAlloc.isSkip output1965 = false := by
  rw [output1965_def]
  conv => lhs; cbv
  try rfl
theorem node1965_eq : Flapjack.WordAlloc.removeDeadStructural input1965 value411 value1 value2 = (output1965, value826, value1) := by
  rw [input1965_def, output1965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node813_eq]
  try dsimp only
  rw [node1964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1965 input812)).val
theorem input1966_def : input1966 = (.seq input1965 input812) := by
  unfold input1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1965 output812)).val
theorem output1966_def : output1966 = (.seq output1965 output812) := by
  unfold output1966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1966_skip : Flapjack.WordAlloc.isSkip output1966 = false := by
  rw [output1966_def]
  conv => lhs; cbv
  try rfl
theorem node1966_eq : Flapjack.WordAlloc.removeDeadStructural input1966 value410 value1 value2 = (output1966, value826, value1) := by
  rw [input1966_def, output1966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node812_eq]
  try dsimp only
  rw [node1965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1966 input811)).val
theorem input1967_def : input1967 = (.seq input1966 input811) := by
  unfold input1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1966 output811)).val
theorem output1967_def : output1967 = (.seq output1966 output811) := by
  unfold output1967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1967_skip : Flapjack.WordAlloc.isSkip output1967 = false := by
  rw [output1967_def]
  conv => lhs; cbv
  try rfl
theorem node1967_eq : Flapjack.WordAlloc.removeDeadStructural input1967 value409 value1 value2 = (output1967, value826, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node811_eq]
  try dsimp only
  rw [node1966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1967 input810)).val
theorem input1968_def : input1968 = (.seq input1967 input810) := by
  unfold input1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1967 output810)).val
theorem output1968_def : output1968 = (.seq output1967 output810) := by
  unfold output1968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1968_skip : Flapjack.WordAlloc.isSkip output1968 = false := by
  rw [output1968_def]
  conv => lhs; cbv
  try rfl
theorem node1968_eq : Flapjack.WordAlloc.removeDeadStructural input1968 value408 value1 value2 = (output1968, value826, value1) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node810_eq]
  try dsimp only
  rw [node1967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1968 input809)).val
theorem input1969_def : input1969 = (.seq input1968 input809) := by
  unfold input1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1968 output809)).val
theorem output1969_def : output1969 = (.seq output1968 output809) := by
  unfold output1969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1969_skip : Flapjack.WordAlloc.isSkip output1969 = false := by
  rw [output1969_def]
  conv => lhs; cbv
  try rfl
theorem node1969_eq : Flapjack.WordAlloc.removeDeadStructural input1969 value407 value1 value2 = (output1969, value826, value1) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node809_eq]
  try dsimp only
  rw [node1968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1969 input808)).val
theorem input1970_def : input1970 = (.seq input1969 input808) := by
  unfold input1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1969 output808)).val
theorem output1970_def : output1970 = (.seq output1969 output808) := by
  unfold output1970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1970_skip : Flapjack.WordAlloc.isSkip output1970 = false := by
  rw [output1970_def]
  conv => lhs; cbv
  try rfl
theorem node1970_eq : Flapjack.WordAlloc.removeDeadStructural input1970 value406 value1 value2 = (output1970, value826, value1) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node808_eq]
  try dsimp only
  rw [node1969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1970 input807)).val
theorem input1971_def : input1971 = (.seq input1970 input807) := by
  unfold input1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1970 output807)).val
theorem output1971_def : output1971 = (.seq output1970 output807) := by
  unfold output1971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1971_skip : Flapjack.WordAlloc.isSkip output1971 = false := by
  rw [output1971_def]
  conv => lhs; cbv
  try rfl
theorem node1971_eq : Flapjack.WordAlloc.removeDeadStructural input1971 value405 value1 value2 = (output1971, value826, value1) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node807_eq]
  try dsimp only
  rw [node1970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1971 input806)).val
theorem input1972_def : input1972 = (.seq input1971 input806) := by
  unfold input1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1971 output806)).val
theorem output1972_def : output1972 = (.seq output1971 output806) := by
  unfold output1972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1972_skip : Flapjack.WordAlloc.isSkip output1972 = false := by
  rw [output1972_def]
  conv => lhs; cbv
  try rfl
theorem node1972_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value404 value1 value2 = (output1972, value826, value1) := by
  rw [input1972_def, output1972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node806_eq]
  try dsimp only
  rw [node1971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1972 input805)).val
theorem input1973_def : input1973 = (.seq input1972 input805) := by
  unfold input1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1972 output805)).val
theorem output1973_def : output1973 = (.seq output1972 output805) := by
  unfold output1973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1973_skip : Flapjack.WordAlloc.isSkip output1973 = false := by
  rw [output1973_def]
  conv => lhs; cbv
  try rfl
theorem node1973_eq : Flapjack.WordAlloc.removeDeadStructural input1973 value403 value1 value2 = (output1973, value826, value1) := by
  rw [input1973_def, output1973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node805_eq]
  try dsimp only
  rw [node1972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1973 input804)).val
theorem input1974_def : input1974 = (.seq input1973 input804) := by
  unfold input1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1973 output804)).val
theorem output1974_def : output1974 = (.seq output1973 output804) := by
  unfold output1974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1974_skip : Flapjack.WordAlloc.isSkip output1974 = false := by
  rw [output1974_def]
  conv => lhs; cbv
  try rfl
theorem node1974_eq : Flapjack.WordAlloc.removeDeadStructural input1974 value402 value1 value2 = (output1974, value826, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node804_eq]
  try dsimp only
  rw [node1973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1974 input803)).val
theorem input1975_def : input1975 = (.seq input1974 input803) := by
  unfold input1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1974 output803)).val
theorem output1975_def : output1975 = (.seq output1974 output803) := by
  unfold output1975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1975_skip : Flapjack.WordAlloc.isSkip output1975 = false := by
  rw [output1975_def]
  conv => lhs; cbv
  try rfl
theorem node1975_eq : Flapjack.WordAlloc.removeDeadStructural input1975 value401 value1 value2 = (output1975, value826, value1) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node803_eq]
  try dsimp only
  rw [node1974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1975 input802)).val
theorem input1976_def : input1976 = (.seq input1975 input802) := by
  unfold input1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1975 output802)).val
theorem output1976_def : output1976 = (.seq output1975 output802) := by
  unfold output1976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1976_skip : Flapjack.WordAlloc.isSkip output1976 = false := by
  rw [output1976_def]
  conv => lhs; cbv
  try rfl
theorem node1976_eq : Flapjack.WordAlloc.removeDeadStructural input1976 value400 value1 value2 = (output1976, value826, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node802_eq]
  try dsimp only
  rw [node1975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1976 input801)).val
theorem input1977_def : input1977 = (.seq input1976 input801) := by
  unfold input1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1976 output801)).val
theorem output1977_def : output1977 = (.seq output1976 output801) := by
  unfold output1977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1977_skip : Flapjack.WordAlloc.isSkip output1977 = false := by
  rw [output1977_def]
  conv => lhs; cbv
  try rfl
theorem node1977_eq : Flapjack.WordAlloc.removeDeadStructural input1977 value399 value1 value2 = (output1977, value826, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node801_eq]
  try dsimp only
  rw [node1976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1977 input800)).val
theorem input1978_def : input1978 = (.seq input1977 input800) := by
  unfold input1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1977 output800)).val
theorem output1978_def : output1978 = (.seq output1977 output800) := by
  unfold output1978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1978_skip : Flapjack.WordAlloc.isSkip output1978 = false := by
  rw [output1978_def]
  conv => lhs; cbv
  try rfl
theorem node1978_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value398 value1 value2 = (output1978, value826, value1) := by
  rw [input1978_def, output1978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node800_eq]
  try dsimp only
  rw [node1977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1978 input799)).val
theorem input1979_def : input1979 = (.seq input1978 input799) := by
  unfold input1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1978 output799)).val
theorem output1979_def : output1979 = (.seq output1978 output799) := by
  unfold output1979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1979_skip : Flapjack.WordAlloc.isSkip output1979 = false := by
  rw [output1979_def]
  conv => lhs; cbv
  try rfl
theorem node1979_eq : Flapjack.WordAlloc.removeDeadStructural input1979 value397 value1 value2 = (output1979, value826, value1) := by
  rw [input1979_def, output1979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node799_eq]
  try dsimp only
  rw [node1978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1979 input798)).val
theorem input1980_def : input1980 = (.seq input1979 input798) := by
  unfold input1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1979 output798)).val
theorem output1980_def : output1980 = (.seq output1979 output798) := by
  unfold output1980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1980_skip : Flapjack.WordAlloc.isSkip output1980 = false := by
  rw [output1980_def]
  conv => lhs; cbv
  try rfl
theorem node1980_eq : Flapjack.WordAlloc.removeDeadStructural input1980 value392 value1 value2 = (output1980, value826, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node798_eq]
  try dsimp only
  rw [node1979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1980 input793)).val
theorem input1981_def : input1981 = (.seq input1980 input793) := by
  unfold input1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1980 output793)).val
theorem output1981_def : output1981 = (.seq output1980 output793) := by
  unfold output1981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1981_skip : Flapjack.WordAlloc.isSkip output1981 = false := by
  rw [output1981_def]
  conv => lhs; cbv
  try rfl
theorem node1981_eq : Flapjack.WordAlloc.removeDeadStructural input1981 value392 value1 value2 = (output1981, value826, value1) := by
  rw [input1981_def, output1981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node793_eq]
  try dsimp only
  rw [node1980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1981 input792)).val
theorem input1982_def : input1982 = (.seq input1981 input792) := by
  unfold input1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1981 output792)).val
theorem output1982_def : output1982 = (.seq output1981 output792) := by
  unfold output1982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1982_skip : Flapjack.WordAlloc.isSkip output1982 = false := by
  rw [output1982_def]
  conv => lhs; cbv
  try rfl
theorem node1982_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value394 value1 value2 = (output1982, value826, value1) := by
  rw [input1982_def, output1982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node792_eq]
  try dsimp only
  rw [node1981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1982 input791)).val
theorem input1983_def : input1983 = (.seq input1982 input791) := by
  unfold input1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1982 output791)).val
theorem output1983_def : output1983 = (.seq output1982 output791) := by
  unfold output1983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1983_skip : Flapjack.WordAlloc.isSkip output1983 = false := by
  rw [output1983_def]
  conv => lhs; cbv
  try rfl
theorem node1983_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value392 value1 value2 = (output1983, value826, value1) := by
  rw [input1983_def, output1983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node791_eq]
  try dsimp only
  rw [node1982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1983 input788)).val
theorem input1984_def : input1984 = (.seq input1983 input788) := by
  unfold input1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1983 output788)).val
theorem output1984_def : output1984 = (.seq output1983 output788) := by
  unfold output1984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1984_skip : Flapjack.WordAlloc.isSkip output1984 = false := by
  rw [output1984_def]
  conv => lhs; cbv
  try rfl
theorem node1984_eq : Flapjack.WordAlloc.removeDeadStructural input1984 value387 value1 value2 = (output1984, value826, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node788_eq]
  try dsimp only
  rw [node1983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64))).val
theorem input1985_def : input1985 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64)) := by
  unfold input1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1985_def : output1985 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1985_skip : Flapjack.WordAlloc.isSkip output1985 = true := by
  rw [output1985_def]
  conv => lhs; cbv
  try rfl
theorem node1985_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value387 value1 value2 = (output1985, value387, value1) := by
  rw [input1985_def, output1985_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4305 0#64))).val
theorem input1986_def : input1986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4305 0#64)) := by
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
theorem node1986_eq : Flapjack.WordAlloc.removeDeadStructural input1986 value387 value1 value2 = (output1986, value387, value1) := by
  rw [input1986_def, output1986_def]
  try (conv => lhs; cbv)
  try rfl

def value827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4301, 125)])).val
theorem input1987_def : input1987 = (Flapjack.WordLangProgHOL.move 2 [(4301, 125)]) := by
  unfold input1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4301, 125)])).val
theorem output1987_def : output1987 = (Flapjack.WordLangProgHOL.move 2 [(4301, 125)]) := by
  unfold output1987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1987_skip : Flapjack.WordAlloc.isSkip output1987 = false := by
  rw [output1987_def]
  conv => lhs; cbv
  try rfl
theorem node1987_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value387 value1 value2 = (output1987, value827, value1) := by
  rw [input1987_def, output1987_def]
  try (conv => lhs; cbv)
  try rfl

def value828 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4297, 117)])).val
theorem input1988_def : input1988 = (Flapjack.WordLangProgHOL.move 2 [(4297, 117)]) := by
  unfold input1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4297, 117)])).val
theorem output1988_def : output1988 = (Flapjack.WordLangProgHOL.move 2 [(4297, 117)]) := by
  unfold output1988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1988_skip : Flapjack.WordAlloc.isSkip output1988 = false := by
  rw [output1988_def]
  conv => lhs; cbv
  try rfl
theorem node1988_eq : Flapjack.WordAlloc.removeDeadStructural input1988 value827 value1 value2 = (output1988, value828, value1) := by
  rw [input1988_def, output1988_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4293, 129)])).val
theorem input1989_def : input1989 = (Flapjack.WordLangProgHOL.move 2 [(4293, 129)]) := by
  unfold input1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1989_def : output1989 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1989_skip : Flapjack.WordAlloc.isSkip output1989 = true := by
  rw [output1989_def]
  conv => lhs; cbv
  try rfl
theorem node1989_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value828 value1 value2 = (output1989, value828, value1) := by
  rw [input1989_def, output1989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4289, 133)])).val
theorem input1990_def : input1990 = (Flapjack.WordLangProgHOL.move 2 [(4289, 133)]) := by
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
theorem node1990_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value828 value1 value2 = (output1990, value828, value1) := by
  rw [input1990_def, output1990_def]
  try (conv => lhs; cbv)
  try rfl

def value829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4285, 129)])).val
theorem input1991_def : input1991 = (Flapjack.WordLangProgHOL.move 2 [(4285, 129)]) := by
  unfold input1991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4285, 129)])).val
theorem output1991_def : output1991 = (Flapjack.WordLangProgHOL.move 2 [(4285, 129)]) := by
  unfold output1991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1991_skip : Flapjack.WordAlloc.isSkip output1991 = false := by
  rw [output1991_def]
  conv => lhs; cbv
  try rfl
theorem node1991_eq : Flapjack.WordAlloc.removeDeadStructural input1991 value828 value1 value2 = (output1991, value829, value1) := by
  rw [input1991_def, output1991_def]
  try (conv => lhs; cbv)
  try rfl

def value830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4281, 121)])).val
theorem input1992_def : input1992 = (Flapjack.WordLangProgHOL.move 2 [(4281, 121)]) := by
  unfold input1992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4281, 121)])).val
theorem output1992_def : output1992 = (Flapjack.WordLangProgHOL.move 2 [(4281, 121)]) := by
  unfold output1992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1992_skip : Flapjack.WordAlloc.isSkip output1992 = false := by
  rw [output1992_def]
  conv => lhs; cbv
  try rfl
theorem node1992_eq : Flapjack.WordAlloc.removeDeadStructural input1992 value829 value1 value2 = (output1992, value830, value1) := by
  rw [input1992_def, output1992_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1993_def : input1993 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1993_def : output1993 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1993_skip : Flapjack.WordAlloc.isSkip output1993 = true := by
  rw [output1993_def]
  conv => lhs; cbv
  try rfl
theorem node1993_eq : Flapjack.WordAlloc.removeDeadStructural input1993 value830 value1 value2 = (output1993, value830, value1) := by
  rw [input1993_def, output1993_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1993 input1992)).val
theorem input1994_def : input1994 = (.seq input1993 input1992) := by
  unfold input1994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1992)).val
theorem output1994_def : output1994 = (output1992) := by
  unfold output1994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1994_skip : Flapjack.WordAlloc.isSkip output1994 = false := by
  rw [output1994_def]
  conv => lhs; cbv
  try rfl
theorem node1994_eq : Flapjack.WordAlloc.removeDeadStructural input1994 value829 value1 value2 = (output1994, value830, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1992_eq]
  try dsimp only
  rw [node1993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1994 input1991)).val
theorem input1995_def : input1995 = (.seq input1994 input1991) := by
  unfold input1995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1994 output1991)).val
theorem output1995_def : output1995 = (.seq output1994 output1991) := by
  unfold output1995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1995_skip : Flapjack.WordAlloc.isSkip output1995 = false := by
  rw [output1995_def]
  conv => lhs; cbv
  try rfl
theorem node1995_eq : Flapjack.WordAlloc.removeDeadStructural input1995 value828 value1 value2 = (output1995, value830, value1) := by
  rw [input1995_def, output1995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1991_eq]
  try dsimp only
  rw [node1994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1995 input1990)).val
theorem input1996_def : input1996 = (.seq input1995 input1990) := by
  unfold input1996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1995)).val
theorem output1996_def : output1996 = (output1995) := by
  unfold output1996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1996_skip : Flapjack.WordAlloc.isSkip output1996 = false := by
  rw [output1996_def]
  conv => lhs; cbv
  try rfl
theorem node1996_eq : Flapjack.WordAlloc.removeDeadStructural input1996 value828 value1 value2 = (output1996, value830, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1990_eq]
  try dsimp only
  rw [node1995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1996 input1989)).val
theorem input1997_def : input1997 = (.seq input1996 input1989) := by
  unfold input1997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1996)).val
theorem output1997_def : output1997 = (output1996) := by
  unfold output1997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1997_skip : Flapjack.WordAlloc.isSkip output1997 = false := by
  rw [output1997_def]
  conv => lhs; cbv
  try rfl
theorem node1997_eq : Flapjack.WordAlloc.removeDeadStructural input1997 value828 value1 value2 = (output1997, value830, value1) := by
  rw [input1997_def, output1997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1989_eq]
  try dsimp only
  rw [node1996_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1997 input1988)).val
theorem input1998_def : input1998 = (.seq input1997 input1988) := by
  unfold input1998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1997 output1988)).val
theorem output1998_def : output1998 = (.seq output1997 output1988) := by
  unfold output1998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1998_skip : Flapjack.WordAlloc.isSkip output1998 = false := by
  rw [output1998_def]
  conv => lhs; cbv
  try rfl
theorem node1998_eq : Flapjack.WordAlloc.removeDeadStructural input1998 value827 value1 value2 = (output1998, value830, value1) := by
  rw [input1998_def, output1998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1988_eq]
  try dsimp only
  rw [node1997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1998 input1987)).val
theorem input1999_def : input1999 = (.seq input1998 input1987) := by
  unfold input1999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1998 output1987)).val
theorem output1999_def : output1999 = (.seq output1998 output1987) := by
  unfold output1999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1999_skip : Flapjack.WordAlloc.isSkip output1999 = false := by
  rw [output1999_def]
  conv => lhs; cbv
  try rfl
theorem node1999_eq : Flapjack.WordAlloc.removeDeadStructural input1999 value387 value1 value2 = (output1999, value830, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1987_eq]
  try dsimp only
  rw [node1998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1999 input1986)).val
theorem input2000_def : input2000 = (.seq input1999 input1986) := by
  unfold input2000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1999)).val
theorem output2000_def : output2000 = (output1999) := by
  unfold output2000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2000_skip : Flapjack.WordAlloc.isSkip output2000 = false := by
  rw [output2000_def]
  conv => lhs; cbv
  try rfl
theorem node2000_eq : Flapjack.WordAlloc.removeDeadStructural input2000 value387 value1 value2 = (output2000, value830, value1) := by
  rw [input2000_def, output2000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1986_eq]
  try dsimp only
  rw [node1999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2000 input1985)).val
theorem input2001_def : input2001 = (.seq input2000 input1985) := by
  unfold input2001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2000)).val
theorem output2001_def : output2001 = (output2000) := by
  unfold output2001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2001_skip : Flapjack.WordAlloc.isSkip output2001 = false := by
  rw [output2001_def]
  conv => lhs; cbv
  try rfl
theorem node2001_eq : Flapjack.WordAlloc.removeDeadStructural input2001 value387 value1 value2 = (output2001, value830, value1) := by
  rw [input2001_def, output2001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1985_eq]
  try dsimp only
  rw [node2000_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4277, 109)])).val
theorem input2002_def : input2002 = (Flapjack.WordLangProgHOL.move 2 [(4277, 109)]) := by
  unfold input2002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4277, 109)])).val
theorem output2002_def : output2002 = (Flapjack.WordLangProgHOL.move 2 [(4277, 109)]) := by
  unfold output2002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2002_skip : Flapjack.WordAlloc.isSkip output2002 = false := by
  rw [output2002_def]
  conv => lhs; cbv
  try rfl
theorem node2002_eq : Flapjack.WordAlloc.removeDeadStructural input2002 value830 value1 value2 = (output2002, value826, value1) := by
  rw [input2002_def, output2002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2002 input2001)).val
theorem input2003_def : input2003 = (.seq input2002 input2001) := by
  unfold input2003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2002 output2001)).val
theorem output2003_def : output2003 = (.seq output2002 output2001) := by
  unfold output2003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2003_skip : Flapjack.WordAlloc.isSkip output2003 = false := by
  rw [output2003_def]
  conv => lhs; cbv
  try rfl
theorem node2003_eq : Flapjack.WordAlloc.removeDeadStructural input2003 value387 value1 value2 = (output2003, value826, value1) := by
  rw [input2003_def, output2003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2001_eq]
  try dsimp only
  rw [node2002_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2004_def : input2004 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2004_def : output2004 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2004_skip : Flapjack.WordAlloc.isSkip output2004 = true := by
  rw [output2004_def]
  conv => lhs; cbv
  try rfl
theorem node2004_eq : Flapjack.WordAlloc.removeDeadStructural input2004 value826 value1 value2 = (output2004, value826, value1) := by
  rw [input2004_def, output2004_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2004 input2003)).val
theorem input2005_def : input2005 = (.seq input2004 input2003) := by
  unfold input2005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2003)).val
theorem output2005_def : output2005 = (output2003) := by
  unfold output2005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2005_skip : Flapjack.WordAlloc.isSkip output2005 = false := by
  rw [output2005_def]
  conv => lhs; cbv
  try rfl
theorem node2005_eq : Flapjack.WordAlloc.removeDeadStructural input2005 value387 value1 value2 = (output2005, value826, value1) := by
  rw [input2005_def, output2005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2003_eq]
  try dsimp only
  rw [node2004_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value831 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 133

def value832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value214 129 value831 input1984 input2005)).val
theorem input2006_def : input2006 = (.ite value214 129 value831 input1984 input2005) := by
  unfold input2006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value214 129 value831 output1984 output2005)).val
theorem output2006_def : output2006 = (.ite value214 129 value831 output1984 output2005) := by
  unfold output2006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2006_skip : Flapjack.WordAlloc.isSkip output2006 = false := by
  rw [output2006_def]
  conv => lhs; cbv
  try rfl
theorem node2006_eq : Flapjack.WordAlloc.removeDeadStructural input2006 value387 value1 value2 = (output2006, value832, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node1984_eq]
  try dsimp only
  rw [node2005_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2006 input769)).val
theorem input2007_def : input2007 = (.seq input2006 input769) := by
  unfold input2007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2006 output769)).val
theorem output2007_def : output2007 = (.seq output2006 output769) := by
  unfold output2007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2007_skip : Flapjack.WordAlloc.isSkip output2007 = false := by
  rw [output2007_def]
  conv => lhs; cbv
  try rfl
theorem node2007_eq : Flapjack.WordAlloc.removeDeadStructural input2007 value387 value1 value2 = (output2007, value832, value1) := by
  rw [input2007_def, output2007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node769_eq]
  try dsimp only
  rw [node2006_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64))).val
theorem input2008_def : input2008 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)) := by
  unfold input2008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64))).val
theorem output2008_def : output2008 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 1#64)) := by
  unfold output2008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2008_skip : Flapjack.WordAlloc.isSkip output2008 = false := by
  rw [output2008_def]
  conv => lhs; cbv
  try rfl
theorem node2008_eq : Flapjack.WordAlloc.removeDeadStructural input2008 value832 value1 value2 = (output2008, value826, value1) := by
  rw [input2008_def, output2008_def]
  try (conv => lhs; cbv)
  try rfl

def value833 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 113)])).val
theorem input2009_def : input2009 = (Flapjack.WordLangProgHOL.move 0 [(129, 113)]) := by
  unfold input2009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 113)])).val
theorem output2009_def : output2009 = (Flapjack.WordLangProgHOL.move 0 [(129, 113)]) := by
  unfold output2009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2009_skip : Flapjack.WordAlloc.isSkip output2009 = false := by
  rw [output2009_def]
  conv => lhs; cbv
  try rfl
theorem node2009_eq : Flapjack.WordAlloc.removeDeadStructural input2009 value826 value1 value2 = (output2009, value833, value1) := by
  rw [input2009_def, output2009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2009 input2008)).val
theorem input2010_def : input2010 = (.seq input2009 input2008) := by
  unfold input2010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2009 output2008)).val
theorem output2010_def : output2010 = (.seq output2009 output2008) := by
  unfold output2010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2010_skip : Flapjack.WordAlloc.isSkip output2010 = false := by
  rw [output2010_def]
  conv => lhs; cbv
  try rfl
theorem node2010_eq : Flapjack.WordAlloc.removeDeadStructural input2010 value832 value1 value2 = (output2010, value833, value1) := by
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
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2010 output2007)).val
theorem output2011_def : output2011 = (.seq output2010 output2007) := by
  unfold output2011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2011_skip : Flapjack.WordAlloc.isSkip output2011 = false := by
  rw [output2011_def]
  conv => lhs; cbv
  try rfl
theorem node2011_eq : Flapjack.WordAlloc.removeDeadStructural input2011 value387 value1 value2 = (output2011, value833, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2007_eq]
  try dsimp only
  rw [node2010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2011 input764)).val
theorem input2012_def : input2012 = (.seq input2011 input764) := by
  unfold input2012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2011 output764)).val
theorem output2012_def : output2012 = (.seq output2011 output764) := by
  unfold output2012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2012_skip : Flapjack.WordAlloc.isSkip output2012 = false := by
  rw [output2012_def]
  conv => lhs; cbv
  try rfl
theorem node2012_eq : Flapjack.WordAlloc.removeDeadStructural input2012 value387 value1 value2 = (output2012, value833, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node764_eq]
  try dsimp only
  rw [node2011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2012 input763)).val
theorem input2013_def : input2013 = (.seq input2012 input763) := by
  unfold input2013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2012 output763)).val
theorem output2013_def : output2013 = (.seq output2012 output763) := by
  unfold output2013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2013_skip : Flapjack.WordAlloc.isSkip output2013 = false := by
  rw [output2013_def]
  conv => lhs; cbv
  try rfl
theorem node2013_eq : Flapjack.WordAlloc.removeDeadStructural input2013 value385 value1 value2 = (output2013, value833, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node763_eq]
  try dsimp only
  rw [node2012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2013 input760)).val
theorem input2014_def : input2014 = (.seq input2013 input760) := by
  unfold input2014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2013 output760)).val
theorem output2014_def : output2014 = (.seq output2013 output760) := by
  unfold output2014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2014_skip : Flapjack.WordAlloc.isSkip output2014 = false := by
  rw [output2014_def]
  conv => lhs; cbv
  try rfl
theorem node2014_eq : Flapjack.WordAlloc.removeDeadStructural input2014 value384 value1 value2 = (output2014, value833, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node760_eq]
  try dsimp only
  rw [node2013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2014 input759)).val
theorem input2015_def : input2015 = (.seq input2014 input759) := by
  unfold input2015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2014 output759)).val
theorem output2015_def : output2015 = (.seq output2014 output759) := by
  unfold output2015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2015_skip : Flapjack.WordAlloc.isSkip output2015 = false := by
  rw [output2015_def]
  conv => lhs; cbv
  try rfl
theorem node2015_eq : Flapjack.WordAlloc.removeDeadStructural input2015 value380 value1 value2 = (output2015, value833, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node759_eq]
  try dsimp only
  rw [node2014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2015 input752)).val
theorem input2016_def : input2016 = (.seq input2015 input752) := by
  unfold input2016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2015 output752)).val
theorem output2016_def : output2016 = (.seq output2015 output752) := by
  unfold output2016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2016_skip : Flapjack.WordAlloc.isSkip output2016 = false := by
  rw [output2016_def]
  conv => lhs; cbv
  try rfl
theorem node2016_eq : Flapjack.WordAlloc.removeDeadStructural input2016 value377 value1 value2 = (output2016, value833, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node752_eq]
  try dsimp only
  rw [node2015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2016 input747)).val
theorem input2017_def : input2017 = (.seq input2016 input747) := by
  unfold input2017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2016 output747)).val
theorem output2017_def : output2017 = (.seq output2016 output747) := by
  unfold output2017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2017_skip : Flapjack.WordAlloc.isSkip output2017 = false := by
  rw [output2017_def]
  conv => lhs; cbv
  try rfl
theorem node2017_eq : Flapjack.WordAlloc.removeDeadStructural input2017 value377 value1 value2 = (output2017, value833, value1) := by
  rw [input2017_def, output2017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node747_eq]
  try dsimp only
  rw [node2016_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2017 input746)).val
theorem input2018_def : input2018 = (.seq input2017 input746) := by
  unfold input2018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2017 output746)).val
theorem output2018_def : output2018 = (.seq output2017 output746) := by
  unfold output2018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2018_skip : Flapjack.WordAlloc.isSkip output2018 = false := by
  rw [output2018_def]
  conv => lhs; cbv
  try rfl
theorem node2018_eq : Flapjack.WordAlloc.removeDeadStructural input2018 value376 value1 value2 = (output2018, value833, value1) := by
  rw [input2018_def, output2018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node746_eq]
  try dsimp only
  rw [node2017_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2018 input745)).val
theorem input2019_def : input2019 = (.seq input2018 input745) := by
  unfold input2019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2018 output745)).val
theorem output2019_def : output2019 = (.seq output2018 output745) := by
  unfold output2019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2019_skip : Flapjack.WordAlloc.isSkip output2019 = false := by
  rw [output2019_def]
  conv => lhs; cbv
  try rfl
theorem node2019_eq : Flapjack.WordAlloc.removeDeadStructural input2019 value375 value1 value2 = (output2019, value833, value1) := by
  rw [input2019_def, output2019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node745_eq]
  try dsimp only
  rw [node2018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2019 input744)).val
theorem input2020_def : input2020 = (.seq input2019 input744) := by
  unfold input2020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2019 output744)).val
theorem output2020_def : output2020 = (.seq output2019 output744) := by
  unfold output2020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2020_skip : Flapjack.WordAlloc.isSkip output2020 = false := by
  rw [output2020_def]
  conv => lhs; cbv
  try rfl
theorem node2020_eq : Flapjack.WordAlloc.removeDeadStructural input2020 value348 value1 value2 = (output2020, value833, value1) := by
  rw [input2020_def, output2020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node744_eq]
  try dsimp only
  rw [node2019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2020 input665)).val
theorem input2021_def : input2021 = (.seq input2020 input665) := by
  unfold input2021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2020 output665)).val
theorem output2021_def : output2021 = (.seq output2020 output665) := by
  unfold output2021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2021_skip : Flapjack.WordAlloc.isSkip output2021 = false := by
  rw [output2021_def]
  conv => lhs; cbv
  try rfl
theorem node2021_eq : Flapjack.WordAlloc.removeDeadStructural input2021 value348 value1 value2 = (output2021, value833, value1) := by
  rw [input2021_def, output2021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  try dsimp only
  rw [node2020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2021 input664)).val
theorem input2022_def : input2022 = (.seq input2021 input664) := by
  unfold input2022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2021 output664)).val
theorem output2022_def : output2022 = (.seq output2021 output664) := by
  unfold output2022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2022_skip : Flapjack.WordAlloc.isSkip output2022 = false := by
  rw [output2022_def]
  conv => lhs; cbv
  try rfl
theorem node2022_eq : Flapjack.WordAlloc.removeDeadStructural input2022 value347 value1 value2 = (output2022, value833, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node664_eq]
  try dsimp only
  rw [node2021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2022 input663)).val
theorem input2023_def : input2023 = (.seq input2022 input663) := by
  unfold input2023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2022 output663)).val
theorem output2023_def : output2023 = (.seq output2022 output663) := by
  unfold output2023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2023_skip : Flapjack.WordAlloc.isSkip output2023 = false := by
  rw [output2023_def]
  conv => lhs; cbv
  try rfl
theorem node2023_eq : Flapjack.WordAlloc.removeDeadStructural input2023 value343 value1 value2 = (output2023, value833, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node663_eq]
  try dsimp only
  rw [node2022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2023 input656)).val
theorem input2024_def : input2024 = (.seq input2023 input656) := by
  unfold input2024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2023 output656)).val
theorem output2024_def : output2024 = (.seq output2023 output656) := by
  unfold output2024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2024_skip : Flapjack.WordAlloc.isSkip output2024 = false := by
  rw [output2024_def]
  conv => lhs; cbv
  try rfl
theorem node2024_eq : Flapjack.WordAlloc.removeDeadStructural input2024 value340 value1 value2 = (output2024, value833, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node656_eq]
  try dsimp only
  rw [node2023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2024 input651)).val
theorem input2025_def : input2025 = (.seq input2024 input651) := by
  unfold input2025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2024 output651)).val
theorem output2025_def : output2025 = (.seq output2024 output651) := by
  unfold output2025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2025_skip : Flapjack.WordAlloc.isSkip output2025 = false := by
  rw [output2025_def]
  conv => lhs; cbv
  try rfl
theorem node2025_eq : Flapjack.WordAlloc.removeDeadStructural input2025 value340 value1 value2 = (output2025, value833, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node651_eq]
  try dsimp only
  rw [node2024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2025 input650)).val
theorem input2026_def : input2026 = (.seq input2025 input650) := by
  unfold input2026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2025 output650)).val
theorem output2026_def : output2026 = (.seq output2025 output650) := by
  unfold output2026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2026_skip : Flapjack.WordAlloc.isSkip output2026 = false := by
  rw [output2026_def]
  conv => lhs; cbv
  try rfl
theorem node2026_eq : Flapjack.WordAlloc.removeDeadStructural input2026 value339 value1 value2 = (output2026, value833, value1) := by
  rw [input2026_def, output2026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node650_eq]
  try dsimp only
  rw [node2025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2026 input649)).val
theorem input2027_def : input2027 = (.seq input2026 input649) := by
  unfold input2027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2026 output649)).val
theorem output2027_def : output2027 = (.seq output2026 output649) := by
  unfold output2027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2027_skip : Flapjack.WordAlloc.isSkip output2027 = false := by
  rw [output2027_def]
  conv => lhs; cbv
  try rfl
theorem node2027_eq : Flapjack.WordAlloc.removeDeadStructural input2027 value338 value1 value2 = (output2027, value833, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node649_eq]
  try dsimp only
  rw [node2026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2027 input648)).val
theorem input2028_def : input2028 = (.seq input2027 input648) := by
  unfold input2028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2027 output648)).val
theorem output2028_def : output2028 = (.seq output2027 output648) := by
  unfold output2028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2028_skip : Flapjack.WordAlloc.isSkip output2028 = false := by
  rw [output2028_def]
  conv => lhs; cbv
  try rfl
theorem node2028_eq : Flapjack.WordAlloc.removeDeadStructural input2028 value311 value1 value2 = (output2028, value833, value1) := by
  rw [input2028_def, output2028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node648_eq]
  try dsimp only
  rw [node2027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2028 input569)).val
theorem input2029_def : input2029 = (.seq input2028 input569) := by
  unfold input2029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2028 output569)).val
theorem output2029_def : output2029 = (.seq output2028 output569) := by
  unfold output2029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2029_skip : Flapjack.WordAlloc.isSkip output2029 = false := by
  rw [output2029_def]
  conv => lhs; cbv
  try rfl
theorem node2029_eq : Flapjack.WordAlloc.removeDeadStructural input2029 value311 value1 value2 = (output2029, value833, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  try dsimp only
  rw [node2028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2029 input568)).val
theorem input2030_def : input2030 = (.seq input2029 input568) := by
  unfold input2030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2029 output568)).val
theorem output2030_def : output2030 = (.seq output2029 output568) := by
  unfold output2030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2030_skip : Flapjack.WordAlloc.isSkip output2030 = false := by
  rw [output2030_def]
  conv => lhs; cbv
  try rfl
theorem node2030_eq : Flapjack.WordAlloc.removeDeadStructural input2030 value309 value1 value2 = (output2030, value833, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node568_eq]
  try dsimp only
  rw [node2029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2030 input563)).val
theorem input2031_def : input2031 = (.seq input2030 input563) := by
  unfold input2031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2030 output563)).val
theorem output2031_def : output2031 = (.seq output2030 output563) := by
  unfold output2031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2031_skip : Flapjack.WordAlloc.isSkip output2031 = false := by
  rw [output2031_def]
  conv => lhs; cbv
  try rfl
theorem node2031_eq : Flapjack.WordAlloc.removeDeadStructural input2031 value309 value1 value2 = (output2031, value833, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node563_eq]
  try dsimp only
  rw [node2030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2031 input562)).val
theorem input2032_def : input2032 = (.seq input2031 input562) := by
  unfold input2032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2031 output562)).val
theorem output2032_def : output2032 = (.seq output2031 output562) := by
  unfold output2032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2032_skip : Flapjack.WordAlloc.isSkip output2032 = false := by
  rw [output2032_def]
  conv => lhs; cbv
  try rfl
theorem node2032_eq : Flapjack.WordAlloc.removeDeadStructural input2032 value308 value1 value2 = (output2032, value833, value1) := by
  rw [input2032_def, output2032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node562_eq]
  try dsimp only
  rw [node2031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2032 input561)).val
theorem input2033_def : input2033 = (.seq input2032 input561) := by
  unfold input2033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2032 output561)).val
theorem output2033_def : output2033 = (.seq output2032 output561) := by
  unfold output2033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2033_skip : Flapjack.WordAlloc.isSkip output2033 = false := by
  rw [output2033_def]
  conv => lhs; cbv
  try rfl
theorem node2033_eq : Flapjack.WordAlloc.removeDeadStructural input2033 value305 value1 value2 = (output2033, value833, value1) := by
  rw [input2033_def, output2033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node561_eq]
  try dsimp only
  rw [node2032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2033 input556)).val
theorem input2034_def : input2034 = (.seq input2033 input556) := by
  unfold input2034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2033 output556)).val
theorem output2034_def : output2034 = (.seq output2033 output556) := by
  unfold output2034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2034_skip : Flapjack.WordAlloc.isSkip output2034 = false := by
  rw [output2034_def]
  conv => lhs; cbv
  try rfl
theorem node2034_eq : Flapjack.WordAlloc.removeDeadStructural input2034 value301 value1 value2 = (output2034, value833, value1) := by
  rw [input2034_def, output2034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node556_eq]
  try dsimp only
  rw [node2033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2034 input549)).val
theorem input2035_def : input2035 = (.seq input2034 input549) := by
  unfold input2035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2034 output549)).val
theorem output2035_def : output2035 = (.seq output2034 output549) := by
  unfold output2035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2035_skip : Flapjack.WordAlloc.isSkip output2035 = false := by
  rw [output2035_def]
  conv => lhs; cbv
  try rfl
theorem node2035_eq : Flapjack.WordAlloc.removeDeadStructural input2035 value300 value1 value2 = (output2035, value833, value1) := by
  rw [input2035_def, output2035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node549_eq]
  try dsimp only
  rw [node2034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2035 input548)).val
theorem input2036_def : input2036 = (.seq input2035 input548) := by
  unfold input2036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2035 output548)).val
theorem output2036_def : output2036 = (.seq output2035 output548) := by
  unfold output2036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2036_skip : Flapjack.WordAlloc.isSkip output2036 = false := by
  rw [output2036_def]
  conv => lhs; cbv
  try rfl
theorem node2036_eq : Flapjack.WordAlloc.removeDeadStructural input2036 value297 value1 value2 = (output2036, value833, value1) := by
  rw [input2036_def, output2036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node548_eq]
  try dsimp only
  rw [node2035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2036 input543)).val
theorem input2037_def : input2037 = (.seq input2036 input543) := by
  unfold input2037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2036 output543)).val
theorem output2037_def : output2037 = (.seq output2036 output543) := by
  unfold output2037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2037_skip : Flapjack.WordAlloc.isSkip output2037 = false := by
  rw [output2037_def]
  conv => lhs; cbv
  try rfl
theorem node2037_eq : Flapjack.WordAlloc.removeDeadStructural input2037 value293 value1 value2 = (output2037, value833, value1) := by
  rw [input2037_def, output2037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  try dsimp only
  rw [node2036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2037 input536)).val
theorem input2038_def : input2038 = (.seq input2037 input536) := by
  unfold input2038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2037 output536)).val
theorem output2038_def : output2038 = (.seq output2037 output536) := by
  unfold output2038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2038_skip : Flapjack.WordAlloc.isSkip output2038 = false := by
  rw [output2038_def]
  conv => lhs; cbv
  try rfl
theorem node2038_eq : Flapjack.WordAlloc.removeDeadStructural input2038 value292 value1 value2 = (output2038, value833, value1) := by
  rw [input2038_def, output2038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node536_eq]
  try dsimp only
  rw [node2037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2038 input535)).val
theorem input2039_def : input2039 = (.seq input2038 input535) := by
  unfold input2039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2038 output535)).val
theorem output2039_def : output2039 = (.seq output2038 output535) := by
  unfold output2039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2039_skip : Flapjack.WordAlloc.isSkip output2039 = false := by
  rw [output2039_def]
  conv => lhs; cbv
  try rfl
theorem node2039_eq : Flapjack.WordAlloc.removeDeadStructural input2039 value289 value1 value2 = (output2039, value833, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node535_eq]
  try dsimp only
  rw [node2038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2039 input530)).val
theorem input2040_def : input2040 = (.seq input2039 input530) := by
  unfold input2040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2039 output530)).val
theorem output2040_def : output2040 = (.seq output2039 output530) := by
  unfold output2040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2040_skip : Flapjack.WordAlloc.isSkip output2040 = false := by
  rw [output2040_def]
  conv => lhs; cbv
  try rfl
theorem node2040_eq : Flapjack.WordAlloc.removeDeadStructural input2040 value289 value1 value2 = (output2040, value833, value1) := by
  rw [input2040_def, output2040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node2039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2040 input529)).val
theorem input2041_def : input2041 = (.seq input2040 input529) := by
  unfold input2041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2040 output529)).val
theorem output2041_def : output2041 = (.seq output2040 output529) := by
  unfold output2041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2041_skip : Flapjack.WordAlloc.isSkip output2041 = false := by
  rw [output2041_def]
  conv => lhs; cbv
  try rfl
theorem node2041_eq : Flapjack.WordAlloc.removeDeadStructural input2041 value288 value1 value2 = (output2041, value833, value1) := by
  rw [input2041_def, output2041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node529_eq]
  try dsimp only
  rw [node2040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2041 input528)).val
theorem input2042_def : input2042 = (.seq input2041 input528) := by
  unfold input2042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2041 output528)).val
theorem output2042_def : output2042 = (.seq output2041 output528) := by
  unfold output2042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2042_skip : Flapjack.WordAlloc.isSkip output2042 = false := by
  rw [output2042_def]
  conv => lhs; cbv
  try rfl
theorem node2042_eq : Flapjack.WordAlloc.removeDeadStructural input2042 value285 value1 value2 = (output2042, value833, value1) := by
  rw [input2042_def, output2042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node528_eq]
  try dsimp only
  rw [node2041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2042 input523)).val
theorem input2043_def : input2043 = (.seq input2042 input523) := by
  unfold input2043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2042 output523)).val
theorem output2043_def : output2043 = (.seq output2042 output523) := by
  unfold output2043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2043_skip : Flapjack.WordAlloc.isSkip output2043 = false := by
  rw [output2043_def]
  conv => lhs; cbv
  try rfl
theorem node2043_eq : Flapjack.WordAlloc.removeDeadStructural input2043 value285 value1 value2 = (output2043, value833, value1) := by
  rw [input2043_def, output2043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node2042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2043 input522)).val
theorem input2044_def : input2044 = (.seq input2043 input522) := by
  unfold input2044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2043 output522)).val
theorem output2044_def : output2044 = (.seq output2043 output522) := by
  unfold output2044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2044_skip : Flapjack.WordAlloc.isSkip output2044 = false := by
  rw [output2044_def]
  conv => lhs; cbv
  try rfl
theorem node2044_eq : Flapjack.WordAlloc.removeDeadStructural input2044 value284 value1 value2 = (output2044, value833, value1) := by
  rw [input2044_def, output2044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node2043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2044 input521)).val
theorem input2045_def : input2045 = (.seq input2044 input521) := by
  unfold input2045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2044 output521)).val
theorem output2045_def : output2045 = (.seq output2044 output521) := by
  unfold output2045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2045_skip : Flapjack.WordAlloc.isSkip output2045 = false := by
  rw [output2045_def]
  conv => lhs; cbv
  try rfl
theorem node2045_eq : Flapjack.WordAlloc.removeDeadStructural input2045 value281 value1 value2 = (output2045, value833, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node521_eq]
  try dsimp only
  rw [node2044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2045 input516)).val
theorem input2046_def : input2046 = (.seq input2045 input516) := by
  unfold input2046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2045 output516)).val
theorem output2046_def : output2046 = (.seq output2045 output516) := by
  unfold output2046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2046_skip : Flapjack.WordAlloc.isSkip output2046 = false := by
  rw [output2046_def]
  conv => lhs; cbv
  try rfl
theorem node2046_eq : Flapjack.WordAlloc.removeDeadStructural input2046 value281 value1 value2 = (output2046, value833, value1) := by
  rw [input2046_def, output2046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node516_eq]
  try dsimp only
  rw [node2045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2046 input515)).val
theorem input2047_def : input2047 = (.seq input2046 input515) := by
  unfold input2047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2046 output515)).val
theorem output2047_def : output2047 = (.seq output2046 output515) := by
  unfold output2047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2047_skip : Flapjack.WordAlloc.isSkip output2047 = false := by
  rw [output2047_def]
  conv => lhs; cbv
  try rfl
theorem node2047_eq : Flapjack.WordAlloc.removeDeadStructural input2047 value280 value1 value2 = (output2047, value833, value1) := by
  rw [input2047_def, output2047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node2046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2047_eq
end InitECandidate.Proofs.DeadStages692
