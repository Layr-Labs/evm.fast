import InitECandidate.Proofs.DeadStages240.Chunk014
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages240
@[irreducible, cbv_opaque] def input3840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3839 input3156)).val
theorem input3840_def : input3840 = (.seq input3839 input3156) := by
  unfold input3840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3839 output3156)).val
theorem output3840_def : output3840 = (.seq output3839 output3156) := by
  unfold output3840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3840_skip : Flapjack.WordAlloc.isSkip output3840 = false := by
  rw [output3840_def]
  conv => lhs; cbv
  try rfl
theorem node3840_eq : Flapjack.WordAlloc.removeDeadStructural input3840 value5 value1 value2 = (output3840, value1832, value1) := by
  rw [input3840_def, output3840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3156_eq]
  try dsimp only
  rw [node3839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3840 input3153)).val
theorem input3841_def : input3841 = (.seq input3840 input3153) := by
  unfold input3841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3840 output3153)).val
theorem output3841_def : output3841 = (.seq output3840 output3153) := by
  unfold output3841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3841_skip : Flapjack.WordAlloc.isSkip output3841 = false := by
  rw [output3841_def]
  conv => lhs; cbv
  try rfl
theorem node3841_eq : Flapjack.WordAlloc.removeDeadStructural input3841 value1576 value1 value2 = (output3841, value1832, value1) := by
  rw [input3841_def, output3841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3153_eq]
  try dsimp only
  rw [node3840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3841 input3144)).val
theorem input3842_def : input3842 = (.seq input3841 input3144) := by
  unfold input3842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3841)).val
theorem output3842_def : output3842 = (output3841) := by
  unfold output3842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3842_skip : Flapjack.WordAlloc.isSkip output3842 = false := by
  rw [output3842_def]
  conv => lhs; cbv
  try rfl
theorem node3842_eq : Flapjack.WordAlloc.removeDeadStructural input3842 value1576 value1 value2 = (output3842, value1832, value1) := by
  rw [input3842_def, output3842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3144_eq]
  try dsimp only
  rw [node3841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3842 input3143)).val
theorem input3843_def : input3843 = (.seq input3842 input3143) := by
  unfold input3843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3842 output3143)).val
theorem output3843_def : output3843 = (.seq output3842 output3143) := by
  unfold output3843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3843_skip : Flapjack.WordAlloc.isSkip output3843 = false := by
  rw [output3843_def]
  conv => lhs; cbv
  try rfl
theorem node3843_eq : Flapjack.WordAlloc.removeDeadStructural input3843 value1575 value1 value2 = (output3843, value1832, value1) := by
  rw [input3843_def, output3843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3143_eq]
  try dsimp only
  rw [node3842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3843 input3142)).val
theorem input3844_def : input3844 = (.seq input3843 input3142) := by
  unfold input3844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3843 output3142)).val
theorem output3844_def : output3844 = (.seq output3843 output3142) := by
  unfold output3844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3844_skip : Flapjack.WordAlloc.isSkip output3844 = false := by
  rw [output3844_def]
  conv => lhs; cbv
  try rfl
theorem node3844_eq : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1832, value1) := by
  rw [input3844_def, output3844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3142_eq]
  try dsimp only
  rw [node3843_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3844 input3139)).val
theorem input3845_def : input3845 = (.seq input3844 input3139) := by
  unfold input3845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3844 output3139)).val
theorem output3845_def : output3845 = (.seq output3844 output3139) := by
  unfold output3845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3845_skip : Flapjack.WordAlloc.isSkip output3845 = false := by
  rw [output3845_def]
  conv => lhs; cbv
  try rfl
theorem node3845_eq : Flapjack.WordAlloc.removeDeadStructural input3845 value1569 value1 value2 = (output3845, value1832, value1) := by
  rw [input3845_def, output3845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3139_eq]
  try dsimp only
  rw [node3844_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3845 input3130)).val
theorem input3846_def : input3846 = (.seq input3845 input3130) := by
  unfold input3846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3845)).val
theorem output3846_def : output3846 = (output3845) := by
  unfold output3846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3846_skip : Flapjack.WordAlloc.isSkip output3846 = false := by
  rw [output3846_def]
  conv => lhs; cbv
  try rfl
theorem node3846_eq : Flapjack.WordAlloc.removeDeadStructural input3846 value1569 value1 value2 = (output3846, value1832, value1) := by
  rw [input3846_def, output3846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3130_eq]
  try dsimp only
  rw [node3845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3846 input3129)).val
theorem input3847_def : input3847 = (.seq input3846 input3129) := by
  unfold input3847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3846 output3129)).val
theorem output3847_def : output3847 = (.seq output3846 output3129) := by
  unfold output3847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3847_skip : Flapjack.WordAlloc.isSkip output3847 = false := by
  rw [output3847_def]
  conv => lhs; cbv
  try rfl
theorem node3847_eq : Flapjack.WordAlloc.removeDeadStructural input3847 value1568 value1 value2 = (output3847, value1832, value1) := by
  rw [input3847_def, output3847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3129_eq]
  try dsimp only
  rw [node3846_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3847 input3128)).val
theorem input3848_def : input3848 = (.seq input3847 input3128) := by
  unfold input3848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3847 output3128)).val
theorem output3848_def : output3848 = (.seq output3847 output3128) := by
  unfold output3848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3848_skip : Flapjack.WordAlloc.isSkip output3848 = false := by
  rw [output3848_def]
  conv => lhs; cbv
  try rfl
theorem node3848_eq : Flapjack.WordAlloc.removeDeadStructural input3848 value5 value1 value2 = (output3848, value1832, value1) := by
  rw [input3848_def, output3848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3128_eq]
  try dsimp only
  rw [node3847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3848 input3125)).val
theorem input3849_def : input3849 = (.seq input3848 input3125) := by
  unfold input3849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3848 output3125)).val
theorem output3849_def : output3849 = (.seq output3848 output3125) := by
  unfold output3849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3849_skip : Flapjack.WordAlloc.isSkip output3849 = false := by
  rw [output3849_def]
  conv => lhs; cbv
  try rfl
theorem node3849_eq : Flapjack.WordAlloc.removeDeadStructural input3849 value1562 value1 value2 = (output3849, value1832, value1) := by
  rw [input3849_def, output3849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3125_eq]
  try dsimp only
  rw [node3848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3849 input3116)).val
theorem input3850_def : input3850 = (.seq input3849 input3116) := by
  unfold input3850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3849)).val
theorem output3850_def : output3850 = (output3849) := by
  unfold output3850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3850_skip : Flapjack.WordAlloc.isSkip output3850 = false := by
  rw [output3850_def]
  conv => lhs; cbv
  try rfl
theorem node3850_eq : Flapjack.WordAlloc.removeDeadStructural input3850 value1562 value1 value2 = (output3850, value1832, value1) := by
  rw [input3850_def, output3850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3116_eq]
  try dsimp only
  rw [node3849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3850 input3115)).val
theorem input3851_def : input3851 = (.seq input3850 input3115) := by
  unfold input3851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3850 output3115)).val
theorem output3851_def : output3851 = (.seq output3850 output3115) := by
  unfold output3851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3851_skip : Flapjack.WordAlloc.isSkip output3851 = false := by
  rw [output3851_def]
  conv => lhs; cbv
  try rfl
theorem node3851_eq : Flapjack.WordAlloc.removeDeadStructural input3851 value1561 value1 value2 = (output3851, value1832, value1) := by
  rw [input3851_def, output3851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3115_eq]
  try dsimp only
  rw [node3850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3851 input3114)).val
theorem input3852_def : input3852 = (.seq input3851 input3114) := by
  unfold input3852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3851 output3114)).val
theorem output3852_def : output3852 = (.seq output3851 output3114) := by
  unfold output3852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3852_skip : Flapjack.WordAlloc.isSkip output3852 = false := by
  rw [output3852_def]
  conv => lhs; cbv
  try rfl
theorem node3852_eq : Flapjack.WordAlloc.removeDeadStructural input3852 value5 value1 value2 = (output3852, value1832, value1) := by
  rw [input3852_def, output3852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3114_eq]
  try dsimp only
  rw [node3851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3852 input3111)).val
theorem input3853_def : input3853 = (.seq input3852 input3111) := by
  unfold input3853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3852 output3111)).val
theorem output3853_def : output3853 = (.seq output3852 output3111) := by
  unfold output3853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3853_skip : Flapjack.WordAlloc.isSkip output3853 = false := by
  rw [output3853_def]
  conv => lhs; cbv
  try rfl
theorem node3853_eq : Flapjack.WordAlloc.removeDeadStructural input3853 value1555 value1 value2 = (output3853, value1832, value1) := by
  rw [input3853_def, output3853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3111_eq]
  try dsimp only
  rw [node3852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3853 input3102)).val
theorem input3854_def : input3854 = (.seq input3853 input3102) := by
  unfold input3854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3853)).val
theorem output3854_def : output3854 = (output3853) := by
  unfold output3854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3854_skip : Flapjack.WordAlloc.isSkip output3854 = false := by
  rw [output3854_def]
  conv => lhs; cbv
  try rfl
theorem node3854_eq : Flapjack.WordAlloc.removeDeadStructural input3854 value1555 value1 value2 = (output3854, value1832, value1) := by
  rw [input3854_def, output3854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3102_eq]
  try dsimp only
  rw [node3853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3854 input3101)).val
theorem input3855_def : input3855 = (.seq input3854 input3101) := by
  unfold input3855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3854 output3101)).val
theorem output3855_def : output3855 = (.seq output3854 output3101) := by
  unfold output3855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3855_skip : Flapjack.WordAlloc.isSkip output3855 = false := by
  rw [output3855_def]
  conv => lhs; cbv
  try rfl
theorem node3855_eq : Flapjack.WordAlloc.removeDeadStructural input3855 value1554 value1 value2 = (output3855, value1832, value1) := by
  rw [input3855_def, output3855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3101_eq]
  try dsimp only
  rw [node3854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3855 input3100)).val
theorem input3856_def : input3856 = (.seq input3855 input3100) := by
  unfold input3856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3855 output3100)).val
theorem output3856_def : output3856 = (.seq output3855 output3100) := by
  unfold output3856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3856_skip : Flapjack.WordAlloc.isSkip output3856 = false := by
  rw [output3856_def]
  conv => lhs; cbv
  try rfl
theorem node3856_eq : Flapjack.WordAlloc.removeDeadStructural input3856 value5 value1 value2 = (output3856, value1832, value1) := by
  rw [input3856_def, output3856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3100_eq]
  try dsimp only
  rw [node3855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3856 input3097)).val
theorem input3857_def : input3857 = (.seq input3856 input3097) := by
  unfold input3857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3856 output3097)).val
theorem output3857_def : output3857 = (.seq output3856 output3097) := by
  unfold output3857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3857_skip : Flapjack.WordAlloc.isSkip output3857 = false := by
  rw [output3857_def]
  conv => lhs; cbv
  try rfl
theorem node3857_eq : Flapjack.WordAlloc.removeDeadStructural input3857 value1548 value1 value2 = (output3857, value1832, value1) := by
  rw [input3857_def, output3857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3097_eq]
  try dsimp only
  rw [node3856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3857 input3088)).val
theorem input3858_def : input3858 = (.seq input3857 input3088) := by
  unfold input3858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3857)).val
theorem output3858_def : output3858 = (output3857) := by
  unfold output3858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3858_skip : Flapjack.WordAlloc.isSkip output3858 = false := by
  rw [output3858_def]
  conv => lhs; cbv
  try rfl
theorem node3858_eq : Flapjack.WordAlloc.removeDeadStructural input3858 value1548 value1 value2 = (output3858, value1832, value1) := by
  rw [input3858_def, output3858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3088_eq]
  try dsimp only
  rw [node3857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3858 input3087)).val
theorem input3859_def : input3859 = (.seq input3858 input3087) := by
  unfold input3859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3858 output3087)).val
theorem output3859_def : output3859 = (.seq output3858 output3087) := by
  unfold output3859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3859_skip : Flapjack.WordAlloc.isSkip output3859 = false := by
  rw [output3859_def]
  conv => lhs; cbv
  try rfl
theorem node3859_eq : Flapjack.WordAlloc.removeDeadStructural input3859 value1547 value1 value2 = (output3859, value1832, value1) := by
  rw [input3859_def, output3859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3087_eq]
  try dsimp only
  rw [node3858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3859 input3086)).val
theorem input3860_def : input3860 = (.seq input3859 input3086) := by
  unfold input3860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3859 output3086)).val
theorem output3860_def : output3860 = (.seq output3859 output3086) := by
  unfold output3860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3860_skip : Flapjack.WordAlloc.isSkip output3860 = false := by
  rw [output3860_def]
  conv => lhs; cbv
  try rfl
theorem node3860_eq : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1832, value1) := by
  rw [input3860_def, output3860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3086_eq]
  try dsimp only
  rw [node3859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3860 input3083)).val
theorem input3861_def : input3861 = (.seq input3860 input3083) := by
  unfold input3861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3860 output3083)).val
theorem output3861_def : output3861 = (.seq output3860 output3083) := by
  unfold output3861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3861_skip : Flapjack.WordAlloc.isSkip output3861 = false := by
  rw [output3861_def]
  conv => lhs; cbv
  try rfl
theorem node3861_eq : Flapjack.WordAlloc.removeDeadStructural input3861 value1541 value1 value2 = (output3861, value1832, value1) := by
  rw [input3861_def, output3861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3083_eq]
  try dsimp only
  rw [node3860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3861 input3074)).val
theorem input3862_def : input3862 = (.seq input3861 input3074) := by
  unfold input3862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3861)).val
theorem output3862_def : output3862 = (output3861) := by
  unfold output3862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3862_skip : Flapjack.WordAlloc.isSkip output3862 = false := by
  rw [output3862_def]
  conv => lhs; cbv
  try rfl
theorem node3862_eq : Flapjack.WordAlloc.removeDeadStructural input3862 value1541 value1 value2 = (output3862, value1832, value1) := by
  rw [input3862_def, output3862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3074_eq]
  try dsimp only
  rw [node3861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3862 input3073)).val
theorem input3863_def : input3863 = (.seq input3862 input3073) := by
  unfold input3863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3862 output3073)).val
theorem output3863_def : output3863 = (.seq output3862 output3073) := by
  unfold output3863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3863_skip : Flapjack.WordAlloc.isSkip output3863 = false := by
  rw [output3863_def]
  conv => lhs; cbv
  try rfl
theorem node3863_eq : Flapjack.WordAlloc.removeDeadStructural input3863 value1540 value1 value2 = (output3863, value1832, value1) := by
  rw [input3863_def, output3863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3073_eq]
  try dsimp only
  rw [node3862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3863 input3072)).val
theorem input3864_def : input3864 = (.seq input3863 input3072) := by
  unfold input3864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3863 output3072)).val
theorem output3864_def : output3864 = (.seq output3863 output3072) := by
  unfold output3864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3864_skip : Flapjack.WordAlloc.isSkip output3864 = false := by
  rw [output3864_def]
  conv => lhs; cbv
  try rfl
theorem node3864_eq : Flapjack.WordAlloc.removeDeadStructural input3864 value5 value1 value2 = (output3864, value1832, value1) := by
  rw [input3864_def, output3864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3072_eq]
  try dsimp only
  rw [node3863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3864 input3069)).val
theorem input3865_def : input3865 = (.seq input3864 input3069) := by
  unfold input3865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3864 output3069)).val
theorem output3865_def : output3865 = (.seq output3864 output3069) := by
  unfold output3865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3865_skip : Flapjack.WordAlloc.isSkip output3865 = false := by
  rw [output3865_def]
  conv => lhs; cbv
  try rfl
theorem node3865_eq : Flapjack.WordAlloc.removeDeadStructural input3865 value1534 value1 value2 = (output3865, value1832, value1) := by
  rw [input3865_def, output3865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3069_eq]
  try dsimp only
  rw [node3864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3865 input3060)).val
theorem input3866_def : input3866 = (.seq input3865 input3060) := by
  unfold input3866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3865)).val
theorem output3866_def : output3866 = (output3865) := by
  unfold output3866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3866_skip : Flapjack.WordAlloc.isSkip output3866 = false := by
  rw [output3866_def]
  conv => lhs; cbv
  try rfl
theorem node3866_eq : Flapjack.WordAlloc.removeDeadStructural input3866 value1534 value1 value2 = (output3866, value1832, value1) := by
  rw [input3866_def, output3866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3060_eq]
  try dsimp only
  rw [node3865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3866 input3059)).val
theorem input3867_def : input3867 = (.seq input3866 input3059) := by
  unfold input3867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3866 output3059)).val
theorem output3867_def : output3867 = (.seq output3866 output3059) := by
  unfold output3867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3867_skip : Flapjack.WordAlloc.isSkip output3867 = false := by
  rw [output3867_def]
  conv => lhs; cbv
  try rfl
theorem node3867_eq : Flapjack.WordAlloc.removeDeadStructural input3867 value1533 value1 value2 = (output3867, value1832, value1) := by
  rw [input3867_def, output3867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3059_eq]
  try dsimp only
  rw [node3866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3867 input3058)).val
theorem input3868_def : input3868 = (.seq input3867 input3058) := by
  unfold input3868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3867 output3058)).val
theorem output3868_def : output3868 = (.seq output3867 output3058) := by
  unfold output3868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3868_skip : Flapjack.WordAlloc.isSkip output3868 = false := by
  rw [output3868_def]
  conv => lhs; cbv
  try rfl
theorem node3868_eq : Flapjack.WordAlloc.removeDeadStructural input3868 value5 value1 value2 = (output3868, value1832, value1) := by
  rw [input3868_def, output3868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3058_eq]
  try dsimp only
  rw [node3867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3868 input3055)).val
theorem input3869_def : input3869 = (.seq input3868 input3055) := by
  unfold input3869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3868 output3055)).val
theorem output3869_def : output3869 = (.seq output3868 output3055) := by
  unfold output3869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3869_skip : Flapjack.WordAlloc.isSkip output3869 = false := by
  rw [output3869_def]
  conv => lhs; cbv
  try rfl
theorem node3869_eq : Flapjack.WordAlloc.removeDeadStructural input3869 value1527 value1 value2 = (output3869, value1832, value1) := by
  rw [input3869_def, output3869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3055_eq]
  try dsimp only
  rw [node3868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3869 input3046)).val
theorem input3870_def : input3870 = (.seq input3869 input3046) := by
  unfold input3870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3869)).val
theorem output3870_def : output3870 = (output3869) := by
  unfold output3870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3870_skip : Flapjack.WordAlloc.isSkip output3870 = false := by
  rw [output3870_def]
  conv => lhs; cbv
  try rfl
theorem node3870_eq : Flapjack.WordAlloc.removeDeadStructural input3870 value1527 value1 value2 = (output3870, value1832, value1) := by
  rw [input3870_def, output3870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3046_eq]
  try dsimp only
  rw [node3869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3870 input3045)).val
theorem input3871_def : input3871 = (.seq input3870 input3045) := by
  unfold input3871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3870 output3045)).val
theorem output3871_def : output3871 = (.seq output3870 output3045) := by
  unfold output3871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3871_skip : Flapjack.WordAlloc.isSkip output3871 = false := by
  rw [output3871_def]
  conv => lhs; cbv
  try rfl
