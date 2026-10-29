import InitECandidate.Proofs.DeadStages713.Chunk053
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input13824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13823 input13822)).val
theorem input13824_def : input13824 = (.seq input13823 input13822) := by
  unfold input13824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13823 output13822)).val
theorem output13824_def : output13824 = (.seq output13823 output13822) := by
  unfold output13824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13824_skip : Flapjack.WordAlloc.isSkip output13824 = false := by
  rw [output13824_def]
  conv => lhs; cbv
  try rfl
theorem node13824_eq : Flapjack.WordAlloc.removeDeadStructural input13824 value6904 value1 value2 = (output13824, value6896, value1) := by
  rw [input13824_def, output13824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13822_eq]
  try dsimp only
  rw [node13823_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13824 input13821)).val
theorem input13825_def : input13825 = (.seq input13824 input13821) := by
  unfold input13825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13824 output13821)).val
theorem output13825_def : output13825 = (.seq output13824 output13821) := by
  unfold output13825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13825_skip : Flapjack.WordAlloc.isSkip output13825 = false := by
  rw [output13825_def]
  conv => lhs; cbv
  try rfl
theorem node13825_eq : Flapjack.WordAlloc.removeDeadStructural input13825 value6903 value1 value2 = (output13825, value6896, value1) := by
  rw [input13825_def, output13825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13821_eq]
  try dsimp only
  rw [node13824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13825 input13820)).val
theorem input13826_def : input13826 = (.seq input13825 input13820) := by
  unfold input13826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13825 output13820)).val
theorem output13826_def : output13826 = (.seq output13825 output13820) := by
  unfold output13826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13826_skip : Flapjack.WordAlloc.isSkip output13826 = false := by
  rw [output13826_def]
  conv => lhs; cbv
  try rfl
theorem node13826_eq : Flapjack.WordAlloc.removeDeadStructural input13826 value6902 value1 value2 = (output13826, value6896, value1) := by
  rw [input13826_def, output13826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13820_eq]
  try dsimp only
  rw [node13825_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13826 input13819)).val
theorem input13827_def : input13827 = (.seq input13826 input13819) := by
  unfold input13827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13826 output13819)).val
theorem output13827_def : output13827 = (.seq output13826 output13819) := by
  unfold output13827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13827_skip : Flapjack.WordAlloc.isSkip output13827 = false := by
  rw [output13827_def]
  conv => lhs; cbv
  try rfl
theorem node13827_eq : Flapjack.WordAlloc.removeDeadStructural input13827 value6901 value1 value2 = (output13827, value6896, value1) := by
  rw [input13827_def, output13827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13819_eq]
  try dsimp only
  rw [node13826_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13827 input13818)).val
theorem input13828_def : input13828 = (.seq input13827 input13818) := by
  unfold input13828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13827 output13818)).val
theorem output13828_def : output13828 = (.seq output13827 output13818) := by
  unfold output13828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13828_skip : Flapjack.WordAlloc.isSkip output13828 = false := by
  rw [output13828_def]
  conv => lhs; cbv
  try rfl
theorem node13828_eq : Flapjack.WordAlloc.removeDeadStructural input13828 value6896 value1 value2 = (output13828, value6896, value1) := by
  rw [input13828_def, output13828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13818_eq]
  try dsimp only
  rw [node13827_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13828 input13783)).val
theorem input13829_def : input13829 = (.seq input13828 input13783) := by
  unfold input13829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13828 output13783)).val
theorem output13829_def : output13829 = (.seq output13828 output13783) := by
  unfold output13829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13829_skip : Flapjack.WordAlloc.isSkip output13829 = false := by
  rw [output13829_def]
  conv => lhs; cbv
  try rfl
theorem node13829_eq : Flapjack.WordAlloc.removeDeadStructural input13829 value6896 value1 value2 = (output13829, value6896, value1) := by
  rw [input13829_def, output13829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13783_eq]
  try dsimp only
  rw [node13828_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13829 input13782)).val
theorem input13830_def : input13830 = (.seq input13829 input13782) := by
  unfold input13830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13829)).val
theorem output13830_def : output13830 = (output13829) := by
  unfold output13830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13830_skip : Flapjack.WordAlloc.isSkip output13830 = false := by
  rw [output13830_def]
  conv => lhs; cbv
  try rfl
theorem node13830_eq : Flapjack.WordAlloc.removeDeadStructural input13830 value6896 value1 value2 = (output13830, value6896, value1) := by
  rw [input13830_def, output13830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13782_eq]
  try dsimp only
  rw [node13829_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13830 input13781)).val
theorem input13831_def : input13831 = (.seq input13830 input13781) := by
  unfold input13831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13830 output13781)).val
theorem output13831_def : output13831 = (.seq output13830 output13781) := by
  unfold output13831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13831_skip : Flapjack.WordAlloc.isSkip output13831 = false := by
  rw [output13831_def]
  conv => lhs; cbv
  try rfl
theorem node13831_eq : Flapjack.WordAlloc.removeDeadStructural input13831 value6892 value1 value2 = (output13831, value6896, value1) := by
  rw [input13831_def, output13831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13781_eq]
  try dsimp only
  rw [node13830_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13831 input13774)).val
theorem input13832_def : input13832 = (.seq input13831 input13774) := by
  unfold input13832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13831 output13774)).val
theorem output13832_def : output13832 = (.seq output13831 output13774) := by
  unfold output13832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13832_skip : Flapjack.WordAlloc.isSkip output13832 = false := by
  rw [output13832_def]
  conv => lhs; cbv
  try rfl
theorem node13832_eq : Flapjack.WordAlloc.removeDeadStructural input13832 value6892 value1 value2 = (output13832, value6896, value1) := by
  rw [input13832_def, output13832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13774_eq]
  try dsimp only
  rw [node13831_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13832 input13773)).val
theorem input13833_def : input13833 = (.seq input13832 input13773) := by
  unfold input13833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13832 output13773)).val
theorem output13833_def : output13833 = (.seq output13832 output13773) := by
  unfold output13833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13833_skip : Flapjack.WordAlloc.isSkip output13833 = false := by
  rw [output13833_def]
  conv => lhs; cbv
  try rfl
theorem node13833_eq : Flapjack.WordAlloc.removeDeadStructural input13833 value6888 value1 value2 = (output13833, value6896, value1) := by
  rw [input13833_def, output13833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13773_eq]
  try dsimp only
  rw [node13832_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13833 input13766)).val
theorem input13834_def : input13834 = (.seq input13833 input13766) := by
  unfold input13834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13833 output13766)).val
theorem output13834_def : output13834 = (.seq output13833 output13766) := by
  unfold output13834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13834_skip : Flapjack.WordAlloc.isSkip output13834 = false := by
  rw [output13834_def]
  conv => lhs; cbv
  try rfl
theorem node13834_eq : Flapjack.WordAlloc.removeDeadStructural input13834 value6887 value1 value2 = (output13834, value6896, value1) := by
  rw [input13834_def, output13834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13766_eq]
  try dsimp only
  rw [node13833_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13834 input13765)).val
theorem input13835_def : input13835 = (.seq input13834 input13765) := by
  unfold input13835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13834 output13765)).val
theorem output13835_def : output13835 = (.seq output13834 output13765) := by
  unfold output13835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13835_skip : Flapjack.WordAlloc.isSkip output13835 = false := by
  rw [output13835_def]
  conv => lhs; cbv
  try rfl
theorem node13835_eq : Flapjack.WordAlloc.removeDeadStructural input13835 value6886 value1 value2 = (output13835, value6896, value1) := by
  rw [input13835_def, output13835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13765_eq]
  try dsimp only
  rw [node13834_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13835 input13764)).val
theorem input13836_def : input13836 = (.seq input13835 input13764) := by
  unfold input13836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13835 output13764)).val
theorem output13836_def : output13836 = (.seq output13835 output13764) := by
  unfold output13836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13836_skip : Flapjack.WordAlloc.isSkip output13836 = false := by
  rw [output13836_def]
  conv => lhs; cbv
  try rfl
theorem node13836_eq : Flapjack.WordAlloc.removeDeadStructural input13836 value5 value1 value2 = (output13836, value6896, value1) := by
  rw [input13836_def, output13836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13764_eq]
  try dsimp only
  rw [node13835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13836 input13761)).val
theorem input13837_def : input13837 = (.seq input13836 input13761) := by
  unfold input13837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13836 output13761)).val
theorem output13837_def : output13837 = (.seq output13836 output13761) := by
  unfold output13837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13837_skip : Flapjack.WordAlloc.isSkip output13837 = false := by
  rw [output13837_def]
  conv => lhs; cbv
  try rfl
theorem node13837_eq : Flapjack.WordAlloc.removeDeadStructural input13837 value6881 value1 value2 = (output13837, value6896, value1) := by
  rw [input13837_def, output13837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13761_eq]
  try dsimp only
  rw [node13836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13837 input13754)).val
theorem input13838_def : input13838 = (.seq input13837 input13754) := by
  unfold input13838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13837)).val
theorem output13838_def : output13838 = (output13837) := by
  unfold output13838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13838_skip : Flapjack.WordAlloc.isSkip output13838 = false := by
  rw [output13838_def]
  conv => lhs; cbv
  try rfl
theorem node13838_eq : Flapjack.WordAlloc.removeDeadStructural input13838 value6881 value1 value2 = (output13838, value6896, value1) := by
  rw [input13838_def, output13838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13754_eq]
  try dsimp only
  rw [node13837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13838 input13753)).val
theorem input13839_def : input13839 = (.seq input13838 input13753) := by
  unfold input13839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13838 output13753)).val
theorem output13839_def : output13839 = (.seq output13838 output13753) := by
  unfold output13839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13839_skip : Flapjack.WordAlloc.isSkip output13839 = false := by
  rw [output13839_def]
  conv => lhs; cbv
  try rfl
theorem node13839_eq : Flapjack.WordAlloc.removeDeadStructural input13839 value6880 value1 value2 = (output13839, value6896, value1) := by
  rw [input13839_def, output13839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13753_eq]
  try dsimp only
  rw [node13838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13839 input13752)).val
theorem input13840_def : input13840 = (.seq input13839 input13752) := by
  unfold input13840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13839 output13752)).val
theorem output13840_def : output13840 = (.seq output13839 output13752) := by
  unfold output13840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13840_skip : Flapjack.WordAlloc.isSkip output13840 = false := by
  rw [output13840_def]
  conv => lhs; cbv
  try rfl
theorem node13840_eq : Flapjack.WordAlloc.removeDeadStructural input13840 value5 value1 value2 = (output13840, value6896, value1) := by
  rw [input13840_def, output13840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13752_eq]
  try dsimp only
  rw [node13839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13840 input13749)).val
theorem input13841_def : input13841 = (.seq input13840 input13749) := by
  unfold input13841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13840 output13749)).val
theorem output13841_def : output13841 = (.seq output13840 output13749) := by
  unfold output13841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13841_skip : Flapjack.WordAlloc.isSkip output13841 = false := by
  rw [output13841_def]
  conv => lhs; cbv
  try rfl
theorem node13841_eq : Flapjack.WordAlloc.removeDeadStructural input13841 value6874 value1 value2 = (output13841, value6896, value1) := by
  rw [input13841_def, output13841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13749_eq]
  try dsimp only
  rw [node13840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13841 input13740)).val
theorem input13842_def : input13842 = (.seq input13841 input13740) := by
  unfold input13842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13841)).val
theorem output13842_def : output13842 = (output13841) := by
  unfold output13842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13842_skip : Flapjack.WordAlloc.isSkip output13842 = false := by
  rw [output13842_def]
  conv => lhs; cbv
  try rfl
theorem node13842_eq : Flapjack.WordAlloc.removeDeadStructural input13842 value6874 value1 value2 = (output13842, value6896, value1) := by
  rw [input13842_def, output13842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13740_eq]
  try dsimp only
  rw [node13841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13842 input13739)).val
theorem input13843_def : input13843 = (.seq input13842 input13739) := by
  unfold input13843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13842 output13739)).val
theorem output13843_def : output13843 = (.seq output13842 output13739) := by
  unfold output13843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13843_skip : Flapjack.WordAlloc.isSkip output13843 = false := by
  rw [output13843_def]
  conv => lhs; cbv
  try rfl
theorem node13843_eq : Flapjack.WordAlloc.removeDeadStructural input13843 value6873 value1 value2 = (output13843, value6896, value1) := by
  rw [input13843_def, output13843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13739_eq]
  try dsimp only
  rw [node13842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13843 input13738)).val
theorem input13844_def : input13844 = (.seq input13843 input13738) := by
  unfold input13844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13843 output13738)).val
theorem output13844_def : output13844 = (.seq output13843 output13738) := by
  unfold output13844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13844_skip : Flapjack.WordAlloc.isSkip output13844 = false := by
  rw [output13844_def]
  conv => lhs; cbv
  try rfl
theorem node13844_eq : Flapjack.WordAlloc.removeDeadStructural input13844 value5 value1 value2 = (output13844, value6896, value1) := by
  rw [input13844_def, output13844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13738_eq]
  try dsimp only
  rw [node13843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13844 input13735)).val
theorem input13845_def : input13845 = (.seq input13844 input13735) := by
  unfold input13845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13844 output13735)).val
theorem output13845_def : output13845 = (.seq output13844 output13735) := by
  unfold output13845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13845_skip : Flapjack.WordAlloc.isSkip output13845 = false := by
  rw [output13845_def]
  conv => lhs; cbv
  try rfl
theorem node13845_eq : Flapjack.WordAlloc.removeDeadStructural input13845 value6867 value1 value2 = (output13845, value6896, value1) := by
  rw [input13845_def, output13845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13735_eq]
  try dsimp only
  rw [node13844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13845 input13726)).val
theorem input13846_def : input13846 = (.seq input13845 input13726) := by
  unfold input13846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13845)).val
theorem output13846_def : output13846 = (output13845) := by
  unfold output13846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13846_skip : Flapjack.WordAlloc.isSkip output13846 = false := by
  rw [output13846_def]
  conv => lhs; cbv
  try rfl
theorem node13846_eq : Flapjack.WordAlloc.removeDeadStructural input13846 value6867 value1 value2 = (output13846, value6896, value1) := by
  rw [input13846_def, output13846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13726_eq]
  try dsimp only
  rw [node13845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13846 input13725)).val
theorem input13847_def : input13847 = (.seq input13846 input13725) := by
  unfold input13847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13846 output13725)).val
theorem output13847_def : output13847 = (.seq output13846 output13725) := by
  unfold output13847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13847_skip : Flapjack.WordAlloc.isSkip output13847 = false := by
  rw [output13847_def]
  conv => lhs; cbv
  try rfl
theorem node13847_eq : Flapjack.WordAlloc.removeDeadStructural input13847 value6866 value1 value2 = (output13847, value6896, value1) := by
  rw [input13847_def, output13847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13725_eq]
  try dsimp only
  rw [node13846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13847 input13724)).val
theorem input13848_def : input13848 = (.seq input13847 input13724) := by
  unfold input13848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13847 output13724)).val
theorem output13848_def : output13848 = (.seq output13847 output13724) := by
  unfold output13848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13848_skip : Flapjack.WordAlloc.isSkip output13848 = false := by
  rw [output13848_def]
  conv => lhs; cbv
  try rfl
theorem node13848_eq : Flapjack.WordAlloc.removeDeadStructural input13848 value5 value1 value2 = (output13848, value6896, value1) := by
  rw [input13848_def, output13848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13724_eq]
  try dsimp only
  rw [node13847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13848 input13721)).val
theorem input13849_def : input13849 = (.seq input13848 input13721) := by
  unfold input13849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13848 output13721)).val
theorem output13849_def : output13849 = (.seq output13848 output13721) := by
  unfold output13849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13849_skip : Flapjack.WordAlloc.isSkip output13849 = false := by
  rw [output13849_def]
  conv => lhs; cbv
  try rfl
theorem node13849_eq : Flapjack.WordAlloc.removeDeadStructural input13849 value6860 value1 value2 = (output13849, value6896, value1) := by
  rw [input13849_def, output13849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13721_eq]
  try dsimp only
  rw [node13848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13849 input13712)).val
theorem input13850_def : input13850 = (.seq input13849 input13712) := by
  unfold input13850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13849)).val
theorem output13850_def : output13850 = (output13849) := by
  unfold output13850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13850_skip : Flapjack.WordAlloc.isSkip output13850 = false := by
  rw [output13850_def]
  conv => lhs; cbv
  try rfl
theorem node13850_eq : Flapjack.WordAlloc.removeDeadStructural input13850 value6860 value1 value2 = (output13850, value6896, value1) := by
  rw [input13850_def, output13850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13712_eq]
  try dsimp only
  rw [node13849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13850 input13711)).val
theorem input13851_def : input13851 = (.seq input13850 input13711) := by
  unfold input13851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13850 output13711)).val
theorem output13851_def : output13851 = (.seq output13850 output13711) := by
  unfold output13851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13851_skip : Flapjack.WordAlloc.isSkip output13851 = false := by
  rw [output13851_def]
  conv => lhs; cbv
  try rfl
theorem node13851_eq : Flapjack.WordAlloc.removeDeadStructural input13851 value6859 value1 value2 = (output13851, value6896, value1) := by
  rw [input13851_def, output13851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13711_eq]
  try dsimp only
  rw [node13850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13851 input13710)).val
theorem input13852_def : input13852 = (.seq input13851 input13710) := by
  unfold input13852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13851 output13710)).val
theorem output13852_def : output13852 = (.seq output13851 output13710) := by
  unfold output13852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13852_skip : Flapjack.WordAlloc.isSkip output13852 = false := by
  rw [output13852_def]
  conv => lhs; cbv
  try rfl
theorem node13852_eq : Flapjack.WordAlloc.removeDeadStructural input13852 value5 value1 value2 = (output13852, value6896, value1) := by
  rw [input13852_def, output13852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13710_eq]
  try dsimp only
  rw [node13851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13852 input13707)).val
theorem input13853_def : input13853 = (.seq input13852 input13707) := by
  unfold input13853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13852 output13707)).val
theorem output13853_def : output13853 = (.seq output13852 output13707) := by
  unfold output13853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13853_skip : Flapjack.WordAlloc.isSkip output13853 = false := by
  rw [output13853_def]
  conv => lhs; cbv
  try rfl
theorem node13853_eq : Flapjack.WordAlloc.removeDeadStructural input13853 value6853 value1 value2 = (output13853, value6896, value1) := by
  rw [input13853_def, output13853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13707_eq]
  try dsimp only
  rw [node13852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13853 input13698)).val
theorem input13854_def : input13854 = (.seq input13853 input13698) := by
  unfold input13854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13853)).val
theorem output13854_def : output13854 = (output13853) := by
  unfold output13854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13854_skip : Flapjack.WordAlloc.isSkip output13854 = false := by
  rw [output13854_def]
  conv => lhs; cbv
  try rfl
theorem node13854_eq : Flapjack.WordAlloc.removeDeadStructural input13854 value6853 value1 value2 = (output13854, value6896, value1) := by
  rw [input13854_def, output13854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13698_eq]
  try dsimp only
  rw [node13853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13854 input13697)).val
theorem input13855_def : input13855 = (.seq input13854 input13697) := by
  unfold input13855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13854 output13697)).val
theorem output13855_def : output13855 = (.seq output13854 output13697) := by
  unfold output13855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13855_skip : Flapjack.WordAlloc.isSkip output13855 = false := by
  rw [output13855_def]
  conv => lhs; cbv
  try rfl
theorem node13855_eq : Flapjack.WordAlloc.removeDeadStructural input13855 value6852 value1 value2 = (output13855, value6896, value1) := by
  rw [input13855_def, output13855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13697_eq]
  try dsimp only
  rw [node13854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13855 input13696)).val
theorem input13856_def : input13856 = (.seq input13855 input13696) := by
  unfold input13856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13855 output13696)).val
theorem output13856_def : output13856 = (.seq output13855 output13696) := by
  unfold output13856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13856_skip : Flapjack.WordAlloc.isSkip output13856 = false := by
  rw [output13856_def]
  conv => lhs; cbv
  try rfl
theorem node13856_eq : Flapjack.WordAlloc.removeDeadStructural input13856 value5 value1 value2 = (output13856, value6896, value1) := by
  rw [input13856_def, output13856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13696_eq]
  try dsimp only
  rw [node13855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13856 input13693)).val
theorem input13857_def : input13857 = (.seq input13856 input13693) := by
  unfold input13857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13856 output13693)).val
theorem output13857_def : output13857 = (.seq output13856 output13693) := by
  unfold output13857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13857_skip : Flapjack.WordAlloc.isSkip output13857 = false := by
  rw [output13857_def]
  conv => lhs; cbv
  try rfl
theorem node13857_eq : Flapjack.WordAlloc.removeDeadStructural input13857 value6846 value1 value2 = (output13857, value6896, value1) := by
  rw [input13857_def, output13857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13693_eq]
  try dsimp only
  rw [node13856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13857 input13684)).val
theorem input13858_def : input13858 = (.seq input13857 input13684) := by
  unfold input13858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13857)).val
theorem output13858_def : output13858 = (output13857) := by
  unfold output13858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13858_skip : Flapjack.WordAlloc.isSkip output13858 = false := by
  rw [output13858_def]
  conv => lhs; cbv
  try rfl
theorem node13858_eq : Flapjack.WordAlloc.removeDeadStructural input13858 value6846 value1 value2 = (output13858, value6896, value1) := by
  rw [input13858_def, output13858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13684_eq]
  try dsimp only
  rw [node13857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13858 input13683)).val
theorem input13859_def : input13859 = (.seq input13858 input13683) := by
  unfold input13859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13858 output13683)).val
theorem output13859_def : output13859 = (.seq output13858 output13683) := by
  unfold output13859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13859_skip : Flapjack.WordAlloc.isSkip output13859 = false := by
  rw [output13859_def]
  conv => lhs; cbv
  try rfl
theorem node13859_eq : Flapjack.WordAlloc.removeDeadStructural input13859 value6845 value1 value2 = (output13859, value6896, value1) := by
  rw [input13859_def, output13859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13683_eq]
  try dsimp only
  rw [node13858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13859 input13682)).val
theorem input13860_def : input13860 = (.seq input13859 input13682) := by
  unfold input13860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13859 output13682)).val
theorem output13860_def : output13860 = (.seq output13859 output13682) := by
  unfold output13860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13860_skip : Flapjack.WordAlloc.isSkip output13860 = false := by
  rw [output13860_def]
  conv => lhs; cbv
  try rfl
theorem node13860_eq : Flapjack.WordAlloc.removeDeadStructural input13860 value5 value1 value2 = (output13860, value6896, value1) := by
  rw [input13860_def, output13860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13682_eq]
  try dsimp only
  rw [node13859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13860 input13679)).val
theorem input13861_def : input13861 = (.seq input13860 input13679) := by
  unfold input13861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13860 output13679)).val
theorem output13861_def : output13861 = (.seq output13860 output13679) := by
  unfold output13861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13861_skip : Flapjack.WordAlloc.isSkip output13861 = false := by
  rw [output13861_def]
  conv => lhs; cbv
  try rfl
theorem node13861_eq : Flapjack.WordAlloc.removeDeadStructural input13861 value6839 value1 value2 = (output13861, value6896, value1) := by
  rw [input13861_def, output13861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13679_eq]
  try dsimp only
  rw [node13860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13861 input13670)).val
theorem input13862_def : input13862 = (.seq input13861 input13670) := by
  unfold input13862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13861)).val
theorem output13862_def : output13862 = (output13861) := by
  unfold output13862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13862_skip : Flapjack.WordAlloc.isSkip output13862 = false := by
  rw [output13862_def]
  conv => lhs; cbv
  try rfl
theorem node13862_eq : Flapjack.WordAlloc.removeDeadStructural input13862 value6839 value1 value2 = (output13862, value6896, value1) := by
  rw [input13862_def, output13862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13670_eq]
  try dsimp only
  rw [node13861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13862 input13669)).val
theorem input13863_def : input13863 = (.seq input13862 input13669) := by
  unfold input13863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13862 output13669)).val
theorem output13863_def : output13863 = (.seq output13862 output13669) := by
  unfold output13863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13863_skip : Flapjack.WordAlloc.isSkip output13863 = false := by
  rw [output13863_def]
  conv => lhs; cbv
  try rfl
theorem node13863_eq : Flapjack.WordAlloc.removeDeadStructural input13863 value6838 value1 value2 = (output13863, value6896, value1) := by
  rw [input13863_def, output13863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13669_eq]
  try dsimp only
  rw [node13862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13863 input13668)).val
theorem input13864_def : input13864 = (.seq input13863 input13668) := by
  unfold input13864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13863 output13668)).val
theorem output13864_def : output13864 = (.seq output13863 output13668) := by
  unfold output13864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13864_skip : Flapjack.WordAlloc.isSkip output13864 = false := by
  rw [output13864_def]
  conv => lhs; cbv
  try rfl
theorem node13864_eq : Flapjack.WordAlloc.removeDeadStructural input13864 value5 value1 value2 = (output13864, value6896, value1) := by
  rw [input13864_def, output13864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13668_eq]
  try dsimp only
  rw [node13863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13864 input13665)).val
theorem input13865_def : input13865 = (.seq input13864 input13665) := by
  unfold input13865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13864 output13665)).val
theorem output13865_def : output13865 = (.seq output13864 output13665) := by
  unfold output13865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13865_skip : Flapjack.WordAlloc.isSkip output13865 = false := by
  rw [output13865_def]
  conv => lhs; cbv
  try rfl
theorem node13865_eq : Flapjack.WordAlloc.removeDeadStructural input13865 value6832 value1 value2 = (output13865, value6896, value1) := by
  rw [input13865_def, output13865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13665_eq]
  try dsimp only
  rw [node13864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13865 input13656)).val
theorem input13866_def : input13866 = (.seq input13865 input13656) := by
  unfold input13866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13865)).val
theorem output13866_def : output13866 = (output13865) := by
  unfold output13866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13866_skip : Flapjack.WordAlloc.isSkip output13866 = false := by
  rw [output13866_def]
  conv => lhs; cbv
  try rfl
theorem node13866_eq : Flapjack.WordAlloc.removeDeadStructural input13866 value6832 value1 value2 = (output13866, value6896, value1) := by
  rw [input13866_def, output13866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13656_eq]
  try dsimp only
  rw [node13865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13866 input13655)).val
theorem input13867_def : input13867 = (.seq input13866 input13655) := by
  unfold input13867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13866 output13655)).val
theorem output13867_def : output13867 = (.seq output13866 output13655) := by
  unfold output13867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13867_skip : Flapjack.WordAlloc.isSkip output13867 = false := by
  rw [output13867_def]
  conv => lhs; cbv
  try rfl
theorem node13867_eq : Flapjack.WordAlloc.removeDeadStructural input13867 value6831 value1 value2 = (output13867, value6896, value1) := by
  rw [input13867_def, output13867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13655_eq]
  try dsimp only
  rw [node13866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13867 input13654)).val
theorem input13868_def : input13868 = (.seq input13867 input13654) := by
  unfold input13868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13867 output13654)).val
theorem output13868_def : output13868 = (.seq output13867 output13654) := by
  unfold output13868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13868_skip : Flapjack.WordAlloc.isSkip output13868 = false := by
  rw [output13868_def]
  conv => lhs; cbv
  try rfl
theorem node13868_eq : Flapjack.WordAlloc.removeDeadStructural input13868 value5 value1 value2 = (output13868, value6896, value1) := by
  rw [input13868_def, output13868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13654_eq]
  try dsimp only
  rw [node13867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13868 input13651)).val
theorem input13869_def : input13869 = (.seq input13868 input13651) := by
  unfold input13869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13868 output13651)).val
theorem output13869_def : output13869 = (.seq output13868 output13651) := by
  unfold output13869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13869_skip : Flapjack.WordAlloc.isSkip output13869 = false := by
  rw [output13869_def]
  conv => lhs; cbv
  try rfl
theorem node13869_eq : Flapjack.WordAlloc.removeDeadStructural input13869 value6825 value1 value2 = (output13869, value6896, value1) := by
  rw [input13869_def, output13869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13651_eq]
  try dsimp only
  rw [node13868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13869 input13642)).val
theorem input13870_def : input13870 = (.seq input13869 input13642) := by
  unfold input13870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13869)).val
theorem output13870_def : output13870 = (output13869) := by
  unfold output13870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13870_skip : Flapjack.WordAlloc.isSkip output13870 = false := by
  rw [output13870_def]
  conv => lhs; cbv
  try rfl
theorem node13870_eq : Flapjack.WordAlloc.removeDeadStructural input13870 value6825 value1 value2 = (output13870, value6896, value1) := by
  rw [input13870_def, output13870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13642_eq]
  try dsimp only
  rw [node13869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13870 input13641)).val
theorem input13871_def : input13871 = (.seq input13870 input13641) := by
  unfold input13871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13870 output13641)).val
theorem output13871_def : output13871 = (.seq output13870 output13641) := by
  unfold output13871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13871_skip : Flapjack.WordAlloc.isSkip output13871 = false := by
  rw [output13871_def]
  conv => lhs; cbv
  try rfl
theorem node13871_eq : Flapjack.WordAlloc.removeDeadStructural input13871 value6824 value1 value2 = (output13871, value6896, value1) := by
  rw [input13871_def, output13871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13641_eq]
  try dsimp only
  rw [node13870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13871 input13640)).val
theorem input13872_def : input13872 = (.seq input13871 input13640) := by
  unfold input13872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13871 output13640)).val
theorem output13872_def : output13872 = (.seq output13871 output13640) := by
  unfold output13872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13872_skip : Flapjack.WordAlloc.isSkip output13872 = false := by
  rw [output13872_def]
  conv => lhs; cbv
  try rfl
theorem node13872_eq : Flapjack.WordAlloc.removeDeadStructural input13872 value5 value1 value2 = (output13872, value6896, value1) := by
  rw [input13872_def, output13872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13640_eq]
  try dsimp only
  rw [node13871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13872 input13637)).val
theorem input13873_def : input13873 = (.seq input13872 input13637) := by
  unfold input13873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13872 output13637)).val
theorem output13873_def : output13873 = (.seq output13872 output13637) := by
  unfold output13873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13873_skip : Flapjack.WordAlloc.isSkip output13873 = false := by
  rw [output13873_def]
  conv => lhs; cbv
  try rfl
theorem node13873_eq : Flapjack.WordAlloc.removeDeadStructural input13873 value6818 value1 value2 = (output13873, value6896, value1) := by
  rw [input13873_def, output13873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13637_eq]
  try dsimp only
  rw [node13872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13873 input13628)).val
theorem input13874_def : input13874 = (.seq input13873 input13628) := by
  unfold input13874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13873)).val
theorem output13874_def : output13874 = (output13873) := by
  unfold output13874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13874_skip : Flapjack.WordAlloc.isSkip output13874 = false := by
  rw [output13874_def]
  conv => lhs; cbv
  try rfl
theorem node13874_eq : Flapjack.WordAlloc.removeDeadStructural input13874 value6818 value1 value2 = (output13874, value6896, value1) := by
  rw [input13874_def, output13874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13628_eq]
  try dsimp only
  rw [node13873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13874 input13627)).val
theorem input13875_def : input13875 = (.seq input13874 input13627) := by
  unfold input13875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13874 output13627)).val
theorem output13875_def : output13875 = (.seq output13874 output13627) := by
  unfold output13875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13875_skip : Flapjack.WordAlloc.isSkip output13875 = false := by
  rw [output13875_def]
  conv => lhs; cbv
  try rfl
theorem node13875_eq : Flapjack.WordAlloc.removeDeadStructural input13875 value6817 value1 value2 = (output13875, value6896, value1) := by
  rw [input13875_def, output13875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13627_eq]
  try dsimp only
  rw [node13874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13875 input13626)).val
theorem input13876_def : input13876 = (.seq input13875 input13626) := by
  unfold input13876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13875 output13626)).val
theorem output13876_def : output13876 = (.seq output13875 output13626) := by
  unfold output13876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13876_skip : Flapjack.WordAlloc.isSkip output13876 = false := by
  rw [output13876_def]
  conv => lhs; cbv
  try rfl
theorem node13876_eq : Flapjack.WordAlloc.removeDeadStructural input13876 value5 value1 value2 = (output13876, value6896, value1) := by
  rw [input13876_def, output13876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13626_eq]
  try dsimp only
  rw [node13875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13876 input13623)).val
theorem input13877_def : input13877 = (.seq input13876 input13623) := by
  unfold input13877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13876 output13623)).val
theorem output13877_def : output13877 = (.seq output13876 output13623) := by
  unfold output13877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13877_skip : Flapjack.WordAlloc.isSkip output13877 = false := by
  rw [output13877_def]
  conv => lhs; cbv
  try rfl
theorem node13877_eq : Flapjack.WordAlloc.removeDeadStructural input13877 value6811 value1 value2 = (output13877, value6896, value1) := by
  rw [input13877_def, output13877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13623_eq]
  try dsimp only
  rw [node13876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13877 input13614)).val
theorem input13878_def : input13878 = (.seq input13877 input13614) := by
  unfold input13878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13877)).val
theorem output13878_def : output13878 = (output13877) := by
  unfold output13878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13878_skip : Flapjack.WordAlloc.isSkip output13878 = false := by
  rw [output13878_def]
  conv => lhs; cbv
  try rfl
theorem node13878_eq : Flapjack.WordAlloc.removeDeadStructural input13878 value6811 value1 value2 = (output13878, value6896, value1) := by
  rw [input13878_def, output13878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13614_eq]
  try dsimp only
  rw [node13877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13878 input13613)).val
theorem input13879_def : input13879 = (.seq input13878 input13613) := by
  unfold input13879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13878 output13613)).val
theorem output13879_def : output13879 = (.seq output13878 output13613) := by
  unfold output13879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13879_skip : Flapjack.WordAlloc.isSkip output13879 = false := by
  rw [output13879_def]
  conv => lhs; cbv
  try rfl
theorem node13879_eq : Flapjack.WordAlloc.removeDeadStructural input13879 value6810 value1 value2 = (output13879, value6896, value1) := by
  rw [input13879_def, output13879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13613_eq]
  try dsimp only
  rw [node13878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13879 input13612)).val
theorem input13880_def : input13880 = (.seq input13879 input13612) := by
  unfold input13880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13879 output13612)).val
theorem output13880_def : output13880 = (.seq output13879 output13612) := by
  unfold output13880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13880_skip : Flapjack.WordAlloc.isSkip output13880 = false := by
  rw [output13880_def]
  conv => lhs; cbv
  try rfl
theorem node13880_eq : Flapjack.WordAlloc.removeDeadStructural input13880 value5 value1 value2 = (output13880, value6896, value1) := by
  rw [input13880_def, output13880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13612_eq]
  try dsimp only
  rw [node13879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13880 input13609)).val
theorem input13881_def : input13881 = (.seq input13880 input13609) := by
  unfold input13881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13880 output13609)).val
theorem output13881_def : output13881 = (.seq output13880 output13609) := by
  unfold output13881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13881_skip : Flapjack.WordAlloc.isSkip output13881 = false := by
  rw [output13881_def]
  conv => lhs; cbv
  try rfl
theorem node13881_eq : Flapjack.WordAlloc.removeDeadStructural input13881 value6804 value1 value2 = (output13881, value6896, value1) := by
  rw [input13881_def, output13881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13609_eq]
  try dsimp only
  rw [node13880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13881 input13600)).val
theorem input13882_def : input13882 = (.seq input13881 input13600) := by
  unfold input13882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13881)).val
theorem output13882_def : output13882 = (output13881) := by
  unfold output13882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13882_skip : Flapjack.WordAlloc.isSkip output13882 = false := by
  rw [output13882_def]
  conv => lhs; cbv
  try rfl
theorem node13882_eq : Flapjack.WordAlloc.removeDeadStructural input13882 value6804 value1 value2 = (output13882, value6896, value1) := by
  rw [input13882_def, output13882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13600_eq]
  try dsimp only
  rw [node13881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13882 input13599)).val
theorem input13883_def : input13883 = (.seq input13882 input13599) := by
  unfold input13883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13882 output13599)).val
theorem output13883_def : output13883 = (.seq output13882 output13599) := by
  unfold output13883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13883_skip : Flapjack.WordAlloc.isSkip output13883 = false := by
  rw [output13883_def]
  conv => lhs; cbv
  try rfl
theorem node13883_eq : Flapjack.WordAlloc.removeDeadStructural input13883 value6803 value1 value2 = (output13883, value6896, value1) := by
  rw [input13883_def, output13883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13599_eq]
  try dsimp only
  rw [node13882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13883 input13598)).val
theorem input13884_def : input13884 = (.seq input13883 input13598) := by
  unfold input13884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13883 output13598)).val
theorem output13884_def : output13884 = (.seq output13883 output13598) := by
  unfold output13884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13884_skip : Flapjack.WordAlloc.isSkip output13884 = false := by
  rw [output13884_def]
  conv => lhs; cbv
  try rfl
theorem node13884_eq : Flapjack.WordAlloc.removeDeadStructural input13884 value5 value1 value2 = (output13884, value6896, value1) := by
  rw [input13884_def, output13884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13598_eq]
  try dsimp only
  rw [node13883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13884 input13595)).val
theorem input13885_def : input13885 = (.seq input13884 input13595) := by
  unfold input13885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13884 output13595)).val
theorem output13885_def : output13885 = (.seq output13884 output13595) := by
  unfold output13885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13885_skip : Flapjack.WordAlloc.isSkip output13885 = false := by
  rw [output13885_def]
  conv => lhs; cbv
  try rfl
theorem node13885_eq : Flapjack.WordAlloc.removeDeadStructural input13885 value6797 value1 value2 = (output13885, value6896, value1) := by
  rw [input13885_def, output13885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13595_eq]
  try dsimp only
  rw [node13884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13885 input13586)).val
theorem input13886_def : input13886 = (.seq input13885 input13586) := by
  unfold input13886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13885)).val
theorem output13886_def : output13886 = (output13885) := by
  unfold output13886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13886_skip : Flapjack.WordAlloc.isSkip output13886 = false := by
  rw [output13886_def]
  conv => lhs; cbv
  try rfl
theorem node13886_eq : Flapjack.WordAlloc.removeDeadStructural input13886 value6797 value1 value2 = (output13886, value6896, value1) := by
  rw [input13886_def, output13886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13586_eq]
  try dsimp only
  rw [node13885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13886 input13585)).val
theorem input13887_def : input13887 = (.seq input13886 input13585) := by
  unfold input13887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13886 output13585)).val
theorem output13887_def : output13887 = (.seq output13886 output13585) := by
  unfold output13887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13887_skip : Flapjack.WordAlloc.isSkip output13887 = false := by
  rw [output13887_def]
  conv => lhs; cbv
  try rfl