theorem node3871_eq : Flapjack.WordAlloc.removeDeadStructural input3871 value1526 value1 value2 = (output3871, value1832, value1) := by
  rw [input3871_def, output3871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3045_eq]
  try dsimp only
  rw [node3870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3871 input3044)).val
theorem input3872_def : input3872 = (.seq input3871 input3044) := by
  unfold input3872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3871 output3044)).val
theorem output3872_def : output3872 = (.seq output3871 output3044) := by
  unfold output3872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3872_skip : Flapjack.WordAlloc.isSkip output3872 = false := by
  rw [output3872_def]
  conv => lhs; cbv
  try rfl
theorem node3872_eq : Flapjack.WordAlloc.removeDeadStructural input3872 value5 value1 value2 = (output3872, value1832, value1) := by
  rw [input3872_def, output3872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3044_eq]
  try dsimp only
  rw [node3871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3872 input3041)).val
theorem input3873_def : input3873 = (.seq input3872 input3041) := by
  unfold input3873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3872 output3041)).val
theorem output3873_def : output3873 = (.seq output3872 output3041) := by
  unfold output3873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3873_skip : Flapjack.WordAlloc.isSkip output3873 = false := by
  rw [output3873_def]
  conv => lhs; cbv
  try rfl
theorem node3873_eq : Flapjack.WordAlloc.removeDeadStructural input3873 value1520 value1 value2 = (output3873, value1832, value1) := by
  rw [input3873_def, output3873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3041_eq]
  try dsimp only
  rw [node3872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3873 input3032)).val
theorem input3874_def : input3874 = (.seq input3873 input3032) := by
  unfold input3874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3873)).val
theorem output3874_def : output3874 = (output3873) := by
  unfold output3874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3874_skip : Flapjack.WordAlloc.isSkip output3874 = false := by
  rw [output3874_def]
  conv => lhs; cbv
  try rfl
theorem node3874_eq : Flapjack.WordAlloc.removeDeadStructural input3874 value1520 value1 value2 = (output3874, value1832, value1) := by
  rw [input3874_def, output3874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3032_eq]
  try dsimp only
  rw [node3873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3874 input3031)).val
theorem input3875_def : input3875 = (.seq input3874 input3031) := by
  unfold input3875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3874 output3031)).val
theorem output3875_def : output3875 = (.seq output3874 output3031) := by
  unfold output3875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3875_skip : Flapjack.WordAlloc.isSkip output3875 = false := by
  rw [output3875_def]
  conv => lhs; cbv
  try rfl
theorem node3875_eq : Flapjack.WordAlloc.removeDeadStructural input3875 value1519 value1 value2 = (output3875, value1832, value1) := by
  rw [input3875_def, output3875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3031_eq]
  try dsimp only
  rw [node3874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3875 input3030)).val
theorem input3876_def : input3876 = (.seq input3875 input3030) := by
  unfold input3876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3875 output3030)).val
theorem output3876_def : output3876 = (.seq output3875 output3030) := by
  unfold output3876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3876_skip : Flapjack.WordAlloc.isSkip output3876 = false := by
  rw [output3876_def]
  conv => lhs; cbv
  try rfl
theorem node3876_eq : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1832, value1) := by
  rw [input3876_def, output3876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3030_eq]
  try dsimp only
  rw [node3875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3876 input3027)).val
theorem input3877_def : input3877 = (.seq input3876 input3027) := by
  unfold input3877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3876 output3027)).val
theorem output3877_def : output3877 = (.seq output3876 output3027) := by
  unfold output3877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3877_skip : Flapjack.WordAlloc.isSkip output3877 = false := by
  rw [output3877_def]
  conv => lhs; cbv
  try rfl
theorem node3877_eq : Flapjack.WordAlloc.removeDeadStructural input3877 value1513 value1 value2 = (output3877, value1832, value1) := by
  rw [input3877_def, output3877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3027_eq]
  try dsimp only
  rw [node3876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3877 input3018)).val
theorem input3878_def : input3878 = (.seq input3877 input3018) := by
  unfold input3878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3877)).val
theorem output3878_def : output3878 = (output3877) := by
  unfold output3878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3878_skip : Flapjack.WordAlloc.isSkip output3878 = false := by
  rw [output3878_def]
  conv => lhs; cbv
  try rfl
theorem node3878_eq : Flapjack.WordAlloc.removeDeadStructural input3878 value1513 value1 value2 = (output3878, value1832, value1) := by
  rw [input3878_def, output3878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3018_eq]
  try dsimp only
  rw [node3877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3878 input3017)).val
theorem input3879_def : input3879 = (.seq input3878 input3017) := by
  unfold input3879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3878 output3017)).val
theorem output3879_def : output3879 = (.seq output3878 output3017) := by
  unfold output3879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3879_skip : Flapjack.WordAlloc.isSkip output3879 = false := by
  rw [output3879_def]
  conv => lhs; cbv
  try rfl
theorem node3879_eq : Flapjack.WordAlloc.removeDeadStructural input3879 value1512 value1 value2 = (output3879, value1832, value1) := by
  rw [input3879_def, output3879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3017_eq]
  try dsimp only
  rw [node3878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3879 input3016)).val
theorem input3880_def : input3880 = (.seq input3879 input3016) := by
  unfold input3880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3879 output3016)).val
theorem output3880_def : output3880 = (.seq output3879 output3016) := by
  unfold output3880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3880_skip : Flapjack.WordAlloc.isSkip output3880 = false := by
  rw [output3880_def]
  conv => lhs; cbv
  try rfl
theorem node3880_eq : Flapjack.WordAlloc.removeDeadStructural input3880 value5 value1 value2 = (output3880, value1832, value1) := by
  rw [input3880_def, output3880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3016_eq]
  try dsimp only
  rw [node3879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3880 input3013)).val
theorem input3881_def : input3881 = (.seq input3880 input3013) := by
  unfold input3881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3880 output3013)).val
theorem output3881_def : output3881 = (.seq output3880 output3013) := by
  unfold output3881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3881_skip : Flapjack.WordAlloc.isSkip output3881 = false := by
  rw [output3881_def]
  conv => lhs; cbv
  try rfl
theorem node3881_eq : Flapjack.WordAlloc.removeDeadStructural input3881 value1506 value1 value2 = (output3881, value1832, value1) := by
  rw [input3881_def, output3881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3013_eq]
  try dsimp only
  rw [node3880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3881 input3004)).val
theorem input3882_def : input3882 = (.seq input3881 input3004) := by
  unfold input3882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3881)).val
theorem output3882_def : output3882 = (output3881) := by
  unfold output3882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3882_skip : Flapjack.WordAlloc.isSkip output3882 = false := by
  rw [output3882_def]
  conv => lhs; cbv
  try rfl
theorem node3882_eq : Flapjack.WordAlloc.removeDeadStructural input3882 value1506 value1 value2 = (output3882, value1832, value1) := by
  rw [input3882_def, output3882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3004_eq]
  try dsimp only
  rw [node3881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3882 input3003)).val
theorem input3883_def : input3883 = (.seq input3882 input3003) := by
  unfold input3883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3882 output3003)).val
theorem output3883_def : output3883 = (.seq output3882 output3003) := by
  unfold output3883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3883_skip : Flapjack.WordAlloc.isSkip output3883 = false := by
  rw [output3883_def]
  conv => lhs; cbv
  try rfl
theorem node3883_eq : Flapjack.WordAlloc.removeDeadStructural input3883 value1505 value1 value2 = (output3883, value1832, value1) := by
  rw [input3883_def, output3883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3003_eq]
  try dsimp only
  rw [node3882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3883 input3002)).val
theorem input3884_def : input3884 = (.seq input3883 input3002) := by
  unfold input3884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3883 output3002)).val
theorem output3884_def : output3884 = (.seq output3883 output3002) := by
  unfold output3884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3884_skip : Flapjack.WordAlloc.isSkip output3884 = false := by
  rw [output3884_def]
  conv => lhs; cbv
  try rfl
theorem node3884_eq : Flapjack.WordAlloc.removeDeadStructural input3884 value5 value1 value2 = (output3884, value1832, value1) := by
  rw [input3884_def, output3884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3002_eq]
  try dsimp only
  rw [node3883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3884 input2999)).val
theorem input3885_def : input3885 = (.seq input3884 input2999) := by
  unfold input3885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3884 output2999)).val
theorem output3885_def : output3885 = (.seq output3884 output2999) := by
  unfold output3885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3885_skip : Flapjack.WordAlloc.isSkip output3885 = false := by
  rw [output3885_def]
  conv => lhs; cbv
  try rfl
theorem node3885_eq : Flapjack.WordAlloc.removeDeadStructural input3885 value1499 value1 value2 = (output3885, value1832, value1) := by
  rw [input3885_def, output3885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2999_eq]
  try dsimp only
  rw [node3884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3885 input2990)).val
theorem input3886_def : input3886 = (.seq input3885 input2990) := by
  unfold input3886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3885)).val
theorem output3886_def : output3886 = (output3885) := by
  unfold output3886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3886_skip : Flapjack.WordAlloc.isSkip output3886 = false := by
  rw [output3886_def]
  conv => lhs; cbv
  try rfl
theorem node3886_eq : Flapjack.WordAlloc.removeDeadStructural input3886 value1499 value1 value2 = (output3886, value1832, value1) := by
  rw [input3886_def, output3886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2990_eq]
  try dsimp only
  rw [node3885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3886 input2989)).val
theorem input3887_def : input3887 = (.seq input3886 input2989) := by
  unfold input3887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3886 output2989)).val
theorem output3887_def : output3887 = (.seq output3886 output2989) := by
  unfold output3887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3887_skip : Flapjack.WordAlloc.isSkip output3887 = false := by
  rw [output3887_def]
  conv => lhs; cbv
  try rfl
theorem node3887_eq : Flapjack.WordAlloc.removeDeadStructural input3887 value1498 value1 value2 = (output3887, value1832, value1) := by
  rw [input3887_def, output3887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2989_eq]
  try dsimp only
  rw [node3886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3887 input2988)).val
theorem input3888_def : input3888 = (.seq input3887 input2988) := by
  unfold input3888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3887 output2988)).val
theorem output3888_def : output3888 = (.seq output3887 output2988) := by
  unfold output3888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3888_skip : Flapjack.WordAlloc.isSkip output3888 = false := by
  rw [output3888_def]
  conv => lhs; cbv
  try rfl
theorem node3888_eq : Flapjack.WordAlloc.removeDeadStructural input3888 value5 value1 value2 = (output3888, value1832, value1) := by
  rw [input3888_def, output3888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2988_eq]
  try dsimp only
  rw [node3887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3888 input2985)).val
theorem input3889_def : input3889 = (.seq input3888 input2985) := by
  unfold input3889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3888 output2985)).val
theorem output3889_def : output3889 = (.seq output3888 output2985) := by
  unfold output3889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3889_skip : Flapjack.WordAlloc.isSkip output3889 = false := by
  rw [output3889_def]
  conv => lhs; cbv
  try rfl
theorem node3889_eq : Flapjack.WordAlloc.removeDeadStructural input3889 value1492 value1 value2 = (output3889, value1832, value1) := by
  rw [input3889_def, output3889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2985_eq]
  try dsimp only
  rw [node3888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3889 input2976)).val
theorem input3890_def : input3890 = (.seq input3889 input2976) := by
  unfold input3890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3889)).val
theorem output3890_def : output3890 = (output3889) := by
  unfold output3890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3890_skip : Flapjack.WordAlloc.isSkip output3890 = false := by
  rw [output3890_def]
  conv => lhs; cbv
  try rfl
theorem node3890_eq : Flapjack.WordAlloc.removeDeadStructural input3890 value1492 value1 value2 = (output3890, value1832, value1) := by
  rw [input3890_def, output3890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2976_eq]
  try dsimp only
  rw [node3889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3890 input2975)).val
theorem input3891_def : input3891 = (.seq input3890 input2975) := by
  unfold input3891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3890 output2975)).val
theorem output3891_def : output3891 = (.seq output3890 output2975) := by
  unfold output3891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3891_skip : Flapjack.WordAlloc.isSkip output3891 = false := by
  rw [output3891_def]
  conv => lhs; cbv
  try rfl
theorem node3891_eq : Flapjack.WordAlloc.removeDeadStructural input3891 value1491 value1 value2 = (output3891, value1832, value1) := by
  rw [input3891_def, output3891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2975_eq]
  try dsimp only
  rw [node3890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3891 input2974)).val
theorem input3892_def : input3892 = (.seq input3891 input2974) := by
  unfold input3892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3891 output2974)).val
theorem output3892_def : output3892 = (.seq output3891 output2974) := by
  unfold output3892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3892_skip : Flapjack.WordAlloc.isSkip output3892 = false := by
  rw [output3892_def]
  conv => lhs; cbv
  try rfl
theorem node3892_eq : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1832, value1) := by
  rw [input3892_def, output3892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2974_eq]
  try dsimp only
  rw [node3891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3892 input2971)).val
theorem input3893_def : input3893 = (.seq input3892 input2971) := by
  unfold input3893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3892 output2971)).val
theorem output3893_def : output3893 = (.seq output3892 output2971) := by
  unfold output3893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3893_skip : Flapjack.WordAlloc.isSkip output3893 = false := by
  rw [output3893_def]
  conv => lhs; cbv
  try rfl
theorem node3893_eq : Flapjack.WordAlloc.removeDeadStructural input3893 value1485 value1 value2 = (output3893, value1832, value1) := by
  rw [input3893_def, output3893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2971_eq]
  try dsimp only
  rw [node3892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3893 input2962)).val
theorem input3894_def : input3894 = (.seq input3893 input2962) := by
  unfold input3894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3893)).val
theorem output3894_def : output3894 = (output3893) := by
  unfold output3894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3894_skip : Flapjack.WordAlloc.isSkip output3894 = false := by
  rw [output3894_def]
  conv => lhs; cbv
  try rfl
theorem node3894_eq : Flapjack.WordAlloc.removeDeadStructural input3894 value1485 value1 value2 = (output3894, value1832, value1) := by
  rw [input3894_def, output3894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2962_eq]
  try dsimp only
  rw [node3893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3894 input2961)).val
theorem input3895_def : input3895 = (.seq input3894 input2961) := by
  unfold input3895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3894 output2961)).val
theorem output3895_def : output3895 = (.seq output3894 output2961) := by
  unfold output3895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3895_skip : Flapjack.WordAlloc.isSkip output3895 = false := by
  rw [output3895_def]
  conv => lhs; cbv
  try rfl
theorem node3895_eq : Flapjack.WordAlloc.removeDeadStructural input3895 value1484 value1 value2 = (output3895, value1832, value1) := by
  rw [input3895_def, output3895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2961_eq]
  try dsimp only
  rw [node3894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3895 input2960)).val
theorem input3896_def : input3896 = (.seq input3895 input2960) := by
  unfold input3896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3895 output2960)).val
theorem output3896_def : output3896 = (.seq output3895 output2960) := by
  unfold output3896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3896_skip : Flapjack.WordAlloc.isSkip output3896 = false := by
  rw [output3896_def]
  conv => lhs; cbv
  try rfl
theorem node3896_eq : Flapjack.WordAlloc.removeDeadStructural input3896 value5 value1 value2 = (output3896, value1832, value1) := by
  rw [input3896_def, output3896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2960_eq]
  try dsimp only
  rw [node3895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3896 input2957)).val
theorem input3897_def : input3897 = (.seq input3896 input2957) := by
  unfold input3897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3896 output2957)).val
theorem output3897_def : output3897 = (.seq output3896 output2957) := by
  unfold output3897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3897_skip : Flapjack.WordAlloc.isSkip output3897 = false := by
  rw [output3897_def]
  conv => lhs; cbv
  try rfl
theorem node3897_eq : Flapjack.WordAlloc.removeDeadStructural input3897 value1478 value1 value2 = (output3897, value1832, value1) := by
  rw [input3897_def, output3897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2957_eq]
  try dsimp only
  rw [node3896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3897 input2948)).val
theorem input3898_def : input3898 = (.seq input3897 input2948) := by
  unfold input3898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3897)).val
theorem output3898_def : output3898 = (output3897) := by
  unfold output3898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3898_skip : Flapjack.WordAlloc.isSkip output3898 = false := by
  rw [output3898_def]
  conv => lhs; cbv
  try rfl
theorem node3898_eq : Flapjack.WordAlloc.removeDeadStructural input3898 value1478 value1 value2 = (output3898, value1832, value1) := by
  rw [input3898_def, output3898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2948_eq]
  try dsimp only
  rw [node3897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3898 input2947)).val
theorem input3899_def : input3899 = (.seq input3898 input2947) := by
  unfold input3899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3898 output2947)).val
theorem output3899_def : output3899 = (.seq output3898 output2947) := by
  unfold output3899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3899_skip : Flapjack.WordAlloc.isSkip output3899 = false := by
  rw [output3899_def]
  conv => lhs; cbv
  try rfl
theorem node3899_eq : Flapjack.WordAlloc.removeDeadStructural input3899 value1477 value1 value2 = (output3899, value1832, value1) := by
  rw [input3899_def, output3899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2947_eq]
  try dsimp only
  rw [node3898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3899 input2946)).val
theorem input3900_def : input3900 = (.seq input3899 input2946) := by
  unfold input3900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3899 output2946)).val
theorem output3900_def : output3900 = (.seq output3899 output2946) := by
  unfold output3900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3900_skip : Flapjack.WordAlloc.isSkip output3900 = false := by
  rw [output3900_def]
  conv => lhs; cbv
  try rfl
theorem node3900_eq : Flapjack.WordAlloc.removeDeadStructural input3900 value5 value1 value2 = (output3900, value1832, value1) := by
  rw [input3900_def, output3900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2946_eq]
  try dsimp only
  rw [node3899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3900 input2943)).val
theorem input3901_def : input3901 = (.seq input3900 input2943) := by
  unfold input3901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3900 output2943)).val
theorem output3901_def : output3901 = (.seq output3900 output2943) := by
  unfold output3901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3901_skip : Flapjack.WordAlloc.isSkip output3901 = false := by
  rw [output3901_def]
  conv => lhs; cbv
  try rfl
theorem node3901_eq : Flapjack.WordAlloc.removeDeadStructural input3901 value1471 value1 value2 = (output3901, value1832, value1) := by
  rw [input3901_def, output3901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2943_eq]
  try dsimp only
  rw [node3900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3901 input2934)).val
theorem input3902_def : input3902 = (.seq input3901 input2934) := by
  unfold input3902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3901)).val
theorem output3902_def : output3902 = (output3901) := by
  unfold output3902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3902_skip : Flapjack.WordAlloc.isSkip output3902 = false := by
  rw [output3902_def]
  conv => lhs; cbv
  try rfl
theorem node3902_eq : Flapjack.WordAlloc.removeDeadStructural input3902 value1471 value1 value2 = (output3902, value1832, value1) := by
  rw [input3902_def, output3902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2934_eq]
  try dsimp only
  rw [node3901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3902 input2933)).val
theorem input3903_def : input3903 = (.seq input3902 input2933) := by
  unfold input3903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3902 output2933)).val
theorem output3903_def : output3903 = (.seq output3902 output2933) := by
  unfold output3903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3903_skip : Flapjack.WordAlloc.isSkip output3903 = false := by
  rw [output3903_def]
  conv => lhs; cbv
  try rfl
theorem node3903_eq : Flapjack.WordAlloc.removeDeadStructural input3903 value1470 value1 value2 = (output3903, value1832, value1) := by
  rw [input3903_def, output3903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2933_eq]
  try dsimp only
  rw [node3902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3903 input2932)).val
theorem input3904_def : input3904 = (.seq input3903 input2932) := by
  unfold input3904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3903 output2932)).val
theorem output3904_def : output3904 = (.seq output3903 output2932) := by
  unfold output3904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3904_skip : Flapjack.WordAlloc.isSkip output3904 = false := by
  rw [output3904_def]
  conv => lhs; cbv
  try rfl
theorem node3904_eq : Flapjack.WordAlloc.removeDeadStructural input3904 value5 value1 value2 = (output3904, value1832, value1) := by
  rw [input3904_def, output3904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2932_eq]
  try dsimp only
  rw [node3903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3904 input2929)).val
theorem input3905_def : input3905 = (.seq input3904 input2929) := by
  unfold input3905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3904 output2929)).val
theorem output3905_def : output3905 = (.seq output3904 output2929) := by
  unfold output3905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3905_skip : Flapjack.WordAlloc.isSkip output3905 = false := by
  rw [output3905_def]
  conv => lhs; cbv
  try rfl
theorem node3905_eq : Flapjack.WordAlloc.removeDeadStructural input3905 value1464 value1 value2 = (output3905, value1832, value1) := by
  rw [input3905_def, output3905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2929_eq]
  try dsimp only
  rw [node3904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3905 input2920)).val
theorem input3906_def : input3906 = (.seq input3905 input2920) := by
  unfold input3906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3905)).val
theorem output3906_def : output3906 = (output3905) := by
  unfold output3906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3906_skip : Flapjack.WordAlloc.isSkip output3906 = false := by
  rw [output3906_def]
  conv => lhs; cbv
  try rfl
theorem node3906_eq : Flapjack.WordAlloc.removeDeadStructural input3906 value1464 value1 value2 = (output3906, value1832, value1) := by
  rw [input3906_def, output3906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2920_eq]
  try dsimp only
  rw [node3905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3906 input2919)).val
theorem input3907_def : input3907 = (.seq input3906 input2919) := by
  unfold input3907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3906 output2919)).val
theorem output3907_def : output3907 = (.seq output3906 output2919) := by
  unfold output3907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3907_skip : Flapjack.WordAlloc.isSkip output3907 = false := by
  rw [output3907_def]
  conv => lhs; cbv
  try rfl
theorem node3907_eq : Flapjack.WordAlloc.removeDeadStructural input3907 value1463 value1 value2 = (output3907, value1832, value1) := by
  rw [input3907_def, output3907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2919_eq]
  try dsimp only
  rw [node3906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3907 input2918)).val
theorem input3908_def : input3908 = (.seq input3907 input2918) := by
  unfold input3908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3907 output2918)).val
theorem output3908_def : output3908 = (.seq output3907 output2918) := by
  unfold output3908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3908_skip : Flapjack.WordAlloc.isSkip output3908 = false := by
  rw [output3908_def]
  conv => lhs; cbv
  try rfl
theorem node3908_eq : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1832, value1) := by
  rw [input3908_def, output3908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2918_eq]
  try dsimp only
  rw [node3907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3908 input2915)).val
theorem input3909_def : input3909 = (.seq input3908 input2915) := by
  unfold input3909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3908 output2915)).val
theorem output3909_def : output3909 = (.seq output3908 output2915) := by
  unfold output3909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3909_skip : Flapjack.WordAlloc.isSkip output3909 = false := by
  rw [output3909_def]
  conv => lhs; cbv
  try rfl
theorem node3909_eq : Flapjack.WordAlloc.removeDeadStructural input3909 value1457 value1 value2 = (output3909, value1832, value1) := by
  rw [input3909_def, output3909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2915_eq]
  try dsimp only
  rw [node3908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3909 input2906)).val
theorem input3910_def : input3910 = (.seq input3909 input2906) := by
  unfold input3910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3909)).val
theorem output3910_def : output3910 = (output3909) := by
  unfold output3910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3910_skip : Flapjack.WordAlloc.isSkip output3910 = false := by
  rw [output3910_def]
  conv => lhs; cbv
  try rfl
theorem node3910_eq : Flapjack.WordAlloc.removeDeadStructural input3910 value1457 value1 value2 = (output3910, value1832, value1) := by
  rw [input3910_def, output3910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2906_eq]
  try dsimp only
  rw [node3909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3910 input2905)).val
theorem input3911_def : input3911 = (.seq input3910 input2905) := by
  unfold input3911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3910 output2905)).val
theorem output3911_def : output3911 = (.seq output3910 output2905) := by
  unfold output3911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3911_skip : Flapjack.WordAlloc.isSkip output3911 = false := by
  rw [output3911_def]
  conv => lhs; cbv
  try rfl
theorem node3911_eq : Flapjack.WordAlloc.removeDeadStructural input3911 value1456 value1 value2 = (output3911, value1832, value1) := by
  rw [input3911_def, output3911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2905_eq]
  try dsimp only
  rw [node3910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3911 input2904)).val
theorem input3912_def : input3912 = (.seq input3911 input2904) := by
  unfold input3912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3911 output2904)).val
theorem output3912_def : output3912 = (.seq output3911 output2904) := by
  unfold output3912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3912_skip : Flapjack.WordAlloc.isSkip output3912 = false := by
  rw [output3912_def]
  conv => lhs; cbv
  try rfl
theorem node3912_eq : Flapjack.WordAlloc.removeDeadStructural input3912 value5 value1 value2 = (output3912, value1832, value1) := by
  rw [input3912_def, output3912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2904_eq]
  try dsimp only
  rw [node3911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3912 input2901)).val
theorem input3913_def : input3913 = (.seq input3912 input2901) := by
  unfold input3913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3912 output2901)).val
theorem output3913_def : output3913 = (.seq output3912 output2901) := by
  unfold output3913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3913_skip : Flapjack.WordAlloc.isSkip output3913 = false := by
  rw [output3913_def]
  conv => lhs; cbv
  try rfl
theorem node3913_eq : Flapjack.WordAlloc.removeDeadStructural input3913 value1450 value1 value2 = (output3913, value1832, value1) := by
  rw [input3913_def, output3913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2901_eq]
  try dsimp only
  rw [node3912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3913 input2892)).val
theorem input3914_def : input3914 = (.seq input3913 input2892) := by
  unfold input3914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3913)).val
theorem output3914_def : output3914 = (output3913) := by
  unfold output3914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3914_skip : Flapjack.WordAlloc.isSkip output3914 = false := by
  rw [output3914_def]
  conv => lhs; cbv
  try rfl
theorem node3914_eq : Flapjack.WordAlloc.removeDeadStructural input3914 value1450 value1 value2 = (output3914, value1832, value1) := by
  rw [input3914_def, output3914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2892_eq]
  try dsimp only
  rw [node3913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3914 input2891)).val
theorem input3915_def : input3915 = (.seq input3914 input2891) := by
  unfold input3915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3914 output2891)).val
theorem output3915_def : output3915 = (.seq output3914 output2891) := by
  unfold output3915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3915_skip : Flapjack.WordAlloc.isSkip output3915 = false := by
  rw [output3915_def]
  conv => lhs; cbv
  try rfl
theorem node3915_eq : Flapjack.WordAlloc.removeDeadStructural input3915 value1449 value1 value2 = (output3915, value1832, value1) := by
  rw [input3915_def, output3915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2891_eq]
  try dsimp only
  rw [node3914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3915 input2890)).val
theorem input3916_def : input3916 = (.seq input3915 input2890) := by
  unfold input3916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3915 output2890)).val
theorem output3916_def : output3916 = (.seq output3915 output2890) := by
  unfold output3916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3916_skip : Flapjack.WordAlloc.isSkip output3916 = false := by
  rw [output3916_def]
  conv => lhs; cbv
  try rfl
theorem node3916_eq : Flapjack.WordAlloc.removeDeadStructural input3916 value5 value1 value2 = (output3916, value1832, value1) := by
  rw [input3916_def, output3916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2890_eq]
  try dsimp only
  rw [node3915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3916 input2887)).val
theorem input3917_def : input3917 = (.seq input3916 input2887) := by
  unfold input3917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3916 output2887)).val
theorem output3917_def : output3917 = (.seq output3916 output2887) := by
  unfold output3917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3917_skip : Flapjack.WordAlloc.isSkip output3917 = false := by
  rw [output3917_def]
  conv => lhs; cbv
  try rfl
theorem node3917_eq : Flapjack.WordAlloc.removeDeadStructural input3917 value1443 value1 value2 = (output3917, value1832, value1) := by
  rw [input3917_def, output3917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2887_eq]
  try dsimp only
  rw [node3916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3917 input2878)).val
theorem input3918_def : input3918 = (.seq input3917 input2878) := by
  unfold input3918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3917)).val
theorem output3918_def : output3918 = (output3917) := by
  unfold output3918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3918_skip : Flapjack.WordAlloc.isSkip output3918 = false := by
  rw [output3918_def]
  conv => lhs; cbv
  try rfl
theorem node3918_eq : Flapjack.WordAlloc.removeDeadStructural input3918 value1443 value1 value2 = (output3918, value1832, value1) := by
  rw [input3918_def, output3918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2878_eq]
  try dsimp only
  rw [node3917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3918 input2877)).val
theorem input3919_def : input3919 = (.seq input3918 input2877) := by
  unfold input3919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3918 output2877)).val
theorem output3919_def : output3919 = (.seq output3918 output2877) := by
  unfold output3919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3919_skip : Flapjack.WordAlloc.isSkip output3919 = false := by
  rw [output3919_def]
  conv => lhs; cbv
  try rfl
theorem node3919_eq : Flapjack.WordAlloc.removeDeadStructural input3919 value1442 value1 value2 = (output3919, value1832, value1) := by
  rw [input3919_def, output3919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2877_eq]
  try dsimp only
  rw [node3918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3919 input2876)).val
theorem input3920_def : input3920 = (.seq input3919 input2876) := by
  unfold input3920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3919 output2876)).val
theorem output3920_def : output3920 = (.seq output3919 output2876) := by
  unfold output3920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3920_skip : Flapjack.WordAlloc.isSkip output3920 = false := by
  rw [output3920_def]
  conv => lhs; cbv
  try rfl
theorem node3920_eq : Flapjack.WordAlloc.removeDeadStructural input3920 value5 value1 value2 = (output3920, value1832, value1) := by
  rw [input3920_def, output3920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2876_eq]
  try dsimp only
  rw [node3919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3920 input2873)).val
theorem input3921_def : input3921 = (.seq input3920 input2873) := by
  unfold input3921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3920 output2873)).val
theorem output3921_def : output3921 = (.seq output3920 output2873) := by
  unfold output3921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3921_skip : Flapjack.WordAlloc.isSkip output3921 = false := by
  rw [output3921_def]
  conv => lhs; cbv
  try rfl
theorem node3921_eq : Flapjack.WordAlloc.removeDeadStructural input3921 value1436 value1 value2 = (output3921, value1832, value1) := by
  rw [input3921_def, output3921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2873_eq]
  try dsimp only
  rw [node3920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3921 input2864)).val
theorem input3922_def : input3922 = (.seq input3921 input2864) := by
  unfold input3922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3921)).val
theorem output3922_def : output3922 = (output3921) := by
  unfold output3922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3922_skip : Flapjack.WordAlloc.isSkip output3922 = false := by
  rw [output3922_def]
  conv => lhs; cbv
  try rfl
theorem node3922_eq : Flapjack.WordAlloc.removeDeadStructural input3922 value1436 value1 value2 = (output3922, value1832, value1) := by
  rw [input3922_def, output3922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2864_eq]
  try dsimp only
  rw [node3921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3922 input2863)).val
theorem input3923_def : input3923 = (.seq input3922 input2863) := by
  unfold input3923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3922 output2863)).val
theorem output3923_def : output3923 = (.seq output3922 output2863) := by
  unfold output3923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3923_skip : Flapjack.WordAlloc.isSkip output3923 = false := by
  rw [output3923_def]
  conv => lhs; cbv
  try rfl
theorem node3923_eq : Flapjack.WordAlloc.removeDeadStructural input3923 value1435 value1 value2 = (output3923, value1832, value1) := by
  rw [input3923_def, output3923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2863_eq]
  try dsimp only
  rw [node3922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3923 input2862)).val
theorem input3924_def : input3924 = (.seq input3923 input2862) := by
  unfold input3924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3923 output2862)).val
theorem output3924_def : output3924 = (.seq output3923 output2862) := by
  unfold output3924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3924_skip : Flapjack.WordAlloc.isSkip output3924 = false := by
  rw [output3924_def]
  conv => lhs; cbv
  try rfl
theorem node3924_eq : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1832, value1) := by
  rw [input3924_def, output3924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2862_eq]
  try dsimp only
  rw [node3923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3924 input2859)).val
theorem input3925_def : input3925 = (.seq input3924 input2859) := by
  unfold input3925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3924 output2859)).val
theorem output3925_def : output3925 = (.seq output3924 output2859) := by
  unfold output3925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3925_skip : Flapjack.WordAlloc.isSkip output3925 = false := by
  rw [output3925_def]
  conv => lhs; cbv
  try rfl
theorem node3925_eq : Flapjack.WordAlloc.removeDeadStructural input3925 value1429 value1 value2 = (output3925, value1832, value1) := by
  rw [input3925_def, output3925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2859_eq]
  try dsimp only
  rw [node3924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3925 input2850)).val
theorem input3926_def : input3926 = (.seq input3925 input2850) := by
  unfold input3926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3925)).val
theorem output3926_def : output3926 = (output3925) := by
  unfold output3926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3926_skip : Flapjack.WordAlloc.isSkip output3926 = false := by
  rw [output3926_def]
  conv => lhs; cbv
  try rfl
theorem node3926_eq : Flapjack.WordAlloc.removeDeadStructural input3926 value1429 value1 value2 = (output3926, value1832, value1) := by
  rw [input3926_def, output3926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2850_eq]
  try dsimp only
  rw [node3925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3926 input2849)).val
theorem input3927_def : input3927 = (.seq input3926 input2849) := by
  unfold input3927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3926 output2849)).val
theorem output3927_def : output3927 = (.seq output3926 output2849) := by
  unfold output3927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3927_skip : Flapjack.WordAlloc.isSkip output3927 = false := by
  rw [output3927_def]
  conv => lhs; cbv
  try rfl
theorem node3927_eq : Flapjack.WordAlloc.removeDeadStructural input3927 value1428 value1 value2 = (output3927, value1832, value1) := by
  rw [input3927_def, output3927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2849_eq]
  try dsimp only
  rw [node3926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3927 input2848)).val
theorem input3928_def : input3928 = (.seq input3927 input2848) := by
  unfold input3928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3927 output2848)).val
theorem output3928_def : output3928 = (.seq output3927 output2848) := by
  unfold output3928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3928_skip : Flapjack.WordAlloc.isSkip output3928 = false := by
  rw [output3928_def]
  conv => lhs; cbv
  try rfl
theorem node3928_eq : Flapjack.WordAlloc.removeDeadStructural input3928 value5 value1 value2 = (output3928, value1832, value1) := by
  rw [input3928_def, output3928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2848_eq]
  try dsimp only
  rw [node3927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3928 input2845)).val
theorem input3929_def : input3929 = (.seq input3928 input2845) := by
  unfold input3929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3928 output2845)).val
theorem output3929_def : output3929 = (.seq output3928 output2845) := by
  unfold output3929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3929_skip : Flapjack.WordAlloc.isSkip output3929 = false := by
  rw [output3929_def]
  conv => lhs; cbv
  try rfl
theorem node3929_eq : Flapjack.WordAlloc.removeDeadStructural input3929 value1422 value1 value2 = (output3929, value1832, value1) := by
  rw [input3929_def, output3929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2845_eq]
  try dsimp only
  rw [node3928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3929 input2836)).val
theorem input3930_def : input3930 = (.seq input3929 input2836) := by
  unfold input3930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3929)).val
theorem output3930_def : output3930 = (output3929) := by
  unfold output3930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3930_skip : Flapjack.WordAlloc.isSkip output3930 = false := by
  rw [output3930_def]
  conv => lhs; cbv
  try rfl
theorem node3930_eq : Flapjack.WordAlloc.removeDeadStructural input3930 value1422 value1 value2 = (output3930, value1832, value1) := by
  rw [input3930_def, output3930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2836_eq]
  try dsimp only
  rw [node3929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3930 input2835)).val
theorem input3931_def : input3931 = (.seq input3930 input2835) := by
  unfold input3931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3930 output2835)).val
theorem output3931_def : output3931 = (.seq output3930 output2835) := by
  unfold output3931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3931_skip : Flapjack.WordAlloc.isSkip output3931 = false := by
  rw [output3931_def]
  conv => lhs; cbv
  try rfl
theorem node3931_eq : Flapjack.WordAlloc.removeDeadStructural input3931 value1421 value1 value2 = (output3931, value1832, value1) := by
  rw [input3931_def, output3931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2835_eq]
  try dsimp only
  rw [node3930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3931 input2834)).val
theorem input3932_def : input3932 = (.seq input3931 input2834) := by
  unfold input3932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3931 output2834)).val
theorem output3932_def : output3932 = (.seq output3931 output2834) := by
  unfold output3932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3932_skip : Flapjack.WordAlloc.isSkip output3932 = false := by
  rw [output3932_def]
  conv => lhs; cbv
  try rfl
theorem node3932_eq : Flapjack.WordAlloc.removeDeadStructural input3932 value5 value1 value2 = (output3932, value1832, value1) := by
  rw [input3932_def, output3932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2834_eq]
  try dsimp only
  rw [node3931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3932 input2831)).val
theorem input3933_def : input3933 = (.seq input3932 input2831) := by
  unfold input3933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3932 output2831)).val
theorem output3933_def : output3933 = (.seq output3932 output2831) := by
  unfold output3933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3933_skip : Flapjack.WordAlloc.isSkip output3933 = false := by
  rw [output3933_def]
  conv => lhs; cbv
  try rfl
theorem node3933_eq : Flapjack.WordAlloc.removeDeadStructural input3933 value1415 value1 value2 = (output3933, value1832, value1) := by
  rw [input3933_def, output3933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2831_eq]
  try dsimp only
  rw [node3932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3933 input2822)).val
theorem input3934_def : input3934 = (.seq input3933 input2822) := by
  unfold input3934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3933)).val
theorem output3934_def : output3934 = (output3933) := by
  unfold output3934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3934_skip : Flapjack.WordAlloc.isSkip output3934 = false := by
  rw [output3934_def]
  conv => lhs; cbv
  try rfl
theorem node3934_eq : Flapjack.WordAlloc.removeDeadStructural input3934 value1415 value1 value2 = (output3934, value1832, value1) := by
  rw [input3934_def, output3934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2822_eq]
  try dsimp only
  rw [node3933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3934 input2821)).val
theorem input3935_def : input3935 = (.seq input3934 input2821) := by
  unfold input3935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3934 output2821)).val
theorem output3935_def : output3935 = (.seq output3934 output2821) := by
  unfold output3935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3935_skip : Flapjack.WordAlloc.isSkip output3935 = false := by
  rw [output3935_def]
  conv => lhs; cbv
  try rfl
theorem node3935_eq : Flapjack.WordAlloc.removeDeadStructural input3935 value1414 value1 value2 = (output3935, value1832, value1) := by
  rw [input3935_def, output3935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2821_eq]
  try dsimp only
  rw [node3934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3935 input2820)).val