theorem node13887_eq : Flapjack.WordAlloc.removeDeadStructural input13887 value6796 value1 value2 = (output13887, value6896, value1) := by
  rw [input13887_def, output13887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13585_eq]
  try dsimp only
  rw [node13886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13887 input13584)).val
theorem input13888_def : input13888 = (.seq input13887 input13584) := by
  unfold input13888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13887 output13584)).val
theorem output13888_def : output13888 = (.seq output13887 output13584) := by
  unfold output13888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13888_skip : Flapjack.WordAlloc.isSkip output13888 = false := by
  rw [output13888_def]
  conv => lhs; cbv
  try rfl
theorem node13888_eq : Flapjack.WordAlloc.removeDeadStructural input13888 value5 value1 value2 = (output13888, value6896, value1) := by
  rw [input13888_def, output13888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13584_eq]
  try dsimp only
  rw [node13887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13888 input13581)).val
theorem input13889_def : input13889 = (.seq input13888 input13581) := by
  unfold input13889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13888 output13581)).val
theorem output13889_def : output13889 = (.seq output13888 output13581) := by
  unfold output13889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13889_skip : Flapjack.WordAlloc.isSkip output13889 = false := by
  rw [output13889_def]
  conv => lhs; cbv
  try rfl
theorem node13889_eq : Flapjack.WordAlloc.removeDeadStructural input13889 value6790 value1 value2 = (output13889, value6896, value1) := by
  rw [input13889_def, output13889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13581_eq]
  try dsimp only
  rw [node13888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13889 input13572)).val
theorem input13890_def : input13890 = (.seq input13889 input13572) := by
  unfold input13890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13889)).val
theorem output13890_def : output13890 = (output13889) := by
  unfold output13890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13890_skip : Flapjack.WordAlloc.isSkip output13890 = false := by
  rw [output13890_def]
  conv => lhs; cbv
  try rfl
theorem node13890_eq : Flapjack.WordAlloc.removeDeadStructural input13890 value6790 value1 value2 = (output13890, value6896, value1) := by
  rw [input13890_def, output13890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13572_eq]
  try dsimp only
  rw [node13889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13890 input13571)).val
theorem input13891_def : input13891 = (.seq input13890 input13571) := by
  unfold input13891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13890 output13571)).val
theorem output13891_def : output13891 = (.seq output13890 output13571) := by
  unfold output13891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13891_skip : Flapjack.WordAlloc.isSkip output13891 = false := by
  rw [output13891_def]
  conv => lhs; cbv
  try rfl
theorem node13891_eq : Flapjack.WordAlloc.removeDeadStructural input13891 value6789 value1 value2 = (output13891, value6896, value1) := by
  rw [input13891_def, output13891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13571_eq]
  try dsimp only
  rw [node13890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13891 input13570)).val
theorem input13892_def : input13892 = (.seq input13891 input13570) := by
  unfold input13892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13891 output13570)).val
theorem output13892_def : output13892 = (.seq output13891 output13570) := by
  unfold output13892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13892_skip : Flapjack.WordAlloc.isSkip output13892 = false := by
  rw [output13892_def]
  conv => lhs; cbv
  try rfl
theorem node13892_eq : Flapjack.WordAlloc.removeDeadStructural input13892 value5 value1 value2 = (output13892, value6896, value1) := by
  rw [input13892_def, output13892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13570_eq]
  try dsimp only
  rw [node13891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13892 input13567)).val
theorem input13893_def : input13893 = (.seq input13892 input13567) := by
  unfold input13893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13892 output13567)).val
theorem output13893_def : output13893 = (.seq output13892 output13567) := by
  unfold output13893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13893_skip : Flapjack.WordAlloc.isSkip output13893 = false := by
  rw [output13893_def]
  conv => lhs; cbv
  try rfl
theorem node13893_eq : Flapjack.WordAlloc.removeDeadStructural input13893 value6783 value1 value2 = (output13893, value6896, value1) := by
  rw [input13893_def, output13893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13567_eq]
  try dsimp only
  rw [node13892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13893 input13558)).val
theorem input13894_def : input13894 = (.seq input13893 input13558) := by
  unfold input13894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13893)).val
theorem output13894_def : output13894 = (output13893) := by
  unfold output13894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13894_skip : Flapjack.WordAlloc.isSkip output13894 = false := by
  rw [output13894_def]
  conv => lhs; cbv
  try rfl
theorem node13894_eq : Flapjack.WordAlloc.removeDeadStructural input13894 value6783 value1 value2 = (output13894, value6896, value1) := by
  rw [input13894_def, output13894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13558_eq]
  try dsimp only
  rw [node13893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13894 input13557)).val
theorem input13895_def : input13895 = (.seq input13894 input13557) := by
  unfold input13895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13894 output13557)).val
theorem output13895_def : output13895 = (.seq output13894 output13557) := by
  unfold output13895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13895_skip : Flapjack.WordAlloc.isSkip output13895 = false := by
  rw [output13895_def]
  conv => lhs; cbv
  try rfl
theorem node13895_eq : Flapjack.WordAlloc.removeDeadStructural input13895 value6782 value1 value2 = (output13895, value6896, value1) := by
  rw [input13895_def, output13895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13557_eq]
  try dsimp only
  rw [node13894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13895 input13556)).val
theorem input13896_def : input13896 = (.seq input13895 input13556) := by
  unfold input13896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13895 output13556)).val
theorem output13896_def : output13896 = (.seq output13895 output13556) := by
  unfold output13896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13896_skip : Flapjack.WordAlloc.isSkip output13896 = false := by
  rw [output13896_def]
  conv => lhs; cbv
  try rfl
theorem node13896_eq : Flapjack.WordAlloc.removeDeadStructural input13896 value5 value1 value2 = (output13896, value6896, value1) := by
  rw [input13896_def, output13896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13556_eq]
  try dsimp only
  rw [node13895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13896 input13553)).val
theorem input13897_def : input13897 = (.seq input13896 input13553) := by
  unfold input13897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13896 output13553)).val
theorem output13897_def : output13897 = (.seq output13896 output13553) := by
  unfold output13897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13897_skip : Flapjack.WordAlloc.isSkip output13897 = false := by
  rw [output13897_def]
  conv => lhs; cbv
  try rfl
theorem node13897_eq : Flapjack.WordAlloc.removeDeadStructural input13897 value6776 value1 value2 = (output13897, value6896, value1) := by
  rw [input13897_def, output13897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13553_eq]
  try dsimp only
  rw [node13896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13897 input13544)).val
theorem input13898_def : input13898 = (.seq input13897 input13544) := by
  unfold input13898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13897)).val
theorem output13898_def : output13898 = (output13897) := by
  unfold output13898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13898_skip : Flapjack.WordAlloc.isSkip output13898 = false := by
  rw [output13898_def]
  conv => lhs; cbv
  try rfl
theorem node13898_eq : Flapjack.WordAlloc.removeDeadStructural input13898 value6776 value1 value2 = (output13898, value6896, value1) := by
  rw [input13898_def, output13898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13544_eq]
  try dsimp only
  rw [node13897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13898 input13543)).val
theorem input13899_def : input13899 = (.seq input13898 input13543) := by
  unfold input13899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13898 output13543)).val
theorem output13899_def : output13899 = (.seq output13898 output13543) := by
  unfold output13899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13899_skip : Flapjack.WordAlloc.isSkip output13899 = false := by
  rw [output13899_def]
  conv => lhs; cbv
  try rfl
theorem node13899_eq : Flapjack.WordAlloc.removeDeadStructural input13899 value6775 value1 value2 = (output13899, value6896, value1) := by
  rw [input13899_def, output13899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13543_eq]
  try dsimp only
  rw [node13898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13899 input13542)).val
theorem input13900_def : input13900 = (.seq input13899 input13542) := by
  unfold input13900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13899 output13542)).val
theorem output13900_def : output13900 = (.seq output13899 output13542) := by
  unfold output13900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13900_skip : Flapjack.WordAlloc.isSkip output13900 = false := by
  rw [output13900_def]
  conv => lhs; cbv
  try rfl
theorem node13900_eq : Flapjack.WordAlloc.removeDeadStructural input13900 value5 value1 value2 = (output13900, value6896, value1) := by
  rw [input13900_def, output13900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13542_eq]
  try dsimp only
  rw [node13899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13900 input13539)).val
theorem input13901_def : input13901 = (.seq input13900 input13539) := by
  unfold input13901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13900 output13539)).val
theorem output13901_def : output13901 = (.seq output13900 output13539) := by
  unfold output13901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13901_skip : Flapjack.WordAlloc.isSkip output13901 = false := by
  rw [output13901_def]
  conv => lhs; cbv
  try rfl
theorem node13901_eq : Flapjack.WordAlloc.removeDeadStructural input13901 value6769 value1 value2 = (output13901, value6896, value1) := by
  rw [input13901_def, output13901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13539_eq]
  try dsimp only
  rw [node13900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13901 input13530)).val
theorem input13902_def : input13902 = (.seq input13901 input13530) := by
  unfold input13902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13901)).val
theorem output13902_def : output13902 = (output13901) := by
  unfold output13902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13902_skip : Flapjack.WordAlloc.isSkip output13902 = false := by
  rw [output13902_def]
  conv => lhs; cbv
  try rfl
theorem node13902_eq : Flapjack.WordAlloc.removeDeadStructural input13902 value6769 value1 value2 = (output13902, value6896, value1) := by
  rw [input13902_def, output13902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13530_eq]
  try dsimp only
  rw [node13901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13902 input13529)).val
theorem input13903_def : input13903 = (.seq input13902 input13529) := by
  unfold input13903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13902 output13529)).val
theorem output13903_def : output13903 = (.seq output13902 output13529) := by
  unfold output13903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13903_skip : Flapjack.WordAlloc.isSkip output13903 = false := by
  rw [output13903_def]
  conv => lhs; cbv
  try rfl
theorem node13903_eq : Flapjack.WordAlloc.removeDeadStructural input13903 value6768 value1 value2 = (output13903, value6896, value1) := by
  rw [input13903_def, output13903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13529_eq]
  try dsimp only
  rw [node13902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13903 input13528)).val
theorem input13904_def : input13904 = (.seq input13903 input13528) := by
  unfold input13904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13903 output13528)).val
theorem output13904_def : output13904 = (.seq output13903 output13528) := by
  unfold output13904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13904_skip : Flapjack.WordAlloc.isSkip output13904 = false := by
  rw [output13904_def]
  conv => lhs; cbv
  try rfl
theorem node13904_eq : Flapjack.WordAlloc.removeDeadStructural input13904 value5 value1 value2 = (output13904, value6896, value1) := by
  rw [input13904_def, output13904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13528_eq]
  try dsimp only
  rw [node13903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13904 input13525)).val
theorem input13905_def : input13905 = (.seq input13904 input13525) := by
  unfold input13905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13904 output13525)).val
theorem output13905_def : output13905 = (.seq output13904 output13525) := by
  unfold output13905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13905_skip : Flapjack.WordAlloc.isSkip output13905 = false := by
  rw [output13905_def]
  conv => lhs; cbv
  try rfl
theorem node13905_eq : Flapjack.WordAlloc.removeDeadStructural input13905 value6762 value1 value2 = (output13905, value6896, value1) := by
  rw [input13905_def, output13905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13525_eq]
  try dsimp only
  rw [node13904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13905 input13516)).val
theorem input13906_def : input13906 = (.seq input13905 input13516) := by
  unfold input13906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13905)).val
theorem output13906_def : output13906 = (output13905) := by
  unfold output13906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13906_skip : Flapjack.WordAlloc.isSkip output13906 = false := by
  rw [output13906_def]
  conv => lhs; cbv
  try rfl
theorem node13906_eq : Flapjack.WordAlloc.removeDeadStructural input13906 value6762 value1 value2 = (output13906, value6896, value1) := by
  rw [input13906_def, output13906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13516_eq]
  try dsimp only
  rw [node13905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13906 input13515)).val
theorem input13907_def : input13907 = (.seq input13906 input13515) := by
  unfold input13907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13906 output13515)).val
theorem output13907_def : output13907 = (.seq output13906 output13515) := by
  unfold output13907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13907_skip : Flapjack.WordAlloc.isSkip output13907 = false := by
  rw [output13907_def]
  conv => lhs; cbv
  try rfl
theorem node13907_eq : Flapjack.WordAlloc.removeDeadStructural input13907 value6761 value1 value2 = (output13907, value6896, value1) := by
  rw [input13907_def, output13907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13515_eq]
  try dsimp only
  rw [node13906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13907 input13514)).val
theorem input13908_def : input13908 = (.seq input13907 input13514) := by
  unfold input13908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13907 output13514)).val
theorem output13908_def : output13908 = (.seq output13907 output13514) := by
  unfold output13908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13908_skip : Flapjack.WordAlloc.isSkip output13908 = false := by
  rw [output13908_def]
  conv => lhs; cbv
  try rfl
theorem node13908_eq : Flapjack.WordAlloc.removeDeadStructural input13908 value5 value1 value2 = (output13908, value6896, value1) := by
  rw [input13908_def, output13908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13514_eq]
  try dsimp only
  rw [node13907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13908 input13511)).val
theorem input13909_def : input13909 = (.seq input13908 input13511) := by
  unfold input13909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13908 output13511)).val
theorem output13909_def : output13909 = (.seq output13908 output13511) := by
  unfold output13909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13909_skip : Flapjack.WordAlloc.isSkip output13909 = false := by
  rw [output13909_def]
  conv => lhs; cbv
  try rfl
theorem node13909_eq : Flapjack.WordAlloc.removeDeadStructural input13909 value6755 value1 value2 = (output13909, value6896, value1) := by
  rw [input13909_def, output13909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13511_eq]
  try dsimp only
  rw [node13908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13909 input13502)).val
theorem input13910_def : input13910 = (.seq input13909 input13502) := by
  unfold input13910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13909)).val
theorem output13910_def : output13910 = (output13909) := by
  unfold output13910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13910_skip : Flapjack.WordAlloc.isSkip output13910 = false := by
  rw [output13910_def]
  conv => lhs; cbv
  try rfl
theorem node13910_eq : Flapjack.WordAlloc.removeDeadStructural input13910 value6755 value1 value2 = (output13910, value6896, value1) := by
  rw [input13910_def, output13910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13502_eq]
  try dsimp only
  rw [node13909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13910 input13501)).val
theorem input13911_def : input13911 = (.seq input13910 input13501) := by
  unfold input13911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13910 output13501)).val
theorem output13911_def : output13911 = (.seq output13910 output13501) := by
  unfold output13911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13911_skip : Flapjack.WordAlloc.isSkip output13911 = false := by
  rw [output13911_def]
  conv => lhs; cbv
  try rfl
theorem node13911_eq : Flapjack.WordAlloc.removeDeadStructural input13911 value6754 value1 value2 = (output13911, value6896, value1) := by
  rw [input13911_def, output13911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13501_eq]
  try dsimp only
  rw [node13910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13911 input13500)).val
theorem input13912_def : input13912 = (.seq input13911 input13500) := by
  unfold input13912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13911 output13500)).val
theorem output13912_def : output13912 = (.seq output13911 output13500) := by
  unfold output13912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13912_skip : Flapjack.WordAlloc.isSkip output13912 = false := by
  rw [output13912_def]
  conv => lhs; cbv
  try rfl
theorem node13912_eq : Flapjack.WordAlloc.removeDeadStructural input13912 value5 value1 value2 = (output13912, value6896, value1) := by
  rw [input13912_def, output13912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13500_eq]
  try dsimp only
  rw [node13911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13912 input13497)).val
theorem input13913_def : input13913 = (.seq input13912 input13497) := by
  unfold input13913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13912 output13497)).val
theorem output13913_def : output13913 = (.seq output13912 output13497) := by
  unfold output13913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13913_skip : Flapjack.WordAlloc.isSkip output13913 = false := by
  rw [output13913_def]
  conv => lhs; cbv
  try rfl
theorem node13913_eq : Flapjack.WordAlloc.removeDeadStructural input13913 value6748 value1 value2 = (output13913, value6896, value1) := by
  rw [input13913_def, output13913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13497_eq]
  try dsimp only
  rw [node13912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13913 input13488)).val
theorem input13914_def : input13914 = (.seq input13913 input13488) := by
  unfold input13914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13913)).val
theorem output13914_def : output13914 = (output13913) := by
  unfold output13914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13914_skip : Flapjack.WordAlloc.isSkip output13914 = false := by
  rw [output13914_def]
  conv => lhs; cbv
  try rfl
theorem node13914_eq : Flapjack.WordAlloc.removeDeadStructural input13914 value6748 value1 value2 = (output13914, value6896, value1) := by
  rw [input13914_def, output13914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13488_eq]
  try dsimp only
  rw [node13913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13914 input13487)).val
theorem input13915_def : input13915 = (.seq input13914 input13487) := by
  unfold input13915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13914 output13487)).val
theorem output13915_def : output13915 = (.seq output13914 output13487) := by
  unfold output13915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13915_skip : Flapjack.WordAlloc.isSkip output13915 = false := by
  rw [output13915_def]
  conv => lhs; cbv
  try rfl
theorem node13915_eq : Flapjack.WordAlloc.removeDeadStructural input13915 value6747 value1 value2 = (output13915, value6896, value1) := by
  rw [input13915_def, output13915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13487_eq]
  try dsimp only
  rw [node13914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13915 input13486)).val
theorem input13916_def : input13916 = (.seq input13915 input13486) := by
  unfold input13916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13915 output13486)).val
theorem output13916_def : output13916 = (.seq output13915 output13486) := by
  unfold output13916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13916_skip : Flapjack.WordAlloc.isSkip output13916 = false := by
  rw [output13916_def]
  conv => lhs; cbv
  try rfl
theorem node13916_eq : Flapjack.WordAlloc.removeDeadStructural input13916 value5 value1 value2 = (output13916, value6896, value1) := by
  rw [input13916_def, output13916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13486_eq]
  try dsimp only
  rw [node13915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13916 input13483)).val
theorem input13917_def : input13917 = (.seq input13916 input13483) := by
  unfold input13917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13916 output13483)).val
theorem output13917_def : output13917 = (.seq output13916 output13483) := by
  unfold output13917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13917_skip : Flapjack.WordAlloc.isSkip output13917 = false := by
  rw [output13917_def]
  conv => lhs; cbv
  try rfl
theorem node13917_eq : Flapjack.WordAlloc.removeDeadStructural input13917 value6741 value1 value2 = (output13917, value6896, value1) := by
  rw [input13917_def, output13917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13483_eq]
  try dsimp only
  rw [node13916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13917 input13474)).val
theorem input13918_def : input13918 = (.seq input13917 input13474) := by
  unfold input13918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13917)).val
theorem output13918_def : output13918 = (output13917) := by
  unfold output13918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13918_skip : Flapjack.WordAlloc.isSkip output13918 = false := by
  rw [output13918_def]
  conv => lhs; cbv
  try rfl
theorem node13918_eq : Flapjack.WordAlloc.removeDeadStructural input13918 value6741 value1 value2 = (output13918, value6896, value1) := by
  rw [input13918_def, output13918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13474_eq]
  try dsimp only
  rw [node13917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13918 input13473)).val
theorem input13919_def : input13919 = (.seq input13918 input13473) := by
  unfold input13919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13918 output13473)).val
theorem output13919_def : output13919 = (.seq output13918 output13473) := by
  unfold output13919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13919_skip : Flapjack.WordAlloc.isSkip output13919 = false := by
  rw [output13919_def]
  conv => lhs; cbv
  try rfl
theorem node13919_eq : Flapjack.WordAlloc.removeDeadStructural input13919 value6740 value1 value2 = (output13919, value6896, value1) := by
  rw [input13919_def, output13919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13473_eq]
  try dsimp only
  rw [node13918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13919 input13472)).val