theorem input3936_def : input3936 = (.seq input3935 input2820) := by
  unfold input3936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3935 output2820)).val
theorem output3936_def : output3936 = (.seq output3935 output2820) := by
  unfold output3936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3936_skip : Flapjack.WordAlloc.isSkip output3936 = false := by
  rw [output3936_def]
  conv => lhs; cbv
  try rfl
theorem node3936_eq : Flapjack.WordAlloc.removeDeadStructural input3936 value5 value1 value2 = (output3936, value1832, value1) := by
  rw [input3936_def, output3936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2820_eq]
  try dsimp only
  rw [node3935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3936 input2817)).val
theorem input3937_def : input3937 = (.seq input3936 input2817) := by
  unfold input3937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3936 output2817)).val
theorem output3937_def : output3937 = (.seq output3936 output2817) := by
  unfold output3937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3937_skip : Flapjack.WordAlloc.isSkip output3937 = false := by
  rw [output3937_def]
  conv => lhs; cbv
  try rfl
theorem node3937_eq : Flapjack.WordAlloc.removeDeadStructural input3937 value1408 value1 value2 = (output3937, value1832, value1) := by
  rw [input3937_def, output3937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2817_eq]
  try dsimp only
  rw [node3936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3937 input2808)).val
theorem input3938_def : input3938 = (.seq input3937 input2808) := by
  unfold input3938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3937)).val
theorem output3938_def : output3938 = (output3937) := by
  unfold output3938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3938_skip : Flapjack.WordAlloc.isSkip output3938 = false := by
  rw [output3938_def]
  conv => lhs; cbv
  try rfl
theorem node3938_eq : Flapjack.WordAlloc.removeDeadStructural input3938 value1408 value1 value2 = (output3938, value1832, value1) := by
  rw [input3938_def, output3938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2808_eq]
  try dsimp only
  rw [node3937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3938 input2807)).val
theorem input3939_def : input3939 = (.seq input3938 input2807) := by
  unfold input3939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3938 output2807)).val
theorem output3939_def : output3939 = (.seq output3938 output2807) := by
  unfold output3939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3939_skip : Flapjack.WordAlloc.isSkip output3939 = false := by
  rw [output3939_def]
  conv => lhs; cbv
  try rfl
theorem node3939_eq : Flapjack.WordAlloc.removeDeadStructural input3939 value1407 value1 value2 = (output3939, value1832, value1) := by
  rw [input3939_def, output3939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2807_eq]
  try dsimp only
  rw [node3938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3939 input2806)).val
theorem input3940_def : input3940 = (.seq input3939 input2806) := by
  unfold input3940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3939 output2806)).val
theorem output3940_def : output3940 = (.seq output3939 output2806) := by
  unfold output3940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3940_skip : Flapjack.WordAlloc.isSkip output3940 = false := by
  rw [output3940_def]
  conv => lhs; cbv
  try rfl
theorem node3940_eq : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1832, value1) := by
  rw [input3940_def, output3940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2806_eq]
  try dsimp only
  rw [node3939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3940 input2803)).val
theorem input3941_def : input3941 = (.seq input3940 input2803) := by
  unfold input3941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3940 output2803)).val
theorem output3941_def : output3941 = (.seq output3940 output2803) := by
  unfold output3941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3941_skip : Flapjack.WordAlloc.isSkip output3941 = false := by
  rw [output3941_def]
  conv => lhs; cbv
  try rfl
theorem node3941_eq : Flapjack.WordAlloc.removeDeadStructural input3941 value1401 value1 value2 = (output3941, value1832, value1) := by
  rw [input3941_def, output3941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2803_eq]
  try dsimp only
  rw [node3940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3941 input2794)).val
theorem input3942_def : input3942 = (.seq input3941 input2794) := by
  unfold input3942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3941)).val
theorem output3942_def : output3942 = (output3941) := by
  unfold output3942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3942_skip : Flapjack.WordAlloc.isSkip output3942 = false := by
  rw [output3942_def]
  conv => lhs; cbv
  try rfl
theorem node3942_eq : Flapjack.WordAlloc.removeDeadStructural input3942 value1401 value1 value2 = (output3942, value1832, value1) := by
  rw [input3942_def, output3942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2794_eq]
  try dsimp only
  rw [node3941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3942 input2793)).val
theorem input3943_def : input3943 = (.seq input3942 input2793) := by
  unfold input3943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3942 output2793)).val
theorem output3943_def : output3943 = (.seq output3942 output2793) := by
  unfold output3943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3943_skip : Flapjack.WordAlloc.isSkip output3943 = false := by
  rw [output3943_def]
  conv => lhs; cbv
  try rfl
theorem node3943_eq : Flapjack.WordAlloc.removeDeadStructural input3943 value1400 value1 value2 = (output3943, value1832, value1) := by
  rw [input3943_def, output3943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2793_eq]
  try dsimp only
  rw [node3942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3943 input2792)).val
theorem input3944_def : input3944 = (.seq input3943 input2792) := by
  unfold input3944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3943 output2792)).val
theorem output3944_def : output3944 = (.seq output3943 output2792) := by
  unfold output3944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3944_skip : Flapjack.WordAlloc.isSkip output3944 = false := by
  rw [output3944_def]
  conv => lhs; cbv
  try rfl
theorem node3944_eq : Flapjack.WordAlloc.removeDeadStructural input3944 value5 value1 value2 = (output3944, value1832, value1) := by
  rw [input3944_def, output3944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2792_eq]
  try dsimp only
  rw [node3943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3944 input2789)).val
theorem input3945_def : input3945 = (.seq input3944 input2789) := by
  unfold input3945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3944 output2789)).val
theorem output3945_def : output3945 = (.seq output3944 output2789) := by
  unfold output3945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3945_skip : Flapjack.WordAlloc.isSkip output3945 = false := by
  rw [output3945_def]
  conv => lhs; cbv
  try rfl
theorem node3945_eq : Flapjack.WordAlloc.removeDeadStructural input3945 value1394 value1 value2 = (output3945, value1832, value1) := by
  rw [input3945_def, output3945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2789_eq]
  try dsimp only
  rw [node3944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3945 input2780)).val
theorem input3946_def : input3946 = (.seq input3945 input2780) := by
  unfold input3946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3945)).val
theorem output3946_def : output3946 = (output3945) := by
  unfold output3946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3946_skip : Flapjack.WordAlloc.isSkip output3946 = false := by
  rw [output3946_def]
  conv => lhs; cbv
  try rfl
theorem node3946_eq : Flapjack.WordAlloc.removeDeadStructural input3946 value1394 value1 value2 = (output3946, value1832, value1) := by
  rw [input3946_def, output3946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2780_eq]
  try dsimp only
  rw [node3945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3946 input2779)).val
theorem input3947_def : input3947 = (.seq input3946 input2779) := by
  unfold input3947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3946 output2779)).val
theorem output3947_def : output3947 = (.seq output3946 output2779) := by
  unfold output3947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3947_skip : Flapjack.WordAlloc.isSkip output3947 = false := by
  rw [output3947_def]
  conv => lhs; cbv
  try rfl
theorem node3947_eq : Flapjack.WordAlloc.removeDeadStructural input3947 value1393 value1 value2 = (output3947, value1832, value1) := by
  rw [input3947_def, output3947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2779_eq]
  try dsimp only
  rw [node3946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3947 input2778)).val
theorem input3948_def : input3948 = (.seq input3947 input2778) := by
  unfold input3948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3947 output2778)).val
theorem output3948_def : output3948 = (.seq output3947 output2778) := by
  unfold output3948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3948_skip : Flapjack.WordAlloc.isSkip output3948 = false := by
  rw [output3948_def]
  conv => lhs; cbv
  try rfl
theorem node3948_eq : Flapjack.WordAlloc.removeDeadStructural input3948 value5 value1 value2 = (output3948, value1832, value1) := by
  rw [input3948_def, output3948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2778_eq]
  try dsimp only
  rw [node3947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3948 input2775)).val
theorem input3949_def : input3949 = (.seq input3948 input2775) := by
  unfold input3949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3948 output2775)).val
theorem output3949_def : output3949 = (.seq output3948 output2775) := by
  unfold output3949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3949_skip : Flapjack.WordAlloc.isSkip output3949 = false := by
  rw [output3949_def]
  conv => lhs; cbv
  try rfl
theorem node3949_eq : Flapjack.WordAlloc.removeDeadStructural input3949 value1387 value1 value2 = (output3949, value1832, value1) := by
  rw [input3949_def, output3949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2775_eq]
  try dsimp only
  rw [node3948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3949 input2766)).val
theorem input3950_def : input3950 = (.seq input3949 input2766) := by
  unfold input3950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3949)).val
theorem output3950_def : output3950 = (output3949) := by
  unfold output3950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3950_skip : Flapjack.WordAlloc.isSkip output3950 = false := by
  rw [output3950_def]
  conv => lhs; cbv
  try rfl
theorem node3950_eq : Flapjack.WordAlloc.removeDeadStructural input3950 value1387 value1 value2 = (output3950, value1832, value1) := by
  rw [input3950_def, output3950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2766_eq]
  try dsimp only
  rw [node3949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3950 input2765)).val
theorem input3951_def : input3951 = (.seq input3950 input2765) := by
  unfold input3951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3950 output2765)).val
theorem output3951_def : output3951 = (.seq output3950 output2765) := by
  unfold output3951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3951_skip : Flapjack.WordAlloc.isSkip output3951 = false := by
  rw [output3951_def]
  conv => lhs; cbv
  try rfl
theorem node3951_eq : Flapjack.WordAlloc.removeDeadStructural input3951 value1386 value1 value2 = (output3951, value1832, value1) := by
  rw [input3951_def, output3951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2765_eq]
  try dsimp only
  rw [node3950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3951 input2764)).val
theorem input3952_def : input3952 = (.seq input3951 input2764) := by
  unfold input3952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3951 output2764)).val
theorem output3952_def : output3952 = (.seq output3951 output2764) := by
  unfold output3952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3952_skip : Flapjack.WordAlloc.isSkip output3952 = false := by
  rw [output3952_def]
  conv => lhs; cbv
  try rfl
theorem node3952_eq : Flapjack.WordAlloc.removeDeadStructural input3952 value5 value1 value2 = (output3952, value1832, value1) := by
  rw [input3952_def, output3952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2764_eq]
  try dsimp only
  rw [node3951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3952 input2761)).val
theorem input3953_def : input3953 = (.seq input3952 input2761) := by
  unfold input3953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3952 output2761)).val
theorem output3953_def : output3953 = (.seq output3952 output2761) := by
  unfold output3953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3953_skip : Flapjack.WordAlloc.isSkip output3953 = false := by
  rw [output3953_def]
  conv => lhs; cbv
  try rfl
theorem node3953_eq : Flapjack.WordAlloc.removeDeadStructural input3953 value1380 value1 value2 = (output3953, value1832, value1) := by
  rw [input3953_def, output3953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2761_eq]
  try dsimp only
  rw [node3952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3953 input2752)).val
theorem input3954_def : input3954 = (.seq input3953 input2752) := by
  unfold input3954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3953)).val
theorem output3954_def : output3954 = (output3953) := by
  unfold output3954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3954_skip : Flapjack.WordAlloc.isSkip output3954 = false := by
  rw [output3954_def]
  conv => lhs; cbv
  try rfl
theorem node3954_eq : Flapjack.WordAlloc.removeDeadStructural input3954 value1380 value1 value2 = (output3954, value1832, value1) := by
  rw [input3954_def, output3954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2752_eq]
  try dsimp only
  rw [node3953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3954 input2751)).val
theorem input3955_def : input3955 = (.seq input3954 input2751) := by
  unfold input3955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3954 output2751)).val
theorem output3955_def : output3955 = (.seq output3954 output2751) := by
  unfold output3955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3955_skip : Flapjack.WordAlloc.isSkip output3955 = false := by
  rw [output3955_def]
  conv => lhs; cbv
  try rfl
theorem node3955_eq : Flapjack.WordAlloc.removeDeadStructural input3955 value1379 value1 value2 = (output3955, value1832, value1) := by
  rw [input3955_def, output3955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2751_eq]
  try dsimp only
  rw [node3954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3955 input2750)).val
theorem input3956_def : input3956 = (.seq input3955 input2750) := by
  unfold input3956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3955 output2750)).val
theorem output3956_def : output3956 = (.seq output3955 output2750) := by
  unfold output3956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3956_skip : Flapjack.WordAlloc.isSkip output3956 = false := by
  rw [output3956_def]
  conv => lhs; cbv
  try rfl
theorem node3956_eq : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1832, value1) := by
  rw [input3956_def, output3956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2750_eq]
  try dsimp only
  rw [node3955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3956 input2747)).val
theorem input3957_def : input3957 = (.seq input3956 input2747) := by
  unfold input3957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3956 output2747)).val
theorem output3957_def : output3957 = (.seq output3956 output2747) := by
  unfold output3957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3957_skip : Flapjack.WordAlloc.isSkip output3957 = false := by
  rw [output3957_def]
  conv => lhs; cbv
  try rfl
theorem node3957_eq : Flapjack.WordAlloc.removeDeadStructural input3957 value1373 value1 value2 = (output3957, value1832, value1) := by
  rw [input3957_def, output3957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2747_eq]
  try dsimp only
  rw [node3956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3957 input2738)).val
theorem input3958_def : input3958 = (.seq input3957 input2738) := by
  unfold input3958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3957)).val
theorem output3958_def : output3958 = (output3957) := by
  unfold output3958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3958_skip : Flapjack.WordAlloc.isSkip output3958 = false := by
  rw [output3958_def]
  conv => lhs; cbv
  try rfl
theorem node3958_eq : Flapjack.WordAlloc.removeDeadStructural input3958 value1373 value1 value2 = (output3958, value1832, value1) := by
  rw [input3958_def, output3958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2738_eq]
  try dsimp only
  rw [node3957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3958 input2737)).val
theorem input3959_def : input3959 = (.seq input3958 input2737) := by
  unfold input3959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3958 output2737)).val
theorem output3959_def : output3959 = (.seq output3958 output2737) := by
  unfold output3959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3959_skip : Flapjack.WordAlloc.isSkip output3959 = false := by
  rw [output3959_def]
  conv => lhs; cbv
  try rfl
theorem node3959_eq : Flapjack.WordAlloc.removeDeadStructural input3959 value1372 value1 value2 = (output3959, value1832, value1) := by
  rw [input3959_def, output3959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2737_eq]
  try dsimp only
  rw [node3958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3959 input2736)).val
theorem input3960_def : input3960 = (.seq input3959 input2736) := by
  unfold input3960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3959 output2736)).val
theorem output3960_def : output3960 = (.seq output3959 output2736) := by
  unfold output3960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3960_skip : Flapjack.WordAlloc.isSkip output3960 = false := by
  rw [output3960_def]
  conv => lhs; cbv
  try rfl
theorem node3960_eq : Flapjack.WordAlloc.removeDeadStructural input3960 value5 value1 value2 = (output3960, value1832, value1) := by
  rw [input3960_def, output3960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2736_eq]
  try dsimp only
  rw [node3959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3960 input2733)).val
theorem input3961_def : input3961 = (.seq input3960 input2733) := by
  unfold input3961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3960 output2733)).val
theorem output3961_def : output3961 = (.seq output3960 output2733) := by
  unfold output3961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3961_skip : Flapjack.WordAlloc.isSkip output3961 = false := by
  rw [output3961_def]
  conv => lhs; cbv
  try rfl
theorem node3961_eq : Flapjack.WordAlloc.removeDeadStructural input3961 value1366 value1 value2 = (output3961, value1832, value1) := by
  rw [input3961_def, output3961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2733_eq]
  try dsimp only
  rw [node3960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3961 input2724)).val
theorem input3962_def : input3962 = (.seq input3961 input2724) := by
  unfold input3962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3961)).val
theorem output3962_def : output3962 = (output3961) := by
  unfold output3962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3962_skip : Flapjack.WordAlloc.isSkip output3962 = false := by
  rw [output3962_def]
  conv => lhs; cbv
  try rfl
theorem node3962_eq : Flapjack.WordAlloc.removeDeadStructural input3962 value1366 value1 value2 = (output3962, value1832, value1) := by
  rw [input3962_def, output3962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2724_eq]
  try dsimp only
  rw [node3961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3962 input2723)).val
theorem input3963_def : input3963 = (.seq input3962 input2723) := by
  unfold input3963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3962 output2723)).val
theorem output3963_def : output3963 = (.seq output3962 output2723) := by
  unfold output3963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3963_skip : Flapjack.WordAlloc.isSkip output3963 = false := by
  rw [output3963_def]
  conv => lhs; cbv
  try rfl
theorem node3963_eq : Flapjack.WordAlloc.removeDeadStructural input3963 value1365 value1 value2 = (output3963, value1832, value1) := by
  rw [input3963_def, output3963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2723_eq]
  try dsimp only
  rw [node3962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3963 input2722)).val
theorem input3964_def : input3964 = (.seq input3963 input2722) := by
  unfold input3964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3963 output2722)).val
theorem output3964_def : output3964 = (.seq output3963 output2722) := by
  unfold output3964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3964_skip : Flapjack.WordAlloc.isSkip output3964 = false := by
  rw [output3964_def]
  conv => lhs; cbv
  try rfl
theorem node3964_eq : Flapjack.WordAlloc.removeDeadStructural input3964 value5 value1 value2 = (output3964, value1832, value1) := by
  rw [input3964_def, output3964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2722_eq]
  try dsimp only
  rw [node3963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3964 input2719)).val
theorem input3965_def : input3965 = (.seq input3964 input2719) := by
  unfold input3965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3964 output2719)).val
theorem output3965_def : output3965 = (.seq output3964 output2719) := by
  unfold output3965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3965_skip : Flapjack.WordAlloc.isSkip output3965 = false := by
  rw [output3965_def]
  conv => lhs; cbv
  try rfl
theorem node3965_eq : Flapjack.WordAlloc.removeDeadStructural input3965 value1359 value1 value2 = (output3965, value1832, value1) := by
  rw [input3965_def, output3965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2719_eq]
  try dsimp only
  rw [node3964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3965 input2710)).val
theorem input3966_def : input3966 = (.seq input3965 input2710) := by
  unfold input3966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3965)).val
theorem output3966_def : output3966 = (output3965) := by
  unfold output3966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3966_skip : Flapjack.WordAlloc.isSkip output3966 = false := by
  rw [output3966_def]
  conv => lhs; cbv
  try rfl
theorem node3966_eq : Flapjack.WordAlloc.removeDeadStructural input3966 value1359 value1 value2 = (output3966, value1832, value1) := by
  rw [input3966_def, output3966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2710_eq]
  try dsimp only
  rw [node3965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3966 input2709)).val
theorem input3967_def : input3967 = (.seq input3966 input2709) := by
  unfold input3967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3966 output2709)).val
theorem output3967_def : output3967 = (.seq output3966 output2709) := by
  unfold output3967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3967_skip : Flapjack.WordAlloc.isSkip output3967 = false := by
  rw [output3967_def]
  conv => lhs; cbv
  try rfl
theorem node3967_eq : Flapjack.WordAlloc.removeDeadStructural input3967 value1358 value1 value2 = (output3967, value1832, value1) := by
  rw [input3967_def, output3967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2709_eq]
  try dsimp only
  rw [node3966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3967 input2708)).val
theorem input3968_def : input3968 = (.seq input3967 input2708) := by
  unfold input3968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3967 output2708)).val
theorem output3968_def : output3968 = (.seq output3967 output2708) := by
  unfold output3968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3968_skip : Flapjack.WordAlloc.isSkip output3968 = false := by
  rw [output3968_def]
  conv => lhs; cbv
  try rfl
theorem node3968_eq : Flapjack.WordAlloc.removeDeadStructural input3968 value5 value1 value2 = (output3968, value1832, value1) := by
  rw [input3968_def, output3968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2708_eq]
  try dsimp only
  rw [node3967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3968 input2705)).val
theorem input3969_def : input3969 = (.seq input3968 input2705) := by
  unfold input3969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3968 output2705)).val
theorem output3969_def : output3969 = (.seq output3968 output2705) := by
  unfold output3969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3969_skip : Flapjack.WordAlloc.isSkip output3969 = false := by
  rw [output3969_def]
  conv => lhs; cbv
  try rfl
theorem node3969_eq : Flapjack.WordAlloc.removeDeadStructural input3969 value1352 value1 value2 = (output3969, value1832, value1) := by
  rw [input3969_def, output3969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2705_eq]
  try dsimp only
  rw [node3968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3969 input2696)).val
theorem input3970_def : input3970 = (.seq input3969 input2696) := by
  unfold input3970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3969)).val
theorem output3970_def : output3970 = (output3969) := by
  unfold output3970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3970_skip : Flapjack.WordAlloc.isSkip output3970 = false := by
  rw [output3970_def]
  conv => lhs; cbv
  try rfl
theorem node3970_eq : Flapjack.WordAlloc.removeDeadStructural input3970 value1352 value1 value2 = (output3970, value1832, value1) := by
  rw [input3970_def, output3970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2696_eq]
  try dsimp only
  rw [node3969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3970 input2695)).val
theorem input3971_def : input3971 = (.seq input3970 input2695) := by
  unfold input3971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3970 output2695)).val
theorem output3971_def : output3971 = (.seq output3970 output2695) := by
  unfold output3971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3971_skip : Flapjack.WordAlloc.isSkip output3971 = false := by
  rw [output3971_def]
  conv => lhs; cbv
  try rfl
theorem node3971_eq : Flapjack.WordAlloc.removeDeadStructural input3971 value1351 value1 value2 = (output3971, value1832, value1) := by
  rw [input3971_def, output3971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2695_eq]
  try dsimp only
  rw [node3970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3971 input2694)).val
theorem input3972_def : input3972 = (.seq input3971 input2694) := by
  unfold input3972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3971 output2694)).val
theorem output3972_def : output3972 = (.seq output3971 output2694) := by
  unfold output3972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3972_skip : Flapjack.WordAlloc.isSkip output3972 = false := by
  rw [output3972_def]
  conv => lhs; cbv
  try rfl
theorem node3972_eq : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1832, value1) := by
  rw [input3972_def, output3972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2694_eq]
  try dsimp only
  rw [node3971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3972 input2691)).val
theorem input3973_def : input3973 = (.seq input3972 input2691) := by
  unfold input3973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3972 output2691)).val
theorem output3973_def : output3973 = (.seq output3972 output2691) := by
  unfold output3973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3973_skip : Flapjack.WordAlloc.isSkip output3973 = false := by
  rw [output3973_def]
  conv => lhs; cbv
  try rfl
theorem node3973_eq : Flapjack.WordAlloc.removeDeadStructural input3973 value1345 value1 value2 = (output3973, value1832, value1) := by
  rw [input3973_def, output3973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2691_eq]
  try dsimp only
  rw [node3972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3973 input2682)).val
theorem input3974_def : input3974 = (.seq input3973 input2682) := by
  unfold input3974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3973)).val
theorem output3974_def : output3974 = (output3973) := by
  unfold output3974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3974_skip : Flapjack.WordAlloc.isSkip output3974 = false := by
  rw [output3974_def]
  conv => lhs; cbv
  try rfl
theorem node3974_eq : Flapjack.WordAlloc.removeDeadStructural input3974 value1345 value1 value2 = (output3974, value1832, value1) := by
  rw [input3974_def, output3974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2682_eq]
  try dsimp only
  rw [node3973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3974 input2681)).val
theorem input3975_def : input3975 = (.seq input3974 input2681) := by
  unfold input3975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3974 output2681)).val
theorem output3975_def : output3975 = (.seq output3974 output2681) := by
  unfold output3975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3975_skip : Flapjack.WordAlloc.isSkip output3975 = false := by
  rw [output3975_def]
  conv => lhs; cbv
  try rfl
theorem node3975_eq : Flapjack.WordAlloc.removeDeadStructural input3975 value1344 value1 value2 = (output3975, value1832, value1) := by
  rw [input3975_def, output3975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2681_eq]
  try dsimp only
  rw [node3974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3975 input2680)).val
theorem input3976_def : input3976 = (.seq input3975 input2680) := by
  unfold input3976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3975 output2680)).val
theorem output3976_def : output3976 = (.seq output3975 output2680) := by
  unfold output3976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3976_skip : Flapjack.WordAlloc.isSkip output3976 = false := by
  rw [output3976_def]
  conv => lhs; cbv
  try rfl
theorem node3976_eq : Flapjack.WordAlloc.removeDeadStructural input3976 value5 value1 value2 = (output3976, value1832, value1) := by
  rw [input3976_def, output3976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2680_eq]
  try dsimp only
  rw [node3975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3976 input2677)).val
theorem input3977_def : input3977 = (.seq input3976 input2677) := by
  unfold input3977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3976 output2677)).val
theorem output3977_def : output3977 = (.seq output3976 output2677) := by
  unfold output3977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3977_skip : Flapjack.WordAlloc.isSkip output3977 = false := by
  rw [output3977_def]
  conv => lhs; cbv
  try rfl
theorem node3977_eq : Flapjack.WordAlloc.removeDeadStructural input3977 value1338 value1 value2 = (output3977, value1832, value1) := by
  rw [input3977_def, output3977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2677_eq]
  try dsimp only
  rw [node3976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3977 input2668)).val
theorem input3978_def : input3978 = (.seq input3977 input2668) := by
  unfold input3978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3977)).val
theorem output3978_def : output3978 = (output3977) := by
  unfold output3978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3978_skip : Flapjack.WordAlloc.isSkip output3978 = false := by
  rw [output3978_def]
  conv => lhs; cbv
  try rfl
theorem node3978_eq : Flapjack.WordAlloc.removeDeadStructural input3978 value1338 value1 value2 = (output3978, value1832, value1) := by
  rw [input3978_def, output3978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2668_eq]
  try dsimp only
  rw [node3977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3978 input2667)).val
theorem input3979_def : input3979 = (.seq input3978 input2667) := by
  unfold input3979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3978 output2667)).val
theorem output3979_def : output3979 = (.seq output3978 output2667) := by
  unfold output3979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3979_skip : Flapjack.WordAlloc.isSkip output3979 = false := by
  rw [output3979_def]
  conv => lhs; cbv
  try rfl
theorem node3979_eq : Flapjack.WordAlloc.removeDeadStructural input3979 value1337 value1 value2 = (output3979, value1832, value1) := by
  rw [input3979_def, output3979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2667_eq]
  try dsimp only
  rw [node3978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3979 input2666)).val
theorem input3980_def : input3980 = (.seq input3979 input2666) := by
  unfold input3980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3979 output2666)).val
theorem output3980_def : output3980 = (.seq output3979 output2666) := by
  unfold output3980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3980_skip : Flapjack.WordAlloc.isSkip output3980 = false := by
  rw [output3980_def]
  conv => lhs; cbv
  try rfl
theorem node3980_eq : Flapjack.WordAlloc.removeDeadStructural input3980 value5 value1 value2 = (output3980, value1832, value1) := by
  rw [input3980_def, output3980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2666_eq]
  try dsimp only
  rw [node3979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3980 input2663)).val
theorem input3981_def : input3981 = (.seq input3980 input2663) := by
  unfold input3981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3980 output2663)).val
theorem output3981_def : output3981 = (.seq output3980 output2663) := by
  unfold output3981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3981_skip : Flapjack.WordAlloc.isSkip output3981 = false := by
  rw [output3981_def]
  conv => lhs; cbv
  try rfl
theorem node3981_eq : Flapjack.WordAlloc.removeDeadStructural input3981 value1331 value1 value2 = (output3981, value1832, value1) := by
  rw [input3981_def, output3981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2663_eq]
  try dsimp only
  rw [node3980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3981 input2654)).val
theorem input3982_def : input3982 = (.seq input3981 input2654) := by
  unfold input3982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3981)).val
theorem output3982_def : output3982 = (output3981) := by
  unfold output3982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3982_skip : Flapjack.WordAlloc.isSkip output3982 = false := by
  rw [output3982_def]
  conv => lhs; cbv
  try rfl
theorem node3982_eq : Flapjack.WordAlloc.removeDeadStructural input3982 value1331 value1 value2 = (output3982, value1832, value1) := by
  rw [input3982_def, output3982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2654_eq]
  try dsimp only
  rw [node3981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3982 input2653)).val
theorem input3983_def : input3983 = (.seq input3982 input2653) := by
  unfold input3983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3982 output2653)).val
theorem output3983_def : output3983 = (.seq output3982 output2653) := by
  unfold output3983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3983_skip : Flapjack.WordAlloc.isSkip output3983 = false := by
  rw [output3983_def]
  conv => lhs; cbv
  try rfl
theorem node3983_eq : Flapjack.WordAlloc.removeDeadStructural input3983 value1330 value1 value2 = (output3983, value1832, value1) := by
  rw [input3983_def, output3983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2653_eq]
  try dsimp only
  rw [node3982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3983 input2652)).val
theorem input3984_def : input3984 = (.seq input3983 input2652) := by
  unfold input3984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3983 output2652)).val
theorem output3984_def : output3984 = (.seq output3983 output2652) := by
  unfold output3984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3984_skip : Flapjack.WordAlloc.isSkip output3984 = false := by
  rw [output3984_def]
  conv => lhs; cbv
  try rfl
theorem node3984_eq : Flapjack.WordAlloc.removeDeadStructural input3984 value5 value1 value2 = (output3984, value1832, value1) := by
  rw [input3984_def, output3984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2652_eq]
  try dsimp only
  rw [node3983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3984 input2649)).val
theorem input3985_def : input3985 = (.seq input3984 input2649) := by
  unfold input3985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3984 output2649)).val
theorem output3985_def : output3985 = (.seq output3984 output2649) := by
  unfold output3985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3985_skip : Flapjack.WordAlloc.isSkip output3985 = false := by
  rw [output3985_def]
  conv => lhs; cbv
  try rfl
theorem node3985_eq : Flapjack.WordAlloc.removeDeadStructural input3985 value1324 value1 value2 = (output3985, value1832, value1) := by
  rw [input3985_def, output3985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2649_eq]
  try dsimp only
  rw [node3984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3985 input2640)).val
theorem input3986_def : input3986 = (.seq input3985 input2640) := by
  unfold input3986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3985)).val
theorem output3986_def : output3986 = (output3985) := by
  unfold output3986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3986_skip : Flapjack.WordAlloc.isSkip output3986 = false := by
  rw [output3986_def]
  conv => lhs; cbv
  try rfl
theorem node3986_eq : Flapjack.WordAlloc.removeDeadStructural input3986 value1324 value1 value2 = (output3986, value1832, value1) := by
  rw [input3986_def, output3986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2640_eq]
  try dsimp only
  rw [node3985_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3986 input2639)).val
theorem input3987_def : input3987 = (.seq input3986 input2639) := by
  unfold input3987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3986 output2639)).val
theorem output3987_def : output3987 = (.seq output3986 output2639) := by
  unfold output3987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3987_skip : Flapjack.WordAlloc.isSkip output3987 = false := by
  rw [output3987_def]
  conv => lhs; cbv
  try rfl
theorem node3987_eq : Flapjack.WordAlloc.removeDeadStructural input3987 value1323 value1 value2 = (output3987, value1832, value1) := by
  rw [input3987_def, output3987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2639_eq]
  try dsimp only
  rw [node3986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3987 input2638)).val
theorem input3988_def : input3988 = (.seq input3987 input2638) := by
  unfold input3988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3987 output2638)).val
theorem output3988_def : output3988 = (.seq output3987 output2638) := by
  unfold output3988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3988_skip : Flapjack.WordAlloc.isSkip output3988 = false := by
  rw [output3988_def]
  conv => lhs; cbv
  try rfl
theorem node3988_eq : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1832, value1) := by
  rw [input3988_def, output3988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2638_eq]
  try dsimp only
  rw [node3987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3988 input2635)).val
theorem input3989_def : input3989 = (.seq input3988 input2635) := by
  unfold input3989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3988 output2635)).val
theorem output3989_def : output3989 = (.seq output3988 output2635) := by
  unfold output3989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3989_skip : Flapjack.WordAlloc.isSkip output3989 = false := by
  rw [output3989_def]
  conv => lhs; cbv
  try rfl
theorem node3989_eq : Flapjack.WordAlloc.removeDeadStructural input3989 value1317 value1 value2 = (output3989, value1832, value1) := by
  rw [input3989_def, output3989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2635_eq]
  try dsimp only
  rw [node3988_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3989 input2626)).val
theorem input3990_def : input3990 = (.seq input3989 input2626) := by
  unfold input3990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3989)).val
theorem output3990_def : output3990 = (output3989) := by
  unfold output3990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3990_skip : Flapjack.WordAlloc.isSkip output3990 = false := by
  rw [output3990_def]
  conv => lhs; cbv
  try rfl
theorem node3990_eq : Flapjack.WordAlloc.removeDeadStructural input3990 value1317 value1 value2 = (output3990, value1832, value1) := by
  rw [input3990_def, output3990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2626_eq]
  try dsimp only
  rw [node3989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3990 input2625)).val
theorem input3991_def : input3991 = (.seq input3990 input2625) := by
  unfold input3991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3990 output2625)).val
theorem output3991_def : output3991 = (.seq output3990 output2625) := by
  unfold output3991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3991_skip : Flapjack.WordAlloc.isSkip output3991 = false := by
  rw [output3991_def]
  conv => lhs; cbv
  try rfl
theorem node3991_eq : Flapjack.WordAlloc.removeDeadStructural input3991 value1316 value1 value2 = (output3991, value1832, value1) := by
  rw [input3991_def, output3991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2625_eq]
  try dsimp only
  rw [node3990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3991 input2624)).val
theorem input3992_def : input3992 = (.seq input3991 input2624) := by
  unfold input3992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3991 output2624)).val
theorem output3992_def : output3992 = (.seq output3991 output2624) := by
  unfold output3992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3992_skip : Flapjack.WordAlloc.isSkip output3992 = false := by
  rw [output3992_def]
  conv => lhs; cbv
  try rfl
theorem node3992_eq : Flapjack.WordAlloc.removeDeadStructural input3992 value5 value1 value2 = (output3992, value1832, value1) := by
  rw [input3992_def, output3992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2624_eq]
  try dsimp only
  rw [node3991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3992 input2621)).val
theorem input3993_def : input3993 = (.seq input3992 input2621) := by
  unfold input3993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3992 output2621)).val
theorem output3993_def : output3993 = (.seq output3992 output2621) := by
  unfold output3993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3993_skip : Flapjack.WordAlloc.isSkip output3993 = false := by
  rw [output3993_def]
  conv => lhs; cbv
  try rfl
theorem node3993_eq : Flapjack.WordAlloc.removeDeadStructural input3993 value1310 value1 value2 = (output3993, value1832, value1) := by
  rw [input3993_def, output3993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2621_eq]
  try dsimp only
  rw [node3992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3993 input2612)).val
theorem input3994_def : input3994 = (.seq input3993 input2612) := by
  unfold input3994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3993)).val
theorem output3994_def : output3994 = (output3993) := by
  unfold output3994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3994_skip : Flapjack.WordAlloc.isSkip output3994 = false := by
  rw [output3994_def]
  conv => lhs; cbv
  try rfl
theorem node3994_eq : Flapjack.WordAlloc.removeDeadStructural input3994 value1310 value1 value2 = (output3994, value1832, value1) := by
  rw [input3994_def, output3994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2612_eq]
  try dsimp only
  rw [node3993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3994 input2611)).val
theorem input3995_def : input3995 = (.seq input3994 input2611) := by
  unfold input3995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3994 output2611)).val
theorem output3995_def : output3995 = (.seq output3994 output2611) := by
  unfold output3995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3995_skip : Flapjack.WordAlloc.isSkip output3995 = false := by
  rw [output3995_def]
  conv => lhs; cbv
  try rfl
theorem node3995_eq : Flapjack.WordAlloc.removeDeadStructural input3995 value1309 value1 value2 = (output3995, value1832, value1) := by
  rw [input3995_def, output3995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2611_eq]
  try dsimp only
  rw [node3994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3995 input2610)).val
theorem input3996_def : input3996 = (.seq input3995 input2610) := by
  unfold input3996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3995 output2610)).val
theorem output3996_def : output3996 = (.seq output3995 output2610) := by
  unfold output3996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3996_skip : Flapjack.WordAlloc.isSkip output3996 = false := by
  rw [output3996_def]
  conv => lhs; cbv
  try rfl
theorem node3996_eq : Flapjack.WordAlloc.removeDeadStructural input3996 value5 value1 value2 = (output3996, value1832, value1) := by
  rw [input3996_def, output3996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2610_eq]
  try dsimp only
  rw [node3995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3996 input2607)).val
theorem input3997_def : input3997 = (.seq input3996 input2607) := by
  unfold input3997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3996 output2607)).val
theorem output3997_def : output3997 = (.seq output3996 output2607) := by
  unfold output3997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3997_skip : Flapjack.WordAlloc.isSkip output3997 = false := by
  rw [output3997_def]
  conv => lhs; cbv
  try rfl
theorem node3997_eq : Flapjack.WordAlloc.removeDeadStructural input3997 value1303 value1 value2 = (output3997, value1832, value1) := by
  rw [input3997_def, output3997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2607_eq]
  try dsimp only
  rw [node3996_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3997 input2598)).val
theorem input3998_def : input3998 = (.seq input3997 input2598) := by
  unfold input3998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3997)).val
theorem output3998_def : output3998 = (output3997) := by
  unfold output3998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3998_skip : Flapjack.WordAlloc.isSkip output3998 = false := by
  rw [output3998_def]
  conv => lhs; cbv
  try rfl
theorem node3998_eq : Flapjack.WordAlloc.removeDeadStructural input3998 value1303 value1 value2 = (output3998, value1832, value1) := by
  rw [input3998_def, output3998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2598_eq]
  try dsimp only
  rw [node3997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3998 input2597)).val
theorem input3999_def : input3999 = (.seq input3998 input2597) := by
  unfold input3999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3998 output2597)).val
theorem output3999_def : output3999 = (.seq output3998 output2597) := by
  unfold output3999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3999_skip : Flapjack.WordAlloc.isSkip output3999 = false := by
  rw [output3999_def]
  conv => lhs; cbv
  try rfl
theorem node3999_eq : Flapjack.WordAlloc.removeDeadStructural input3999 value1302 value1 value2 = (output3999, value1832, value1) := by
  rw [input3999_def, output3999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2597_eq]
  try dsimp only
  rw [node3998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3999 input2596)).val