theorem input13920_def : input13920 = (.seq input13919 input13472) := by
  unfold input13920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13919 output13472)).val
theorem output13920_def : output13920 = (.seq output13919 output13472) := by
  unfold output13920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13920_skip : Flapjack.WordAlloc.isSkip output13920 = false := by
  rw [output13920_def]
  conv => lhs; cbv
  try rfl
theorem node13920_eq : Flapjack.WordAlloc.removeDeadStructural input13920 value5 value1 value2 = (output13920, value6896, value1) := by
  rw [input13920_def, output13920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13472_eq]
  try dsimp only
  rw [node13919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13920 input13469)).val
theorem input13921_def : input13921 = (.seq input13920 input13469) := by
  unfold input13921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13920 output13469)).val
theorem output13921_def : output13921 = (.seq output13920 output13469) := by
  unfold output13921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13921_skip : Flapjack.WordAlloc.isSkip output13921 = false := by
  rw [output13921_def]
  conv => lhs; cbv
  try rfl
theorem node13921_eq : Flapjack.WordAlloc.removeDeadStructural input13921 value6734 value1 value2 = (output13921, value6896, value1) := by
  rw [input13921_def, output13921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13469_eq]
  try dsimp only
  rw [node13920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13921 input13460)).val
theorem input13922_def : input13922 = (.seq input13921 input13460) := by
  unfold input13922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13921)).val
theorem output13922_def : output13922 = (output13921) := by
  unfold output13922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13922_skip : Flapjack.WordAlloc.isSkip output13922 = false := by
  rw [output13922_def]
  conv => lhs; cbv
  try rfl
theorem node13922_eq : Flapjack.WordAlloc.removeDeadStructural input13922 value6734 value1 value2 = (output13922, value6896, value1) := by
  rw [input13922_def, output13922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13460_eq]
  try dsimp only
  rw [node13921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13922 input13459)).val
theorem input13923_def : input13923 = (.seq input13922 input13459) := by
  unfold input13923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13922 output13459)).val
theorem output13923_def : output13923 = (.seq output13922 output13459) := by
  unfold output13923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13923_skip : Flapjack.WordAlloc.isSkip output13923 = false := by
  rw [output13923_def]
  conv => lhs; cbv
  try rfl
theorem node13923_eq : Flapjack.WordAlloc.removeDeadStructural input13923 value6733 value1 value2 = (output13923, value6896, value1) := by
  rw [input13923_def, output13923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13459_eq]
  try dsimp only
  rw [node13922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13923 input13458)).val
theorem input13924_def : input13924 = (.seq input13923 input13458) := by
  unfold input13924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13923 output13458)).val
theorem output13924_def : output13924 = (.seq output13923 output13458) := by
  unfold output13924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13924_skip : Flapjack.WordAlloc.isSkip output13924 = false := by
  rw [output13924_def]
  conv => lhs; cbv
  try rfl
theorem node13924_eq : Flapjack.WordAlloc.removeDeadStructural input13924 value5 value1 value2 = (output13924, value6896, value1) := by
  rw [input13924_def, output13924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13458_eq]
  try dsimp only
  rw [node13923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13924 input13455)).val
theorem input13925_def : input13925 = (.seq input13924 input13455) := by
  unfold input13925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13924 output13455)).val
theorem output13925_def : output13925 = (.seq output13924 output13455) := by
  unfold output13925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13925_skip : Flapjack.WordAlloc.isSkip output13925 = false := by
  rw [output13925_def]
  conv => lhs; cbv
  try rfl
theorem node13925_eq : Flapjack.WordAlloc.removeDeadStructural input13925 value6727 value1 value2 = (output13925, value6896, value1) := by
  rw [input13925_def, output13925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13455_eq]
  try dsimp only
  rw [node13924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13925 input13446)).val
theorem input13926_def : input13926 = (.seq input13925 input13446) := by
  unfold input13926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13925)).val
theorem output13926_def : output13926 = (output13925) := by
  unfold output13926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13926_skip : Flapjack.WordAlloc.isSkip output13926 = false := by
  rw [output13926_def]
  conv => lhs; cbv
  try rfl
theorem node13926_eq : Flapjack.WordAlloc.removeDeadStructural input13926 value6727 value1 value2 = (output13926, value6896, value1) := by
  rw [input13926_def, output13926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13446_eq]
  try dsimp only
  rw [node13925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13926 input13445)).val
theorem input13927_def : input13927 = (.seq input13926 input13445) := by
  unfold input13927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13926 output13445)).val
theorem output13927_def : output13927 = (.seq output13926 output13445) := by
  unfold output13927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13927_skip : Flapjack.WordAlloc.isSkip output13927 = false := by
  rw [output13927_def]
  conv => lhs; cbv
  try rfl
theorem node13927_eq : Flapjack.WordAlloc.removeDeadStructural input13927 value6726 value1 value2 = (output13927, value6896, value1) := by
  rw [input13927_def, output13927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13445_eq]
  try dsimp only
  rw [node13926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13927 input13444)).val
theorem input13928_def : input13928 = (.seq input13927 input13444) := by
  unfold input13928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13927 output13444)).val
theorem output13928_def : output13928 = (.seq output13927 output13444) := by
  unfold output13928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13928_skip : Flapjack.WordAlloc.isSkip output13928 = false := by
  rw [output13928_def]
  conv => lhs; cbv
  try rfl
theorem node13928_eq : Flapjack.WordAlloc.removeDeadStructural input13928 value5 value1 value2 = (output13928, value6896, value1) := by
  rw [input13928_def, output13928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13444_eq]
  try dsimp only
  rw [node13927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13928 input13441)).val
theorem input13929_def : input13929 = (.seq input13928 input13441) := by
  unfold input13929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13928 output13441)).val
theorem output13929_def : output13929 = (.seq output13928 output13441) := by
  unfold output13929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13929_skip : Flapjack.WordAlloc.isSkip output13929 = false := by
  rw [output13929_def]
  conv => lhs; cbv
  try rfl
theorem node13929_eq : Flapjack.WordAlloc.removeDeadStructural input13929 value6720 value1 value2 = (output13929, value6896, value1) := by
  rw [input13929_def, output13929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13441_eq]
  try dsimp only
  rw [node13928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13929 input13432)).val
theorem input13930_def : input13930 = (.seq input13929 input13432) := by
  unfold input13930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13929)).val
theorem output13930_def : output13930 = (output13929) := by
  unfold output13930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13930_skip : Flapjack.WordAlloc.isSkip output13930 = false := by
  rw [output13930_def]
  conv => lhs; cbv
  try rfl
theorem node13930_eq : Flapjack.WordAlloc.removeDeadStructural input13930 value6720 value1 value2 = (output13930, value6896, value1) := by
  rw [input13930_def, output13930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13432_eq]
  try dsimp only
  rw [node13929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13930 input13431)).val
theorem input13931_def : input13931 = (.seq input13930 input13431) := by
  unfold input13931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13930 output13431)).val
theorem output13931_def : output13931 = (.seq output13930 output13431) := by
  unfold output13931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13931_skip : Flapjack.WordAlloc.isSkip output13931 = false := by
  rw [output13931_def]
  conv => lhs; cbv
  try rfl
theorem node13931_eq : Flapjack.WordAlloc.removeDeadStructural input13931 value6719 value1 value2 = (output13931, value6896, value1) := by
  rw [input13931_def, output13931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13431_eq]
  try dsimp only
  rw [node13930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13931 input13430)).val
theorem input13932_def : input13932 = (.seq input13931 input13430) := by
  unfold input13932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13931 output13430)).val
theorem output13932_def : output13932 = (.seq output13931 output13430) := by
  unfold output13932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13932_skip : Flapjack.WordAlloc.isSkip output13932 = false := by
  rw [output13932_def]
  conv => lhs; cbv
  try rfl
theorem node13932_eq : Flapjack.WordAlloc.removeDeadStructural input13932 value5 value1 value2 = (output13932, value6896, value1) := by
  rw [input13932_def, output13932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13430_eq]
  try dsimp only
  rw [node13931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13932 input13427)).val
theorem input13933_def : input13933 = (.seq input13932 input13427) := by
  unfold input13933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13932 output13427)).val
theorem output13933_def : output13933 = (.seq output13932 output13427) := by
  unfold output13933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13933_skip : Flapjack.WordAlloc.isSkip output13933 = false := by
  rw [output13933_def]
  conv => lhs; cbv
  try rfl
theorem node13933_eq : Flapjack.WordAlloc.removeDeadStructural input13933 value6713 value1 value2 = (output13933, value6896, value1) := by
  rw [input13933_def, output13933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13427_eq]
  try dsimp only
  rw [node13932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13933 input13418)).val
theorem input13934_def : input13934 = (.seq input13933 input13418) := by
  unfold input13934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13933)).val
theorem output13934_def : output13934 = (output13933) := by
  unfold output13934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13934_skip : Flapjack.WordAlloc.isSkip output13934 = false := by
  rw [output13934_def]
  conv => lhs; cbv
  try rfl
theorem node13934_eq : Flapjack.WordAlloc.removeDeadStructural input13934 value6713 value1 value2 = (output13934, value6896, value1) := by
  rw [input13934_def, output13934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13418_eq]
  try dsimp only
  rw [node13933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13934 input13417)).val
theorem input13935_def : input13935 = (.seq input13934 input13417) := by
  unfold input13935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13934 output13417)).val
theorem output13935_def : output13935 = (.seq output13934 output13417) := by
  unfold output13935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13935_skip : Flapjack.WordAlloc.isSkip output13935 = false := by
  rw [output13935_def]
  conv => lhs; cbv
  try rfl
theorem node13935_eq : Flapjack.WordAlloc.removeDeadStructural input13935 value6712 value1 value2 = (output13935, value6896, value1) := by
  rw [input13935_def, output13935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13417_eq]
  try dsimp only
  rw [node13934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13935 input13416)).val
theorem input13936_def : input13936 = (.seq input13935 input13416) := by
  unfold input13936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13935 output13416)).val
theorem output13936_def : output13936 = (.seq output13935 output13416) := by
  unfold output13936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13936_skip : Flapjack.WordAlloc.isSkip output13936 = false := by
  rw [output13936_def]
  conv => lhs; cbv
  try rfl
theorem node13936_eq : Flapjack.WordAlloc.removeDeadStructural input13936 value5 value1 value2 = (output13936, value6896, value1) := by
  rw [input13936_def, output13936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13416_eq]
  try dsimp only
  rw [node13935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13936 input13413)).val
theorem input13937_def : input13937 = (.seq input13936 input13413) := by
  unfold input13937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13936 output13413)).val
theorem output13937_def : output13937 = (.seq output13936 output13413) := by
  unfold output13937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13937_skip : Flapjack.WordAlloc.isSkip output13937 = false := by
  rw [output13937_def]
  conv => lhs; cbv
  try rfl
theorem node13937_eq : Flapjack.WordAlloc.removeDeadStructural input13937 value6706 value1 value2 = (output13937, value6896, value1) := by
  rw [input13937_def, output13937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13413_eq]
  try dsimp only
  rw [node13936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13937 input13404)).val
theorem input13938_def : input13938 = (.seq input13937 input13404) := by
  unfold input13938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13937)).val
theorem output13938_def : output13938 = (output13937) := by
  unfold output13938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13938_skip : Flapjack.WordAlloc.isSkip output13938 = false := by
  rw [output13938_def]
  conv => lhs; cbv
  try rfl
theorem node13938_eq : Flapjack.WordAlloc.removeDeadStructural input13938 value6706 value1 value2 = (output13938, value6896, value1) := by
  rw [input13938_def, output13938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13404_eq]
  try dsimp only
  rw [node13937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13938 input13403)).val
theorem input13939_def : input13939 = (.seq input13938 input13403) := by
  unfold input13939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13938 output13403)).val
theorem output13939_def : output13939 = (.seq output13938 output13403) := by
  unfold output13939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13939_skip : Flapjack.WordAlloc.isSkip output13939 = false := by
  rw [output13939_def]
  conv => lhs; cbv
  try rfl
theorem node13939_eq : Flapjack.WordAlloc.removeDeadStructural input13939 value6705 value1 value2 = (output13939, value6896, value1) := by
  rw [input13939_def, output13939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13403_eq]
  try dsimp only
  rw [node13938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13939 input13402)).val
theorem input13940_def : input13940 = (.seq input13939 input13402) := by
  unfold input13940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13939 output13402)).val
theorem output13940_def : output13940 = (.seq output13939 output13402) := by
  unfold output13940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13940_skip : Flapjack.WordAlloc.isSkip output13940 = false := by
  rw [output13940_def]
  conv => lhs; cbv
  try rfl
theorem node13940_eq : Flapjack.WordAlloc.removeDeadStructural input13940 value5 value1 value2 = (output13940, value6896, value1) := by
  rw [input13940_def, output13940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13402_eq]
  try dsimp only
  rw [node13939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13940 input13399)).val
theorem input13941_def : input13941 = (.seq input13940 input13399) := by
  unfold input13941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13940 output13399)).val
theorem output13941_def : output13941 = (.seq output13940 output13399) := by
  unfold output13941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13941_skip : Flapjack.WordAlloc.isSkip output13941 = false := by
  rw [output13941_def]
  conv => lhs; cbv
  try rfl
theorem node13941_eq : Flapjack.WordAlloc.removeDeadStructural input13941 value6699 value1 value2 = (output13941, value6896, value1) := by
  rw [input13941_def, output13941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13399_eq]
  try dsimp only
  rw [node13940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13941 input13390)).val
theorem input13942_def : input13942 = (.seq input13941 input13390) := by
  unfold input13942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13941)).val
theorem output13942_def : output13942 = (output13941) := by
  unfold output13942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13942_skip : Flapjack.WordAlloc.isSkip output13942 = false := by
  rw [output13942_def]
  conv => lhs; cbv
  try rfl
theorem node13942_eq : Flapjack.WordAlloc.removeDeadStructural input13942 value6699 value1 value2 = (output13942, value6896, value1) := by
  rw [input13942_def, output13942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13390_eq]
  try dsimp only
  rw [node13941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13942 input13389)).val
theorem input13943_def : input13943 = (.seq input13942 input13389) := by
  unfold input13943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13942 output13389)).val
theorem output13943_def : output13943 = (.seq output13942 output13389) := by
  unfold output13943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13943_skip : Flapjack.WordAlloc.isSkip output13943 = false := by
  rw [output13943_def]
  conv => lhs; cbv
  try rfl
theorem node13943_eq : Flapjack.WordAlloc.removeDeadStructural input13943 value6698 value1 value2 = (output13943, value6896, value1) := by
  rw [input13943_def, output13943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13389_eq]
  try dsimp only
  rw [node13942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13943 input13388)).val
theorem input13944_def : input13944 = (.seq input13943 input13388) := by
  unfold input13944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13943 output13388)).val
theorem output13944_def : output13944 = (.seq output13943 output13388) := by
  unfold output13944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13944_skip : Flapjack.WordAlloc.isSkip output13944 = false := by
  rw [output13944_def]
  conv => lhs; cbv
  try rfl
theorem node13944_eq : Flapjack.WordAlloc.removeDeadStructural input13944 value5 value1 value2 = (output13944, value6896, value1) := by
  rw [input13944_def, output13944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13388_eq]
  try dsimp only
  rw [node13943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13944 input13385)).val
theorem input13945_def : input13945 = (.seq input13944 input13385) := by
  unfold input13945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13944 output13385)).val
theorem output13945_def : output13945 = (.seq output13944 output13385) := by
  unfold output13945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13945_skip : Flapjack.WordAlloc.isSkip output13945 = false := by
  rw [output13945_def]
  conv => lhs; cbv
  try rfl
theorem node13945_eq : Flapjack.WordAlloc.removeDeadStructural input13945 value6692 value1 value2 = (output13945, value6896, value1) := by
  rw [input13945_def, output13945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13385_eq]
  try dsimp only
  rw [node13944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13945 input13376)).val
theorem input13946_def : input13946 = (.seq input13945 input13376) := by
  unfold input13946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13945)).val
theorem output13946_def : output13946 = (output13945) := by
  unfold output13946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13946_skip : Flapjack.WordAlloc.isSkip output13946 = false := by
  rw [output13946_def]
  conv => lhs; cbv
  try rfl
theorem node13946_eq : Flapjack.WordAlloc.removeDeadStructural input13946 value6692 value1 value2 = (output13946, value6896, value1) := by
  rw [input13946_def, output13946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13376_eq]
  try dsimp only
  rw [node13945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13946 input13375)).val
theorem input13947_def : input13947 = (.seq input13946 input13375) := by
  unfold input13947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13946 output13375)).val
theorem output13947_def : output13947 = (.seq output13946 output13375) := by
  unfold output13947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13947_skip : Flapjack.WordAlloc.isSkip output13947 = false := by
  rw [output13947_def]
  conv => lhs; cbv
  try rfl
theorem node13947_eq : Flapjack.WordAlloc.removeDeadStructural input13947 value6691 value1 value2 = (output13947, value6896, value1) := by
  rw [input13947_def, output13947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13375_eq]
  try dsimp only
  rw [node13946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13947 input13374)).val
theorem input13948_def : input13948 = (.seq input13947 input13374) := by
  unfold input13948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13947 output13374)).val
theorem output13948_def : output13948 = (.seq output13947 output13374) := by
  unfold output13948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13948_skip : Flapjack.WordAlloc.isSkip output13948 = false := by
  rw [output13948_def]
  conv => lhs; cbv
  try rfl
theorem node13948_eq : Flapjack.WordAlloc.removeDeadStructural input13948 value5 value1 value2 = (output13948, value6896, value1) := by
  rw [input13948_def, output13948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13374_eq]
  try dsimp only
  rw [node13947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13948 input13371)).val
theorem input13949_def : input13949 = (.seq input13948 input13371) := by
  unfold input13949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13948 output13371)).val
theorem output13949_def : output13949 = (.seq output13948 output13371) := by
  unfold output13949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13949_skip : Flapjack.WordAlloc.isSkip output13949 = false := by
  rw [output13949_def]
  conv => lhs; cbv
  try rfl
theorem node13949_eq : Flapjack.WordAlloc.removeDeadStructural input13949 value6685 value1 value2 = (output13949, value6896, value1) := by
  rw [input13949_def, output13949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13371_eq]
  try dsimp only
  rw [node13948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13949 input13362)).val
theorem input13950_def : input13950 = (.seq input13949 input13362) := by
  unfold input13950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13949)).val
theorem output13950_def : output13950 = (output13949) := by
  unfold output13950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13950_skip : Flapjack.WordAlloc.isSkip output13950 = false := by
  rw [output13950_def]
  conv => lhs; cbv
  try rfl
theorem node13950_eq : Flapjack.WordAlloc.removeDeadStructural input13950 value6685 value1 value2 = (output13950, value6896, value1) := by
  rw [input13950_def, output13950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13362_eq]
  try dsimp only
  rw [node13949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13950 input13361)).val
theorem input13951_def : input13951 = (.seq input13950 input13361) := by
  unfold input13951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13950 output13361)).val
theorem output13951_def : output13951 = (.seq output13950 output13361) := by
  unfold output13951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13951_skip : Flapjack.WordAlloc.isSkip output13951 = false := by
  rw [output13951_def]
  conv => lhs; cbv
  try rfl
theorem node13951_eq : Flapjack.WordAlloc.removeDeadStructural input13951 value6684 value1 value2 = (output13951, value6896, value1) := by
  rw [input13951_def, output13951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13361_eq]
  try dsimp only
  rw [node13950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13951 input13360)).val