theorem input4000_def : input4000 = (.seq input3999 input2596) := by
  unfold input4000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3999 output2596)).val
theorem output4000_def : output4000 = (.seq output3999 output2596) := by
  unfold output4000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4000_skip : Flapjack.WordAlloc.isSkip output4000 = false := by
  rw [output4000_def]
  conv => lhs; cbv
  try rfl
theorem node4000_eq : Flapjack.WordAlloc.removeDeadStructural input4000 value5 value1 value2 = (output4000, value1832, value1) := by
  rw [input4000_def, output4000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2596_eq]
  try dsimp only
  rw [node3999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4000 input2593)).val
theorem input4001_def : input4001 = (.seq input4000 input2593) := by
  unfold input4001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4000 output2593)).val
theorem output4001_def : output4001 = (.seq output4000 output2593) := by
  unfold output4001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4001_skip : Flapjack.WordAlloc.isSkip output4001 = false := by
  rw [output4001_def]
  conv => lhs; cbv
  try rfl
theorem node4001_eq : Flapjack.WordAlloc.removeDeadStructural input4001 value1296 value1 value2 = (output4001, value1832, value1) := by
  rw [input4001_def, output4001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2593_eq]
  try dsimp only
  rw [node4000_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4001 input2584)).val
theorem input4002_def : input4002 = (.seq input4001 input2584) := by
  unfold input4002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4001)).val
theorem output4002_def : output4002 = (output4001) := by
  unfold output4002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4002_skip : Flapjack.WordAlloc.isSkip output4002 = false := by
  rw [output4002_def]
  conv => lhs; cbv
  try rfl
theorem node4002_eq : Flapjack.WordAlloc.removeDeadStructural input4002 value1296 value1 value2 = (output4002, value1832, value1) := by
  rw [input4002_def, output4002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2584_eq]
  try dsimp only
  rw [node4001_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4002 input2583)).val
theorem input4003_def : input4003 = (.seq input4002 input2583) := by
  unfold input4003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4002 output2583)).val
theorem output4003_def : output4003 = (.seq output4002 output2583) := by
  unfold output4003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4003_skip : Flapjack.WordAlloc.isSkip output4003 = false := by
  rw [output4003_def]
  conv => lhs; cbv
  try rfl
theorem node4003_eq : Flapjack.WordAlloc.removeDeadStructural input4003 value1295 value1 value2 = (output4003, value1832, value1) := by
  rw [input4003_def, output4003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2583_eq]
  try dsimp only
  rw [node4002_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4003 input2582)).val
theorem input4004_def : input4004 = (.seq input4003 input2582) := by
  unfold input4004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4003 output2582)).val
theorem output4004_def : output4004 = (.seq output4003 output2582) := by
  unfold output4004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4004_skip : Flapjack.WordAlloc.isSkip output4004 = false := by
  rw [output4004_def]
  conv => lhs; cbv
  try rfl
theorem node4004_eq : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value1832, value1) := by
  rw [input4004_def, output4004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2582_eq]
  try dsimp only
  rw [node4003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4004 input2579)).val
theorem input4005_def : input4005 = (.seq input4004 input2579) := by
  unfold input4005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4004 output2579)).val
theorem output4005_def : output4005 = (.seq output4004 output2579) := by
  unfold output4005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4005_skip : Flapjack.WordAlloc.isSkip output4005 = false := by
  rw [output4005_def]
  conv => lhs; cbv
  try rfl
theorem node4005_eq : Flapjack.WordAlloc.removeDeadStructural input4005 value1289 value1 value2 = (output4005, value1832, value1) := by
  rw [input4005_def, output4005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2579_eq]
  try dsimp only
  rw [node4004_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4005 input2570)).val
theorem input4006_def : input4006 = (.seq input4005 input2570) := by
  unfold input4006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4005)).val
theorem output4006_def : output4006 = (output4005) := by
  unfold output4006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4006_skip : Flapjack.WordAlloc.isSkip output4006 = false := by
  rw [output4006_def]
  conv => lhs; cbv
  try rfl
theorem node4006_eq : Flapjack.WordAlloc.removeDeadStructural input4006 value1289 value1 value2 = (output4006, value1832, value1) := by
  rw [input4006_def, output4006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2570_eq]
  try dsimp only
  rw [node4005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4006 input2569)).val
theorem input4007_def : input4007 = (.seq input4006 input2569) := by
  unfold input4007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4006 output2569)).val
theorem output4007_def : output4007 = (.seq output4006 output2569) := by
  unfold output4007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4007_skip : Flapjack.WordAlloc.isSkip output4007 = false := by
  rw [output4007_def]
  conv => lhs; cbv
  try rfl
theorem node4007_eq : Flapjack.WordAlloc.removeDeadStructural input4007 value1288 value1 value2 = (output4007, value1832, value1) := by
  rw [input4007_def, output4007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2569_eq]
  try dsimp only
  rw [node4006_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4007 input2568)).val
theorem input4008_def : input4008 = (.seq input4007 input2568) := by
  unfold input4008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4007 output2568)).val
theorem output4008_def : output4008 = (.seq output4007 output2568) := by
  unfold output4008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4008_skip : Flapjack.WordAlloc.isSkip output4008 = false := by
  rw [output4008_def]
  conv => lhs; cbv
  try rfl
theorem node4008_eq : Flapjack.WordAlloc.removeDeadStructural input4008 value5 value1 value2 = (output4008, value1832, value1) := by
  rw [input4008_def, output4008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2568_eq]
  try dsimp only
  rw [node4007_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4008 input2565)).val
theorem input4009_def : input4009 = (.seq input4008 input2565) := by
  unfold input4009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4008 output2565)).val
theorem output4009_def : output4009 = (.seq output4008 output2565) := by
  unfold output4009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4009_skip : Flapjack.WordAlloc.isSkip output4009 = false := by
  rw [output4009_def]
  conv => lhs; cbv
  try rfl
theorem node4009_eq : Flapjack.WordAlloc.removeDeadStructural input4009 value1282 value1 value2 = (output4009, value1832, value1) := by
  rw [input4009_def, output4009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2565_eq]
  try dsimp only
  rw [node4008_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4009 input2556)).val
theorem input4010_def : input4010 = (.seq input4009 input2556) := by
  unfold input4010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4009)).val
theorem output4010_def : output4010 = (output4009) := by
  unfold output4010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4010_skip : Flapjack.WordAlloc.isSkip output4010 = false := by
  rw [output4010_def]
  conv => lhs; cbv
  try rfl
theorem node4010_eq : Flapjack.WordAlloc.removeDeadStructural input4010 value1282 value1 value2 = (output4010, value1832, value1) := by
  rw [input4010_def, output4010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2556_eq]
  try dsimp only
  rw [node4009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4010 input2555)).val
theorem input4011_def : input4011 = (.seq input4010 input2555) := by
  unfold input4011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4010 output2555)).val
theorem output4011_def : output4011 = (.seq output4010 output2555) := by
  unfold output4011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4011_skip : Flapjack.WordAlloc.isSkip output4011 = false := by
  rw [output4011_def]
  conv => lhs; cbv
  try rfl
theorem node4011_eq : Flapjack.WordAlloc.removeDeadStructural input4011 value1281 value1 value2 = (output4011, value1832, value1) := by
  rw [input4011_def, output4011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2555_eq]
  try dsimp only
  rw [node4010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4011 input2554)).val
theorem input4012_def : input4012 = (.seq input4011 input2554) := by
  unfold input4012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4011 output2554)).val
theorem output4012_def : output4012 = (.seq output4011 output2554) := by
  unfold output4012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4012_skip : Flapjack.WordAlloc.isSkip output4012 = false := by
  rw [output4012_def]
  conv => lhs; cbv
  try rfl
theorem node4012_eq : Flapjack.WordAlloc.removeDeadStructural input4012 value5 value1 value2 = (output4012, value1832, value1) := by
  rw [input4012_def, output4012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2554_eq]
  try dsimp only
  rw [node4011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4012 input2551)).val
theorem input4013_def : input4013 = (.seq input4012 input2551) := by
  unfold input4013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4012 output2551)).val
theorem output4013_def : output4013 = (.seq output4012 output2551) := by
  unfold output4013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4013_skip : Flapjack.WordAlloc.isSkip output4013 = false := by
  rw [output4013_def]
  conv => lhs; cbv
  try rfl
theorem node4013_eq : Flapjack.WordAlloc.removeDeadStructural input4013 value1275 value1 value2 = (output4013, value1832, value1) := by
  rw [input4013_def, output4013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2551_eq]
  try dsimp only
  rw [node4012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4013 input2542)).val
theorem input4014_def : input4014 = (.seq input4013 input2542) := by
  unfold input4014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4013)).val
theorem output4014_def : output4014 = (output4013) := by
  unfold output4014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4014_skip : Flapjack.WordAlloc.isSkip output4014 = false := by
  rw [output4014_def]
  conv => lhs; cbv
  try rfl
theorem node4014_eq : Flapjack.WordAlloc.removeDeadStructural input4014 value1275 value1 value2 = (output4014, value1832, value1) := by
  rw [input4014_def, output4014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2542_eq]
  try dsimp only
  rw [node4013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4014 input2541)).val
theorem input4015_def : input4015 = (.seq input4014 input2541) := by
  unfold input4015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4014 output2541)).val
theorem output4015_def : output4015 = (.seq output4014 output2541) := by
  unfold output4015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4015_skip : Flapjack.WordAlloc.isSkip output4015 = false := by
  rw [output4015_def]
  conv => lhs; cbv
  try rfl
theorem node4015_eq : Flapjack.WordAlloc.removeDeadStructural input4015 value1274 value1 value2 = (output4015, value1832, value1) := by
  rw [input4015_def, output4015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2541_eq]
  try dsimp only
  rw [node4014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4015 input2540)).val
theorem input4016_def : input4016 = (.seq input4015 input2540) := by
  unfold input4016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4015 output2540)).val
theorem output4016_def : output4016 = (.seq output4015 output2540) := by
  unfold output4016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4016_skip : Flapjack.WordAlloc.isSkip output4016 = false := by
  rw [output4016_def]
  conv => lhs; cbv
  try rfl
theorem node4016_eq : Flapjack.WordAlloc.removeDeadStructural input4016 value5 value1 value2 = (output4016, value1832, value1) := by
  rw [input4016_def, output4016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2540_eq]
  try dsimp only
  rw [node4015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4016 input2537)).val
theorem input4017_def : input4017 = (.seq input4016 input2537) := by
  unfold input4017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4016 output2537)).val
theorem output4017_def : output4017 = (.seq output4016 output2537) := by
  unfold output4017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4017_skip : Flapjack.WordAlloc.isSkip output4017 = false := by
  rw [output4017_def]
  conv => lhs; cbv
  try rfl
theorem node4017_eq : Flapjack.WordAlloc.removeDeadStructural input4017 value1268 value1 value2 = (output4017, value1832, value1) := by
  rw [input4017_def, output4017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2537_eq]
  try dsimp only
  rw [node4016_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4017 input2528)).val
theorem input4018_def : input4018 = (.seq input4017 input2528) := by
  unfold input4018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4017)).val
theorem output4018_def : output4018 = (output4017) := by
  unfold output4018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4018_skip : Flapjack.WordAlloc.isSkip output4018 = false := by
  rw [output4018_def]
  conv => lhs; cbv
  try rfl
theorem node4018_eq : Flapjack.WordAlloc.removeDeadStructural input4018 value1268 value1 value2 = (output4018, value1832, value1) := by
  rw [input4018_def, output4018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2528_eq]
  try dsimp only
  rw [node4017_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4018 input2527)).val
theorem input4019_def : input4019 = (.seq input4018 input2527) := by
  unfold input4019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4018 output2527)).val
theorem output4019_def : output4019 = (.seq output4018 output2527) := by
  unfold output4019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4019_skip : Flapjack.WordAlloc.isSkip output4019 = false := by
  rw [output4019_def]
  conv => lhs; cbv
  try rfl
theorem node4019_eq : Flapjack.WordAlloc.removeDeadStructural input4019 value1267 value1 value2 = (output4019, value1832, value1) := by
  rw [input4019_def, output4019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2527_eq]
  try dsimp only
  rw [node4018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4019 input2526)).val
theorem input4020_def : input4020 = (.seq input4019 input2526) := by
  unfold input4020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4019 output2526)).val
theorem output4020_def : output4020 = (.seq output4019 output2526) := by
  unfold output4020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4020_skip : Flapjack.WordAlloc.isSkip output4020 = false := by
  rw [output4020_def]
  conv => lhs; cbv
  try rfl
theorem node4020_eq : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value1832, value1) := by
  rw [input4020_def, output4020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2526_eq]
  try dsimp only
  rw [node4019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4020 input2523)).val
theorem input4021_def : input4021 = (.seq input4020 input2523) := by
  unfold input4021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4020 output2523)).val
theorem output4021_def : output4021 = (.seq output4020 output2523) := by
  unfold output4021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4021_skip : Flapjack.WordAlloc.isSkip output4021 = false := by
  rw [output4021_def]
  conv => lhs; cbv
  try rfl
theorem node4021_eq : Flapjack.WordAlloc.removeDeadStructural input4021 value1261 value1 value2 = (output4021, value1832, value1) := by
  rw [input4021_def, output4021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2523_eq]
  try dsimp only
  rw [node4020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4021 input2514)).val
theorem input4022_def : input4022 = (.seq input4021 input2514) := by
  unfold input4022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4021)).val
theorem output4022_def : output4022 = (output4021) := by
  unfold output4022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4022_skip : Flapjack.WordAlloc.isSkip output4022 = false := by
  rw [output4022_def]
  conv => lhs; cbv
  try rfl
theorem node4022_eq : Flapjack.WordAlloc.removeDeadStructural input4022 value1261 value1 value2 = (output4022, value1832, value1) := by
  rw [input4022_def, output4022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2514_eq]
  try dsimp only
  rw [node4021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4022 input2513)).val
theorem input4023_def : input4023 = (.seq input4022 input2513) := by
  unfold input4023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4022 output2513)).val
theorem output4023_def : output4023 = (.seq output4022 output2513) := by
  unfold output4023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4023_skip : Flapjack.WordAlloc.isSkip output4023 = false := by
  rw [output4023_def]
  conv => lhs; cbv
  try rfl
theorem node4023_eq : Flapjack.WordAlloc.removeDeadStructural input4023 value1260 value1 value2 = (output4023, value1832, value1) := by
  rw [input4023_def, output4023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2513_eq]
  try dsimp only
  rw [node4022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4023 input2512)).val
theorem input4024_def : input4024 = (.seq input4023 input2512) := by
  unfold input4024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4023 output2512)).val
theorem output4024_def : output4024 = (.seq output4023 output2512) := by
  unfold output4024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4024_skip : Flapjack.WordAlloc.isSkip output4024 = false := by
  rw [output4024_def]
  conv => lhs; cbv
  try rfl
theorem node4024_eq : Flapjack.WordAlloc.removeDeadStructural input4024 value5 value1 value2 = (output4024, value1832, value1) := by
  rw [input4024_def, output4024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2512_eq]
  try dsimp only
  rw [node4023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4024 input2509)).val
theorem input4025_def : input4025 = (.seq input4024 input2509) := by
  unfold input4025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4024 output2509)).val
theorem output4025_def : output4025 = (.seq output4024 output2509) := by
  unfold output4025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4025_skip : Flapjack.WordAlloc.isSkip output4025 = false := by
  rw [output4025_def]
  conv => lhs; cbv
  try rfl
theorem node4025_eq : Flapjack.WordAlloc.removeDeadStructural input4025 value1254 value1 value2 = (output4025, value1832, value1) := by
  rw [input4025_def, output4025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2509_eq]
  try dsimp only
  rw [node4024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4025 input2500)).val
theorem input4026_def : input4026 = (.seq input4025 input2500) := by
  unfold input4026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4025)).val
theorem output4026_def : output4026 = (output4025) := by
  unfold output4026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4026_skip : Flapjack.WordAlloc.isSkip output4026 = false := by
  rw [output4026_def]
  conv => lhs; cbv
  try rfl
theorem node4026_eq : Flapjack.WordAlloc.removeDeadStructural input4026 value1254 value1 value2 = (output4026, value1832, value1) := by
  rw [input4026_def, output4026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2500_eq]
  try dsimp only
  rw [node4025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4026 input2499)).val
theorem input4027_def : input4027 = (.seq input4026 input2499) := by
  unfold input4027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4026 output2499)).val
theorem output4027_def : output4027 = (.seq output4026 output2499) := by
  unfold output4027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4027_skip : Flapjack.WordAlloc.isSkip output4027 = false := by
  rw [output4027_def]
  conv => lhs; cbv
  try rfl
theorem node4027_eq : Flapjack.WordAlloc.removeDeadStructural input4027 value1253 value1 value2 = (output4027, value1832, value1) := by
  rw [input4027_def, output4027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2499_eq]
  try dsimp only
  rw [node4026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4027 input2498)).val
theorem input4028_def : input4028 = (.seq input4027 input2498) := by
  unfold input4028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4027 output2498)).val
theorem output4028_def : output4028 = (.seq output4027 output2498) := by
  unfold output4028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4028_skip : Flapjack.WordAlloc.isSkip output4028 = false := by
  rw [output4028_def]
  conv => lhs; cbv
  try rfl
theorem node4028_eq : Flapjack.WordAlloc.removeDeadStructural input4028 value5 value1 value2 = (output4028, value1832, value1) := by
  rw [input4028_def, output4028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2498_eq]
  try dsimp only
  rw [node4027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4028 input2495)).val
theorem input4029_def : input4029 = (.seq input4028 input2495) := by
  unfold input4029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4028 output2495)).val
theorem output4029_def : output4029 = (.seq output4028 output2495) := by
  unfold output4029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4029_skip : Flapjack.WordAlloc.isSkip output4029 = false := by
  rw [output4029_def]
  conv => lhs; cbv
  try rfl
theorem node4029_eq : Flapjack.WordAlloc.removeDeadStructural input4029 value1247 value1 value2 = (output4029, value1832, value1) := by
  rw [input4029_def, output4029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2495_eq]
  try dsimp only
  rw [node4028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4029 input2486)).val
theorem input4030_def : input4030 = (.seq input4029 input2486) := by
  unfold input4030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4029)).val
theorem output4030_def : output4030 = (output4029) := by
  unfold output4030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4030_skip : Flapjack.WordAlloc.isSkip output4030 = false := by
  rw [output4030_def]
  conv => lhs; cbv
  try rfl
theorem node4030_eq : Flapjack.WordAlloc.removeDeadStructural input4030 value1247 value1 value2 = (output4030, value1832, value1) := by
  rw [input4030_def, output4030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2486_eq]
  try dsimp only
  rw [node4029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4030 input2485)).val
theorem input4031_def : input4031 = (.seq input4030 input2485) := by
  unfold input4031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4030 output2485)).val
theorem output4031_def : output4031 = (.seq output4030 output2485) := by
  unfold output4031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4031_skip : Flapjack.WordAlloc.isSkip output4031 = false := by
  rw [output4031_def]
  conv => lhs; cbv
  try rfl
theorem node4031_eq : Flapjack.WordAlloc.removeDeadStructural input4031 value1246 value1 value2 = (output4031, value1832, value1) := by
  rw [input4031_def, output4031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2485_eq]
  try dsimp only
  rw [node4030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4031 input2484)).val
theorem input4032_def : input4032 = (.seq input4031 input2484) := by
  unfold input4032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4031 output2484)).val
theorem output4032_def : output4032 = (.seq output4031 output2484) := by
  unfold output4032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4032_skip : Flapjack.WordAlloc.isSkip output4032 = false := by
  rw [output4032_def]
  conv => lhs; cbv
  try rfl
theorem node4032_eq : Flapjack.WordAlloc.removeDeadStructural input4032 value5 value1 value2 = (output4032, value1832, value1) := by
  rw [input4032_def, output4032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2484_eq]
  try dsimp only
  rw [node4031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4032 input2481)).val
theorem input4033_def : input4033 = (.seq input4032 input2481) := by
  unfold input4033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4032 output2481)).val
theorem output4033_def : output4033 = (.seq output4032 output2481) := by
  unfold output4033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4033_skip : Flapjack.WordAlloc.isSkip output4033 = false := by
  rw [output4033_def]
  conv => lhs; cbv
  try rfl
theorem node4033_eq : Flapjack.WordAlloc.removeDeadStructural input4033 value1240 value1 value2 = (output4033, value1832, value1) := by
  rw [input4033_def, output4033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2481_eq]
  try dsimp only
  rw [node4032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4033 input2472)).val
theorem input4034_def : input4034 = (.seq input4033 input2472) := by
  unfold input4034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4033)).val
theorem output4034_def : output4034 = (output4033) := by
  unfold output4034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4034_skip : Flapjack.WordAlloc.isSkip output4034 = false := by
  rw [output4034_def]
  conv => lhs; cbv
  try rfl
theorem node4034_eq : Flapjack.WordAlloc.removeDeadStructural input4034 value1240 value1 value2 = (output4034, value1832, value1) := by
  rw [input4034_def, output4034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2472_eq]
  try dsimp only
  rw [node4033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4034 input2471)).val
theorem input4035_def : input4035 = (.seq input4034 input2471) := by
  unfold input4035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4034 output2471)).val
theorem output4035_def : output4035 = (.seq output4034 output2471) := by
  unfold output4035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4035_skip : Flapjack.WordAlloc.isSkip output4035 = false := by
  rw [output4035_def]
  conv => lhs; cbv
  try rfl
theorem node4035_eq : Flapjack.WordAlloc.removeDeadStructural input4035 value1239 value1 value2 = (output4035, value1832, value1) := by
  rw [input4035_def, output4035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2471_eq]
  try dsimp only
  rw [node4034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4035 input2470)).val
theorem input4036_def : input4036 = (.seq input4035 input2470) := by
  unfold input4036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4035 output2470)).val
theorem output4036_def : output4036 = (.seq output4035 output2470) := by
  unfold output4036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4036_skip : Flapjack.WordAlloc.isSkip output4036 = false := by
  rw [output4036_def]
  conv => lhs; cbv
  try rfl
theorem node4036_eq : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value1832, value1) := by
  rw [input4036_def, output4036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2470_eq]
  try dsimp only
  rw [node4035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4036 input2467)).val
theorem input4037_def : input4037 = (.seq input4036 input2467) := by
  unfold input4037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4036 output2467)).val
theorem output4037_def : output4037 = (.seq output4036 output2467) := by
  unfold output4037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4037_skip : Flapjack.WordAlloc.isSkip output4037 = false := by
  rw [output4037_def]
  conv => lhs; cbv
  try rfl
theorem node4037_eq : Flapjack.WordAlloc.removeDeadStructural input4037 value1233 value1 value2 = (output4037, value1832, value1) := by
  rw [input4037_def, output4037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2467_eq]
  try dsimp only
  rw [node4036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4037 input2458)).val
theorem input4038_def : input4038 = (.seq input4037 input2458) := by
  unfold input4038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4037)).val
theorem output4038_def : output4038 = (output4037) := by
  unfold output4038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4038_skip : Flapjack.WordAlloc.isSkip output4038 = false := by
  rw [output4038_def]
  conv => lhs; cbv
  try rfl
theorem node4038_eq : Flapjack.WordAlloc.removeDeadStructural input4038 value1233 value1 value2 = (output4038, value1832, value1) := by
  rw [input4038_def, output4038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2458_eq]
  try dsimp only
  rw [node4037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4038 input2457)).val
theorem input4039_def : input4039 = (.seq input4038 input2457) := by
  unfold input4039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4038 output2457)).val
theorem output4039_def : output4039 = (.seq output4038 output2457) := by
  unfold output4039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4039_skip : Flapjack.WordAlloc.isSkip output4039 = false := by
  rw [output4039_def]
  conv => lhs; cbv
  try rfl
theorem node4039_eq : Flapjack.WordAlloc.removeDeadStructural input4039 value1232 value1 value2 = (output4039, value1832, value1) := by
  rw [input4039_def, output4039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2457_eq]
  try dsimp only
  rw [node4038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4039 input2456)).val
theorem input4040_def : input4040 = (.seq input4039 input2456) := by
  unfold input4040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4039 output2456)).val
theorem output4040_def : output4040 = (.seq output4039 output2456) := by
  unfold output4040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4040_skip : Flapjack.WordAlloc.isSkip output4040 = false := by
  rw [output4040_def]
  conv => lhs; cbv
  try rfl
theorem node4040_eq : Flapjack.WordAlloc.removeDeadStructural input4040 value5 value1 value2 = (output4040, value1832, value1) := by
  rw [input4040_def, output4040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2456_eq]
  try dsimp only
  rw [node4039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4040 input2453)).val
theorem input4041_def : input4041 = (.seq input4040 input2453) := by
  unfold input4041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4040 output2453)).val
theorem output4041_def : output4041 = (.seq output4040 output2453) := by
  unfold output4041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4041_skip : Flapjack.WordAlloc.isSkip output4041 = false := by
  rw [output4041_def]
  conv => lhs; cbv
  try rfl
theorem node4041_eq : Flapjack.WordAlloc.removeDeadStructural input4041 value1226 value1 value2 = (output4041, value1832, value1) := by
  rw [input4041_def, output4041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2453_eq]
  try dsimp only
  rw [node4040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4041 input2444)).val
theorem input4042_def : input4042 = (.seq input4041 input2444) := by
  unfold input4042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4041)).val
theorem output4042_def : output4042 = (output4041) := by
  unfold output4042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4042_skip : Flapjack.WordAlloc.isSkip output4042 = false := by
  rw [output4042_def]
  conv => lhs; cbv
  try rfl
theorem node4042_eq : Flapjack.WordAlloc.removeDeadStructural input4042 value1226 value1 value2 = (output4042, value1832, value1) := by
  rw [input4042_def, output4042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2444_eq]
  try dsimp only
  rw [node4041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4042 input2443)).val
theorem input4043_def : input4043 = (.seq input4042 input2443) := by
  unfold input4043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4042 output2443)).val
theorem output4043_def : output4043 = (.seq output4042 output2443) := by
  unfold output4043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4043_skip : Flapjack.WordAlloc.isSkip output4043 = false := by
  rw [output4043_def]
  conv => lhs; cbv
  try rfl
theorem node4043_eq : Flapjack.WordAlloc.removeDeadStructural input4043 value1225 value1 value2 = (output4043, value1832, value1) := by
  rw [input4043_def, output4043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2443_eq]
  try dsimp only
  rw [node4042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4043 input2442)).val
theorem input4044_def : input4044 = (.seq input4043 input2442) := by
  unfold input4044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4043 output2442)).val
theorem output4044_def : output4044 = (.seq output4043 output2442) := by
  unfold output4044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4044_skip : Flapjack.WordAlloc.isSkip output4044 = false := by
  rw [output4044_def]
  conv => lhs; cbv
  try rfl
theorem node4044_eq : Flapjack.WordAlloc.removeDeadStructural input4044 value5 value1 value2 = (output4044, value1832, value1) := by
  rw [input4044_def, output4044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2442_eq]
  try dsimp only
  rw [node4043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4044 input2439)).val
theorem input4045_def : input4045 = (.seq input4044 input2439) := by
  unfold input4045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4044 output2439)).val
theorem output4045_def : output4045 = (.seq output4044 output2439) := by
  unfold output4045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4045_skip : Flapjack.WordAlloc.isSkip output4045 = false := by
  rw [output4045_def]
  conv => lhs; cbv
  try rfl
theorem node4045_eq : Flapjack.WordAlloc.removeDeadStructural input4045 value1219 value1 value2 = (output4045, value1832, value1) := by
  rw [input4045_def, output4045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2439_eq]
  try dsimp only
  rw [node4044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4045 input2430)).val
theorem input4046_def : input4046 = (.seq input4045 input2430) := by
  unfold input4046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4045)).val
theorem output4046_def : output4046 = (output4045) := by
  unfold output4046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4046_skip : Flapjack.WordAlloc.isSkip output4046 = false := by
  rw [output4046_def]
  conv => lhs; cbv
  try rfl
theorem node4046_eq : Flapjack.WordAlloc.removeDeadStructural input4046 value1219 value1 value2 = (output4046, value1832, value1) := by
  rw [input4046_def, output4046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2430_eq]
  try dsimp only
  rw [node4045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4046 input2429)).val
theorem input4047_def : input4047 = (.seq input4046 input2429) := by
  unfold input4047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4046 output2429)).val
theorem output4047_def : output4047 = (.seq output4046 output2429) := by
  unfold output4047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4047_skip : Flapjack.WordAlloc.isSkip output4047 = false := by
  rw [output4047_def]
  conv => lhs; cbv
  try rfl
theorem node4047_eq : Flapjack.WordAlloc.removeDeadStructural input4047 value1218 value1 value2 = (output4047, value1832, value1) := by
  rw [input4047_def, output4047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2429_eq]
  try dsimp only
  rw [node4046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4047 input2428)).val
theorem input4048_def : input4048 = (.seq input4047 input2428) := by
  unfold input4048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4047 output2428)).val
theorem output4048_def : output4048 = (.seq output4047 output2428) := by
  unfold output4048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4048_skip : Flapjack.WordAlloc.isSkip output4048 = false := by
  rw [output4048_def]
  conv => lhs; cbv
  try rfl
theorem node4048_eq : Flapjack.WordAlloc.removeDeadStructural input4048 value5 value1 value2 = (output4048, value1832, value1) := by
  rw [input4048_def, output4048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2428_eq]
  try dsimp only
  rw [node4047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4048 input2425)).val
theorem input4049_def : input4049 = (.seq input4048 input2425) := by
  unfold input4049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4048 output2425)).val
theorem output4049_def : output4049 = (.seq output4048 output2425) := by
  unfold output4049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4049_skip : Flapjack.WordAlloc.isSkip output4049 = false := by
  rw [output4049_def]
  conv => lhs; cbv
  try rfl
theorem node4049_eq : Flapjack.WordAlloc.removeDeadStructural input4049 value1212 value1 value2 = (output4049, value1832, value1) := by
  rw [input4049_def, output4049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2425_eq]
  try dsimp only
  rw [node4048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4049 input2416)).val
theorem input4050_def : input4050 = (.seq input4049 input2416) := by
  unfold input4050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4049)).val
theorem output4050_def : output4050 = (output4049) := by
  unfold output4050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4050_skip : Flapjack.WordAlloc.isSkip output4050 = false := by
  rw [output4050_def]
  conv => lhs; cbv
  try rfl
theorem node4050_eq : Flapjack.WordAlloc.removeDeadStructural input4050 value1212 value1 value2 = (output4050, value1832, value1) := by
  rw [input4050_def, output4050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2416_eq]
  try dsimp only
  rw [node4049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4050 input2415)).val
theorem input4051_def : input4051 = (.seq input4050 input2415) := by
  unfold input4051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4050 output2415)).val
theorem output4051_def : output4051 = (.seq output4050 output2415) := by
  unfold output4051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4051_skip : Flapjack.WordAlloc.isSkip output4051 = false := by
  rw [output4051_def]
  conv => lhs; cbv
  try rfl
theorem node4051_eq : Flapjack.WordAlloc.removeDeadStructural input4051 value1211 value1 value2 = (output4051, value1832, value1) := by
  rw [input4051_def, output4051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2415_eq]
  try dsimp only
  rw [node4050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4051 input2414)).val
theorem input4052_def : input4052 = (.seq input4051 input2414) := by
  unfold input4052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4051 output2414)).val
theorem output4052_def : output4052 = (.seq output4051 output2414) := by
  unfold output4052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4052_skip : Flapjack.WordAlloc.isSkip output4052 = false := by
  rw [output4052_def]
  conv => lhs; cbv
  try rfl
theorem node4052_eq : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value1832, value1) := by
  rw [input4052_def, output4052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2414_eq]
  try dsimp only
  rw [node4051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4052 input2411)).val
theorem input4053_def : input4053 = (.seq input4052 input2411) := by
  unfold input4053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4052 output2411)).val
theorem output4053_def : output4053 = (.seq output4052 output2411) := by
  unfold output4053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4053_skip : Flapjack.WordAlloc.isSkip output4053 = false := by
  rw [output4053_def]
  conv => lhs; cbv
  try rfl
theorem node4053_eq : Flapjack.WordAlloc.removeDeadStructural input4053 value1205 value1 value2 = (output4053, value1832, value1) := by
  rw [input4053_def, output4053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2411_eq]
  try dsimp only
  rw [node4052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4053 input2402)).val
theorem input4054_def : input4054 = (.seq input4053 input2402) := by
  unfold input4054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4053)).val
theorem output4054_def : output4054 = (output4053) := by
  unfold output4054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4054_skip : Flapjack.WordAlloc.isSkip output4054 = false := by
  rw [output4054_def]
  conv => lhs; cbv
  try rfl
theorem node4054_eq : Flapjack.WordAlloc.removeDeadStructural input4054 value1205 value1 value2 = (output4054, value1832, value1) := by
  rw [input4054_def, output4054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2402_eq]
  try dsimp only
  rw [node4053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4054 input2401)).val
theorem input4055_def : input4055 = (.seq input4054 input2401) := by
  unfold input4055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4054 output2401)).val
theorem output4055_def : output4055 = (.seq output4054 output2401) := by
  unfold output4055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4055_skip : Flapjack.WordAlloc.isSkip output4055 = false := by
  rw [output4055_def]
  conv => lhs; cbv
  try rfl
theorem node4055_eq : Flapjack.WordAlloc.removeDeadStructural input4055 value1204 value1 value2 = (output4055, value1832, value1) := by
  rw [input4055_def, output4055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2401_eq]
  try dsimp only
  rw [node4054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4055 input2400)).val
theorem input4056_def : input4056 = (.seq input4055 input2400) := by
  unfold input4056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4055 output2400)).val
theorem output4056_def : output4056 = (.seq output4055 output2400) := by
  unfold output4056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4056_skip : Flapjack.WordAlloc.isSkip output4056 = false := by
  rw [output4056_def]
  conv => lhs; cbv
  try rfl
theorem node4056_eq : Flapjack.WordAlloc.removeDeadStructural input4056 value5 value1 value2 = (output4056, value1832, value1) := by
  rw [input4056_def, output4056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2400_eq]
  try dsimp only
  rw [node4055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4056 input2397)).val
theorem input4057_def : input4057 = (.seq input4056 input2397) := by
  unfold input4057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4056 output2397)).val
theorem output4057_def : output4057 = (.seq output4056 output2397) := by
  unfold output4057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4057_skip : Flapjack.WordAlloc.isSkip output4057 = false := by
  rw [output4057_def]
  conv => lhs; cbv
  try rfl
theorem node4057_eq : Flapjack.WordAlloc.removeDeadStructural input4057 value1198 value1 value2 = (output4057, value1832, value1) := by
  rw [input4057_def, output4057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2397_eq]
  try dsimp only
  rw [node4056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4057 input2388)).val
theorem input4058_def : input4058 = (.seq input4057 input2388) := by
  unfold input4058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4057)).val
theorem output4058_def : output4058 = (output4057) := by
  unfold output4058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4058_skip : Flapjack.WordAlloc.isSkip output4058 = false := by
  rw [output4058_def]
  conv => lhs; cbv
  try rfl
theorem node4058_eq : Flapjack.WordAlloc.removeDeadStructural input4058 value1198 value1 value2 = (output4058, value1832, value1) := by
  rw [input4058_def, output4058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2388_eq]
  try dsimp only
  rw [node4057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4058 input2387)).val
theorem input4059_def : input4059 = (.seq input4058 input2387) := by
  unfold input4059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4058 output2387)).val
theorem output4059_def : output4059 = (.seq output4058 output2387) := by
  unfold output4059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4059_skip : Flapjack.WordAlloc.isSkip output4059 = false := by
  rw [output4059_def]
  conv => lhs; cbv
  try rfl
theorem node4059_eq : Flapjack.WordAlloc.removeDeadStructural input4059 value1197 value1 value2 = (output4059, value1832, value1) := by
  rw [input4059_def, output4059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2387_eq]
  try dsimp only
  rw [node4058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4059 input2386)).val
theorem input4060_def : input4060 = (.seq input4059 input2386) := by
  unfold input4060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4059 output2386)).val
theorem output4060_def : output4060 = (.seq output4059 output2386) := by
  unfold output4060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4060_skip : Flapjack.WordAlloc.isSkip output4060 = false := by
  rw [output4060_def]
  conv => lhs; cbv
  try rfl
theorem node4060_eq : Flapjack.WordAlloc.removeDeadStructural input4060 value5 value1 value2 = (output4060, value1832, value1) := by
  rw [input4060_def, output4060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2386_eq]
  try dsimp only
  rw [node4059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4060 input2383)).val
theorem input4061_def : input4061 = (.seq input4060 input2383) := by
  unfold input4061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4060 output2383)).val
theorem output4061_def : output4061 = (.seq output4060 output2383) := by
  unfold output4061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4061_skip : Flapjack.WordAlloc.isSkip output4061 = false := by
  rw [output4061_def]
  conv => lhs; cbv
  try rfl
theorem node4061_eq : Flapjack.WordAlloc.removeDeadStructural input4061 value1191 value1 value2 = (output4061, value1832, value1) := by
  rw [input4061_def, output4061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2383_eq]
  try dsimp only
  rw [node4060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4061 input2374)).val
theorem input4062_def : input4062 = (.seq input4061 input2374) := by
  unfold input4062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4061)).val
theorem output4062_def : output4062 = (output4061) := by
  unfold output4062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4062_skip : Flapjack.WordAlloc.isSkip output4062 = false := by
  rw [output4062_def]
  conv => lhs; cbv
  try rfl
theorem node4062_eq : Flapjack.WordAlloc.removeDeadStructural input4062 value1191 value1 value2 = (output4062, value1832, value1) := by
  rw [input4062_def, output4062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2374_eq]
  try dsimp only
  rw [node4061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4062 input2373)).val
theorem input4063_def : input4063 = (.seq input4062 input2373) := by
  unfold input4063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4062 output2373)).val
theorem output4063_def : output4063 = (.seq output4062 output2373) := by
  unfold output4063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4063_skip : Flapjack.WordAlloc.isSkip output4063 = false := by
  rw [output4063_def]
  conv => lhs; cbv
  try rfl
theorem node4063_eq : Flapjack.WordAlloc.removeDeadStructural input4063 value1190 value1 value2 = (output4063, value1832, value1) := by
  rw [input4063_def, output4063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2373_eq]
  try dsimp only
  rw [node4062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4063 input2372)).val