theorem input13952_def : input13952 = (.seq input13951 input13360) := by
  unfold input13952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13951 output13360)).val
theorem output13952_def : output13952 = (.seq output13951 output13360) := by
  unfold output13952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13952_skip : Flapjack.WordAlloc.isSkip output13952 = false := by
  rw [output13952_def]
  conv => lhs; cbv
  try rfl
theorem node13952_eq : Flapjack.WordAlloc.removeDeadStructural input13952 value5 value1 value2 = (output13952, value6896, value1) := by
  rw [input13952_def, output13952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13360_eq]
  try dsimp only
  rw [node13951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13952 input13357)).val
theorem input13953_def : input13953 = (.seq input13952 input13357) := by
  unfold input13953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13952 output13357)).val
theorem output13953_def : output13953 = (.seq output13952 output13357) := by
  unfold output13953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13953_skip : Flapjack.WordAlloc.isSkip output13953 = false := by
  rw [output13953_def]
  conv => lhs; cbv
  try rfl
theorem node13953_eq : Flapjack.WordAlloc.removeDeadStructural input13953 value6678 value1 value2 = (output13953, value6896, value1) := by
  rw [input13953_def, output13953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13357_eq]
  try dsimp only
  rw [node13952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13953 input13348)).val
theorem input13954_def : input13954 = (.seq input13953 input13348) := by
  unfold input13954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13953)).val
theorem output13954_def : output13954 = (output13953) := by
  unfold output13954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13954_skip : Flapjack.WordAlloc.isSkip output13954 = false := by
  rw [output13954_def]
  conv => lhs; cbv
  try rfl
theorem node13954_eq : Flapjack.WordAlloc.removeDeadStructural input13954 value6678 value1 value2 = (output13954, value6896, value1) := by
  rw [input13954_def, output13954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13348_eq]
  try dsimp only
  rw [node13953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13954 input13347)).val
theorem input13955_def : input13955 = (.seq input13954 input13347) := by
  unfold input13955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13954 output13347)).val
theorem output13955_def : output13955 = (.seq output13954 output13347) := by
  unfold output13955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13955_skip : Flapjack.WordAlloc.isSkip output13955 = false := by
  rw [output13955_def]
  conv => lhs; cbv
  try rfl
theorem node13955_eq : Flapjack.WordAlloc.removeDeadStructural input13955 value6677 value1 value2 = (output13955, value6896, value1) := by
  rw [input13955_def, output13955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13347_eq]
  try dsimp only
  rw [node13954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13955 input13346)).val
theorem input13956_def : input13956 = (.seq input13955 input13346) := by
  unfold input13956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13955 output13346)).val
theorem output13956_def : output13956 = (.seq output13955 output13346) := by
  unfold output13956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13956_skip : Flapjack.WordAlloc.isSkip output13956 = false := by
  rw [output13956_def]
  conv => lhs; cbv
  try rfl
theorem node13956_eq : Flapjack.WordAlloc.removeDeadStructural input13956 value5 value1 value2 = (output13956, value6896, value1) := by
  rw [input13956_def, output13956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13346_eq]
  try dsimp only
  rw [node13955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13956 input13343)).val
theorem input13957_def : input13957 = (.seq input13956 input13343) := by
  unfold input13957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13956 output13343)).val
theorem output13957_def : output13957 = (.seq output13956 output13343) := by
  unfold output13957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13957_skip : Flapjack.WordAlloc.isSkip output13957 = false := by
  rw [output13957_def]
  conv => lhs; cbv
  try rfl
theorem node13957_eq : Flapjack.WordAlloc.removeDeadStructural input13957 value6671 value1 value2 = (output13957, value6896, value1) := by
  rw [input13957_def, output13957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13343_eq]
  try dsimp only
  rw [node13956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13957 input13334)).val
theorem input13958_def : input13958 = (.seq input13957 input13334) := by
  unfold input13958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13957)).val
theorem output13958_def : output13958 = (output13957) := by
  unfold output13958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13958_skip : Flapjack.WordAlloc.isSkip output13958 = false := by
  rw [output13958_def]
  conv => lhs; cbv
  try rfl
theorem node13958_eq : Flapjack.WordAlloc.removeDeadStructural input13958 value6671 value1 value2 = (output13958, value6896, value1) := by
  rw [input13958_def, output13958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13334_eq]
  try dsimp only
  rw [node13957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13958 input13333)).val
theorem input13959_def : input13959 = (.seq input13958 input13333) := by
  unfold input13959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13958 output13333)).val
theorem output13959_def : output13959 = (.seq output13958 output13333) := by
  unfold output13959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13959_skip : Flapjack.WordAlloc.isSkip output13959 = false := by
  rw [output13959_def]
  conv => lhs; cbv
  try rfl
theorem node13959_eq : Flapjack.WordAlloc.removeDeadStructural input13959 value6670 value1 value2 = (output13959, value6896, value1) := by
  rw [input13959_def, output13959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13333_eq]
  try dsimp only
  rw [node13958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13959 input13332)).val
theorem input13960_def : input13960 = (.seq input13959 input13332) := by
  unfold input13960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13959 output13332)).val
theorem output13960_def : output13960 = (.seq output13959 output13332) := by
  unfold output13960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13960_skip : Flapjack.WordAlloc.isSkip output13960 = false := by
  rw [output13960_def]
  conv => lhs; cbv
  try rfl
theorem node13960_eq : Flapjack.WordAlloc.removeDeadStructural input13960 value5 value1 value2 = (output13960, value6896, value1) := by
  rw [input13960_def, output13960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13332_eq]
  try dsimp only
  rw [node13959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13960 input13329)).val
theorem input13961_def : input13961 = (.seq input13960 input13329) := by
  unfold input13961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13960 output13329)).val
theorem output13961_def : output13961 = (.seq output13960 output13329) := by
  unfold output13961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13961_skip : Flapjack.WordAlloc.isSkip output13961 = false := by
  rw [output13961_def]
  conv => lhs; cbv
  try rfl
theorem node13961_eq : Flapjack.WordAlloc.removeDeadStructural input13961 value6664 value1 value2 = (output13961, value6896, value1) := by
  rw [input13961_def, output13961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13329_eq]
  try dsimp only
  rw [node13960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13961 input13320)).val
theorem input13962_def : input13962 = (.seq input13961 input13320) := by
  unfold input13962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13961)).val
theorem output13962_def : output13962 = (output13961) := by
  unfold output13962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13962_skip : Flapjack.WordAlloc.isSkip output13962 = false := by
  rw [output13962_def]
  conv => lhs; cbv
  try rfl
theorem node13962_eq : Flapjack.WordAlloc.removeDeadStructural input13962 value6664 value1 value2 = (output13962, value6896, value1) := by
  rw [input13962_def, output13962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13320_eq]
  try dsimp only
  rw [node13961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13962 input13319)).val
theorem input13963_def : input13963 = (.seq input13962 input13319) := by
  unfold input13963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13962 output13319)).val
theorem output13963_def : output13963 = (.seq output13962 output13319) := by
  unfold output13963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13963_skip : Flapjack.WordAlloc.isSkip output13963 = false := by
  rw [output13963_def]
  conv => lhs; cbv
  try rfl
theorem node13963_eq : Flapjack.WordAlloc.removeDeadStructural input13963 value6663 value1 value2 = (output13963, value6896, value1) := by
  rw [input13963_def, output13963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13319_eq]
  try dsimp only
  rw [node13962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13963 input13318)).val
theorem input13964_def : input13964 = (.seq input13963 input13318) := by
  unfold input13964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13963 output13318)).val
theorem output13964_def : output13964 = (.seq output13963 output13318) := by
  unfold output13964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13964_skip : Flapjack.WordAlloc.isSkip output13964 = false := by
  rw [output13964_def]
  conv => lhs; cbv
  try rfl
theorem node13964_eq : Flapjack.WordAlloc.removeDeadStructural input13964 value5 value1 value2 = (output13964, value6896, value1) := by
  rw [input13964_def, output13964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13318_eq]
  try dsimp only
  rw [node13963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13964 input13315)).val
theorem input13965_def : input13965 = (.seq input13964 input13315) := by
  unfold input13965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13964 output13315)).val
theorem output13965_def : output13965 = (.seq output13964 output13315) := by
  unfold output13965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13965_skip : Flapjack.WordAlloc.isSkip output13965 = false := by
  rw [output13965_def]
  conv => lhs; cbv
  try rfl
theorem node13965_eq : Flapjack.WordAlloc.removeDeadStructural input13965 value6657 value1 value2 = (output13965, value6896, value1) := by
  rw [input13965_def, output13965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13315_eq]
  try dsimp only
  rw [node13964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13965 input13306)).val
theorem input13966_def : input13966 = (.seq input13965 input13306) := by
  unfold input13966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13965)).val
theorem output13966_def : output13966 = (output13965) := by
  unfold output13966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13966_skip : Flapjack.WordAlloc.isSkip output13966 = false := by
  rw [output13966_def]
  conv => lhs; cbv
  try rfl
theorem node13966_eq : Flapjack.WordAlloc.removeDeadStructural input13966 value6657 value1 value2 = (output13966, value6896, value1) := by
  rw [input13966_def, output13966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13306_eq]
  try dsimp only
  rw [node13965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13966 input13305)).val
theorem input13967_def : input13967 = (.seq input13966 input13305) := by
  unfold input13967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13966 output13305)).val
theorem output13967_def : output13967 = (.seq output13966 output13305) := by
  unfold output13967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13967_skip : Flapjack.WordAlloc.isSkip output13967 = false := by
  rw [output13967_def]
  conv => lhs; cbv
  try rfl
theorem node13967_eq : Flapjack.WordAlloc.removeDeadStructural input13967 value6656 value1 value2 = (output13967, value6896, value1) := by
  rw [input13967_def, output13967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13305_eq]
  try dsimp only
  rw [node13966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13967 input13304)).val
theorem input13968_def : input13968 = (.seq input13967 input13304) := by
  unfold input13968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13967 output13304)).val
theorem output13968_def : output13968 = (.seq output13967 output13304) := by
  unfold output13968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13968_skip : Flapjack.WordAlloc.isSkip output13968 = false := by
  rw [output13968_def]
  conv => lhs; cbv
  try rfl
theorem node13968_eq : Flapjack.WordAlloc.removeDeadStructural input13968 value5 value1 value2 = (output13968, value6896, value1) := by
  rw [input13968_def, output13968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13304_eq]
  try dsimp only
  rw [node13967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13968 input13301)).val
theorem input13969_def : input13969 = (.seq input13968 input13301) := by
  unfold input13969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13968 output13301)).val
theorem output13969_def : output13969 = (.seq output13968 output13301) := by
  unfold output13969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13969_skip : Flapjack.WordAlloc.isSkip output13969 = false := by
  rw [output13969_def]
  conv => lhs; cbv
  try rfl
theorem node13969_eq : Flapjack.WordAlloc.removeDeadStructural input13969 value6650 value1 value2 = (output13969, value6896, value1) := by
  rw [input13969_def, output13969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13301_eq]
  try dsimp only
  rw [node13968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13969 input13292)).val
theorem input13970_def : input13970 = (.seq input13969 input13292) := by
  unfold input13970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13969)).val
theorem output13970_def : output13970 = (output13969) := by
  unfold output13970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13970_skip : Flapjack.WordAlloc.isSkip output13970 = false := by
  rw [output13970_def]
  conv => lhs; cbv
  try rfl
theorem node13970_eq : Flapjack.WordAlloc.removeDeadStructural input13970 value6650 value1 value2 = (output13970, value6896, value1) := by
  rw [input13970_def, output13970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13292_eq]
  try dsimp only
  rw [node13969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13970 input13291)).val
theorem input13971_def : input13971 = (.seq input13970 input13291) := by
  unfold input13971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13970 output13291)).val
theorem output13971_def : output13971 = (.seq output13970 output13291) := by
  unfold output13971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13971_skip : Flapjack.WordAlloc.isSkip output13971 = false := by
  rw [output13971_def]
  conv => lhs; cbv
  try rfl
theorem node13971_eq : Flapjack.WordAlloc.removeDeadStructural input13971 value6649 value1 value2 = (output13971, value6896, value1) := by
  rw [input13971_def, output13971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13291_eq]
  try dsimp only
  rw [node13970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13971 input13290)).val
theorem input13972_def : input13972 = (.seq input13971 input13290) := by
  unfold input13972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13971 output13290)).val
theorem output13972_def : output13972 = (.seq output13971 output13290) := by
  unfold output13972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13972_skip : Flapjack.WordAlloc.isSkip output13972 = false := by
  rw [output13972_def]
  conv => lhs; cbv
  try rfl
theorem node13972_eq : Flapjack.WordAlloc.removeDeadStructural input13972 value5 value1 value2 = (output13972, value6896, value1) := by
  rw [input13972_def, output13972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13290_eq]
  try dsimp only
  rw [node13971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13972 input13287)).val
theorem input13973_def : input13973 = (.seq input13972 input13287) := by
  unfold input13973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13972 output13287)).val
theorem output13973_def : output13973 = (.seq output13972 output13287) := by
  unfold output13973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13973_skip : Flapjack.WordAlloc.isSkip output13973 = false := by
  rw [output13973_def]
  conv => lhs; cbv
  try rfl
theorem node13973_eq : Flapjack.WordAlloc.removeDeadStructural input13973 value6643 value1 value2 = (output13973, value6896, value1) := by
  rw [input13973_def, output13973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13287_eq]
  try dsimp only
  rw [node13972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13973 input13278)).val
theorem input13974_def : input13974 = (.seq input13973 input13278) := by
  unfold input13974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13973)).val
theorem output13974_def : output13974 = (output13973) := by
  unfold output13974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13974_skip : Flapjack.WordAlloc.isSkip output13974 = false := by
  rw [output13974_def]
  conv => lhs; cbv
  try rfl
theorem node13974_eq : Flapjack.WordAlloc.removeDeadStructural input13974 value6643 value1 value2 = (output13974, value6896, value1) := by
  rw [input13974_def, output13974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13278_eq]
  try dsimp only
  rw [node13973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13974 input13277)).val
theorem input13975_def : input13975 = (.seq input13974 input13277) := by
  unfold input13975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13974 output13277)).val
theorem output13975_def : output13975 = (.seq output13974 output13277) := by
  unfold output13975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13975_skip : Flapjack.WordAlloc.isSkip output13975 = false := by
  rw [output13975_def]
  conv => lhs; cbv
  try rfl
theorem node13975_eq : Flapjack.WordAlloc.removeDeadStructural input13975 value6642 value1 value2 = (output13975, value6896, value1) := by
  rw [input13975_def, output13975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13277_eq]
  try dsimp only
  rw [node13974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13975 input13276)).val
theorem input13976_def : input13976 = (.seq input13975 input13276) := by
  unfold input13976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13975 output13276)).val
theorem output13976_def : output13976 = (.seq output13975 output13276) := by
  unfold output13976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13976_skip : Flapjack.WordAlloc.isSkip output13976 = false := by
  rw [output13976_def]
  conv => lhs; cbv
  try rfl
theorem node13976_eq : Flapjack.WordAlloc.removeDeadStructural input13976 value5 value1 value2 = (output13976, value6896, value1) := by
  rw [input13976_def, output13976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13276_eq]
  try dsimp only
  rw [node13975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13976 input13273)).val
theorem input13977_def : input13977 = (.seq input13976 input13273) := by
  unfold input13977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13976 output13273)).val
theorem output13977_def : output13977 = (.seq output13976 output13273) := by
  unfold output13977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13977_skip : Flapjack.WordAlloc.isSkip output13977 = false := by
  rw [output13977_def]
  conv => lhs; cbv
  try rfl
theorem node13977_eq : Flapjack.WordAlloc.removeDeadStructural input13977 value6636 value1 value2 = (output13977, value6896, value1) := by
  rw [input13977_def, output13977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13273_eq]
  try dsimp only
  rw [node13976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13977 input13264)).val
theorem input13978_def : input13978 = (.seq input13977 input13264) := by
  unfold input13978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13977)).val
theorem output13978_def : output13978 = (output13977) := by
  unfold output13978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13978_skip : Flapjack.WordAlloc.isSkip output13978 = false := by
  rw [output13978_def]
  conv => lhs; cbv
  try rfl
theorem node13978_eq : Flapjack.WordAlloc.removeDeadStructural input13978 value6636 value1 value2 = (output13978, value6896, value1) := by
  rw [input13978_def, output13978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13264_eq]
  try dsimp only
  rw [node13977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13978 input13263)).val
theorem input13979_def : input13979 = (.seq input13978 input13263) := by
  unfold input13979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13978 output13263)).val
theorem output13979_def : output13979 = (.seq output13978 output13263) := by
  unfold output13979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13979_skip : Flapjack.WordAlloc.isSkip output13979 = false := by
  rw [output13979_def]
  conv => lhs; cbv
  try rfl
theorem node13979_eq : Flapjack.WordAlloc.removeDeadStructural input13979 value6635 value1 value2 = (output13979, value6896, value1) := by
  rw [input13979_def, output13979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13263_eq]
  try dsimp only
  rw [node13978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13979 input13262)).val
theorem input13980_def : input13980 = (.seq input13979 input13262) := by
  unfold input13980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13979 output13262)).val
theorem output13980_def : output13980 = (.seq output13979 output13262) := by
  unfold output13980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13980_skip : Flapjack.WordAlloc.isSkip output13980 = false := by
  rw [output13980_def]
  conv => lhs; cbv
  try rfl
theorem node13980_eq : Flapjack.WordAlloc.removeDeadStructural input13980 value5 value1 value2 = (output13980, value6896, value1) := by
  rw [input13980_def, output13980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13262_eq]
  try dsimp only
  rw [node13979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13980 input13259)).val
theorem input13981_def : input13981 = (.seq input13980 input13259) := by
  unfold input13981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13980 output13259)).val
theorem output13981_def : output13981 = (.seq output13980 output13259) := by
  unfold output13981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13981_skip : Flapjack.WordAlloc.isSkip output13981 = false := by
  rw [output13981_def]
  conv => lhs; cbv
  try rfl
theorem node13981_eq : Flapjack.WordAlloc.removeDeadStructural input13981 value6629 value1 value2 = (output13981, value6896, value1) := by
  rw [input13981_def, output13981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13259_eq]
  try dsimp only
  rw [node13980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13981 input13250)).val
theorem input13982_def : input13982 = (.seq input13981 input13250) := by
  unfold input13982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13981)).val
theorem output13982_def : output13982 = (output13981) := by
  unfold output13982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13982_skip : Flapjack.WordAlloc.isSkip output13982 = false := by
  rw [output13982_def]
  conv => lhs; cbv
  try rfl
theorem node13982_eq : Flapjack.WordAlloc.removeDeadStructural input13982 value6629 value1 value2 = (output13982, value6896, value1) := by
  rw [input13982_def, output13982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13250_eq]
  try dsimp only
  rw [node13981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13982 input13249)).val
theorem input13983_def : input13983 = (.seq input13982 input13249) := by
  unfold input13983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13982 output13249)).val
theorem output13983_def : output13983 = (.seq output13982 output13249) := by
  unfold output13983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13983_skip : Flapjack.WordAlloc.isSkip output13983 = false := by
  rw [output13983_def]
  conv => lhs; cbv
  try rfl
theorem node13983_eq : Flapjack.WordAlloc.removeDeadStructural input13983 value6628 value1 value2 = (output13983, value6896, value1) := by
  rw [input13983_def, output13983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13249_eq]
  try dsimp only
  rw [node13982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13983 input13248)).val
theorem input13984_def : input13984 = (.seq input13983 input13248) := by
  unfold input13984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13983 output13248)).val
theorem output13984_def : output13984 = (.seq output13983 output13248) := by
  unfold output13984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13984_skip : Flapjack.WordAlloc.isSkip output13984 = false := by
  rw [output13984_def]
  conv => lhs; cbv
  try rfl
theorem node13984_eq : Flapjack.WordAlloc.removeDeadStructural input13984 value5 value1 value2 = (output13984, value6896, value1) := by
  rw [input13984_def, output13984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13248_eq]
  try dsimp only
  rw [node13983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13984 input13245)).val
theorem input13985_def : input13985 = (.seq input13984 input13245) := by
  unfold input13985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13984 output13245)).val
theorem output13985_def : output13985 = (.seq output13984 output13245) := by
  unfold output13985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13985_skip : Flapjack.WordAlloc.isSkip output13985 = false := by
  rw [output13985_def]
  conv => lhs; cbv
  try rfl
theorem node13985_eq : Flapjack.WordAlloc.removeDeadStructural input13985 value6622 value1 value2 = (output13985, value6896, value1) := by
  rw [input13985_def, output13985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13245_eq]
  try dsimp only
  rw [node13984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13985 input13236)).val
theorem input13986_def : input13986 = (.seq input13985 input13236) := by
  unfold input13986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13985)).val
theorem output13986_def : output13986 = (output13985) := by
  unfold output13986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13986_skip : Flapjack.WordAlloc.isSkip output13986 = false := by
  rw [output13986_def]
  conv => lhs; cbv
  try rfl
theorem node13986_eq : Flapjack.WordAlloc.removeDeadStructural input13986 value6622 value1 value2 = (output13986, value6896, value1) := by
  rw [input13986_def, output13986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13236_eq]
  try dsimp only
  rw [node13985_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13986 input13235)).val
theorem input13987_def : input13987 = (.seq input13986 input13235) := by
  unfold input13987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13986 output13235)).val
theorem output13987_def : output13987 = (.seq output13986 output13235) := by
  unfold output13987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13987_skip : Flapjack.WordAlloc.isSkip output13987 = false := by
  rw [output13987_def]
  conv => lhs; cbv
  try rfl
theorem node13987_eq : Flapjack.WordAlloc.removeDeadStructural input13987 value6621 value1 value2 = (output13987, value6896, value1) := by
  rw [input13987_def, output13987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13235_eq]
  try dsimp only
  rw [node13986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13987 input13234)).val
theorem input13988_def : input13988 = (.seq input13987 input13234) := by
  unfold input13988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13987 output13234)).val
theorem output13988_def : output13988 = (.seq output13987 output13234) := by
  unfold output13988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13988_skip : Flapjack.WordAlloc.isSkip output13988 = false := by
  rw [output13988_def]
  conv => lhs; cbv
  try rfl
theorem node13988_eq : Flapjack.WordAlloc.removeDeadStructural input13988 value5 value1 value2 = (output13988, value6896, value1) := by
  rw [input13988_def, output13988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13234_eq]
  try dsimp only
  rw [node13987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13988 input13231)).val
theorem input13989_def : input13989 = (.seq input13988 input13231) := by
  unfold input13989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13988 output13231)).val
theorem output13989_def : output13989 = (.seq output13988 output13231) := by
  unfold output13989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13989_skip : Flapjack.WordAlloc.isSkip output13989 = false := by
  rw [output13989_def]
  conv => lhs; cbv
  try rfl
theorem node13989_eq : Flapjack.WordAlloc.removeDeadStructural input13989 value6615 value1 value2 = (output13989, value6896, value1) := by
  rw [input13989_def, output13989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13231_eq]
  try dsimp only
  rw [node13988_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13989 input13222)).val
theorem input13990_def : input13990 = (.seq input13989 input13222) := by
  unfold input13990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13989)).val
theorem output13990_def : output13990 = (output13989) := by
  unfold output13990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13990_skip : Flapjack.WordAlloc.isSkip output13990 = false := by
  rw [output13990_def]
  conv => lhs; cbv
  try rfl
theorem node13990_eq : Flapjack.WordAlloc.removeDeadStructural input13990 value6615 value1 value2 = (output13990, value6896, value1) := by
  rw [input13990_def, output13990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13222_eq]
  try dsimp only
  rw [node13989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13990 input13221)).val
theorem input13991_def : input13991 = (.seq input13990 input13221) := by
  unfold input13991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13990 output13221)).val
theorem output13991_def : output13991 = (.seq output13990 output13221) := by
  unfold output13991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13991_skip : Flapjack.WordAlloc.isSkip output13991 = false := by
  rw [output13991_def]
  conv => lhs; cbv
  try rfl
theorem node13991_eq : Flapjack.WordAlloc.removeDeadStructural input13991 value6614 value1 value2 = (output13991, value6896, value1) := by
  rw [input13991_def, output13991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13221_eq]
  try dsimp only
  rw [node13990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13991 input13220)).val
theorem input13992_def : input13992 = (.seq input13991 input13220) := by
  unfold input13992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13991 output13220)).val
theorem output13992_def : output13992 = (.seq output13991 output13220) := by
  unfold output13992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13992_skip : Flapjack.WordAlloc.isSkip output13992 = false := by
  rw [output13992_def]
  conv => lhs; cbv
  try rfl
theorem node13992_eq : Flapjack.WordAlloc.removeDeadStructural input13992 value5 value1 value2 = (output13992, value6896, value1) := by
  rw [input13992_def, output13992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13220_eq]
  try dsimp only
  rw [node13991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13992 input13217)).val
theorem input13993_def : input13993 = (.seq input13992 input13217) := by
  unfold input13993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13992 output13217)).val
theorem output13993_def : output13993 = (.seq output13992 output13217) := by
  unfold output13993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13993_skip : Flapjack.WordAlloc.isSkip output13993 = false := by
  rw [output13993_def]
  conv => lhs; cbv
  try rfl
theorem node13993_eq : Flapjack.WordAlloc.removeDeadStructural input13993 value6608 value1 value2 = (output13993, value6896, value1) := by
  rw [input13993_def, output13993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13217_eq]
  try dsimp only
  rw [node13992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13993 input13208)).val
theorem input13994_def : input13994 = (.seq input13993 input13208) := by
  unfold input13994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13993)).val
theorem output13994_def : output13994 = (output13993) := by
  unfold output13994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13994_skip : Flapjack.WordAlloc.isSkip output13994 = false := by
  rw [output13994_def]
  conv => lhs; cbv
  try rfl
theorem node13994_eq : Flapjack.WordAlloc.removeDeadStructural input13994 value6608 value1 value2 = (output13994, value6896, value1) := by
  rw [input13994_def, output13994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13208_eq]
  try dsimp only
  rw [node13993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13994 input13207)).val
theorem input13995_def : input13995 = (.seq input13994 input13207) := by
  unfold input13995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13994 output13207)).val
theorem output13995_def : output13995 = (.seq output13994 output13207) := by
  unfold output13995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13995_skip : Flapjack.WordAlloc.isSkip output13995 = false := by
  rw [output13995_def]
  conv => lhs; cbv
  try rfl
theorem node13995_eq : Flapjack.WordAlloc.removeDeadStructural input13995 value6607 value1 value2 = (output13995, value6896, value1) := by
  rw [input13995_def, output13995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13207_eq]
  try dsimp only
  rw [node13994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13995 input13206)).val
theorem input13996_def : input13996 = (.seq input13995 input13206) := by
  unfold input13996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13995 output13206)).val
theorem output13996_def : output13996 = (.seq output13995 output13206) := by
  unfold output13996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13996_skip : Flapjack.WordAlloc.isSkip output13996 = false := by
  rw [output13996_def]
  conv => lhs; cbv
  try rfl
theorem node13996_eq : Flapjack.WordAlloc.removeDeadStructural input13996 value5 value1 value2 = (output13996, value6896, value1) := by
  rw [input13996_def, output13996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13206_eq]
  try dsimp only
  rw [node13995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13996 input13203)).val
theorem input13997_def : input13997 = (.seq input13996 input13203) := by
  unfold input13997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13996 output13203)).val
theorem output13997_def : output13997 = (.seq output13996 output13203) := by
  unfold output13997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13997_skip : Flapjack.WordAlloc.isSkip output13997 = false := by
  rw [output13997_def]
  conv => lhs; cbv
  try rfl
theorem node13997_eq : Flapjack.WordAlloc.removeDeadStructural input13997 value6601 value1 value2 = (output13997, value6896, value1) := by
  rw [input13997_def, output13997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13203_eq]
  try dsimp only
  rw [node13996_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13997 input13194)).val
theorem input13998_def : input13998 = (.seq input13997 input13194) := by
  unfold input13998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13997)).val
theorem output13998_def : output13998 = (output13997) := by
  unfold output13998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13998_skip : Flapjack.WordAlloc.isSkip output13998 = false := by
  rw [output13998_def]
  conv => lhs; cbv
  try rfl
theorem node13998_eq : Flapjack.WordAlloc.removeDeadStructural input13998 value6601 value1 value2 = (output13998, value6896, value1) := by
  rw [input13998_def, output13998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13194_eq]
  try dsimp only
  rw [node13997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13998 input13193)).val
theorem input13999_def : input13999 = (.seq input13998 input13193) := by
  unfold input13999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13998 output13193)).val
theorem output13999_def : output13999 = (.seq output13998 output13193) := by
  unfold output13999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13999_skip : Flapjack.WordAlloc.isSkip output13999 = false := by
  rw [output13999_def]
  conv => lhs; cbv
  try rfl
theorem node13999_eq : Flapjack.WordAlloc.removeDeadStructural input13999 value6600 value1 value2 = (output13999, value6896, value1) := by
  rw [input13999_def, output13999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13193_eq]
  try dsimp only
  rw [node13998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13999 input13192)).val
theorem input14000_def : input14000 = (.seq input13999 input13192) := by
  unfold input14000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13999 output13192)).val
theorem output14000_def : output14000 = (.seq output13999 output13192) := by
  unfold output14000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14000_skip : Flapjack.WordAlloc.isSkip output14000 = false := by
  rw [output14000_def]
  conv => lhs; cbv
  try rfl
theorem node14000_eq : Flapjack.WordAlloc.removeDeadStructural input14000 value5 value1 value2 = (output14000, value6896, value1) := by
  rw [input14000_def, output14000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13192_eq]
  try dsimp only
  rw [node13999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14000 input13189)).val
theorem input14001_def : input14001 = (.seq input14000 input13189) := by
  unfold input14001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14000 output13189)).val
theorem output14001_def : output14001 = (.seq output14000 output13189) := by
  unfold output14001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14001_skip : Flapjack.WordAlloc.isSkip output14001 = false := by
  rw [output14001_def]
  conv => lhs; cbv
  try rfl
theorem node14001_eq : Flapjack.WordAlloc.removeDeadStructural input14001 value6594 value1 value2 = (output14001, value6896, value1) := by
  rw [input14001_def, output14001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13189_eq]
  try dsimp only
  rw [node14000_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14001 input13180)).val
theorem input14002_def : input14002 = (.seq input14001 input13180) := by
  unfold input14002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14001)).val
theorem output14002_def : output14002 = (output14001) := by
  unfold output14002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14002_skip : Flapjack.WordAlloc.isSkip output14002 = false := by
  rw [output14002_def]
  conv => lhs; cbv
  try rfl
theorem node14002_eq : Flapjack.WordAlloc.removeDeadStructural input14002 value6594 value1 value2 = (output14002, value6896, value1) := by
  rw [input14002_def, output14002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13180_eq]
  try dsimp only
  rw [node14001_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14002 input13179)).val
theorem input14003_def : input14003 = (.seq input14002 input13179) := by
  unfold input14003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14002 output13179)).val
theorem output14003_def : output14003 = (.seq output14002 output13179) := by
  unfold output14003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14003_skip : Flapjack.WordAlloc.isSkip output14003 = false := by
  rw [output14003_def]
  conv => lhs; cbv
  try rfl
theorem node14003_eq : Flapjack.WordAlloc.removeDeadStructural input14003 value6593 value1 value2 = (output14003, value6896, value1) := by
  rw [input14003_def, output14003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13179_eq]
  try dsimp only
  rw [node14002_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14003 input13178)).val
theorem input14004_def : input14004 = (.seq input14003 input13178) := by
  unfold input14004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14003 output13178)).val
theorem output14004_def : output14004 = (.seq output14003 output13178) := by
  unfold output14004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14004_skip : Flapjack.WordAlloc.isSkip output14004 = false := by
  rw [output14004_def]
  conv => lhs; cbv
  try rfl
theorem node14004_eq : Flapjack.WordAlloc.removeDeadStructural input14004 value5 value1 value2 = (output14004, value6896, value1) := by
  rw [input14004_def, output14004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13178_eq]
  try dsimp only
  rw [node14003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14004 input13175)).val
theorem input14005_def : input14005 = (.seq input14004 input13175) := by
  unfold input14005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14004 output13175)).val
theorem output14005_def : output14005 = (.seq output14004 output13175) := by
  unfold output14005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14005_skip : Flapjack.WordAlloc.isSkip output14005 = false := by
  rw [output14005_def]
  conv => lhs; cbv
  try rfl
theorem node14005_eq : Flapjack.WordAlloc.removeDeadStructural input14005 value6587 value1 value2 = (output14005, value6896, value1) := by
  rw [input14005_def, output14005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13175_eq]
  try dsimp only
  rw [node14004_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14005 input13166)).val
theorem input14006_def : input14006 = (.seq input14005 input13166) := by
  unfold input14006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14005)).val
theorem output14006_def : output14006 = (output14005) := by
  unfold output14006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14006_skip : Flapjack.WordAlloc.isSkip output14006 = false := by
  rw [output14006_def]
  conv => lhs; cbv
  try rfl
theorem node14006_eq : Flapjack.WordAlloc.removeDeadStructural input14006 value6587 value1 value2 = (output14006, value6896, value1) := by
  rw [input14006_def, output14006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13166_eq]
  try dsimp only
  rw [node14005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14006 input13165)).val
theorem input14007_def : input14007 = (.seq input14006 input13165) := by
  unfold input14007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14006 output13165)).val
theorem output14007_def : output14007 = (.seq output14006 output13165) := by
  unfold output14007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14007_skip : Flapjack.WordAlloc.isSkip output14007 = false := by
  rw [output14007_def]
  conv => lhs; cbv
  try rfl
theorem node14007_eq : Flapjack.WordAlloc.removeDeadStructural input14007 value6586 value1 value2 = (output14007, value6896, value1) := by
  rw [input14007_def, output14007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13165_eq]
  try dsimp only
  rw [node14006_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14007 input13164)).val
theorem input14008_def : input14008 = (.seq input14007 input13164) := by
  unfold input14008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14007 output13164)).val
theorem output14008_def : output14008 = (.seq output14007 output13164) := by
  unfold output14008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14008_skip : Flapjack.WordAlloc.isSkip output14008 = false := by
  rw [output14008_def]
  conv => lhs; cbv
  try rfl
theorem node14008_eq : Flapjack.WordAlloc.removeDeadStructural input14008 value5 value1 value2 = (output14008, value6896, value1) := by
  rw [input14008_def, output14008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13164_eq]
  try dsimp only
  rw [node14007_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14008 input13161)).val
theorem input14009_def : input14009 = (.seq input14008 input13161) := by
  unfold input14009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14008 output13161)).val
theorem output14009_def : output14009 = (.seq output14008 output13161) := by
  unfold output14009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14009_skip : Flapjack.WordAlloc.isSkip output14009 = false := by
  rw [output14009_def]
  conv => lhs; cbv
  try rfl
theorem node14009_eq : Flapjack.WordAlloc.removeDeadStructural input14009 value6580 value1 value2 = (output14009, value6896, value1) := by
  rw [input14009_def, output14009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13161_eq]
  try dsimp only
  rw [node14008_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14009 input13152)).val
theorem input14010_def : input14010 = (.seq input14009 input13152) := by
  unfold input14010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14009)).val
theorem output14010_def : output14010 = (output14009) := by
  unfold output14010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14010_skip : Flapjack.WordAlloc.isSkip output14010 = false := by
  rw [output14010_def]
  conv => lhs; cbv
  try rfl
theorem node14010_eq : Flapjack.WordAlloc.removeDeadStructural input14010 value6580 value1 value2 = (output14010, value6896, value1) := by
  rw [input14010_def, output14010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13152_eq]
  try dsimp only
  rw [node14009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14010 input13151)).val
theorem input14011_def : input14011 = (.seq input14010 input13151) := by
  unfold input14011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14010 output13151)).val
theorem output14011_def : output14011 = (.seq output14010 output13151) := by
  unfold output14011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14011_skip : Flapjack.WordAlloc.isSkip output14011 = false := by
  rw [output14011_def]
  conv => lhs; cbv
  try rfl
theorem node14011_eq : Flapjack.WordAlloc.removeDeadStructural input14011 value6579 value1 value2 = (output14011, value6896, value1) := by
  rw [input14011_def, output14011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13151_eq]
  try dsimp only
  rw [node14010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14011 input13150)).val
theorem input14012_def : input14012 = (.seq input14011 input13150) := by
  unfold input14012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14011 output13150)).val
theorem output14012_def : output14012 = (.seq output14011 output13150) := by
  unfold output14012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14012_skip : Flapjack.WordAlloc.isSkip output14012 = false := by
  rw [output14012_def]
  conv => lhs; cbv
  try rfl
theorem node14012_eq : Flapjack.WordAlloc.removeDeadStructural input14012 value5 value1 value2 = (output14012, value6896, value1) := by
  rw [input14012_def, output14012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13150_eq]
  try dsimp only
  rw [node14011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14012 input13147)).val
theorem input14013_def : input14013 = (.seq input14012 input13147) := by
  unfold input14013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14012 output13147)).val
theorem output14013_def : output14013 = (.seq output14012 output13147) := by
  unfold output14013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14013_skip : Flapjack.WordAlloc.isSkip output14013 = false := by
  rw [output14013_def]
  conv => lhs; cbv
  try rfl
theorem node14013_eq : Flapjack.WordAlloc.removeDeadStructural input14013 value6573 value1 value2 = (output14013, value6896, value1) := by
  rw [input14013_def, output14013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13147_eq]
  try dsimp only
  rw [node14012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14013 input13138)).val
theorem input14014_def : input14014 = (.seq input14013 input13138) := by
  unfold input14014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14013)).val
theorem output14014_def : output14014 = (output14013) := by
  unfold output14014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14014_skip : Flapjack.WordAlloc.isSkip output14014 = false := by
  rw [output14014_def]
  conv => lhs; cbv
  try rfl
theorem node14014_eq : Flapjack.WordAlloc.removeDeadStructural input14014 value6573 value1 value2 = (output14014, value6896, value1) := by
  rw [input14014_def, output14014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13138_eq]
  try dsimp only
  rw [node14013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14014 input13137)).val
theorem input14015_def : input14015 = (.seq input14014 input13137) := by
  unfold input14015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14014 output13137)).val
theorem output14015_def : output14015 = (.seq output14014 output13137) := by
  unfold output14015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14015_skip : Flapjack.WordAlloc.isSkip output14015 = false := by
  rw [output14015_def]
  conv => lhs; cbv
  try rfl
theorem node14015_eq : Flapjack.WordAlloc.removeDeadStructural input14015 value6572 value1 value2 = (output14015, value6896, value1) := by
  rw [input14015_def, output14015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13137_eq]
  try dsimp only
  rw [node14014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14015 input13136)).val