theorem input4064_def : input4064 = (.seq input4063 input2372) := by
  unfold input4064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4063 output2372)).val
theorem output4064_def : output4064 = (.seq output4063 output2372) := by
  unfold output4064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4064_skip : Flapjack.WordAlloc.isSkip output4064 = false := by
  rw [output4064_def]
  conv => lhs; cbv
  try rfl
theorem node4064_eq : Flapjack.WordAlloc.removeDeadStructural input4064 value5 value1 value2 = (output4064, value1832, value1) := by
  rw [input4064_def, output4064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2372_eq]
  try dsimp only
  rw [node4063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4064 input2369)).val
theorem input4065_def : input4065 = (.seq input4064 input2369) := by
  unfold input4065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4064 output2369)).val
theorem output4065_def : output4065 = (.seq output4064 output2369) := by
  unfold output4065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4065_skip : Flapjack.WordAlloc.isSkip output4065 = false := by
  rw [output4065_def]
  conv => lhs; cbv
  try rfl
theorem node4065_eq : Flapjack.WordAlloc.removeDeadStructural input4065 value1184 value1 value2 = (output4065, value1832, value1) := by
  rw [input4065_def, output4065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2369_eq]
  try dsimp only
  rw [node4064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4065 input2360)).val
theorem input4066_def : input4066 = (.seq input4065 input2360) := by
  unfold input4066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4065)).val
theorem output4066_def : output4066 = (output4065) := by
  unfold output4066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4066_skip : Flapjack.WordAlloc.isSkip output4066 = false := by
  rw [output4066_def]
  conv => lhs; cbv
  try rfl
theorem node4066_eq : Flapjack.WordAlloc.removeDeadStructural input4066 value1184 value1 value2 = (output4066, value1832, value1) := by
  rw [input4066_def, output4066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2360_eq]
  try dsimp only
  rw [node4065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4066 input2359)).val
theorem input4067_def : input4067 = (.seq input4066 input2359) := by
  unfold input4067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4066 output2359)).val
theorem output4067_def : output4067 = (.seq output4066 output2359) := by
  unfold output4067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4067_skip : Flapjack.WordAlloc.isSkip output4067 = false := by
  rw [output4067_def]
  conv => lhs; cbv
  try rfl
theorem node4067_eq : Flapjack.WordAlloc.removeDeadStructural input4067 value1183 value1 value2 = (output4067, value1832, value1) := by
  rw [input4067_def, output4067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2359_eq]
  try dsimp only
  rw [node4066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4067 input2358)).val
theorem input4068_def : input4068 = (.seq input4067 input2358) := by
  unfold input4068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4067 output2358)).val
theorem output4068_def : output4068 = (.seq output4067 output2358) := by
  unfold output4068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4068_skip : Flapjack.WordAlloc.isSkip output4068 = false := by
  rw [output4068_def]
  conv => lhs; cbv
  try rfl
theorem node4068_eq : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value1832, value1) := by
  rw [input4068_def, output4068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2358_eq]
  try dsimp only
  rw [node4067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4068 input2355)).val
theorem input4069_def : input4069 = (.seq input4068 input2355) := by
  unfold input4069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4068 output2355)).val
theorem output4069_def : output4069 = (.seq output4068 output2355) := by
  unfold output4069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4069_skip : Flapjack.WordAlloc.isSkip output4069 = false := by
  rw [output4069_def]
  conv => lhs; cbv
  try rfl
theorem node4069_eq : Flapjack.WordAlloc.removeDeadStructural input4069 value1177 value1 value2 = (output4069, value1832, value1) := by
  rw [input4069_def, output4069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2355_eq]
  try dsimp only
  rw [node4068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4069 input2346)).val
theorem input4070_def : input4070 = (.seq input4069 input2346) := by
  unfold input4070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4069)).val
theorem output4070_def : output4070 = (output4069) := by
  unfold output4070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4070_skip : Flapjack.WordAlloc.isSkip output4070 = false := by
  rw [output4070_def]
  conv => lhs; cbv
  try rfl
theorem node4070_eq : Flapjack.WordAlloc.removeDeadStructural input4070 value1177 value1 value2 = (output4070, value1832, value1) := by
  rw [input4070_def, output4070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2346_eq]
  try dsimp only
  rw [node4069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4070 input2345)).val
theorem input4071_def : input4071 = (.seq input4070 input2345) := by
  unfold input4071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4070 output2345)).val
theorem output4071_def : output4071 = (.seq output4070 output2345) := by
  unfold output4071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4071_skip : Flapjack.WordAlloc.isSkip output4071 = false := by
  rw [output4071_def]
  conv => lhs; cbv
  try rfl
theorem node4071_eq : Flapjack.WordAlloc.removeDeadStructural input4071 value1176 value1 value2 = (output4071, value1832, value1) := by
  rw [input4071_def, output4071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2345_eq]
  try dsimp only
  rw [node4070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4071 input2344)).val
theorem input4072_def : input4072 = (.seq input4071 input2344) := by
  unfold input4072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4071 output2344)).val
theorem output4072_def : output4072 = (.seq output4071 output2344) := by
  unfold output4072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4072_skip : Flapjack.WordAlloc.isSkip output4072 = false := by
  rw [output4072_def]
  conv => lhs; cbv
  try rfl
theorem node4072_eq : Flapjack.WordAlloc.removeDeadStructural input4072 value5 value1 value2 = (output4072, value1832, value1) := by
  rw [input4072_def, output4072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2344_eq]
  try dsimp only
  rw [node4071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4072 input2341)).val
theorem input4073_def : input4073 = (.seq input4072 input2341) := by
  unfold input4073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4072 output2341)).val
theorem output4073_def : output4073 = (.seq output4072 output2341) := by
  unfold output4073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4073_skip : Flapjack.WordAlloc.isSkip output4073 = false := by
  rw [output4073_def]
  conv => lhs; cbv
  try rfl
theorem node4073_eq : Flapjack.WordAlloc.removeDeadStructural input4073 value1170 value1 value2 = (output4073, value1832, value1) := by
  rw [input4073_def, output4073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2341_eq]
  try dsimp only
  rw [node4072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4073 input2332)).val
theorem input4074_def : input4074 = (.seq input4073 input2332) := by
  unfold input4074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4073)).val
theorem output4074_def : output4074 = (output4073) := by
  unfold output4074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4074_skip : Flapjack.WordAlloc.isSkip output4074 = false := by
  rw [output4074_def]
  conv => lhs; cbv
  try rfl
theorem node4074_eq : Flapjack.WordAlloc.removeDeadStructural input4074 value1170 value1 value2 = (output4074, value1832, value1) := by
  rw [input4074_def, output4074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2332_eq]
  try dsimp only
  rw [node4073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4074 input2331)).val
theorem input4075_def : input4075 = (.seq input4074 input2331) := by
  unfold input4075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4074 output2331)).val
theorem output4075_def : output4075 = (.seq output4074 output2331) := by
  unfold output4075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4075_skip : Flapjack.WordAlloc.isSkip output4075 = false := by
  rw [output4075_def]
  conv => lhs; cbv
  try rfl
theorem node4075_eq : Flapjack.WordAlloc.removeDeadStructural input4075 value1169 value1 value2 = (output4075, value1832, value1) := by
  rw [input4075_def, output4075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2331_eq]
  try dsimp only
  rw [node4074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4075 input2330)).val
theorem input4076_def : input4076 = (.seq input4075 input2330) := by
  unfold input4076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4075 output2330)).val
theorem output4076_def : output4076 = (.seq output4075 output2330) := by
  unfold output4076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4076_skip : Flapjack.WordAlloc.isSkip output4076 = false := by
  rw [output4076_def]
  conv => lhs; cbv
  try rfl
theorem node4076_eq : Flapjack.WordAlloc.removeDeadStructural input4076 value5 value1 value2 = (output4076, value1832, value1) := by
  rw [input4076_def, output4076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2330_eq]
  try dsimp only
  rw [node4075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4076 input2327)).val
theorem input4077_def : input4077 = (.seq input4076 input2327) := by
  unfold input4077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4076 output2327)).val
theorem output4077_def : output4077 = (.seq output4076 output2327) := by
  unfold output4077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4077_skip : Flapjack.WordAlloc.isSkip output4077 = false := by
  rw [output4077_def]
  conv => lhs; cbv
  try rfl
theorem node4077_eq : Flapjack.WordAlloc.removeDeadStructural input4077 value1163 value1 value2 = (output4077, value1832, value1) := by
  rw [input4077_def, output4077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2327_eq]
  try dsimp only
  rw [node4076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4077 input2318)).val
theorem input4078_def : input4078 = (.seq input4077 input2318) := by
  unfold input4078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4077)).val
theorem output4078_def : output4078 = (output4077) := by
  unfold output4078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4078_skip : Flapjack.WordAlloc.isSkip output4078 = false := by
  rw [output4078_def]
  conv => lhs; cbv
  try rfl
theorem node4078_eq : Flapjack.WordAlloc.removeDeadStructural input4078 value1163 value1 value2 = (output4078, value1832, value1) := by
  rw [input4078_def, output4078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2318_eq]
  try dsimp only
  rw [node4077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4078 input2317)).val
theorem input4079_def : input4079 = (.seq input4078 input2317) := by
  unfold input4079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4078 output2317)).val
theorem output4079_def : output4079 = (.seq output4078 output2317) := by
  unfold output4079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4079_skip : Flapjack.WordAlloc.isSkip output4079 = false := by
  rw [output4079_def]
  conv => lhs; cbv
  try rfl
theorem node4079_eq : Flapjack.WordAlloc.removeDeadStructural input4079 value1162 value1 value2 = (output4079, value1832, value1) := by
  rw [input4079_def, output4079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2317_eq]
  try dsimp only
  rw [node4078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4079 input2316)).val
theorem input4080_def : input4080 = (.seq input4079 input2316) := by
  unfold input4080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4079 output2316)).val
theorem output4080_def : output4080 = (.seq output4079 output2316) := by
  unfold output4080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4080_skip : Flapjack.WordAlloc.isSkip output4080 = false := by
  rw [output4080_def]
  conv => lhs; cbv
  try rfl
theorem node4080_eq : Flapjack.WordAlloc.removeDeadStructural input4080 value5 value1 value2 = (output4080, value1832, value1) := by
  rw [input4080_def, output4080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2316_eq]
  try dsimp only
  rw [node4079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4080 input2313)).val
theorem input4081_def : input4081 = (.seq input4080 input2313) := by
  unfold input4081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4080 output2313)).val
theorem output4081_def : output4081 = (.seq output4080 output2313) := by
  unfold output4081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4081_skip : Flapjack.WordAlloc.isSkip output4081 = false := by
  rw [output4081_def]
  conv => lhs; cbv
  try rfl
theorem node4081_eq : Flapjack.WordAlloc.removeDeadStructural input4081 value1156 value1 value2 = (output4081, value1832, value1) := by
  rw [input4081_def, output4081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2313_eq]
  try dsimp only
  rw [node4080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4081 input2304)).val
theorem input4082_def : input4082 = (.seq input4081 input2304) := by
  unfold input4082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4081)).val
theorem output4082_def : output4082 = (output4081) := by
  unfold output4082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4082_skip : Flapjack.WordAlloc.isSkip output4082 = false := by
  rw [output4082_def]
  conv => lhs; cbv
  try rfl
theorem node4082_eq : Flapjack.WordAlloc.removeDeadStructural input4082 value1156 value1 value2 = (output4082, value1832, value1) := by
  rw [input4082_def, output4082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2304_eq]
  try dsimp only
  rw [node4081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4082 input2303)).val
theorem input4083_def : input4083 = (.seq input4082 input2303) := by
  unfold input4083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4082 output2303)).val
theorem output4083_def : output4083 = (.seq output4082 output2303) := by
  unfold output4083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4083_skip : Flapjack.WordAlloc.isSkip output4083 = false := by
  rw [output4083_def]
  conv => lhs; cbv
  try rfl
theorem node4083_eq : Flapjack.WordAlloc.removeDeadStructural input4083 value1155 value1 value2 = (output4083, value1832, value1) := by
  rw [input4083_def, output4083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2303_eq]
  try dsimp only
  rw [node4082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4083 input2302)).val
theorem input4084_def : input4084 = (.seq input4083 input2302) := by
  unfold input4084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4083 output2302)).val
theorem output4084_def : output4084 = (.seq output4083 output2302) := by
  unfold output4084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4084_skip : Flapjack.WordAlloc.isSkip output4084 = false := by
  rw [output4084_def]
  conv => lhs; cbv
  try rfl
theorem node4084_eq : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value1832, value1) := by
  rw [input4084_def, output4084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2302_eq]
  try dsimp only
  rw [node4083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4084 input2299)).val
theorem input4085_def : input4085 = (.seq input4084 input2299) := by
  unfold input4085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4084 output2299)).val
theorem output4085_def : output4085 = (.seq output4084 output2299) := by
  unfold output4085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4085_skip : Flapjack.WordAlloc.isSkip output4085 = false := by
  rw [output4085_def]
  conv => lhs; cbv
  try rfl
theorem node4085_eq : Flapjack.WordAlloc.removeDeadStructural input4085 value1149 value1 value2 = (output4085, value1832, value1) := by
  rw [input4085_def, output4085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2299_eq]
  try dsimp only
  rw [node4084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4085 input2290)).val
theorem input4086_def : input4086 = (.seq input4085 input2290) := by
  unfold input4086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4085)).val
theorem output4086_def : output4086 = (output4085) := by
  unfold output4086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4086_skip : Flapjack.WordAlloc.isSkip output4086 = false := by
  rw [output4086_def]
  conv => lhs; cbv
  try rfl
theorem node4086_eq : Flapjack.WordAlloc.removeDeadStructural input4086 value1149 value1 value2 = (output4086, value1832, value1) := by
  rw [input4086_def, output4086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2290_eq]
  try dsimp only
  rw [node4085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4086 input2289)).val
theorem input4087_def : input4087 = (.seq input4086 input2289) := by
  unfold input4087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4086 output2289)).val
theorem output4087_def : output4087 = (.seq output4086 output2289) := by
  unfold output4087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4087_skip : Flapjack.WordAlloc.isSkip output4087 = false := by
  rw [output4087_def]
  conv => lhs; cbv
  try rfl
theorem node4087_eq : Flapjack.WordAlloc.removeDeadStructural input4087 value1148 value1 value2 = (output4087, value1832, value1) := by
  rw [input4087_def, output4087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2289_eq]
  try dsimp only
  rw [node4086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4087 input2288)).val
theorem input4088_def : input4088 = (.seq input4087 input2288) := by
  unfold input4088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4087 output2288)).val
theorem output4088_def : output4088 = (.seq output4087 output2288) := by
  unfold output4088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4088_skip : Flapjack.WordAlloc.isSkip output4088 = false := by
  rw [output4088_def]
  conv => lhs; cbv
  try rfl
theorem node4088_eq : Flapjack.WordAlloc.removeDeadStructural input4088 value5 value1 value2 = (output4088, value1832, value1) := by
  rw [input4088_def, output4088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2288_eq]
  try dsimp only
  rw [node4087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4088 input2285)).val
theorem input4089_def : input4089 = (.seq input4088 input2285) := by
  unfold input4089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4088 output2285)).val
theorem output4089_def : output4089 = (.seq output4088 output2285) := by
  unfold output4089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4089_skip : Flapjack.WordAlloc.isSkip output4089 = false := by
  rw [output4089_def]
  conv => lhs; cbv
  try rfl
theorem node4089_eq : Flapjack.WordAlloc.removeDeadStructural input4089 value1142 value1 value2 = (output4089, value1832, value1) := by
  rw [input4089_def, output4089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2285_eq]
  try dsimp only
  rw [node4088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4089 input2276)).val
theorem input4090_def : input4090 = (.seq input4089 input2276) := by
  unfold input4090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4089)).val
theorem output4090_def : output4090 = (output4089) := by
  unfold output4090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4090_skip : Flapjack.WordAlloc.isSkip output4090 = false := by
  rw [output4090_def]
  conv => lhs; cbv
  try rfl
theorem node4090_eq : Flapjack.WordAlloc.removeDeadStructural input4090 value1142 value1 value2 = (output4090, value1832, value1) := by
  rw [input4090_def, output4090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2276_eq]
  try dsimp only
  rw [node4089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4090 input2275)).val
theorem input4091_def : input4091 = (.seq input4090 input2275) := by
  unfold input4091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4090 output2275)).val
theorem output4091_def : output4091 = (.seq output4090 output2275) := by
  unfold output4091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4091_skip : Flapjack.WordAlloc.isSkip output4091 = false := by
  rw [output4091_def]
  conv => lhs; cbv
  try rfl
theorem node4091_eq : Flapjack.WordAlloc.removeDeadStructural input4091 value1141 value1 value2 = (output4091, value1832, value1) := by
  rw [input4091_def, output4091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2275_eq]
  try dsimp only
  rw [node4090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4091 input2274)).val
theorem input4092_def : input4092 = (.seq input4091 input2274) := by
  unfold input4092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4091 output2274)).val
theorem output4092_def : output4092 = (.seq output4091 output2274) := by
  unfold output4092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4092_skip : Flapjack.WordAlloc.isSkip output4092 = false := by
  rw [output4092_def]
  conv => lhs; cbv
  try rfl
theorem node4092_eq : Flapjack.WordAlloc.removeDeadStructural input4092 value5 value1 value2 = (output4092, value1832, value1) := by
  rw [input4092_def, output4092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2274_eq]
  try dsimp only
  rw [node4091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4092 input2271)).val
theorem input4093_def : input4093 = (.seq input4092 input2271) := by
  unfold input4093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4092 output2271)).val
theorem output4093_def : output4093 = (.seq output4092 output2271) := by
  unfold output4093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4093_skip : Flapjack.WordAlloc.isSkip output4093 = false := by
  rw [output4093_def]
  conv => lhs; cbv
  try rfl
theorem node4093_eq : Flapjack.WordAlloc.removeDeadStructural input4093 value1135 value1 value2 = (output4093, value1832, value1) := by
  rw [input4093_def, output4093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2271_eq]
  try dsimp only
  rw [node4092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4093 input2262)).val
theorem input4094_def : input4094 = (.seq input4093 input2262) := by
  unfold input4094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4093)).val
theorem output4094_def : output4094 = (output4093) := by
  unfold output4094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4094_skip : Flapjack.WordAlloc.isSkip output4094 = false := by
  rw [output4094_def]
  conv => lhs; cbv
  try rfl
theorem node4094_eq : Flapjack.WordAlloc.removeDeadStructural input4094 value1135 value1 value2 = (output4094, value1832, value1) := by
  rw [input4094_def, output4094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2262_eq]
  try dsimp only
  rw [node4093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4094 input2261)).val
theorem input4095_def : input4095 = (.seq input4094 input2261) := by
  unfold input4095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4094 output2261)).val
theorem output4095_def : output4095 = (.seq output4094 output2261) := by
  unfold output4095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4095_skip : Flapjack.WordAlloc.isSkip output4095 = false := by
  rw [output4095_def]
  conv => lhs; cbv
  try rfl
theorem node4095_eq : Flapjack.WordAlloc.removeDeadStructural input4095 value1134 value1 value2 = (output4095, value1832, value1) := by
  rw [input4095_def, output4095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2261_eq]
  try dsimp only
  rw [node4094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node4095_eq
end InitECandidate.Proofs.DeadStages240