theorem input14016_def : input14016 = (.seq input14015 input13136) := by
  unfold input14016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14015 output13136)).val
theorem output14016_def : output14016 = (.seq output14015 output13136) := by
  unfold output14016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14016_skip : Flapjack.WordAlloc.isSkip output14016 = false := by
  rw [output14016_def]
  conv => lhs; cbv
  try rfl
theorem node14016_eq : Flapjack.WordAlloc.removeDeadStructural input14016 value5 value1 value2 = (output14016, value6896, value1) := by
  rw [input14016_def, output14016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13136_eq]
  try dsimp only
  rw [node14015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14016 input13133)).val
theorem input14017_def : input14017 = (.seq input14016 input13133) := by
  unfold input14017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14016 output13133)).val
theorem output14017_def : output14017 = (.seq output14016 output13133) := by
  unfold output14017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14017_skip : Flapjack.WordAlloc.isSkip output14017 = false := by
  rw [output14017_def]
  conv => lhs; cbv
  try rfl
theorem node14017_eq : Flapjack.WordAlloc.removeDeadStructural input14017 value6566 value1 value2 = (output14017, value6896, value1) := by
  rw [input14017_def, output14017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13133_eq]
  try dsimp only
  rw [node14016_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14017 input13124)).val
theorem input14018_def : input14018 = (.seq input14017 input13124) := by
  unfold input14018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14017)).val
theorem output14018_def : output14018 = (output14017) := by
  unfold output14018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14018_skip : Flapjack.WordAlloc.isSkip output14018 = false := by
  rw [output14018_def]
  conv => lhs; cbv
  try rfl
theorem node14018_eq : Flapjack.WordAlloc.removeDeadStructural input14018 value6566 value1 value2 = (output14018, value6896, value1) := by
  rw [input14018_def, output14018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13124_eq]
  try dsimp only
  rw [node14017_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14018 input13123)).val
theorem input14019_def : input14019 = (.seq input14018 input13123) := by
  unfold input14019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14018 output13123)).val
theorem output14019_def : output14019 = (.seq output14018 output13123) := by
  unfold output14019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14019_skip : Flapjack.WordAlloc.isSkip output14019 = false := by
  rw [output14019_def]
  conv => lhs; cbv
  try rfl
theorem node14019_eq : Flapjack.WordAlloc.removeDeadStructural input14019 value6565 value1 value2 = (output14019, value6896, value1) := by
  rw [input14019_def, output14019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13123_eq]
  try dsimp only
  rw [node14018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14019 input13122)).val
theorem input14020_def : input14020 = (.seq input14019 input13122) := by
  unfold input14020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14019 output13122)).val
theorem output14020_def : output14020 = (.seq output14019 output13122) := by
  unfold output14020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14020_skip : Flapjack.WordAlloc.isSkip output14020 = false := by
  rw [output14020_def]
  conv => lhs; cbv
  try rfl
theorem node14020_eq : Flapjack.WordAlloc.removeDeadStructural input14020 value5 value1 value2 = (output14020, value6896, value1) := by
  rw [input14020_def, output14020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13122_eq]
  try dsimp only
  rw [node14019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14020 input13119)).val
theorem input14021_def : input14021 = (.seq input14020 input13119) := by
  unfold input14021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14020 output13119)).val
theorem output14021_def : output14021 = (.seq output14020 output13119) := by
  unfold output14021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14021_skip : Flapjack.WordAlloc.isSkip output14021 = false := by
  rw [output14021_def]
  conv => lhs; cbv
  try rfl
theorem node14021_eq : Flapjack.WordAlloc.removeDeadStructural input14021 value6559 value1 value2 = (output14021, value6896, value1) := by
  rw [input14021_def, output14021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13119_eq]
  try dsimp only
  rw [node14020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14021 input13110)).val
theorem input14022_def : input14022 = (.seq input14021 input13110) := by
  unfold input14022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14021)).val
theorem output14022_def : output14022 = (output14021) := by
  unfold output14022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14022_skip : Flapjack.WordAlloc.isSkip output14022 = false := by
  rw [output14022_def]
  conv => lhs; cbv
  try rfl
theorem node14022_eq : Flapjack.WordAlloc.removeDeadStructural input14022 value6559 value1 value2 = (output14022, value6896, value1) := by
  rw [input14022_def, output14022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13110_eq]
  try dsimp only
  rw [node14021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14022 input13109)).val
theorem input14023_def : input14023 = (.seq input14022 input13109) := by
  unfold input14023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14022 output13109)).val
theorem output14023_def : output14023 = (.seq output14022 output13109) := by
  unfold output14023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14023_skip : Flapjack.WordAlloc.isSkip output14023 = false := by
  rw [output14023_def]
  conv => lhs; cbv
  try rfl
theorem node14023_eq : Flapjack.WordAlloc.removeDeadStructural input14023 value6558 value1 value2 = (output14023, value6896, value1) := by
  rw [input14023_def, output14023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13109_eq]
  try dsimp only
  rw [node14022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14023 input13108)).val
theorem input14024_def : input14024 = (.seq input14023 input13108) := by
  unfold input14024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14023 output13108)).val
theorem output14024_def : output14024 = (.seq output14023 output13108) := by
  unfold output14024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14024_skip : Flapjack.WordAlloc.isSkip output14024 = false := by
  rw [output14024_def]
  conv => lhs; cbv
  try rfl
theorem node14024_eq : Flapjack.WordAlloc.removeDeadStructural input14024 value5 value1 value2 = (output14024, value6896, value1) := by
  rw [input14024_def, output14024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13108_eq]
  try dsimp only
  rw [node14023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14024 input13105)).val
theorem input14025_def : input14025 = (.seq input14024 input13105) := by
  unfold input14025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14024 output13105)).val
theorem output14025_def : output14025 = (.seq output14024 output13105) := by
  unfold output14025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14025_skip : Flapjack.WordAlloc.isSkip output14025 = false := by
  rw [output14025_def]
  conv => lhs; cbv
  try rfl
theorem node14025_eq : Flapjack.WordAlloc.removeDeadStructural input14025 value6552 value1 value2 = (output14025, value6896, value1) := by
  rw [input14025_def, output14025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13105_eq]
  try dsimp only
  rw [node14024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14025 input13096)).val
theorem input14026_def : input14026 = (.seq input14025 input13096) := by
  unfold input14026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14025)).val
theorem output14026_def : output14026 = (output14025) := by
  unfold output14026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14026_skip : Flapjack.WordAlloc.isSkip output14026 = false := by
  rw [output14026_def]
  conv => lhs; cbv
  try rfl
theorem node14026_eq : Flapjack.WordAlloc.removeDeadStructural input14026 value6552 value1 value2 = (output14026, value6896, value1) := by
  rw [input14026_def, output14026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13096_eq]
  try dsimp only
  rw [node14025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14026 input13095)).val
theorem input14027_def : input14027 = (.seq input14026 input13095) := by
  unfold input14027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14026 output13095)).val
theorem output14027_def : output14027 = (.seq output14026 output13095) := by
  unfold output14027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14027_skip : Flapjack.WordAlloc.isSkip output14027 = false := by
  rw [output14027_def]
  conv => lhs; cbv
  try rfl
theorem node14027_eq : Flapjack.WordAlloc.removeDeadStructural input14027 value6551 value1 value2 = (output14027, value6896, value1) := by
  rw [input14027_def, output14027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13095_eq]
  try dsimp only
  rw [node14026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14027 input13094)).val
theorem input14028_def : input14028 = (.seq input14027 input13094) := by
  unfold input14028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14027 output13094)).val
theorem output14028_def : output14028 = (.seq output14027 output13094) := by
  unfold output14028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14028_skip : Flapjack.WordAlloc.isSkip output14028 = false := by
  rw [output14028_def]
  conv => lhs; cbv
  try rfl
theorem node14028_eq : Flapjack.WordAlloc.removeDeadStructural input14028 value5 value1 value2 = (output14028, value6896, value1) := by
  rw [input14028_def, output14028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13094_eq]
  try dsimp only
  rw [node14027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14028 input13091)).val
theorem input14029_def : input14029 = (.seq input14028 input13091) := by
  unfold input14029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14028 output13091)).val
theorem output14029_def : output14029 = (.seq output14028 output13091) := by
  unfold output14029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14029_skip : Flapjack.WordAlloc.isSkip output14029 = false := by
  rw [output14029_def]
  conv => lhs; cbv
  try rfl
theorem node14029_eq : Flapjack.WordAlloc.removeDeadStructural input14029 value6545 value1 value2 = (output14029, value6896, value1) := by
  rw [input14029_def, output14029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13091_eq]
  try dsimp only
  rw [node14028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14029 input13082)).val
theorem input14030_def : input14030 = (.seq input14029 input13082) := by
  unfold input14030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14029)).val
theorem output14030_def : output14030 = (output14029) := by
  unfold output14030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14030_skip : Flapjack.WordAlloc.isSkip output14030 = false := by
  rw [output14030_def]
  conv => lhs; cbv
  try rfl
theorem node14030_eq : Flapjack.WordAlloc.removeDeadStructural input14030 value6545 value1 value2 = (output14030, value6896, value1) := by
  rw [input14030_def, output14030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13082_eq]
  try dsimp only
  rw [node14029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14030 input13081)).val
theorem input14031_def : input14031 = (.seq input14030 input13081) := by
  unfold input14031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14030 output13081)).val
theorem output14031_def : output14031 = (.seq output14030 output13081) := by
  unfold output14031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14031_skip : Flapjack.WordAlloc.isSkip output14031 = false := by
  rw [output14031_def]
  conv => lhs; cbv
  try rfl
theorem node14031_eq : Flapjack.WordAlloc.removeDeadStructural input14031 value6544 value1 value2 = (output14031, value6896, value1) := by
  rw [input14031_def, output14031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13081_eq]
  try dsimp only
  rw [node14030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14031 input13080)).val
theorem input14032_def : input14032 = (.seq input14031 input13080) := by
  unfold input14032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14031 output13080)).val
theorem output14032_def : output14032 = (.seq output14031 output13080) := by
  unfold output14032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14032_skip : Flapjack.WordAlloc.isSkip output14032 = false := by
  rw [output14032_def]
  conv => lhs; cbv
  try rfl
theorem node14032_eq : Flapjack.WordAlloc.removeDeadStructural input14032 value5 value1 value2 = (output14032, value6896, value1) := by
  rw [input14032_def, output14032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13080_eq]
  try dsimp only
  rw [node14031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14032 input13077)).val
theorem input14033_def : input14033 = (.seq input14032 input13077) := by
  unfold input14033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14032 output13077)).val
theorem output14033_def : output14033 = (.seq output14032 output13077) := by
  unfold output14033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14033_skip : Flapjack.WordAlloc.isSkip output14033 = false := by
  rw [output14033_def]
  conv => lhs; cbv
  try rfl
theorem node14033_eq : Flapjack.WordAlloc.removeDeadStructural input14033 value6538 value1 value2 = (output14033, value6896, value1) := by
  rw [input14033_def, output14033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13077_eq]
  try dsimp only
  rw [node14032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14033 input13068)).val
theorem input14034_def : input14034 = (.seq input14033 input13068) := by
  unfold input14034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14033)).val
theorem output14034_def : output14034 = (output14033) := by
  unfold output14034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14034_skip : Flapjack.WordAlloc.isSkip output14034 = false := by
  rw [output14034_def]
  conv => lhs; cbv
  try rfl
theorem node14034_eq : Flapjack.WordAlloc.removeDeadStructural input14034 value6538 value1 value2 = (output14034, value6896, value1) := by
  rw [input14034_def, output14034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13068_eq]
  try dsimp only
  rw [node14033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14034 input13067)).val
theorem input14035_def : input14035 = (.seq input14034 input13067) := by
  unfold input14035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14034 output13067)).val
theorem output14035_def : output14035 = (.seq output14034 output13067) := by
  unfold output14035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14035_skip : Flapjack.WordAlloc.isSkip output14035 = false := by
  rw [output14035_def]
  conv => lhs; cbv
  try rfl
theorem node14035_eq : Flapjack.WordAlloc.removeDeadStructural input14035 value6537 value1 value2 = (output14035, value6896, value1) := by
  rw [input14035_def, output14035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13067_eq]
  try dsimp only
  rw [node14034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14035 input13066)).val
theorem input14036_def : input14036 = (.seq input14035 input13066) := by
  unfold input14036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14035 output13066)).val
theorem output14036_def : output14036 = (.seq output14035 output13066) := by
  unfold output14036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14036_skip : Flapjack.WordAlloc.isSkip output14036 = false := by
  rw [output14036_def]
  conv => lhs; cbv
  try rfl
theorem node14036_eq : Flapjack.WordAlloc.removeDeadStructural input14036 value5 value1 value2 = (output14036, value6896, value1) := by
  rw [input14036_def, output14036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13066_eq]
  try dsimp only
  rw [node14035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14036 input13063)).val
theorem input14037_def : input14037 = (.seq input14036 input13063) := by
  unfold input14037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14036 output13063)).val
theorem output14037_def : output14037 = (.seq output14036 output13063) := by
  unfold output14037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14037_skip : Flapjack.WordAlloc.isSkip output14037 = false := by
  rw [output14037_def]
  conv => lhs; cbv
  try rfl
theorem node14037_eq : Flapjack.WordAlloc.removeDeadStructural input14037 value6531 value1 value2 = (output14037, value6896, value1) := by
  rw [input14037_def, output14037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13063_eq]
  try dsimp only
  rw [node14036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14037 input13054)).val
theorem input14038_def : input14038 = (.seq input14037 input13054) := by
  unfold input14038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14037)).val
theorem output14038_def : output14038 = (output14037) := by
  unfold output14038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14038_skip : Flapjack.WordAlloc.isSkip output14038 = false := by
  rw [output14038_def]
  conv => lhs; cbv
  try rfl
theorem node14038_eq : Flapjack.WordAlloc.removeDeadStructural input14038 value6531 value1 value2 = (output14038, value6896, value1) := by
  rw [input14038_def, output14038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13054_eq]
  try dsimp only
  rw [node14037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14038 input13053)).val
theorem input14039_def : input14039 = (.seq input14038 input13053) := by
  unfold input14039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14038 output13053)).val
theorem output14039_def : output14039 = (.seq output14038 output13053) := by
  unfold output14039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14039_skip : Flapjack.WordAlloc.isSkip output14039 = false := by
  rw [output14039_def]
  conv => lhs; cbv
  try rfl
theorem node14039_eq : Flapjack.WordAlloc.removeDeadStructural input14039 value6530 value1 value2 = (output14039, value6896, value1) := by
  rw [input14039_def, output14039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13053_eq]
  try dsimp only
  rw [node14038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14039 input13052)).val
theorem input14040_def : input14040 = (.seq input14039 input13052) := by
  unfold input14040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14039 output13052)).val
theorem output14040_def : output14040 = (.seq output14039 output13052) := by
  unfold output14040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14040_skip : Flapjack.WordAlloc.isSkip output14040 = false := by
  rw [output14040_def]
  conv => lhs; cbv
  try rfl
theorem node14040_eq : Flapjack.WordAlloc.removeDeadStructural input14040 value5 value1 value2 = (output14040, value6896, value1) := by
  rw [input14040_def, output14040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13052_eq]
  try dsimp only
  rw [node14039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14040 input13049)).val
theorem input14041_def : input14041 = (.seq input14040 input13049) := by
  unfold input14041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14040 output13049)).val
theorem output14041_def : output14041 = (.seq output14040 output13049) := by
  unfold output14041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14041_skip : Flapjack.WordAlloc.isSkip output14041 = false := by
  rw [output14041_def]
  conv => lhs; cbv
  try rfl
theorem node14041_eq : Flapjack.WordAlloc.removeDeadStructural input14041 value6524 value1 value2 = (output14041, value6896, value1) := by
  rw [input14041_def, output14041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13049_eq]
  try dsimp only
  rw [node14040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14041 input13040)).val
theorem input14042_def : input14042 = (.seq input14041 input13040) := by
  unfold input14042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14041)).val
theorem output14042_def : output14042 = (output14041) := by
  unfold output14042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14042_skip : Flapjack.WordAlloc.isSkip output14042 = false := by
  rw [output14042_def]
  conv => lhs; cbv
  try rfl
theorem node14042_eq : Flapjack.WordAlloc.removeDeadStructural input14042 value6524 value1 value2 = (output14042, value6896, value1) := by
  rw [input14042_def, output14042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13040_eq]
  try dsimp only
  rw [node14041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14042 input13039)).val
theorem input14043_def : input14043 = (.seq input14042 input13039) := by
  unfold input14043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14042 output13039)).val
theorem output14043_def : output14043 = (.seq output14042 output13039) := by
  unfold output14043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14043_skip : Flapjack.WordAlloc.isSkip output14043 = false := by
  rw [output14043_def]
  conv => lhs; cbv
  try rfl
theorem node14043_eq : Flapjack.WordAlloc.removeDeadStructural input14043 value6523 value1 value2 = (output14043, value6896, value1) := by
  rw [input14043_def, output14043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13039_eq]
  try dsimp only
  rw [node14042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14043 input13038)).val
theorem input14044_def : input14044 = (.seq input14043 input13038) := by
  unfold input14044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14043 output13038)).val
theorem output14044_def : output14044 = (.seq output14043 output13038) := by
  unfold output14044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14044_skip : Flapjack.WordAlloc.isSkip output14044 = false := by
  rw [output14044_def]
  conv => lhs; cbv
  try rfl
theorem node14044_eq : Flapjack.WordAlloc.removeDeadStructural input14044 value5 value1 value2 = (output14044, value6896, value1) := by
  rw [input14044_def, output14044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13038_eq]
  try dsimp only
  rw [node14043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14044 input13035)).val
theorem input14045_def : input14045 = (.seq input14044 input13035) := by
  unfold input14045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14044 output13035)).val
theorem output14045_def : output14045 = (.seq output14044 output13035) := by
  unfold output14045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14045_skip : Flapjack.WordAlloc.isSkip output14045 = false := by
  rw [output14045_def]
  conv => lhs; cbv
  try rfl
theorem node14045_eq : Flapjack.WordAlloc.removeDeadStructural input14045 value6517 value1 value2 = (output14045, value6896, value1) := by
  rw [input14045_def, output14045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13035_eq]
  try dsimp only
  rw [node14044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14045 input13026)).val
theorem input14046_def : input14046 = (.seq input14045 input13026) := by
  unfold input14046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14045)).val
theorem output14046_def : output14046 = (output14045) := by
  unfold output14046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14046_skip : Flapjack.WordAlloc.isSkip output14046 = false := by
  rw [output14046_def]
  conv => lhs; cbv
  try rfl
theorem node14046_eq : Flapjack.WordAlloc.removeDeadStructural input14046 value6517 value1 value2 = (output14046, value6896, value1) := by
  rw [input14046_def, output14046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13026_eq]
  try dsimp only
  rw [node14045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14046 input13025)).val
theorem input14047_def : input14047 = (.seq input14046 input13025) := by
  unfold input14047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14046 output13025)).val
theorem output14047_def : output14047 = (.seq output14046 output13025) := by
  unfold output14047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14047_skip : Flapjack.WordAlloc.isSkip output14047 = false := by
  rw [output14047_def]
  conv => lhs; cbv
  try rfl
theorem node14047_eq : Flapjack.WordAlloc.removeDeadStructural input14047 value6516 value1 value2 = (output14047, value6896, value1) := by
  rw [input14047_def, output14047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13025_eq]
  try dsimp only
  rw [node14046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14047 input13024)).val
theorem input14048_def : input14048 = (.seq input14047 input13024) := by
  unfold input14048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14047 output13024)).val
theorem output14048_def : output14048 = (.seq output14047 output13024) := by
  unfold output14048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14048_skip : Flapjack.WordAlloc.isSkip output14048 = false := by
  rw [output14048_def]
  conv => lhs; cbv
  try rfl
theorem node14048_eq : Flapjack.WordAlloc.removeDeadStructural input14048 value5 value1 value2 = (output14048, value6896, value1) := by
  rw [input14048_def, output14048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13024_eq]
  try dsimp only
  rw [node14047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14048 input13021)).val
theorem input14049_def : input14049 = (.seq input14048 input13021) := by
  unfold input14049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14048 output13021)).val
theorem output14049_def : output14049 = (.seq output14048 output13021) := by
  unfold output14049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14049_skip : Flapjack.WordAlloc.isSkip output14049 = false := by
  rw [output14049_def]
  conv => lhs; cbv
  try rfl
theorem node14049_eq : Flapjack.WordAlloc.removeDeadStructural input14049 value6510 value1 value2 = (output14049, value6896, value1) := by
  rw [input14049_def, output14049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13021_eq]
  try dsimp only
  rw [node14048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14049 input13012)).val
theorem input14050_def : input14050 = (.seq input14049 input13012) := by
  unfold input14050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14049)).val
theorem output14050_def : output14050 = (output14049) := by
  unfold output14050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14050_skip : Flapjack.WordAlloc.isSkip output14050 = false := by
  rw [output14050_def]
  conv => lhs; cbv
  try rfl
theorem node14050_eq : Flapjack.WordAlloc.removeDeadStructural input14050 value6510 value1 value2 = (output14050, value6896, value1) := by
  rw [input14050_def, output14050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13012_eq]
  try dsimp only
  rw [node14049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14050 input13011)).val
theorem input14051_def : input14051 = (.seq input14050 input13011) := by
  unfold input14051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14050 output13011)).val
theorem output14051_def : output14051 = (.seq output14050 output13011) := by
  unfold output14051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14051_skip : Flapjack.WordAlloc.isSkip output14051 = false := by
  rw [output14051_def]
  conv => lhs; cbv
  try rfl
theorem node14051_eq : Flapjack.WordAlloc.removeDeadStructural input14051 value6509 value1 value2 = (output14051, value6896, value1) := by
  rw [input14051_def, output14051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13011_eq]
  try dsimp only
  rw [node14050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14051 input13010)).val
theorem input14052_def : input14052 = (.seq input14051 input13010) := by
  unfold input14052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14051 output13010)).val
theorem output14052_def : output14052 = (.seq output14051 output13010) := by
  unfold output14052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14052_skip : Flapjack.WordAlloc.isSkip output14052 = false := by
  rw [output14052_def]
  conv => lhs; cbv
  try rfl
theorem node14052_eq : Flapjack.WordAlloc.removeDeadStructural input14052 value5 value1 value2 = (output14052, value6896, value1) := by
  rw [input14052_def, output14052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13010_eq]
  try dsimp only
  rw [node14051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14052 input13007)).val
theorem input14053_def : input14053 = (.seq input14052 input13007) := by
  unfold input14053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14052 output13007)).val
theorem output14053_def : output14053 = (.seq output14052 output13007) := by
  unfold output14053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14053_skip : Flapjack.WordAlloc.isSkip output14053 = false := by
  rw [output14053_def]
  conv => lhs; cbv
  try rfl
theorem node14053_eq : Flapjack.WordAlloc.removeDeadStructural input14053 value6503 value1 value2 = (output14053, value6896, value1) := by
  rw [input14053_def, output14053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13007_eq]
  try dsimp only
  rw [node14052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14053 input12998)).val
theorem input14054_def : input14054 = (.seq input14053 input12998) := by
  unfold input14054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14053)).val
theorem output14054_def : output14054 = (output14053) := by
  unfold output14054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14054_skip : Flapjack.WordAlloc.isSkip output14054 = false := by
  rw [output14054_def]
  conv => lhs; cbv
  try rfl
theorem node14054_eq : Flapjack.WordAlloc.removeDeadStructural input14054 value6503 value1 value2 = (output14054, value6896, value1) := by
  rw [input14054_def, output14054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12998_eq]
  try dsimp only
  rw [node14053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14054 input12997)).val
theorem input14055_def : input14055 = (.seq input14054 input12997) := by
  unfold input14055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14054 output12997)).val
theorem output14055_def : output14055 = (.seq output14054 output12997) := by
  unfold output14055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14055_skip : Flapjack.WordAlloc.isSkip output14055 = false := by
  rw [output14055_def]
  conv => lhs; cbv
  try rfl
theorem node14055_eq : Flapjack.WordAlloc.removeDeadStructural input14055 value6502 value1 value2 = (output14055, value6896, value1) := by
  rw [input14055_def, output14055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12997_eq]
  try dsimp only
  rw [node14054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14055 input12996)).val
theorem input14056_def : input14056 = (.seq input14055 input12996) := by
  unfold input14056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14055 output12996)).val
theorem output14056_def : output14056 = (.seq output14055 output12996) := by
  unfold output14056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14056_skip : Flapjack.WordAlloc.isSkip output14056 = false := by
  rw [output14056_def]
  conv => lhs; cbv
  try rfl
theorem node14056_eq : Flapjack.WordAlloc.removeDeadStructural input14056 value5 value1 value2 = (output14056, value6896, value1) := by
  rw [input14056_def, output14056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12996_eq]
  try dsimp only
  rw [node14055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14056 input12993)).val
theorem input14057_def : input14057 = (.seq input14056 input12993) := by
  unfold input14057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14056 output12993)).val
theorem output14057_def : output14057 = (.seq output14056 output12993) := by
  unfold output14057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14057_skip : Flapjack.WordAlloc.isSkip output14057 = false := by
  rw [output14057_def]
  conv => lhs; cbv
  try rfl
theorem node14057_eq : Flapjack.WordAlloc.removeDeadStructural input14057 value6496 value1 value2 = (output14057, value6896, value1) := by
  rw [input14057_def, output14057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12993_eq]
  try dsimp only
  rw [node14056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14057 input12984)).val
theorem input14058_def : input14058 = (.seq input14057 input12984) := by
  unfold input14058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14057)).val
theorem output14058_def : output14058 = (output14057) := by
  unfold output14058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14058_skip : Flapjack.WordAlloc.isSkip output14058 = false := by
  rw [output14058_def]
  conv => lhs; cbv
  try rfl
theorem node14058_eq : Flapjack.WordAlloc.removeDeadStructural input14058 value6496 value1 value2 = (output14058, value6896, value1) := by
  rw [input14058_def, output14058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12984_eq]
  try dsimp only
  rw [node14057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14058 input12983)).val
theorem input14059_def : input14059 = (.seq input14058 input12983) := by
  unfold input14059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14058 output12983)).val
theorem output14059_def : output14059 = (.seq output14058 output12983) := by
  unfold output14059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14059_skip : Flapjack.WordAlloc.isSkip output14059 = false := by
  rw [output14059_def]
  conv => lhs; cbv
  try rfl
theorem node14059_eq : Flapjack.WordAlloc.removeDeadStructural input14059 value6495 value1 value2 = (output14059, value6896, value1) := by
  rw [input14059_def, output14059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12983_eq]
  try dsimp only
  rw [node14058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14059 input12982)).val
theorem input14060_def : input14060 = (.seq input14059 input12982) := by
  unfold input14060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14059 output12982)).val
theorem output14060_def : output14060 = (.seq output14059 output12982) := by
  unfold output14060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14060_skip : Flapjack.WordAlloc.isSkip output14060 = false := by
  rw [output14060_def]
  conv => lhs; cbv
  try rfl
theorem node14060_eq : Flapjack.WordAlloc.removeDeadStructural input14060 value5 value1 value2 = (output14060, value6896, value1) := by
  rw [input14060_def, output14060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12982_eq]
  try dsimp only
  rw [node14059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14060 input12979)).val
theorem input14061_def : input14061 = (.seq input14060 input12979) := by
  unfold input14061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14060 output12979)).val
theorem output14061_def : output14061 = (.seq output14060 output12979) := by
  unfold output14061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14061_skip : Flapjack.WordAlloc.isSkip output14061 = false := by
  rw [output14061_def]
  conv => lhs; cbv
  try rfl
theorem node14061_eq : Flapjack.WordAlloc.removeDeadStructural input14061 value6489 value1 value2 = (output14061, value6896, value1) := by
  rw [input14061_def, output14061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12979_eq]
  try dsimp only
  rw [node14060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14061 input12970)).val
theorem input14062_def : input14062 = (.seq input14061 input12970) := by
  unfold input14062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14061)).val
theorem output14062_def : output14062 = (output14061) := by
  unfold output14062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14062_skip : Flapjack.WordAlloc.isSkip output14062 = false := by
  rw [output14062_def]
  conv => lhs; cbv
  try rfl
theorem node14062_eq : Flapjack.WordAlloc.removeDeadStructural input14062 value6489 value1 value2 = (output14062, value6896, value1) := by
  rw [input14062_def, output14062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12970_eq]
  try dsimp only
  rw [node14061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14062 input12969)).val
theorem input14063_def : input14063 = (.seq input14062 input12969) := by
  unfold input14063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14062 output12969)).val
theorem output14063_def : output14063 = (.seq output14062 output12969) := by
  unfold output14063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14063_skip : Flapjack.WordAlloc.isSkip output14063 = false := by
  rw [output14063_def]
  conv => lhs; cbv
  try rfl
theorem node14063_eq : Flapjack.WordAlloc.removeDeadStructural input14063 value6488 value1 value2 = (output14063, value6896, value1) := by
  rw [input14063_def, output14063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12969_eq]
  try dsimp only
  rw [node14062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14063 input12968)).val
theorem input14064_def : input14064 = (.seq input14063 input12968) := by
  unfold input14064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14063 output12968)).val
theorem output14064_def : output14064 = (.seq output14063 output12968) := by
  unfold output14064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14064_skip : Flapjack.WordAlloc.isSkip output14064 = false := by
  rw [output14064_def]
  conv => lhs; cbv
  try rfl
theorem node14064_eq : Flapjack.WordAlloc.removeDeadStructural input14064 value5 value1 value2 = (output14064, value6896, value1) := by
  rw [input14064_def, output14064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12968_eq]
  try dsimp only
  rw [node14063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14064 input12965)).val
theorem input14065_def : input14065 = (.seq input14064 input12965) := by
  unfold input14065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14064 output12965)).val
theorem output14065_def : output14065 = (.seq output14064 output12965) := by
  unfold output14065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14065_skip : Flapjack.WordAlloc.isSkip output14065 = false := by
  rw [output14065_def]
  conv => lhs; cbv
  try rfl
theorem node14065_eq : Flapjack.WordAlloc.removeDeadStructural input14065 value6482 value1 value2 = (output14065, value6896, value1) := by
  rw [input14065_def, output14065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12965_eq]
  try dsimp only
  rw [node14064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14065 input12956)).val
theorem input14066_def : input14066 = (.seq input14065 input12956) := by
  unfold input14066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14065)).val
theorem output14066_def : output14066 = (output14065) := by
  unfold output14066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14066_skip : Flapjack.WordAlloc.isSkip output14066 = false := by
  rw [output14066_def]
  conv => lhs; cbv
  try rfl
theorem node14066_eq : Flapjack.WordAlloc.removeDeadStructural input14066 value6482 value1 value2 = (output14066, value6896, value1) := by
  rw [input14066_def, output14066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12956_eq]
  try dsimp only
  rw [node14065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14066 input12955)).val
theorem input14067_def : input14067 = (.seq input14066 input12955) := by
  unfold input14067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14066 output12955)).val
theorem output14067_def : output14067 = (.seq output14066 output12955) := by
  unfold output14067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14067_skip : Flapjack.WordAlloc.isSkip output14067 = false := by
  rw [output14067_def]
  conv => lhs; cbv
  try rfl
theorem node14067_eq : Flapjack.WordAlloc.removeDeadStructural input14067 value6481 value1 value2 = (output14067, value6896, value1) := by
  rw [input14067_def, output14067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12955_eq]
  try dsimp only
  rw [node14066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14067 input12954)).val
theorem input14068_def : input14068 = (.seq input14067 input12954) := by
  unfold input14068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14067 output12954)).val
theorem output14068_def : output14068 = (.seq output14067 output12954) := by
  unfold output14068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14068_skip : Flapjack.WordAlloc.isSkip output14068 = false := by
  rw [output14068_def]
  conv => lhs; cbv
  try rfl
theorem node14068_eq : Flapjack.WordAlloc.removeDeadStructural input14068 value5 value1 value2 = (output14068, value6896, value1) := by
  rw [input14068_def, output14068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12954_eq]
  try dsimp only
  rw [node14067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14068 input12951)).val
theorem input14069_def : input14069 = (.seq input14068 input12951) := by
  unfold input14069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14068 output12951)).val
theorem output14069_def : output14069 = (.seq output14068 output12951) := by
  unfold output14069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14069_skip : Flapjack.WordAlloc.isSkip output14069 = false := by
  rw [output14069_def]
  conv => lhs; cbv
  try rfl
theorem node14069_eq : Flapjack.WordAlloc.removeDeadStructural input14069 value6475 value1 value2 = (output14069, value6896, value1) := by
  rw [input14069_def, output14069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12951_eq]
  try dsimp only
  rw [node14068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14069 input12942)).val
theorem input14070_def : input14070 = (.seq input14069 input12942) := by
  unfold input14070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14069)).val
theorem output14070_def : output14070 = (output14069) := by
  unfold output14070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14070_skip : Flapjack.WordAlloc.isSkip output14070 = false := by
  rw [output14070_def]
  conv => lhs; cbv
  try rfl
theorem node14070_eq : Flapjack.WordAlloc.removeDeadStructural input14070 value6475 value1 value2 = (output14070, value6896, value1) := by
  rw [input14070_def, output14070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12942_eq]
  try dsimp only
  rw [node14069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14070 input12941)).val
theorem input14071_def : input14071 = (.seq input14070 input12941) := by
  unfold input14071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14070 output12941)).val
theorem output14071_def : output14071 = (.seq output14070 output12941) := by
  unfold output14071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14071_skip : Flapjack.WordAlloc.isSkip output14071 = false := by
  rw [output14071_def]
  conv => lhs; cbv
  try rfl
theorem node14071_eq : Flapjack.WordAlloc.removeDeadStructural input14071 value6474 value1 value2 = (output14071, value6896, value1) := by
  rw [input14071_def, output14071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12941_eq]
  try dsimp only
  rw [node14070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14071 input12940)).val
theorem input14072_def : input14072 = (.seq input14071 input12940) := by
  unfold input14072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14071 output12940)).val
theorem output14072_def : output14072 = (.seq output14071 output12940) := by
  unfold output14072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14072_skip : Flapjack.WordAlloc.isSkip output14072 = false := by
  rw [output14072_def]
  conv => lhs; cbv
  try rfl
theorem node14072_eq : Flapjack.WordAlloc.removeDeadStructural input14072 value5 value1 value2 = (output14072, value6896, value1) := by
  rw [input14072_def, output14072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12940_eq]
  try dsimp only
  rw [node14071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14072 input12937)).val
theorem input14073_def : input14073 = (.seq input14072 input12937) := by
  unfold input14073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14072 output12937)).val
theorem output14073_def : output14073 = (.seq output14072 output12937) := by
  unfold output14073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14073_skip : Flapjack.WordAlloc.isSkip output14073 = false := by
  rw [output14073_def]
  conv => lhs; cbv
  try rfl
theorem node14073_eq : Flapjack.WordAlloc.removeDeadStructural input14073 value6468 value1 value2 = (output14073, value6896, value1) := by
  rw [input14073_def, output14073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12937_eq]
  try dsimp only
  rw [node14072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14073 input12928)).val
theorem input14074_def : input14074 = (.seq input14073 input12928) := by
  unfold input14074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14073)).val
theorem output14074_def : output14074 = (output14073) := by
  unfold output14074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14074_skip : Flapjack.WordAlloc.isSkip output14074 = false := by
  rw [output14074_def]
  conv => lhs; cbv
  try rfl
theorem node14074_eq : Flapjack.WordAlloc.removeDeadStructural input14074 value6468 value1 value2 = (output14074, value6896, value1) := by
  rw [input14074_def, output14074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12928_eq]
  try dsimp only
  rw [node14073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14074 input12927)).val
theorem input14075_def : input14075 = (.seq input14074 input12927) := by
  unfold input14075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14074 output12927)).val
theorem output14075_def : output14075 = (.seq output14074 output12927) := by
  unfold output14075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14075_skip : Flapjack.WordAlloc.isSkip output14075 = false := by
  rw [output14075_def]
  conv => lhs; cbv
  try rfl
theorem node14075_eq : Flapjack.WordAlloc.removeDeadStructural input14075 value6467 value1 value2 = (output14075, value6896, value1) := by
  rw [input14075_def, output14075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12927_eq]
  try dsimp only
  rw [node14074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14075 input12926)).val
theorem input14076_def : input14076 = (.seq input14075 input12926) := by
  unfold input14076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14075 output12926)).val
theorem output14076_def : output14076 = (.seq output14075 output12926) := by
  unfold output14076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14076_skip : Flapjack.WordAlloc.isSkip output14076 = false := by
  rw [output14076_def]
  conv => lhs; cbv
  try rfl
theorem node14076_eq : Flapjack.WordAlloc.removeDeadStructural input14076 value5 value1 value2 = (output14076, value6896, value1) := by
  rw [input14076_def, output14076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12926_eq]
  try dsimp only
  rw [node14075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14076 input12923)).val
theorem input14077_def : input14077 = (.seq input14076 input12923) := by
  unfold input14077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14076 output12923)).val
theorem output14077_def : output14077 = (.seq output14076 output12923) := by
  unfold output14077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14077_skip : Flapjack.WordAlloc.isSkip output14077 = false := by
  rw [output14077_def]
  conv => lhs; cbv
  try rfl
theorem node14077_eq : Flapjack.WordAlloc.removeDeadStructural input14077 value6461 value1 value2 = (output14077, value6896, value1) := by
  rw [input14077_def, output14077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12923_eq]
  try dsimp only
  rw [node14076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14077 input12914)).val
theorem input14078_def : input14078 = (.seq input14077 input12914) := by
  unfold input14078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14077)).val
theorem output14078_def : output14078 = (output14077) := by
  unfold output14078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14078_skip : Flapjack.WordAlloc.isSkip output14078 = false := by
  rw [output14078_def]
  conv => lhs; cbv
  try rfl
theorem node14078_eq : Flapjack.WordAlloc.removeDeadStructural input14078 value6461 value1 value2 = (output14078, value6896, value1) := by
  rw [input14078_def, output14078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12914_eq]
  try dsimp only
  rw [node14077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14078 input12913)).val
theorem input14079_def : input14079 = (.seq input14078 input12913) := by
  unfold input14079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14078 output12913)).val
theorem output14079_def : output14079 = (.seq output14078 output12913) := by
  unfold output14079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14079_skip : Flapjack.WordAlloc.isSkip output14079 = false := by
  rw [output14079_def]
  conv => lhs; cbv
  try rfl
theorem node14079_eq : Flapjack.WordAlloc.removeDeadStructural input14079 value6460 value1 value2 = (output14079, value6896, value1) := by
  rw [input14079_def, output14079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12913_eq]
  try dsimp only
  rw [node14078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node14079_eq
end InitECandidate.Proofs.DeadStages713
