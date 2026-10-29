import InitECandidate.Proofs.DeadStages713.Chunk057
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input14848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14847 input10224)).val
theorem input14848_def : input14848 = (.seq input14847 input10224) := by
  unfold input14848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14847 output10224)).val
theorem output14848_def : output14848 = (.seq output14847 output10224) := by
  unfold output14848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14848_skip : Flapjack.WordAlloc.isSkip output14848 = false := by
  rw [output14848_def]
  conv => lhs; cbv
  try rfl
theorem node14848_eq : Flapjack.WordAlloc.removeDeadStructural input14848 value5 value1 value2 = (output14848, value6896, value1) := by
  rw [input14848_def, output14848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10224_eq]
  try dsimp only
  rw [node14847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14848 input10221)).val
theorem input14849_def : input14849 = (.seq input14848 input10221) := by
  unfold input14849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14848 output10221)).val
theorem output14849_def : output14849 = (.seq output14848 output10221) := by
  unfold output14849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14849_skip : Flapjack.WordAlloc.isSkip output14849 = false := by
  rw [output14849_def]
  conv => lhs; cbv
  try rfl
theorem node14849_eq : Flapjack.WordAlloc.removeDeadStructural input14849 value5110 value1 value2 = (output14849, value6896, value1) := by
  rw [input14849_def, output14849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10221_eq]
  try dsimp only
  rw [node14848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14849 input10212)).val
theorem input14850_def : input14850 = (.seq input14849 input10212) := by
  unfold input14850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14849)).val
theorem output14850_def : output14850 = (output14849) := by
  unfold output14850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14850_skip : Flapjack.WordAlloc.isSkip output14850 = false := by
  rw [output14850_def]
  conv => lhs; cbv
  try rfl
theorem node14850_eq : Flapjack.WordAlloc.removeDeadStructural input14850 value5110 value1 value2 = (output14850, value6896, value1) := by
  rw [input14850_def, output14850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10212_eq]
  try dsimp only
  rw [node14849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14850 input10211)).val
theorem input14851_def : input14851 = (.seq input14850 input10211) := by
  unfold input14851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14850 output10211)).val
theorem output14851_def : output14851 = (.seq output14850 output10211) := by
  unfold output14851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14851_skip : Flapjack.WordAlloc.isSkip output14851 = false := by
  rw [output14851_def]
  conv => lhs; cbv
  try rfl
theorem node14851_eq : Flapjack.WordAlloc.removeDeadStructural input14851 value5109 value1 value2 = (output14851, value6896, value1) := by
  rw [input14851_def, output14851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10211_eq]
  try dsimp only
  rw [node14850_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14851 input10210)).val
theorem input14852_def : input14852 = (.seq input14851 input10210) := by
  unfold input14852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14851 output10210)).val
theorem output14852_def : output14852 = (.seq output14851 output10210) := by
  unfold output14852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14852_skip : Flapjack.WordAlloc.isSkip output14852 = false := by
  rw [output14852_def]
  conv => lhs; cbv
  try rfl
theorem node14852_eq : Flapjack.WordAlloc.removeDeadStructural input14852 value5 value1 value2 = (output14852, value6896, value1) := by
  rw [input14852_def, output14852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10210_eq]
  try dsimp only
  rw [node14851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14852 input10207)).val
theorem input14853_def : input14853 = (.seq input14852 input10207) := by
  unfold input14853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14852 output10207)).val
theorem output14853_def : output14853 = (.seq output14852 output10207) := by
  unfold output14853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14853_skip : Flapjack.WordAlloc.isSkip output14853 = false := by
  rw [output14853_def]
  conv => lhs; cbv
  try rfl
theorem node14853_eq : Flapjack.WordAlloc.removeDeadStructural input14853 value5103 value1 value2 = (output14853, value6896, value1) := by
  rw [input14853_def, output14853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10207_eq]
  try dsimp only
  rw [node14852_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14853 input10198)).val
theorem input14854_def : input14854 = (.seq input14853 input10198) := by
  unfold input14854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14853)).val
theorem output14854_def : output14854 = (output14853) := by
  unfold output14854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14854_skip : Flapjack.WordAlloc.isSkip output14854 = false := by
  rw [output14854_def]
  conv => lhs; cbv
  try rfl
theorem node14854_eq : Flapjack.WordAlloc.removeDeadStructural input14854 value5103 value1 value2 = (output14854, value6896, value1) := by
  rw [input14854_def, output14854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10198_eq]
  try dsimp only
  rw [node14853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14854 input10197)).val
theorem input14855_def : input14855 = (.seq input14854 input10197) := by
  unfold input14855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14854 output10197)).val
theorem output14855_def : output14855 = (.seq output14854 output10197) := by
  unfold output14855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14855_skip : Flapjack.WordAlloc.isSkip output14855 = false := by
  rw [output14855_def]
  conv => lhs; cbv
  try rfl
theorem node14855_eq : Flapjack.WordAlloc.removeDeadStructural input14855 value5102 value1 value2 = (output14855, value6896, value1) := by
  rw [input14855_def, output14855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10197_eq]
  try dsimp only
  rw [node14854_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14855 input10196)).val
theorem input14856_def : input14856 = (.seq input14855 input10196) := by
  unfold input14856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14855 output10196)).val
theorem output14856_def : output14856 = (.seq output14855 output10196) := by
  unfold output14856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14856_skip : Flapjack.WordAlloc.isSkip output14856 = false := by
  rw [output14856_def]
  conv => lhs; cbv
  try rfl
theorem node14856_eq : Flapjack.WordAlloc.removeDeadStructural input14856 value5 value1 value2 = (output14856, value6896, value1) := by
  rw [input14856_def, output14856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10196_eq]
  try dsimp only
  rw [node14855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14856 input10193)).val
theorem input14857_def : input14857 = (.seq input14856 input10193) := by
  unfold input14857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14856 output10193)).val
theorem output14857_def : output14857 = (.seq output14856 output10193) := by
  unfold output14857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14857_skip : Flapjack.WordAlloc.isSkip output14857 = false := by
  rw [output14857_def]
  conv => lhs; cbv
  try rfl
theorem node14857_eq : Flapjack.WordAlloc.removeDeadStructural input14857 value5096 value1 value2 = (output14857, value6896, value1) := by
  rw [input14857_def, output14857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10193_eq]
  try dsimp only
  rw [node14856_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14857 input10184)).val
theorem input14858_def : input14858 = (.seq input14857 input10184) := by
  unfold input14858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14857)).val
theorem output14858_def : output14858 = (output14857) := by
  unfold output14858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14858_skip : Flapjack.WordAlloc.isSkip output14858 = false := by
  rw [output14858_def]
  conv => lhs; cbv
  try rfl
theorem node14858_eq : Flapjack.WordAlloc.removeDeadStructural input14858 value5096 value1 value2 = (output14858, value6896, value1) := by
  rw [input14858_def, output14858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10184_eq]
  try dsimp only
  rw [node14857_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14858 input10183)).val
theorem input14859_def : input14859 = (.seq input14858 input10183) := by
  unfold input14859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14858 output10183)).val
theorem output14859_def : output14859 = (.seq output14858 output10183) := by
  unfold output14859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14859_skip : Flapjack.WordAlloc.isSkip output14859 = false := by
  rw [output14859_def]
  conv => lhs; cbv
  try rfl
theorem node14859_eq : Flapjack.WordAlloc.removeDeadStructural input14859 value5095 value1 value2 = (output14859, value6896, value1) := by
  rw [input14859_def, output14859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10183_eq]
  try dsimp only
  rw [node14858_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14859 input10182)).val
theorem input14860_def : input14860 = (.seq input14859 input10182) := by
  unfold input14860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14859 output10182)).val
theorem output14860_def : output14860 = (.seq output14859 output10182) := by
  unfold output14860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14860_skip : Flapjack.WordAlloc.isSkip output14860 = false := by
  rw [output14860_def]
  conv => lhs; cbv
  try rfl
theorem node14860_eq : Flapjack.WordAlloc.removeDeadStructural input14860 value5 value1 value2 = (output14860, value6896, value1) := by
  rw [input14860_def, output14860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10182_eq]
  try dsimp only
  rw [node14859_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14860 input10179)).val
theorem input14861_def : input14861 = (.seq input14860 input10179) := by
  unfold input14861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14860 output10179)).val
theorem output14861_def : output14861 = (.seq output14860 output10179) := by
  unfold output14861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14861_skip : Flapjack.WordAlloc.isSkip output14861 = false := by
  rw [output14861_def]
  conv => lhs; cbv
  try rfl
theorem node14861_eq : Flapjack.WordAlloc.removeDeadStructural input14861 value5088 value1 value2 = (output14861, value6896, value1) := by
  rw [input14861_def, output14861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10179_eq]
  try dsimp only
  rw [node14860_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14861 input10168)).val
theorem input14862_def : input14862 = (.seq input14861 input10168) := by
  unfold input14862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14861)).val
theorem output14862_def : output14862 = (output14861) := by
  unfold output14862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14862_skip : Flapjack.WordAlloc.isSkip output14862 = false := by
  rw [output14862_def]
  conv => lhs; cbv
  try rfl
theorem node14862_eq : Flapjack.WordAlloc.removeDeadStructural input14862 value5088 value1 value2 = (output14862, value6896, value1) := by
  rw [input14862_def, output14862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10168_eq]
  try dsimp only
  rw [node14861_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14862 input10167)).val
theorem input14863_def : input14863 = (.seq input14862 input10167) := by
  unfold input14863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14862 output10167)).val
theorem output14863_def : output14863 = (.seq output14862 output10167) := by
  unfold output14863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14863_skip : Flapjack.WordAlloc.isSkip output14863 = false := by
  rw [output14863_def]
  conv => lhs; cbv
  try rfl
theorem node14863_eq : Flapjack.WordAlloc.removeDeadStructural input14863 value5087 value1 value2 = (output14863, value6896, value1) := by
  rw [input14863_def, output14863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10167_eq]
  try dsimp only
  rw [node14862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14863 input10166)).val
theorem input14864_def : input14864 = (.seq input14863 input10166) := by
  unfold input14864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14863 output10166)).val
theorem output14864_def : output14864 = (.seq output14863 output10166) := by
  unfold output14864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14864_skip : Flapjack.WordAlloc.isSkip output14864 = false := by
  rw [output14864_def]
  conv => lhs; cbv
  try rfl
theorem node14864_eq : Flapjack.WordAlloc.removeDeadStructural input14864 value5 value1 value2 = (output14864, value6896, value1) := by
  rw [input14864_def, output14864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10166_eq]
  try dsimp only
  rw [node14863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14864 input10163)).val
theorem input14865_def : input14865 = (.seq input14864 input10163) := by
  unfold input14865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14864 output10163)).val
theorem output14865_def : output14865 = (.seq output14864 output10163) := by
  unfold output14865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14865_skip : Flapjack.WordAlloc.isSkip output14865 = false := by
  rw [output14865_def]
  conv => lhs; cbv
  try rfl
theorem node14865_eq : Flapjack.WordAlloc.removeDeadStructural input14865 value5080 value1 value2 = (output14865, value6896, value1) := by
  rw [input14865_def, output14865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10163_eq]
  try dsimp only
  rw [node14864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14865 input10152)).val
theorem input14866_def : input14866 = (.seq input14865 input10152) := by
  unfold input14866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14865)).val
theorem output14866_def : output14866 = (output14865) := by
  unfold output14866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14866_skip : Flapjack.WordAlloc.isSkip output14866 = false := by
  rw [output14866_def]
  conv => lhs; cbv
  try rfl
theorem node14866_eq : Flapjack.WordAlloc.removeDeadStructural input14866 value5080 value1 value2 = (output14866, value6896, value1) := by
  rw [input14866_def, output14866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10152_eq]
  try dsimp only
  rw [node14865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14866 input10151)).val
theorem input14867_def : input14867 = (.seq input14866 input10151) := by
  unfold input14867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14866 output10151)).val
theorem output14867_def : output14867 = (.seq output14866 output10151) := by
  unfold output14867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14867_skip : Flapjack.WordAlloc.isSkip output14867 = false := by
  rw [output14867_def]
  conv => lhs; cbv
  try rfl
theorem node14867_eq : Flapjack.WordAlloc.removeDeadStructural input14867 value5079 value1 value2 = (output14867, value6896, value1) := by
  rw [input14867_def, output14867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10151_eq]
  try dsimp only
  rw [node14866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14867 input10150)).val
theorem input14868_def : input14868 = (.seq input14867 input10150) := by
  unfold input14868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14867 output10150)).val
theorem output14868_def : output14868 = (.seq output14867 output10150) := by
  unfold output14868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14868_skip : Flapjack.WordAlloc.isSkip output14868 = false := by
  rw [output14868_def]
  conv => lhs; cbv
  try rfl
theorem node14868_eq : Flapjack.WordAlloc.removeDeadStructural input14868 value5 value1 value2 = (output14868, value6896, value1) := by
  rw [input14868_def, output14868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10150_eq]
  try dsimp only
  rw [node14867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14868 input10147)).val
theorem input14869_def : input14869 = (.seq input14868 input10147) := by
  unfold input14869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14868 output10147)).val
theorem output14869_def : output14869 = (.seq output14868 output10147) := by
  unfold output14869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14869_skip : Flapjack.WordAlloc.isSkip output14869 = false := by
  rw [output14869_def]
  conv => lhs; cbv
  try rfl
theorem node14869_eq : Flapjack.WordAlloc.removeDeadStructural input14869 value5072 value1 value2 = (output14869, value6896, value1) := by
  rw [input14869_def, output14869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10147_eq]
  try dsimp only
  rw [node14868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14869 input10136)).val
theorem input14870_def : input14870 = (.seq input14869 input10136) := by
  unfold input14870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14869)).val
theorem output14870_def : output14870 = (output14869) := by
  unfold output14870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14870_skip : Flapjack.WordAlloc.isSkip output14870 = false := by
  rw [output14870_def]
  conv => lhs; cbv
  try rfl
theorem node14870_eq : Flapjack.WordAlloc.removeDeadStructural input14870 value5072 value1 value2 = (output14870, value6896, value1) := by
  rw [input14870_def, output14870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10136_eq]
  try dsimp only
  rw [node14869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14870 input10135)).val
theorem input14871_def : input14871 = (.seq input14870 input10135) := by
  unfold input14871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14870 output10135)).val
theorem output14871_def : output14871 = (.seq output14870 output10135) := by
  unfold output14871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14871_skip : Flapjack.WordAlloc.isSkip output14871 = false := by
  rw [output14871_def]
  conv => lhs; cbv
  try rfl
theorem node14871_eq : Flapjack.WordAlloc.removeDeadStructural input14871 value5071 value1 value2 = (output14871, value6896, value1) := by
  rw [input14871_def, output14871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10135_eq]
  try dsimp only
  rw [node14870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14871 input10134)).val
theorem input14872_def : input14872 = (.seq input14871 input10134) := by
  unfold input14872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14871 output10134)).val
theorem output14872_def : output14872 = (.seq output14871 output10134) := by
  unfold output14872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14872_skip : Flapjack.WordAlloc.isSkip output14872 = false := by
  rw [output14872_def]
  conv => lhs; cbv
  try rfl
theorem node14872_eq : Flapjack.WordAlloc.removeDeadStructural input14872 value5 value1 value2 = (output14872, value6896, value1) := by
  rw [input14872_def, output14872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10134_eq]
  try dsimp only
  rw [node14871_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14872 input10131)).val
theorem input14873_def : input14873 = (.seq input14872 input10131) := by
  unfold input14873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14872 output10131)).val
theorem output14873_def : output14873 = (.seq output14872 output10131) := by
  unfold output14873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14873_skip : Flapjack.WordAlloc.isSkip output14873 = false := by
  rw [output14873_def]
  conv => lhs; cbv
  try rfl
theorem node14873_eq : Flapjack.WordAlloc.removeDeadStructural input14873 value5064 value1 value2 = (output14873, value6896, value1) := by
  rw [input14873_def, output14873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10131_eq]
  try dsimp only
  rw [node14872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14873 input10120)).val
theorem input14874_def : input14874 = (.seq input14873 input10120) := by
  unfold input14874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14873)).val
theorem output14874_def : output14874 = (output14873) := by
  unfold output14874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14874_skip : Flapjack.WordAlloc.isSkip output14874 = false := by
  rw [output14874_def]
  conv => lhs; cbv
  try rfl
theorem node14874_eq : Flapjack.WordAlloc.removeDeadStructural input14874 value5064 value1 value2 = (output14874, value6896, value1) := by
  rw [input14874_def, output14874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10120_eq]
  try dsimp only
  rw [node14873_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14874 input10119)).val
theorem input14875_def : input14875 = (.seq input14874 input10119) := by
  unfold input14875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14874 output10119)).val
theorem output14875_def : output14875 = (.seq output14874 output10119) := by
  unfold output14875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14875_skip : Flapjack.WordAlloc.isSkip output14875 = false := by
  rw [output14875_def]
  conv => lhs; cbv
  try rfl
theorem node14875_eq : Flapjack.WordAlloc.removeDeadStructural input14875 value5063 value1 value2 = (output14875, value6896, value1) := by
  rw [input14875_def, output14875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10119_eq]
  try dsimp only
  rw [node14874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14875 input10118)).val
theorem input14876_def : input14876 = (.seq input14875 input10118) := by
  unfold input14876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14875 output10118)).val
theorem output14876_def : output14876 = (.seq output14875 output10118) := by
  unfold output14876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14876_skip : Flapjack.WordAlloc.isSkip output14876 = false := by
  rw [output14876_def]
  conv => lhs; cbv
  try rfl
theorem node14876_eq : Flapjack.WordAlloc.removeDeadStructural input14876 value5 value1 value2 = (output14876, value6896, value1) := by
  rw [input14876_def, output14876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10118_eq]
  try dsimp only
  rw [node14875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14876 input10115)).val
theorem input14877_def : input14877 = (.seq input14876 input10115) := by
  unfold input14877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14876 output10115)).val
theorem output14877_def : output14877 = (.seq output14876 output10115) := by
  unfold output14877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14877_skip : Flapjack.WordAlloc.isSkip output14877 = false := by
  rw [output14877_def]
  conv => lhs; cbv
  try rfl
theorem node14877_eq : Flapjack.WordAlloc.removeDeadStructural input14877 value5056 value1 value2 = (output14877, value6896, value1) := by
  rw [input14877_def, output14877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10115_eq]
  try dsimp only
  rw [node14876_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14877 input10104)).val
theorem input14878_def : input14878 = (.seq input14877 input10104) := by
  unfold input14878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14877)).val
theorem output14878_def : output14878 = (output14877) := by
  unfold output14878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14878_skip : Flapjack.WordAlloc.isSkip output14878 = false := by
  rw [output14878_def]
  conv => lhs; cbv
  try rfl
theorem node14878_eq : Flapjack.WordAlloc.removeDeadStructural input14878 value5056 value1 value2 = (output14878, value6896, value1) := by
  rw [input14878_def, output14878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10104_eq]
  try dsimp only
  rw [node14877_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14878 input10103)).val
theorem input14879_def : input14879 = (.seq input14878 input10103) := by
  unfold input14879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14878 output10103)).val
theorem output14879_def : output14879 = (.seq output14878 output10103) := by
  unfold output14879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14879_skip : Flapjack.WordAlloc.isSkip output14879 = false := by
  rw [output14879_def]
  conv => lhs; cbv
  try rfl
theorem node14879_eq : Flapjack.WordAlloc.removeDeadStructural input14879 value5055 value1 value2 = (output14879, value6896, value1) := by
  rw [input14879_def, output14879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10103_eq]
  try dsimp only
  rw [node14878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14879 input10102)).val
theorem input14880_def : input14880 = (.seq input14879 input10102) := by
  unfold input14880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14879 output10102)).val
theorem output14880_def : output14880 = (.seq output14879 output10102) := by
  unfold output14880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14880_skip : Flapjack.WordAlloc.isSkip output14880 = false := by
  rw [output14880_def]
  conv => lhs; cbv
  try rfl
theorem node14880_eq : Flapjack.WordAlloc.removeDeadStructural input14880 value5 value1 value2 = (output14880, value6896, value1) := by
  rw [input14880_def, output14880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10102_eq]
  try dsimp only
  rw [node14879_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14880 input10099)).val
theorem input14881_def : input14881 = (.seq input14880 input10099) := by
  unfold input14881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14880 output10099)).val
theorem output14881_def : output14881 = (.seq output14880 output10099) := by
  unfold output14881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14881_skip : Flapjack.WordAlloc.isSkip output14881 = false := by
  rw [output14881_def]
  conv => lhs; cbv
  try rfl
theorem node14881_eq : Flapjack.WordAlloc.removeDeadStructural input14881 value5048 value1 value2 = (output14881, value6896, value1) := by
  rw [input14881_def, output14881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10099_eq]
  try dsimp only
  rw [node14880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14881 input10088)).val
theorem input14882_def : input14882 = (.seq input14881 input10088) := by
  unfold input14882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14881)).val
theorem output14882_def : output14882 = (output14881) := by
  unfold output14882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14882_skip : Flapjack.WordAlloc.isSkip output14882 = false := by
  rw [output14882_def]
  conv => lhs; cbv
  try rfl
theorem node14882_eq : Flapjack.WordAlloc.removeDeadStructural input14882 value5048 value1 value2 = (output14882, value6896, value1) := by
  rw [input14882_def, output14882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10088_eq]
  try dsimp only
  rw [node14881_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14882 input10087)).val
theorem input14883_def : input14883 = (.seq input14882 input10087) := by
  unfold input14883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14882 output10087)).val
theorem output14883_def : output14883 = (.seq output14882 output10087) := by
  unfold output14883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14883_skip : Flapjack.WordAlloc.isSkip output14883 = false := by
  rw [output14883_def]
  conv => lhs; cbv
  try rfl
theorem node14883_eq : Flapjack.WordAlloc.removeDeadStructural input14883 value5047 value1 value2 = (output14883, value6896, value1) := by
  rw [input14883_def, output14883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10087_eq]
  try dsimp only
  rw [node14882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14883 input10086)).val
theorem input14884_def : input14884 = (.seq input14883 input10086) := by
  unfold input14884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14883 output10086)).val
theorem output14884_def : output14884 = (.seq output14883 output10086) := by
  unfold output14884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14884_skip : Flapjack.WordAlloc.isSkip output14884 = false := by
  rw [output14884_def]
  conv => lhs; cbv
  try rfl
theorem node14884_eq : Flapjack.WordAlloc.removeDeadStructural input14884 value5 value1 value2 = (output14884, value6896, value1) := by
  rw [input14884_def, output14884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10086_eq]
  try dsimp only
  rw [node14883_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14884 input10083)).val
theorem input14885_def : input14885 = (.seq input14884 input10083) := by
  unfold input14885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14884 output10083)).val
theorem output14885_def : output14885 = (.seq output14884 output10083) := by
  unfold output14885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14885_skip : Flapjack.WordAlloc.isSkip output14885 = false := by
  rw [output14885_def]
  conv => lhs; cbv
  try rfl
theorem node14885_eq : Flapjack.WordAlloc.removeDeadStructural input14885 value5040 value1 value2 = (output14885, value6896, value1) := by
  rw [input14885_def, output14885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10083_eq]
  try dsimp only
  rw [node14884_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14885 input10072)).val
theorem input14886_def : input14886 = (.seq input14885 input10072) := by
  unfold input14886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14885)).val
theorem output14886_def : output14886 = (output14885) := by
  unfold output14886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14886_skip : Flapjack.WordAlloc.isSkip output14886 = false := by
  rw [output14886_def]
  conv => lhs; cbv
  try rfl
theorem node14886_eq : Flapjack.WordAlloc.removeDeadStructural input14886 value5040 value1 value2 = (output14886, value6896, value1) := by
  rw [input14886_def, output14886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10072_eq]
  try dsimp only
  rw [node14885_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14886 input10071)).val
theorem input14887_def : input14887 = (.seq input14886 input10071) := by
  unfold input14887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14886 output10071)).val
theorem output14887_def : output14887 = (.seq output14886 output10071) := by
  unfold output14887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14887_skip : Flapjack.WordAlloc.isSkip output14887 = false := by
  rw [output14887_def]
  conv => lhs; cbv
  try rfl
theorem node14887_eq : Flapjack.WordAlloc.removeDeadStructural input14887 value5039 value1 value2 = (output14887, value6896, value1) := by
  rw [input14887_def, output14887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10071_eq]
  try dsimp only
  rw [node14886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14887 input10070)).val
theorem input14888_def : input14888 = (.seq input14887 input10070) := by
  unfold input14888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14887 output10070)).val
theorem output14888_def : output14888 = (.seq output14887 output10070) := by
  unfold output14888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14888_skip : Flapjack.WordAlloc.isSkip output14888 = false := by
  rw [output14888_def]
  conv => lhs; cbv
  try rfl
theorem node14888_eq : Flapjack.WordAlloc.removeDeadStructural input14888 value5 value1 value2 = (output14888, value6896, value1) := by
  rw [input14888_def, output14888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10070_eq]
  try dsimp only
  rw [node14887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14888 input10067)).val
theorem input14889_def : input14889 = (.seq input14888 input10067) := by
  unfold input14889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14888 output10067)).val
theorem output14889_def : output14889 = (.seq output14888 output10067) := by
  unfold output14889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14889_skip : Flapjack.WordAlloc.isSkip output14889 = false := by
  rw [output14889_def]
  conv => lhs; cbv
  try rfl
theorem node14889_eq : Flapjack.WordAlloc.removeDeadStructural input14889 value5032 value1 value2 = (output14889, value6896, value1) := by
  rw [input14889_def, output14889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10067_eq]
  try dsimp only
  rw [node14888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14889 input10056)).val
theorem input14890_def : input14890 = (.seq input14889 input10056) := by
  unfold input14890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14889)).val
theorem output14890_def : output14890 = (output14889) := by
  unfold output14890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14890_skip : Flapjack.WordAlloc.isSkip output14890 = false := by
  rw [output14890_def]
  conv => lhs; cbv
  try rfl
theorem node14890_eq : Flapjack.WordAlloc.removeDeadStructural input14890 value5032 value1 value2 = (output14890, value6896, value1) := by
  rw [input14890_def, output14890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10056_eq]
  try dsimp only
  rw [node14889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14890 input10055)).val
theorem input14891_def : input14891 = (.seq input14890 input10055) := by
  unfold input14891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14890 output10055)).val
theorem output14891_def : output14891 = (.seq output14890 output10055) := by
  unfold output14891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14891_skip : Flapjack.WordAlloc.isSkip output14891 = false := by
  rw [output14891_def]
  conv => lhs; cbv
  try rfl
theorem node14891_eq : Flapjack.WordAlloc.removeDeadStructural input14891 value5031 value1 value2 = (output14891, value6896, value1) := by
  rw [input14891_def, output14891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10055_eq]
  try dsimp only
  rw [node14890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14891 input10054)).val
theorem input14892_def : input14892 = (.seq input14891 input10054) := by
  unfold input14892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14891 output10054)).val
theorem output14892_def : output14892 = (.seq output14891 output10054) := by
  unfold output14892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14892_skip : Flapjack.WordAlloc.isSkip output14892 = false := by
  rw [output14892_def]
  conv => lhs; cbv
  try rfl
theorem node14892_eq : Flapjack.WordAlloc.removeDeadStructural input14892 value5 value1 value2 = (output14892, value6896, value1) := by
  rw [input14892_def, output14892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10054_eq]
  try dsimp only
  rw [node14891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14892 input10051)).val
theorem input14893_def : input14893 = (.seq input14892 input10051) := by
  unfold input14893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14892 output10051)).val
theorem output14893_def : output14893 = (.seq output14892 output10051) := by
  unfold output14893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14893_skip : Flapjack.WordAlloc.isSkip output14893 = false := by
  rw [output14893_def]
  conv => lhs; cbv
  try rfl
theorem node14893_eq : Flapjack.WordAlloc.removeDeadStructural input14893 value5024 value1 value2 = (output14893, value6896, value1) := by
  rw [input14893_def, output14893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10051_eq]
  try dsimp only
  rw [node14892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14893 input10040)).val
theorem input14894_def : input14894 = (.seq input14893 input10040) := by
  unfold input14894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14893)).val
theorem output14894_def : output14894 = (output14893) := by
  unfold output14894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14894_skip : Flapjack.WordAlloc.isSkip output14894 = false := by
  rw [output14894_def]
  conv => lhs; cbv
  try rfl
theorem node14894_eq : Flapjack.WordAlloc.removeDeadStructural input14894 value5024 value1 value2 = (output14894, value6896, value1) := by
  rw [input14894_def, output14894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10040_eq]
  try dsimp only
  rw [node14893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14894 input10039)).val
theorem input14895_def : input14895 = (.seq input14894 input10039) := by
  unfold input14895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14894 output10039)).val
theorem output14895_def : output14895 = (.seq output14894 output10039) := by
  unfold output14895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14895_skip : Flapjack.WordAlloc.isSkip output14895 = false := by
  rw [output14895_def]
  conv => lhs; cbv
  try rfl
theorem node14895_eq : Flapjack.WordAlloc.removeDeadStructural input14895 value5023 value1 value2 = (output14895, value6896, value1) := by
  rw [input14895_def, output14895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10039_eq]
  try dsimp only
  rw [node14894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14895 input10038)).val
theorem input14896_def : input14896 = (.seq input14895 input10038) := by
  unfold input14896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14895 output10038)).val
theorem output14896_def : output14896 = (.seq output14895 output10038) := by
  unfold output14896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14896_skip : Flapjack.WordAlloc.isSkip output14896 = false := by
  rw [output14896_def]
  conv => lhs; cbv
  try rfl
theorem node14896_eq : Flapjack.WordAlloc.removeDeadStructural input14896 value5 value1 value2 = (output14896, value6896, value1) := by
  rw [input14896_def, output14896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10038_eq]
  try dsimp only
  rw [node14895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14896 input10035)).val
theorem input14897_def : input14897 = (.seq input14896 input10035) := by
  unfold input14897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14896 output10035)).val
theorem output14897_def : output14897 = (.seq output14896 output10035) := by
  unfold output14897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14897_skip : Flapjack.WordAlloc.isSkip output14897 = false := by
  rw [output14897_def]
  conv => lhs; cbv
  try rfl
theorem node14897_eq : Flapjack.WordAlloc.removeDeadStructural input14897 value5016 value1 value2 = (output14897, value6896, value1) := by
  rw [input14897_def, output14897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10035_eq]
  try dsimp only
  rw [node14896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14897 input10024)).val
theorem input14898_def : input14898 = (.seq input14897 input10024) := by
  unfold input14898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14897)).val
theorem output14898_def : output14898 = (output14897) := by
  unfold output14898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14898_skip : Flapjack.WordAlloc.isSkip output14898 = false := by
  rw [output14898_def]
  conv => lhs; cbv
  try rfl
theorem node14898_eq : Flapjack.WordAlloc.removeDeadStructural input14898 value5016 value1 value2 = (output14898, value6896, value1) := by
  rw [input14898_def, output14898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10024_eq]
  try dsimp only
  rw [node14897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14898 input10023)).val
theorem input14899_def : input14899 = (.seq input14898 input10023) := by
  unfold input14899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14898 output10023)).val
theorem output14899_def : output14899 = (.seq output14898 output10023) := by
  unfold output14899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14899_skip : Flapjack.WordAlloc.isSkip output14899 = false := by
  rw [output14899_def]
  conv => lhs; cbv
  try rfl
theorem node14899_eq : Flapjack.WordAlloc.removeDeadStructural input14899 value5015 value1 value2 = (output14899, value6896, value1) := by
  rw [input14899_def, output14899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10023_eq]
  try dsimp only
  rw [node14898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14899 input10022)).val
theorem input14900_def : input14900 = (.seq input14899 input10022) := by
  unfold input14900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14899 output10022)).val
theorem output14900_def : output14900 = (.seq output14899 output10022) := by
  unfold output14900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14900_skip : Flapjack.WordAlloc.isSkip output14900 = false := by
  rw [output14900_def]
  conv => lhs; cbv
  try rfl
theorem node14900_eq : Flapjack.WordAlloc.removeDeadStructural input14900 value5 value1 value2 = (output14900, value6896, value1) := by
  rw [input14900_def, output14900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10022_eq]
  try dsimp only
  rw [node14899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14900 input10019)).val
theorem input14901_def : input14901 = (.seq input14900 input10019) := by
  unfold input14901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14900 output10019)).val
theorem output14901_def : output14901 = (.seq output14900 output10019) := by
  unfold output14901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14901_skip : Flapjack.WordAlloc.isSkip output14901 = false := by
  rw [output14901_def]
  conv => lhs; cbv
  try rfl
theorem node14901_eq : Flapjack.WordAlloc.removeDeadStructural input14901 value5008 value1 value2 = (output14901, value6896, value1) := by
  rw [input14901_def, output14901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10019_eq]
  try dsimp only
  rw [node14900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14901 input10008)).val
theorem input14902_def : input14902 = (.seq input14901 input10008) := by
  unfold input14902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14901)).val
theorem output14902_def : output14902 = (output14901) := by
  unfold output14902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14902_skip : Flapjack.WordAlloc.isSkip output14902 = false := by
  rw [output14902_def]
  conv => lhs; cbv
  try rfl
theorem node14902_eq : Flapjack.WordAlloc.removeDeadStructural input14902 value5008 value1 value2 = (output14902, value6896, value1) := by
  rw [input14902_def, output14902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10008_eq]
  try dsimp only
  rw [node14901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14902 input10007)).val
theorem input14903_def : input14903 = (.seq input14902 input10007) := by
  unfold input14903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14902 output10007)).val
theorem output14903_def : output14903 = (.seq output14902 output10007) := by
  unfold output14903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14903_skip : Flapjack.WordAlloc.isSkip output14903 = false := by
  rw [output14903_def]
  conv => lhs; cbv
  try rfl
theorem node14903_eq : Flapjack.WordAlloc.removeDeadStructural input14903 value5007 value1 value2 = (output14903, value6896, value1) := by
  rw [input14903_def, output14903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10007_eq]
  try dsimp only
  rw [node14902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14903 input10006)).val
theorem input14904_def : input14904 = (.seq input14903 input10006) := by
  unfold input14904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14903 output10006)).val
theorem output14904_def : output14904 = (.seq output14903 output10006) := by
  unfold output14904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14904_skip : Flapjack.WordAlloc.isSkip output14904 = false := by
  rw [output14904_def]
  conv => lhs; cbv
  try rfl
theorem node14904_eq : Flapjack.WordAlloc.removeDeadStructural input14904 value5 value1 value2 = (output14904, value6896, value1) := by
  rw [input14904_def, output14904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10006_eq]
  try dsimp only
  rw [node14903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14904 input10003)).val
theorem input14905_def : input14905 = (.seq input14904 input10003) := by
  unfold input14905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14904 output10003)).val
theorem output14905_def : output14905 = (.seq output14904 output10003) := by
  unfold output14905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14905_skip : Flapjack.WordAlloc.isSkip output14905 = false := by
  rw [output14905_def]
  conv => lhs; cbv
  try rfl
theorem node14905_eq : Flapjack.WordAlloc.removeDeadStructural input14905 value5000 value1 value2 = (output14905, value6896, value1) := by
  rw [input14905_def, output14905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10003_eq]
  try dsimp only
  rw [node14904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14905 input9992)).val
theorem input14906_def : input14906 = (.seq input14905 input9992) := by
  unfold input14906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14905)).val
theorem output14906_def : output14906 = (output14905) := by
  unfold output14906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14906_skip : Flapjack.WordAlloc.isSkip output14906 = false := by
  rw [output14906_def]
  conv => lhs; cbv
  try rfl
theorem node14906_eq : Flapjack.WordAlloc.removeDeadStructural input14906 value5000 value1 value2 = (output14906, value6896, value1) := by
  rw [input14906_def, output14906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9992_eq]
  try dsimp only
  rw [node14905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14906 input9991)).val
theorem input14907_def : input14907 = (.seq input14906 input9991) := by
  unfold input14907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14906 output9991)).val
theorem output14907_def : output14907 = (.seq output14906 output9991) := by
  unfold output14907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14907_skip : Flapjack.WordAlloc.isSkip output14907 = false := by
  rw [output14907_def]
  conv => lhs; cbv
  try rfl
theorem node14907_eq : Flapjack.WordAlloc.removeDeadStructural input14907 value4999 value1 value2 = (output14907, value6896, value1) := by
  rw [input14907_def, output14907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9991_eq]
  try dsimp only
  rw [node14906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14907 input9990)).val
theorem input14908_def : input14908 = (.seq input14907 input9990) := by
  unfold input14908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14907 output9990)).val
theorem output14908_def : output14908 = (.seq output14907 output9990) := by
  unfold output14908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14908_skip : Flapjack.WordAlloc.isSkip output14908 = false := by
  rw [output14908_def]
  conv => lhs; cbv
  try rfl
theorem node14908_eq : Flapjack.WordAlloc.removeDeadStructural input14908 value5 value1 value2 = (output14908, value6896, value1) := by
  rw [input14908_def, output14908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9990_eq]
  try dsimp only
  rw [node14907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14908 input9987)).val
theorem input14909_def : input14909 = (.seq input14908 input9987) := by
  unfold input14909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14908 output9987)).val
theorem output14909_def : output14909 = (.seq output14908 output9987) := by
  unfold output14909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14909_skip : Flapjack.WordAlloc.isSkip output14909 = false := by
  rw [output14909_def]
  conv => lhs; cbv
  try rfl
theorem node14909_eq : Flapjack.WordAlloc.removeDeadStructural input14909 value4992 value1 value2 = (output14909, value6896, value1) := by
  rw [input14909_def, output14909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9987_eq]
  try dsimp only
  rw [node14908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14909 input9976)).val
theorem input14910_def : input14910 = (.seq input14909 input9976) := by
  unfold input14910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14909)).val
theorem output14910_def : output14910 = (output14909) := by
  unfold output14910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14910_skip : Flapjack.WordAlloc.isSkip output14910 = false := by
  rw [output14910_def]
  conv => lhs; cbv
  try rfl
theorem node14910_eq : Flapjack.WordAlloc.removeDeadStructural input14910 value4992 value1 value2 = (output14910, value6896, value1) := by
  rw [input14910_def, output14910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9976_eq]
  try dsimp only
  rw [node14909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14910 input9975)).val
theorem input14911_def : input14911 = (.seq input14910 input9975) := by
  unfold input14911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14910 output9975)).val
theorem output14911_def : output14911 = (.seq output14910 output9975) := by
  unfold output14911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14911_skip : Flapjack.WordAlloc.isSkip output14911 = false := by
  rw [output14911_def]
  conv => lhs; cbv
  try rfl
theorem node14911_eq : Flapjack.WordAlloc.removeDeadStructural input14911 value4991 value1 value2 = (output14911, value6896, value1) := by
  rw [input14911_def, output14911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9975_eq]
  try dsimp only
  rw [node14910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14911 input9974)).val
theorem input14912_def : input14912 = (.seq input14911 input9974) := by
  unfold input14912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14911 output9974)).val
theorem output14912_def : output14912 = (.seq output14911 output9974) := by
  unfold output14912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14912_skip : Flapjack.WordAlloc.isSkip output14912 = false := by
  rw [output14912_def]
  conv => lhs; cbv
  try rfl
theorem node14912_eq : Flapjack.WordAlloc.removeDeadStructural input14912 value5 value1 value2 = (output14912, value6896, value1) := by
  rw [input14912_def, output14912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9974_eq]
  try dsimp only
  rw [node14911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14912 input9971)).val
theorem input14913_def : input14913 = (.seq input14912 input9971) := by
  unfold input14913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14912 output9971)).val
theorem output14913_def : output14913 = (.seq output14912 output9971) := by
  unfold output14913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14913_skip : Flapjack.WordAlloc.isSkip output14913 = false := by
  rw [output14913_def]
  conv => lhs; cbv
  try rfl
theorem node14913_eq : Flapjack.WordAlloc.removeDeadStructural input14913 value4984 value1 value2 = (output14913, value6896, value1) := by
  rw [input14913_def, output14913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9971_eq]
  try dsimp only
  rw [node14912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14913 input9960)).val
theorem input14914_def : input14914 = (.seq input14913 input9960) := by
  unfold input14914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14913)).val
theorem output14914_def : output14914 = (output14913) := by
  unfold output14914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14914_skip : Flapjack.WordAlloc.isSkip output14914 = false := by
  rw [output14914_def]
  conv => lhs; cbv
  try rfl
theorem node14914_eq : Flapjack.WordAlloc.removeDeadStructural input14914 value4984 value1 value2 = (output14914, value6896, value1) := by
  rw [input14914_def, output14914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9960_eq]
  try dsimp only
  rw [node14913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14914 input9959)).val
theorem input14915_def : input14915 = (.seq input14914 input9959) := by
  unfold input14915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14914 output9959)).val
theorem output14915_def : output14915 = (.seq output14914 output9959) := by
  unfold output14915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14915_skip : Flapjack.WordAlloc.isSkip output14915 = false := by
  rw [output14915_def]
  conv => lhs; cbv
  try rfl
theorem node14915_eq : Flapjack.WordAlloc.removeDeadStructural input14915 value4983 value1 value2 = (output14915, value6896, value1) := by
  rw [input14915_def, output14915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9959_eq]
  try dsimp only
  rw [node14914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14915 input9958)).val
theorem input14916_def : input14916 = (.seq input14915 input9958) := by
  unfold input14916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14915 output9958)).val
theorem output14916_def : output14916 = (.seq output14915 output9958) := by
  unfold output14916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14916_skip : Flapjack.WordAlloc.isSkip output14916 = false := by
  rw [output14916_def]
  conv => lhs; cbv
  try rfl
theorem node14916_eq : Flapjack.WordAlloc.removeDeadStructural input14916 value5 value1 value2 = (output14916, value6896, value1) := by
  rw [input14916_def, output14916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9958_eq]
  try dsimp only
  rw [node14915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14916 input9955)).val
theorem input14917_def : input14917 = (.seq input14916 input9955) := by
  unfold input14917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14916 output9955)).val
theorem output14917_def : output14917 = (.seq output14916 output9955) := by
  unfold output14917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14917_skip : Flapjack.WordAlloc.isSkip output14917 = false := by
  rw [output14917_def]
  conv => lhs; cbv
  try rfl
theorem node14917_eq : Flapjack.WordAlloc.removeDeadStructural input14917 value4976 value1 value2 = (output14917, value6896, value1) := by
  rw [input14917_def, output14917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9955_eq]
  try dsimp only
  rw [node14916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14917 input9944)).val
theorem input14918_def : input14918 = (.seq input14917 input9944) := by
  unfold input14918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14917)).val
theorem output14918_def : output14918 = (output14917) := by
  unfold output14918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14918_skip : Flapjack.WordAlloc.isSkip output14918 = false := by
  rw [output14918_def]
  conv => lhs; cbv
  try rfl
theorem node14918_eq : Flapjack.WordAlloc.removeDeadStructural input14918 value4976 value1 value2 = (output14918, value6896, value1) := by
  rw [input14918_def, output14918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9944_eq]
  try dsimp only
  rw [node14917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14918 input9943)).val
theorem input14919_def : input14919 = (.seq input14918 input9943) := by
  unfold input14919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14918 output9943)).val
theorem output14919_def : output14919 = (.seq output14918 output9943) := by
  unfold output14919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14919_skip : Flapjack.WordAlloc.isSkip output14919 = false := by
  rw [output14919_def]
  conv => lhs; cbv
  try rfl
theorem node14919_eq : Flapjack.WordAlloc.removeDeadStructural input14919 value4975 value1 value2 = (output14919, value6896, value1) := by
  rw [input14919_def, output14919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9943_eq]
  try dsimp only
  rw [node14918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14919 input9942)).val
theorem input14920_def : input14920 = (.seq input14919 input9942) := by
  unfold input14920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14919 output9942)).val
theorem output14920_def : output14920 = (.seq output14919 output9942) := by
  unfold output14920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14920_skip : Flapjack.WordAlloc.isSkip output14920 = false := by
  rw [output14920_def]
  conv => lhs; cbv
  try rfl
theorem node14920_eq : Flapjack.WordAlloc.removeDeadStructural input14920 value5 value1 value2 = (output14920, value6896, value1) := by
  rw [input14920_def, output14920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9942_eq]
  try dsimp only
  rw [node14919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14920 input9939)).val
theorem input14921_def : input14921 = (.seq input14920 input9939) := by
  unfold input14921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14920 output9939)).val
theorem output14921_def : output14921 = (.seq output14920 output9939) := by
  unfold output14921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14921_skip : Flapjack.WordAlloc.isSkip output14921 = false := by
  rw [output14921_def]
  conv => lhs; cbv
  try rfl
theorem node14921_eq : Flapjack.WordAlloc.removeDeadStructural input14921 value4968 value1 value2 = (output14921, value6896, value1) := by
  rw [input14921_def, output14921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9939_eq]
  try dsimp only
  rw [node14920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14921 input9928)).val
theorem input14922_def : input14922 = (.seq input14921 input9928) := by
  unfold input14922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14921)).val
theorem output14922_def : output14922 = (output14921) := by
  unfold output14922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14922_skip : Flapjack.WordAlloc.isSkip output14922 = false := by
  rw [output14922_def]
  conv => lhs; cbv
  try rfl
theorem node14922_eq : Flapjack.WordAlloc.removeDeadStructural input14922 value4968 value1 value2 = (output14922, value6896, value1) := by
  rw [input14922_def, output14922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9928_eq]
  try dsimp only
  rw [node14921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14922 input9927)).val
theorem input14923_def : input14923 = (.seq input14922 input9927) := by
  unfold input14923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14922 output9927)).val
theorem output14923_def : output14923 = (.seq output14922 output9927) := by
  unfold output14923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14923_skip : Flapjack.WordAlloc.isSkip output14923 = false := by
  rw [output14923_def]
  conv => lhs; cbv
  try rfl
theorem node14923_eq : Flapjack.WordAlloc.removeDeadStructural input14923 value4967 value1 value2 = (output14923, value6896, value1) := by
  rw [input14923_def, output14923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9927_eq]
  try dsimp only
  rw [node14922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14923 input9926)).val
theorem input14924_def : input14924 = (.seq input14923 input9926) := by
  unfold input14924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14923 output9926)).val
theorem output14924_def : output14924 = (.seq output14923 output9926) := by
  unfold output14924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14924_skip : Flapjack.WordAlloc.isSkip output14924 = false := by
  rw [output14924_def]
  conv => lhs; cbv
  try rfl
theorem node14924_eq : Flapjack.WordAlloc.removeDeadStructural input14924 value5 value1 value2 = (output14924, value6896, value1) := by
  rw [input14924_def, output14924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9926_eq]
  try dsimp only
  rw [node14923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14924 input9923)).val
theorem input14925_def : input14925 = (.seq input14924 input9923) := by
  unfold input14925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14924 output9923)).val
theorem output14925_def : output14925 = (.seq output14924 output9923) := by
  unfold output14925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14925_skip : Flapjack.WordAlloc.isSkip output14925 = false := by
  rw [output14925_def]
  conv => lhs; cbv
  try rfl
theorem node14925_eq : Flapjack.WordAlloc.removeDeadStructural input14925 value4960 value1 value2 = (output14925, value6896, value1) := by
  rw [input14925_def, output14925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9923_eq]
  try dsimp only
  rw [node14924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14925 input9912)).val
theorem input14926_def : input14926 = (.seq input14925 input9912) := by
  unfold input14926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14925)).val
theorem output14926_def : output14926 = (output14925) := by
  unfold output14926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14926_skip : Flapjack.WordAlloc.isSkip output14926 = false := by
  rw [output14926_def]
  conv => lhs; cbv
  try rfl
theorem node14926_eq : Flapjack.WordAlloc.removeDeadStructural input14926 value4960 value1 value2 = (output14926, value6896, value1) := by
  rw [input14926_def, output14926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9912_eq]
  try dsimp only
  rw [node14925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14926 input9911)).val
theorem input14927_def : input14927 = (.seq input14926 input9911) := by
  unfold input14927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14926 output9911)).val
theorem output14927_def : output14927 = (.seq output14926 output9911) := by
  unfold output14927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14927_skip : Flapjack.WordAlloc.isSkip output14927 = false := by
  rw [output14927_def]
  conv => lhs; cbv
  try rfl
theorem node14927_eq : Flapjack.WordAlloc.removeDeadStructural input14927 value4959 value1 value2 = (output14927, value6896, value1) := by
  rw [input14927_def, output14927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9911_eq]
  try dsimp only
  rw [node14926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14927 input9910)).val
theorem input14928_def : input14928 = (.seq input14927 input9910) := by
  unfold input14928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14927 output9910)).val
theorem output14928_def : output14928 = (.seq output14927 output9910) := by
  unfold output14928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14928_skip : Flapjack.WordAlloc.isSkip output14928 = false := by
  rw [output14928_def]
  conv => lhs; cbv
  try rfl
theorem node14928_eq : Flapjack.WordAlloc.removeDeadStructural input14928 value5 value1 value2 = (output14928, value6896, value1) := by
  rw [input14928_def, output14928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9910_eq]
  try dsimp only
  rw [node14927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14928 input9907)).val
theorem input14929_def : input14929 = (.seq input14928 input9907) := by
  unfold input14929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14928 output9907)).val
theorem output14929_def : output14929 = (.seq output14928 output9907) := by
  unfold output14929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14929_skip : Flapjack.WordAlloc.isSkip output14929 = false := by
  rw [output14929_def]
  conv => lhs; cbv
  try rfl
theorem node14929_eq : Flapjack.WordAlloc.removeDeadStructural input14929 value4952 value1 value2 = (output14929, value6896, value1) := by
  rw [input14929_def, output14929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9907_eq]
  try dsimp only
  rw [node14928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14929 input9896)).val
theorem input14930_def : input14930 = (.seq input14929 input9896) := by
  unfold input14930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14929)).val
theorem output14930_def : output14930 = (output14929) := by
  unfold output14930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14930_skip : Flapjack.WordAlloc.isSkip output14930 = false := by
  rw [output14930_def]
  conv => lhs; cbv
  try rfl
theorem node14930_eq : Flapjack.WordAlloc.removeDeadStructural input14930 value4952 value1 value2 = (output14930, value6896, value1) := by
  rw [input14930_def, output14930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9896_eq]
  try dsimp only
  rw [node14929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14930 input9895)).val
theorem input14931_def : input14931 = (.seq input14930 input9895) := by
  unfold input14931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14930 output9895)).val
theorem output14931_def : output14931 = (.seq output14930 output9895) := by
  unfold output14931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14931_skip : Flapjack.WordAlloc.isSkip output14931 = false := by
  rw [output14931_def]
  conv => lhs; cbv
  try rfl
theorem node14931_eq : Flapjack.WordAlloc.removeDeadStructural input14931 value4951 value1 value2 = (output14931, value6896, value1) := by
  rw [input14931_def, output14931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9895_eq]
  try dsimp only
  rw [node14930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14931 input9894)).val
theorem input14932_def : input14932 = (.seq input14931 input9894) := by
  unfold input14932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14931 output9894)).val
theorem output14932_def : output14932 = (.seq output14931 output9894) := by
  unfold output14932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14932_skip : Flapjack.WordAlloc.isSkip output14932 = false := by
  rw [output14932_def]
  conv => lhs; cbv
  try rfl
theorem node14932_eq : Flapjack.WordAlloc.removeDeadStructural input14932 value5 value1 value2 = (output14932, value6896, value1) := by
  rw [input14932_def, output14932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9894_eq]
  try dsimp only
  rw [node14931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14932 input9891)).val
theorem input14933_def : input14933 = (.seq input14932 input9891) := by
  unfold input14933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14932 output9891)).val
theorem output14933_def : output14933 = (.seq output14932 output9891) := by
  unfold output14933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14933_skip : Flapjack.WordAlloc.isSkip output14933 = false := by
  rw [output14933_def]
  conv => lhs; cbv
  try rfl
theorem node14933_eq : Flapjack.WordAlloc.removeDeadStructural input14933 value4944 value1 value2 = (output14933, value6896, value1) := by
  rw [input14933_def, output14933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9891_eq]
  try dsimp only
  rw [node14932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14933 input9880)).val
theorem input14934_def : input14934 = (.seq input14933 input9880) := by
  unfold input14934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14933)).val
theorem output14934_def : output14934 = (output14933) := by
  unfold output14934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14934_skip : Flapjack.WordAlloc.isSkip output14934 = false := by
  rw [output14934_def]
  conv => lhs; cbv
  try rfl
theorem node14934_eq : Flapjack.WordAlloc.removeDeadStructural input14934 value4944 value1 value2 = (output14934, value6896, value1) := by
  rw [input14934_def, output14934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9880_eq]
  try dsimp only
  rw [node14933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14934 input9879)).val
theorem input14935_def : input14935 = (.seq input14934 input9879) := by
  unfold input14935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14934 output9879)).val
theorem output14935_def : output14935 = (.seq output14934 output9879) := by
  unfold output14935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14935_skip : Flapjack.WordAlloc.isSkip output14935 = false := by
  rw [output14935_def]
  conv => lhs; cbv
  try rfl
theorem node14935_eq : Flapjack.WordAlloc.removeDeadStructural input14935 value4943 value1 value2 = (output14935, value6896, value1) := by
  rw [input14935_def, output14935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9879_eq]
  try dsimp only
  rw [node14934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14935 input9878)).val
theorem input14936_def : input14936 = (.seq input14935 input9878) := by
  unfold input14936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14935 output9878)).val
theorem output14936_def : output14936 = (.seq output14935 output9878) := by
  unfold output14936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14936_skip : Flapjack.WordAlloc.isSkip output14936 = false := by
  rw [output14936_def]
  conv => lhs; cbv
  try rfl
theorem node14936_eq : Flapjack.WordAlloc.removeDeadStructural input14936 value5 value1 value2 = (output14936, value6896, value1) := by
  rw [input14936_def, output14936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9878_eq]
  try dsimp only
  rw [node14935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14936 input9875)).val
theorem input14937_def : input14937 = (.seq input14936 input9875) := by
  unfold input14937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14936 output9875)).val
theorem output14937_def : output14937 = (.seq output14936 output9875) := by
  unfold output14937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14937_skip : Flapjack.WordAlloc.isSkip output14937 = false := by
  rw [output14937_def]
  conv => lhs; cbv
  try rfl
theorem node14937_eq : Flapjack.WordAlloc.removeDeadStructural input14937 value4936 value1 value2 = (output14937, value6896, value1) := by
  rw [input14937_def, output14937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9875_eq]
  try dsimp only
  rw [node14936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14937 input9864)).val
theorem input14938_def : input14938 = (.seq input14937 input9864) := by
  unfold input14938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14937)).val
theorem output14938_def : output14938 = (output14937) := by
  unfold output14938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14938_skip : Flapjack.WordAlloc.isSkip output14938 = false := by
  rw [output14938_def]
  conv => lhs; cbv
  try rfl
theorem node14938_eq : Flapjack.WordAlloc.removeDeadStructural input14938 value4936 value1 value2 = (output14938, value6896, value1) := by
  rw [input14938_def, output14938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9864_eq]
  try dsimp only
  rw [node14937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14938 input9863)).val
theorem input14939_def : input14939 = (.seq input14938 input9863) := by
  unfold input14939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14938 output9863)).val
theorem output14939_def : output14939 = (.seq output14938 output9863) := by
  unfold output14939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14939_skip : Flapjack.WordAlloc.isSkip output14939 = false := by
  rw [output14939_def]
  conv => lhs; cbv
  try rfl
theorem node14939_eq : Flapjack.WordAlloc.removeDeadStructural input14939 value4935 value1 value2 = (output14939, value6896, value1) := by
  rw [input14939_def, output14939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9863_eq]
  try dsimp only
  rw [node14938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14939 input9862)).val
theorem input14940_def : input14940 = (.seq input14939 input9862) := by
  unfold input14940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14939 output9862)).val
theorem output14940_def : output14940 = (.seq output14939 output9862) := by
  unfold output14940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14940_skip : Flapjack.WordAlloc.isSkip output14940 = false := by
  rw [output14940_def]
  conv => lhs; cbv
  try rfl
theorem node14940_eq : Flapjack.WordAlloc.removeDeadStructural input14940 value5 value1 value2 = (output14940, value6896, value1) := by
  rw [input14940_def, output14940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9862_eq]
  try dsimp only
  rw [node14939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14940 input9859)).val
theorem input14941_def : input14941 = (.seq input14940 input9859) := by
  unfold input14941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14940 output9859)).val
theorem output14941_def : output14941 = (.seq output14940 output9859) := by
  unfold output14941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14941_skip : Flapjack.WordAlloc.isSkip output14941 = false := by
  rw [output14941_def]
  conv => lhs; cbv
  try rfl
theorem node14941_eq : Flapjack.WordAlloc.removeDeadStructural input14941 value4928 value1 value2 = (output14941, value6896, value1) := by
  rw [input14941_def, output14941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9859_eq]
  try dsimp only
  rw [node14940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14941 input9848)).val
theorem input14942_def : input14942 = (.seq input14941 input9848) := by
  unfold input14942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14941)).val
theorem output14942_def : output14942 = (output14941) := by
  unfold output14942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14942_skip : Flapjack.WordAlloc.isSkip output14942 = false := by
  rw [output14942_def]
  conv => lhs; cbv
  try rfl
theorem node14942_eq : Flapjack.WordAlloc.removeDeadStructural input14942 value4928 value1 value2 = (output14942, value6896, value1) := by
  rw [input14942_def, output14942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9848_eq]
  try dsimp only
  rw [node14941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14942 input9847)).val
theorem input14943_def : input14943 = (.seq input14942 input9847) := by
  unfold input14943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14942 output9847)).val
theorem output14943_def : output14943 = (.seq output14942 output9847) := by
  unfold output14943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14943_skip : Flapjack.WordAlloc.isSkip output14943 = false := by
  rw [output14943_def]
  conv => lhs; cbv
  try rfl
theorem node14943_eq : Flapjack.WordAlloc.removeDeadStructural input14943 value4927 value1 value2 = (output14943, value6896, value1) := by
  rw [input14943_def, output14943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9847_eq]
  try dsimp only
  rw [node14942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14943 input9846)).val
theorem input14944_def : input14944 = (.seq input14943 input9846) := by
  unfold input14944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14943 output9846)).val
theorem output14944_def : output14944 = (.seq output14943 output9846) := by
  unfold output14944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14944_skip : Flapjack.WordAlloc.isSkip output14944 = false := by
  rw [output14944_def]
  conv => lhs; cbv
  try rfl
theorem node14944_eq : Flapjack.WordAlloc.removeDeadStructural input14944 value5 value1 value2 = (output14944, value6896, value1) := by
  rw [input14944_def, output14944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9846_eq]
  try dsimp only
  rw [node14943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14944 input9843)).val
theorem input14945_def : input14945 = (.seq input14944 input9843) := by
  unfold input14945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14944 output9843)).val
theorem output14945_def : output14945 = (.seq output14944 output9843) := by
  unfold output14945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14945_skip : Flapjack.WordAlloc.isSkip output14945 = false := by
  rw [output14945_def]
  conv => lhs; cbv
  try rfl
theorem node14945_eq : Flapjack.WordAlloc.removeDeadStructural input14945 value4920 value1 value2 = (output14945, value6896, value1) := by
  rw [input14945_def, output14945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9843_eq]
  try dsimp only
  rw [node14944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14945 input9832)).val
theorem input14946_def : input14946 = (.seq input14945 input9832) := by
  unfold input14946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14945)).val
theorem output14946_def : output14946 = (output14945) := by
  unfold output14946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14946_skip : Flapjack.WordAlloc.isSkip output14946 = false := by
  rw [output14946_def]
  conv => lhs; cbv
  try rfl
theorem node14946_eq : Flapjack.WordAlloc.removeDeadStructural input14946 value4920 value1 value2 = (output14946, value6896, value1) := by
  rw [input14946_def, output14946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9832_eq]
  try dsimp only
  rw [node14945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14946 input9831)).val
theorem input14947_def : input14947 = (.seq input14946 input9831) := by
  unfold input14947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14946 output9831)).val
theorem output14947_def : output14947 = (.seq output14946 output9831) := by
  unfold output14947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14947_skip : Flapjack.WordAlloc.isSkip output14947 = false := by
  rw [output14947_def]
  conv => lhs; cbv
  try rfl
theorem node14947_eq : Flapjack.WordAlloc.removeDeadStructural input14947 value4919 value1 value2 = (output14947, value6896, value1) := by
  rw [input14947_def, output14947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9831_eq]
  try dsimp only
  rw [node14946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14947 input9830)).val
theorem input14948_def : input14948 = (.seq input14947 input9830) := by
  unfold input14948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14947 output9830)).val
theorem output14948_def : output14948 = (.seq output14947 output9830) := by
  unfold output14948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14948_skip : Flapjack.WordAlloc.isSkip output14948 = false := by
  rw [output14948_def]
  conv => lhs; cbv
  try rfl
theorem node14948_eq : Flapjack.WordAlloc.removeDeadStructural input14948 value5 value1 value2 = (output14948, value6896, value1) := by
  rw [input14948_def, output14948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9830_eq]
  try dsimp only
  rw [node14947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14948 input9827)).val
theorem input14949_def : input14949 = (.seq input14948 input9827) := by
  unfold input14949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14948 output9827)).val
theorem output14949_def : output14949 = (.seq output14948 output9827) := by
  unfold output14949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14949_skip : Flapjack.WordAlloc.isSkip output14949 = false := by
  rw [output14949_def]
  conv => lhs; cbv
  try rfl
theorem node14949_eq : Flapjack.WordAlloc.removeDeadStructural input14949 value4912 value1 value2 = (output14949, value6896, value1) := by
  rw [input14949_def, output14949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9827_eq]
  try dsimp only
  rw [node14948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14949 input9816)).val
theorem input14950_def : input14950 = (.seq input14949 input9816) := by
  unfold input14950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14949)).val
theorem output14950_def : output14950 = (output14949) := by
  unfold output14950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14950_skip : Flapjack.WordAlloc.isSkip output14950 = false := by
  rw [output14950_def]
  conv => lhs; cbv
  try rfl
theorem node14950_eq : Flapjack.WordAlloc.removeDeadStructural input14950 value4912 value1 value2 = (output14950, value6896, value1) := by
  rw [input14950_def, output14950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9816_eq]
  try dsimp only
  rw [node14949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14950 input9815)).val
theorem input14951_def : input14951 = (.seq input14950 input9815) := by
  unfold input14951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14950 output9815)).val
theorem output14951_def : output14951 = (.seq output14950 output9815) := by
  unfold output14951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14951_skip : Flapjack.WordAlloc.isSkip output14951 = false := by
  rw [output14951_def]
  conv => lhs; cbv
  try rfl
theorem node14951_eq : Flapjack.WordAlloc.removeDeadStructural input14951 value4911 value1 value2 = (output14951, value6896, value1) := by
  rw [input14951_def, output14951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9815_eq]
  try dsimp only
  rw [node14950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14951 input9814)).val
theorem input14952_def : input14952 = (.seq input14951 input9814) := by
  unfold input14952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14951 output9814)).val
theorem output14952_def : output14952 = (.seq output14951 output9814) := by
  unfold output14952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14952_skip : Flapjack.WordAlloc.isSkip output14952 = false := by
  rw [output14952_def]
  conv => lhs; cbv
  try rfl
theorem node14952_eq : Flapjack.WordAlloc.removeDeadStructural input14952 value5 value1 value2 = (output14952, value6896, value1) := by
  rw [input14952_def, output14952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9814_eq]
  try dsimp only
  rw [node14951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14952 input9811)).val
theorem input14953_def : input14953 = (.seq input14952 input9811) := by
  unfold input14953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14952 output9811)).val
theorem output14953_def : output14953 = (.seq output14952 output9811) := by
  unfold output14953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14953_skip : Flapjack.WordAlloc.isSkip output14953 = false := by
  rw [output14953_def]
  conv => lhs; cbv
  try rfl
theorem node14953_eq : Flapjack.WordAlloc.removeDeadStructural input14953 value4904 value1 value2 = (output14953, value6896, value1) := by
  rw [input14953_def, output14953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9811_eq]
  try dsimp only
  rw [node14952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14953 input9800)).val
theorem input14954_def : input14954 = (.seq input14953 input9800) := by
  unfold input14954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14953)).val
theorem output14954_def : output14954 = (output14953) := by
  unfold output14954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14954_skip : Flapjack.WordAlloc.isSkip output14954 = false := by
  rw [output14954_def]
  conv => lhs; cbv
  try rfl
theorem node14954_eq : Flapjack.WordAlloc.removeDeadStructural input14954 value4904 value1 value2 = (output14954, value6896, value1) := by
  rw [input14954_def, output14954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9800_eq]
  try dsimp only
  rw [node14953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14954 input9799)).val
theorem input14955_def : input14955 = (.seq input14954 input9799) := by
  unfold input14955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14954 output9799)).val
theorem output14955_def : output14955 = (.seq output14954 output9799) := by
  unfold output14955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14955_skip : Flapjack.WordAlloc.isSkip output14955 = false := by
  rw [output14955_def]
  conv => lhs; cbv
  try rfl
theorem node14955_eq : Flapjack.WordAlloc.removeDeadStructural input14955 value4903 value1 value2 = (output14955, value6896, value1) := by
  rw [input14955_def, output14955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9799_eq]
  try dsimp only
  rw [node14954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14955 input9798)).val
theorem input14956_def : input14956 = (.seq input14955 input9798) := by
  unfold input14956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14955 output9798)).val
theorem output14956_def : output14956 = (.seq output14955 output9798) := by
  unfold output14956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14956_skip : Flapjack.WordAlloc.isSkip output14956 = false := by
  rw [output14956_def]
  conv => lhs; cbv
  try rfl
theorem node14956_eq : Flapjack.WordAlloc.removeDeadStructural input14956 value5 value1 value2 = (output14956, value6896, value1) := by
  rw [input14956_def, output14956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9798_eq]
  try dsimp only
  rw [node14955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14956 input9795)).val
theorem input14957_def : input14957 = (.seq input14956 input9795) := by
  unfold input14957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14956 output9795)).val
theorem output14957_def : output14957 = (.seq output14956 output9795) := by
  unfold output14957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14957_skip : Flapjack.WordAlloc.isSkip output14957 = false := by
  rw [output14957_def]
  conv => lhs; cbv
  try rfl
theorem node14957_eq : Flapjack.WordAlloc.removeDeadStructural input14957 value4896 value1 value2 = (output14957, value6896, value1) := by
  rw [input14957_def, output14957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9795_eq]
  try dsimp only
  rw [node14956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14957 input9784)).val
theorem input14958_def : input14958 = (.seq input14957 input9784) := by
  unfold input14958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14957)).val
theorem output14958_def : output14958 = (output14957) := by
  unfold output14958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14958_skip : Flapjack.WordAlloc.isSkip output14958 = false := by
  rw [output14958_def]
  conv => lhs; cbv
  try rfl
theorem node14958_eq : Flapjack.WordAlloc.removeDeadStructural input14958 value4896 value1 value2 = (output14958, value6896, value1) := by
  rw [input14958_def, output14958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9784_eq]
  try dsimp only
  rw [node14957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14958 input9783)).val
theorem input14959_def : input14959 = (.seq input14958 input9783) := by
  unfold input14959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14958 output9783)).val
theorem output14959_def : output14959 = (.seq output14958 output9783) := by
  unfold output14959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14959_skip : Flapjack.WordAlloc.isSkip output14959 = false := by
  rw [output14959_def]
  conv => lhs; cbv
  try rfl
theorem node14959_eq : Flapjack.WordAlloc.removeDeadStructural input14959 value4895 value1 value2 = (output14959, value6896, value1) := by
  rw [input14959_def, output14959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9783_eq]
  try dsimp only
  rw [node14958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14959 input9782)).val
theorem input14960_def : input14960 = (.seq input14959 input9782) := by
  unfold input14960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14959 output9782)).val
theorem output14960_def : output14960 = (.seq output14959 output9782) := by
  unfold output14960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14960_skip : Flapjack.WordAlloc.isSkip output14960 = false := by
  rw [output14960_def]
  conv => lhs; cbv
  try rfl
theorem node14960_eq : Flapjack.WordAlloc.removeDeadStructural input14960 value5 value1 value2 = (output14960, value6896, value1) := by
  rw [input14960_def, output14960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9782_eq]
  try dsimp only
  rw [node14959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14960 input9779)).val
theorem input14961_def : input14961 = (.seq input14960 input9779) := by
  unfold input14961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14960 output9779)).val
theorem output14961_def : output14961 = (.seq output14960 output9779) := by
  unfold output14961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14961_skip : Flapjack.WordAlloc.isSkip output14961 = false := by
  rw [output14961_def]
  conv => lhs; cbv
  try rfl
theorem node14961_eq : Flapjack.WordAlloc.removeDeadStructural input14961 value4888 value1 value2 = (output14961, value6896, value1) := by
  rw [input14961_def, output14961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9779_eq]
  try dsimp only
  rw [node14960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14961 input9768)).val
theorem input14962_def : input14962 = (.seq input14961 input9768) := by
  unfold input14962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14961)).val
theorem output14962_def : output14962 = (output14961) := by
  unfold output14962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14962_skip : Flapjack.WordAlloc.isSkip output14962 = false := by
  rw [output14962_def]
  conv => lhs; cbv
  try rfl
theorem node14962_eq : Flapjack.WordAlloc.removeDeadStructural input14962 value4888 value1 value2 = (output14962, value6896, value1) := by
  rw [input14962_def, output14962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9768_eq]
  try dsimp only
  rw [node14961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14962 input9767)).val
theorem input14963_def : input14963 = (.seq input14962 input9767) := by
  unfold input14963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14962 output9767)).val
theorem output14963_def : output14963 = (.seq output14962 output9767) := by
  unfold output14963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14963_skip : Flapjack.WordAlloc.isSkip output14963 = false := by
  rw [output14963_def]
  conv => lhs; cbv
  try rfl
theorem node14963_eq : Flapjack.WordAlloc.removeDeadStructural input14963 value4887 value1 value2 = (output14963, value6896, value1) := by
  rw [input14963_def, output14963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9767_eq]
  try dsimp only
  rw [node14962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14963 input9766)).val
theorem input14964_def : input14964 = (.seq input14963 input9766) := by
  unfold input14964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14963 output9766)).val
theorem output14964_def : output14964 = (.seq output14963 output9766) := by
  unfold output14964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14964_skip : Flapjack.WordAlloc.isSkip output14964 = false := by
  rw [output14964_def]
  conv => lhs; cbv
  try rfl
theorem node14964_eq : Flapjack.WordAlloc.removeDeadStructural input14964 value5 value1 value2 = (output14964, value6896, value1) := by
  rw [input14964_def, output14964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9766_eq]
  try dsimp only
  rw [node14963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14964 input9763)).val
theorem input14965_def : input14965 = (.seq input14964 input9763) := by
  unfold input14965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14964 output9763)).val
theorem output14965_def : output14965 = (.seq output14964 output9763) := by
  unfold output14965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14965_skip : Flapjack.WordAlloc.isSkip output14965 = false := by
  rw [output14965_def]
  conv => lhs; cbv
  try rfl
theorem node14965_eq : Flapjack.WordAlloc.removeDeadStructural input14965 value4880 value1 value2 = (output14965, value6896, value1) := by
  rw [input14965_def, output14965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9763_eq]
  try dsimp only
  rw [node14964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14965 input9752)).val
theorem input14966_def : input14966 = (.seq input14965 input9752) := by
  unfold input14966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14965)).val
theorem output14966_def : output14966 = (output14965) := by
  unfold output14966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14966_skip : Flapjack.WordAlloc.isSkip output14966 = false := by
  rw [output14966_def]
  conv => lhs; cbv
  try rfl
theorem node14966_eq : Flapjack.WordAlloc.removeDeadStructural input14966 value4880 value1 value2 = (output14966, value6896, value1) := by
  rw [input14966_def, output14966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9752_eq]
  try dsimp only
  rw [node14965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14966 input9751)).val
theorem input14967_def : input14967 = (.seq input14966 input9751) := by
  unfold input14967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14966 output9751)).val
theorem output14967_def : output14967 = (.seq output14966 output9751) := by
  unfold output14967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14967_skip : Flapjack.WordAlloc.isSkip output14967 = false := by
  rw [output14967_def]
  conv => lhs; cbv
  try rfl
theorem node14967_eq : Flapjack.WordAlloc.removeDeadStructural input14967 value4879 value1 value2 = (output14967, value6896, value1) := by
  rw [input14967_def, output14967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9751_eq]
  try dsimp only
  rw [node14966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14967 input9750)).val
theorem input14968_def : input14968 = (.seq input14967 input9750) := by
  unfold input14968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14967 output9750)).val
theorem output14968_def : output14968 = (.seq output14967 output9750) := by
  unfold output14968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14968_skip : Flapjack.WordAlloc.isSkip output14968 = false := by
  rw [output14968_def]
  conv => lhs; cbv
  try rfl
theorem node14968_eq : Flapjack.WordAlloc.removeDeadStructural input14968 value5 value1 value2 = (output14968, value6896, value1) := by
  rw [input14968_def, output14968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9750_eq]
  try dsimp only
  rw [node14967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14968 input9747)).val
theorem input14969_def : input14969 = (.seq input14968 input9747) := by
  unfold input14969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14968 output9747)).val
theorem output14969_def : output14969 = (.seq output14968 output9747) := by
  unfold output14969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14969_skip : Flapjack.WordAlloc.isSkip output14969 = false := by
  rw [output14969_def]
  conv => lhs; cbv
  try rfl
theorem node14969_eq : Flapjack.WordAlloc.removeDeadStructural input14969 value4872 value1 value2 = (output14969, value6896, value1) := by
  rw [input14969_def, output14969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9747_eq]
  try dsimp only
  rw [node14968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14969 input9736)).val
theorem input14970_def : input14970 = (.seq input14969 input9736) := by
  unfold input14970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14969)).val
theorem output14970_def : output14970 = (output14969) := by
  unfold output14970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14970_skip : Flapjack.WordAlloc.isSkip output14970 = false := by
  rw [output14970_def]
  conv => lhs; cbv
  try rfl
theorem node14970_eq : Flapjack.WordAlloc.removeDeadStructural input14970 value4872 value1 value2 = (output14970, value6896, value1) := by
  rw [input14970_def, output14970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9736_eq]
  try dsimp only
  rw [node14969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14970 input9735)).val
theorem input14971_def : input14971 = (.seq input14970 input9735) := by
  unfold input14971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14970 output9735)).val
theorem output14971_def : output14971 = (.seq output14970 output9735) := by
  unfold output14971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14971_skip : Flapjack.WordAlloc.isSkip output14971 = false := by
  rw [output14971_def]
  conv => lhs; cbv
  try rfl
theorem node14971_eq : Flapjack.WordAlloc.removeDeadStructural input14971 value4871 value1 value2 = (output14971, value6896, value1) := by
  rw [input14971_def, output14971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9735_eq]
  try dsimp only
  rw [node14970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14971 input9734)).val
theorem input14972_def : input14972 = (.seq input14971 input9734) := by
  unfold input14972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14971 output9734)).val
theorem output14972_def : output14972 = (.seq output14971 output9734) := by
  unfold output14972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14972_skip : Flapjack.WordAlloc.isSkip output14972 = false := by
  rw [output14972_def]
  conv => lhs; cbv
  try rfl
theorem node14972_eq : Flapjack.WordAlloc.removeDeadStructural input14972 value5 value1 value2 = (output14972, value6896, value1) := by
  rw [input14972_def, output14972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9734_eq]
  try dsimp only
  rw [node14971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14972 input9731)).val
theorem input14973_def : input14973 = (.seq input14972 input9731) := by
  unfold input14973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14972 output9731)).val
theorem output14973_def : output14973 = (.seq output14972 output9731) := by
  unfold output14973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14973_skip : Flapjack.WordAlloc.isSkip output14973 = false := by
  rw [output14973_def]
  conv => lhs; cbv
  try rfl
theorem node14973_eq : Flapjack.WordAlloc.removeDeadStructural input14973 value4864 value1 value2 = (output14973, value6896, value1) := by
  rw [input14973_def, output14973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9731_eq]
  try dsimp only
  rw [node14972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14973 input9720)).val
theorem input14974_def : input14974 = (.seq input14973 input9720) := by
  unfold input14974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14973)).val
theorem output14974_def : output14974 = (output14973) := by
  unfold output14974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14974_skip : Flapjack.WordAlloc.isSkip output14974 = false := by
  rw [output14974_def]
  conv => lhs; cbv
  try rfl
theorem node14974_eq : Flapjack.WordAlloc.removeDeadStructural input14974 value4864 value1 value2 = (output14974, value6896, value1) := by
  rw [input14974_def, output14974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9720_eq]
  try dsimp only
  rw [node14973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14974 input9719)).val
theorem input14975_def : input14975 = (.seq input14974 input9719) := by
  unfold input14975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14974 output9719)).val
theorem output14975_def : output14975 = (.seq output14974 output9719) := by
  unfold output14975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14975_skip : Flapjack.WordAlloc.isSkip output14975 = false := by
  rw [output14975_def]
  conv => lhs; cbv
  try rfl
theorem node14975_eq : Flapjack.WordAlloc.removeDeadStructural input14975 value4863 value1 value2 = (output14975, value6896, value1) := by
  rw [input14975_def, output14975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9719_eq]
  try dsimp only
  rw [node14974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14975 input9718)).val
theorem input14976_def : input14976 = (.seq input14975 input9718) := by
  unfold input14976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14975 output9718)).val
theorem output14976_def : output14976 = (.seq output14975 output9718) := by
  unfold output14976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14976_skip : Flapjack.WordAlloc.isSkip output14976 = false := by
  rw [output14976_def]
  conv => lhs; cbv
  try rfl
theorem node14976_eq : Flapjack.WordAlloc.removeDeadStructural input14976 value5 value1 value2 = (output14976, value6896, value1) := by
  rw [input14976_def, output14976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9718_eq]
  try dsimp only
  rw [node14975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14976 input9715)).val
theorem input14977_def : input14977 = (.seq input14976 input9715) := by
  unfold input14977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14976 output9715)).val
theorem output14977_def : output14977 = (.seq output14976 output9715) := by
  unfold output14977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14977_skip : Flapjack.WordAlloc.isSkip output14977 = false := by
  rw [output14977_def]
  conv => lhs; cbv
  try rfl
theorem node14977_eq : Flapjack.WordAlloc.removeDeadStructural input14977 value4856 value1 value2 = (output14977, value6896, value1) := by
  rw [input14977_def, output14977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9715_eq]
  try dsimp only
  rw [node14976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14977 input9704)).val
theorem input14978_def : input14978 = (.seq input14977 input9704) := by
  unfold input14978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14977)).val
theorem output14978_def : output14978 = (output14977) := by
  unfold output14978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14978_skip : Flapjack.WordAlloc.isSkip output14978 = false := by
  rw [output14978_def]
  conv => lhs; cbv
  try rfl
theorem node14978_eq : Flapjack.WordAlloc.removeDeadStructural input14978 value4856 value1 value2 = (output14978, value6896, value1) := by
  rw [input14978_def, output14978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9704_eq]
  try dsimp only
  rw [node14977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14978 input9703)).val
theorem input14979_def : input14979 = (.seq input14978 input9703) := by
  unfold input14979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14978 output9703)).val
theorem output14979_def : output14979 = (.seq output14978 output9703) := by
  unfold output14979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14979_skip : Flapjack.WordAlloc.isSkip output14979 = false := by
  rw [output14979_def]
  conv => lhs; cbv
  try rfl
theorem node14979_eq : Flapjack.WordAlloc.removeDeadStructural input14979 value4855 value1 value2 = (output14979, value6896, value1) := by
  rw [input14979_def, output14979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9703_eq]
  try dsimp only
  rw [node14978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14979 input9702)).val
theorem input14980_def : input14980 = (.seq input14979 input9702) := by
  unfold input14980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14979 output9702)).val
theorem output14980_def : output14980 = (.seq output14979 output9702) := by
  unfold output14980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14980_skip : Flapjack.WordAlloc.isSkip output14980 = false := by
  rw [output14980_def]
  conv => lhs; cbv
  try rfl
theorem node14980_eq : Flapjack.WordAlloc.removeDeadStructural input14980 value5 value1 value2 = (output14980, value6896, value1) := by
  rw [input14980_def, output14980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9702_eq]
  try dsimp only
  rw [node14979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14980 input9699)).val
theorem input14981_def : input14981 = (.seq input14980 input9699) := by
  unfold input14981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14980 output9699)).val
theorem output14981_def : output14981 = (.seq output14980 output9699) := by
  unfold output14981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14981_skip : Flapjack.WordAlloc.isSkip output14981 = false := by
  rw [output14981_def]
  conv => lhs; cbv
  try rfl
theorem node14981_eq : Flapjack.WordAlloc.removeDeadStructural input14981 value4848 value1 value2 = (output14981, value6896, value1) := by
  rw [input14981_def, output14981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9699_eq]
  try dsimp only
  rw [node14980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14981 input9688)).val
theorem input14982_def : input14982 = (.seq input14981 input9688) := by
  unfold input14982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14981)).val
theorem output14982_def : output14982 = (output14981) := by
  unfold output14982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14982_skip : Flapjack.WordAlloc.isSkip output14982 = false := by
  rw [output14982_def]
  conv => lhs; cbv
  try rfl
theorem node14982_eq : Flapjack.WordAlloc.removeDeadStructural input14982 value4848 value1 value2 = (output14982, value6896, value1) := by
  rw [input14982_def, output14982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9688_eq]
  try dsimp only
  rw [node14981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14982 input9687)).val
theorem input14983_def : input14983 = (.seq input14982 input9687) := by
  unfold input14983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14982 output9687)).val
theorem output14983_def : output14983 = (.seq output14982 output9687) := by
  unfold output14983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14983_skip : Flapjack.WordAlloc.isSkip output14983 = false := by
  rw [output14983_def]
  conv => lhs; cbv
  try rfl
theorem node14983_eq : Flapjack.WordAlloc.removeDeadStructural input14983 value4847 value1 value2 = (output14983, value6896, value1) := by
  rw [input14983_def, output14983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9687_eq]
  try dsimp only
  rw [node14982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14983 input9686)).val
theorem input14984_def : input14984 = (.seq input14983 input9686) := by
  unfold input14984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14983 output9686)).val
theorem output14984_def : output14984 = (.seq output14983 output9686) := by
  unfold output14984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14984_skip : Flapjack.WordAlloc.isSkip output14984 = false := by
  rw [output14984_def]
  conv => lhs; cbv
  try rfl
theorem node14984_eq : Flapjack.WordAlloc.removeDeadStructural input14984 value5 value1 value2 = (output14984, value6896, value1) := by
  rw [input14984_def, output14984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9686_eq]
  try dsimp only
  rw [node14983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14984 input9683)).val
theorem input14985_def : input14985 = (.seq input14984 input9683) := by
  unfold input14985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14984 output9683)).val
theorem output14985_def : output14985 = (.seq output14984 output9683) := by
  unfold output14985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14985_skip : Flapjack.WordAlloc.isSkip output14985 = false := by
  rw [output14985_def]
  conv => lhs; cbv
  try rfl
theorem node14985_eq : Flapjack.WordAlloc.removeDeadStructural input14985 value4840 value1 value2 = (output14985, value6896, value1) := by
  rw [input14985_def, output14985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9683_eq]
  try dsimp only
  rw [node14984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14985 input9672)).val
theorem input14986_def : input14986 = (.seq input14985 input9672) := by
  unfold input14986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14985)).val
theorem output14986_def : output14986 = (output14985) := by
  unfold output14986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14986_skip : Flapjack.WordAlloc.isSkip output14986 = false := by
  rw [output14986_def]
  conv => lhs; cbv
  try rfl
theorem node14986_eq : Flapjack.WordAlloc.removeDeadStructural input14986 value4840 value1 value2 = (output14986, value6896, value1) := by
  rw [input14986_def, output14986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9672_eq]
  try dsimp only
  rw [node14985_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14986 input9671)).val
theorem input14987_def : input14987 = (.seq input14986 input9671) := by
  unfold input14987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14986 output9671)).val
theorem output14987_def : output14987 = (.seq output14986 output9671) := by
  unfold output14987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14987_skip : Flapjack.WordAlloc.isSkip output14987 = false := by
  rw [output14987_def]
  conv => lhs; cbv
  try rfl
theorem node14987_eq : Flapjack.WordAlloc.removeDeadStructural input14987 value4839 value1 value2 = (output14987, value6896, value1) := by
  rw [input14987_def, output14987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9671_eq]
  try dsimp only
  rw [node14986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14987 input9670)).val
theorem input14988_def : input14988 = (.seq input14987 input9670) := by
  unfold input14988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14987 output9670)).val
theorem output14988_def : output14988 = (.seq output14987 output9670) := by
  unfold output14988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14988_skip : Flapjack.WordAlloc.isSkip output14988 = false := by
  rw [output14988_def]
  conv => lhs; cbv
  try rfl
theorem node14988_eq : Flapjack.WordAlloc.removeDeadStructural input14988 value5 value1 value2 = (output14988, value6896, value1) := by
  rw [input14988_def, output14988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9670_eq]
  try dsimp only
  rw [node14987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14988 input9667)).val
theorem input14989_def : input14989 = (.seq input14988 input9667) := by
  unfold input14989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14988 output9667)).val
theorem output14989_def : output14989 = (.seq output14988 output9667) := by
  unfold output14989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14989_skip : Flapjack.WordAlloc.isSkip output14989 = false := by
  rw [output14989_def]
  conv => lhs; cbv
  try rfl
theorem node14989_eq : Flapjack.WordAlloc.removeDeadStructural input14989 value4832 value1 value2 = (output14989, value6896, value1) := by
  rw [input14989_def, output14989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9667_eq]
  try dsimp only
  rw [node14988_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14989 input9656)).val
theorem input14990_def : input14990 = (.seq input14989 input9656) := by
  unfold input14990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14989)).val
theorem output14990_def : output14990 = (output14989) := by
  unfold output14990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14990_skip : Flapjack.WordAlloc.isSkip output14990 = false := by
  rw [output14990_def]
  conv => lhs; cbv
  try rfl
theorem node14990_eq : Flapjack.WordAlloc.removeDeadStructural input14990 value4832 value1 value2 = (output14990, value6896, value1) := by
  rw [input14990_def, output14990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9656_eq]
  try dsimp only
  rw [node14989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14990 input9655)).val
theorem input14991_def : input14991 = (.seq input14990 input9655) := by
  unfold input14991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14990 output9655)).val
theorem output14991_def : output14991 = (.seq output14990 output9655) := by
  unfold output14991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14991_skip : Flapjack.WordAlloc.isSkip output14991 = false := by
  rw [output14991_def]
  conv => lhs; cbv
  try rfl
theorem node14991_eq : Flapjack.WordAlloc.removeDeadStructural input14991 value4831 value1 value2 = (output14991, value6896, value1) := by
  rw [input14991_def, output14991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9655_eq]
  try dsimp only
  rw [node14990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14991 input9654)).val
theorem input14992_def : input14992 = (.seq input14991 input9654) := by
  unfold input14992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14991 output9654)).val
theorem output14992_def : output14992 = (.seq output14991 output9654) := by
  unfold output14992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14992_skip : Flapjack.WordAlloc.isSkip output14992 = false := by
  rw [output14992_def]
  conv => lhs; cbv
  try rfl
theorem node14992_eq : Flapjack.WordAlloc.removeDeadStructural input14992 value5 value1 value2 = (output14992, value6896, value1) := by
  rw [input14992_def, output14992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9654_eq]
  try dsimp only
  rw [node14991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14992 input9651)).val
theorem input14993_def : input14993 = (.seq input14992 input9651) := by
  unfold input14993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14992 output9651)).val
theorem output14993_def : output14993 = (.seq output14992 output9651) := by
  unfold output14993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14993_skip : Flapjack.WordAlloc.isSkip output14993 = false := by
  rw [output14993_def]
  conv => lhs; cbv
  try rfl
theorem node14993_eq : Flapjack.WordAlloc.removeDeadStructural input14993 value4824 value1 value2 = (output14993, value6896, value1) := by
  rw [input14993_def, output14993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9651_eq]
  try dsimp only
  rw [node14992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14993 input9640)).val
theorem input14994_def : input14994 = (.seq input14993 input9640) := by
  unfold input14994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14993)).val
theorem output14994_def : output14994 = (output14993) := by
  unfold output14994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14994_skip : Flapjack.WordAlloc.isSkip output14994 = false := by
  rw [output14994_def]
  conv => lhs; cbv
  try rfl
theorem node14994_eq : Flapjack.WordAlloc.removeDeadStructural input14994 value4824 value1 value2 = (output14994, value6896, value1) := by
  rw [input14994_def, output14994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9640_eq]
  try dsimp only
  rw [node14993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14994 input9639)).val
theorem input14995_def : input14995 = (.seq input14994 input9639) := by
  unfold input14995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14994 output9639)).val
theorem output14995_def : output14995 = (.seq output14994 output9639) := by
  unfold output14995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14995_skip : Flapjack.WordAlloc.isSkip output14995 = false := by
  rw [output14995_def]
  conv => lhs; cbv
  try rfl
theorem node14995_eq : Flapjack.WordAlloc.removeDeadStructural input14995 value4823 value1 value2 = (output14995, value6896, value1) := by
  rw [input14995_def, output14995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9639_eq]
  try dsimp only
  rw [node14994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14995 input9638)).val
theorem input14996_def : input14996 = (.seq input14995 input9638) := by
  unfold input14996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14995 output9638)).val
theorem output14996_def : output14996 = (.seq output14995 output9638) := by
  unfold output14996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14996_skip : Flapjack.WordAlloc.isSkip output14996 = false := by
  rw [output14996_def]
  conv => lhs; cbv
  try rfl
theorem node14996_eq : Flapjack.WordAlloc.removeDeadStructural input14996 value5 value1 value2 = (output14996, value6896, value1) := by
  rw [input14996_def, output14996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9638_eq]
  try dsimp only
  rw [node14995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14996 input9635)).val
theorem input14997_def : input14997 = (.seq input14996 input9635) := by
  unfold input14997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14996 output9635)).val
theorem output14997_def : output14997 = (.seq output14996 output9635) := by
  unfold output14997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14997_skip : Flapjack.WordAlloc.isSkip output14997 = false := by
  rw [output14997_def]
  conv => lhs; cbv
  try rfl
theorem node14997_eq : Flapjack.WordAlloc.removeDeadStructural input14997 value4816 value1 value2 = (output14997, value6896, value1) := by
  rw [input14997_def, output14997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9635_eq]
  try dsimp only
  rw [node14996_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14997 input9624)).val
theorem input14998_def : input14998 = (.seq input14997 input9624) := by
  unfold input14998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14997)).val
theorem output14998_def : output14998 = (output14997) := by
  unfold output14998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14998_skip : Flapjack.WordAlloc.isSkip output14998 = false := by
  rw [output14998_def]
  conv => lhs; cbv
  try rfl
theorem node14998_eq : Flapjack.WordAlloc.removeDeadStructural input14998 value4816 value1 value2 = (output14998, value6896, value1) := by
  rw [input14998_def, output14998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9624_eq]
  try dsimp only
  rw [node14997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14998 input9623)).val
theorem input14999_def : input14999 = (.seq input14998 input9623) := by
  unfold input14999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14998 output9623)).val
theorem output14999_def : output14999 = (.seq output14998 output9623) := by
  unfold output14999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14999_skip : Flapjack.WordAlloc.isSkip output14999 = false := by
  rw [output14999_def]
  conv => lhs; cbv
  try rfl
theorem node14999_eq : Flapjack.WordAlloc.removeDeadStructural input14999 value4815 value1 value2 = (output14999, value6896, value1) := by
  rw [input14999_def, output14999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9623_eq]
  try dsimp only
  rw [node14998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14999 input9622)).val
theorem input15000_def : input15000 = (.seq input14999 input9622) := by
  unfold input15000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14999 output9622)).val
theorem output15000_def : output15000 = (.seq output14999 output9622) := by
  unfold output15000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15000_skip : Flapjack.WordAlloc.isSkip output15000 = false := by
  rw [output15000_def]
  conv => lhs; cbv
  try rfl
theorem node15000_eq : Flapjack.WordAlloc.removeDeadStructural input15000 value5 value1 value2 = (output15000, value6896, value1) := by
  rw [input15000_def, output15000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9622_eq]
  try dsimp only
  rw [node14999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15000 input9619)).val
theorem input15001_def : input15001 = (.seq input15000 input9619) := by
  unfold input15001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15000 output9619)).val
theorem output15001_def : output15001 = (.seq output15000 output9619) := by
  unfold output15001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15001_skip : Flapjack.WordAlloc.isSkip output15001 = false := by
  rw [output15001_def]
  conv => lhs; cbv
  try rfl
theorem node15001_eq : Flapjack.WordAlloc.removeDeadStructural input15001 value4808 value1 value2 = (output15001, value6896, value1) := by
  rw [input15001_def, output15001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9619_eq]
  try dsimp only
  rw [node15000_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15001 input9608)).val
theorem input15002_def : input15002 = (.seq input15001 input9608) := by
  unfold input15002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15001)).val
theorem output15002_def : output15002 = (output15001) := by
  unfold output15002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15002_skip : Flapjack.WordAlloc.isSkip output15002 = false := by
  rw [output15002_def]
  conv => lhs; cbv
  try rfl
theorem node15002_eq : Flapjack.WordAlloc.removeDeadStructural input15002 value4808 value1 value2 = (output15002, value6896, value1) := by
  rw [input15002_def, output15002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9608_eq]
  try dsimp only
  rw [node15001_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15002 input9607)).val
theorem input15003_def : input15003 = (.seq input15002 input9607) := by
  unfold input15003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15002 output9607)).val
theorem output15003_def : output15003 = (.seq output15002 output9607) := by
  unfold output15003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15003_skip : Flapjack.WordAlloc.isSkip output15003 = false := by
  rw [output15003_def]
  conv => lhs; cbv
  try rfl
theorem node15003_eq : Flapjack.WordAlloc.removeDeadStructural input15003 value4807 value1 value2 = (output15003, value6896, value1) := by
  rw [input15003_def, output15003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9607_eq]
  try dsimp only
  rw [node15002_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15003 input9606)).val
theorem input15004_def : input15004 = (.seq input15003 input9606) := by
  unfold input15004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15003 output9606)).val
theorem output15004_def : output15004 = (.seq output15003 output9606) := by
  unfold output15004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15004_skip : Flapjack.WordAlloc.isSkip output15004 = false := by
  rw [output15004_def]
  conv => lhs; cbv
  try rfl
theorem node15004_eq : Flapjack.WordAlloc.removeDeadStructural input15004 value5 value1 value2 = (output15004, value6896, value1) := by
  rw [input15004_def, output15004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9606_eq]
  try dsimp only
  rw [node15003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15004 input9603)).val
theorem input15005_def : input15005 = (.seq input15004 input9603) := by
  unfold input15005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15004 output9603)).val
theorem output15005_def : output15005 = (.seq output15004 output9603) := by
  unfold output15005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15005_skip : Flapjack.WordAlloc.isSkip output15005 = false := by
  rw [output15005_def]
  conv => lhs; cbv
  try rfl
theorem node15005_eq : Flapjack.WordAlloc.removeDeadStructural input15005 value4800 value1 value2 = (output15005, value6896, value1) := by
  rw [input15005_def, output15005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9603_eq]
  try dsimp only
  rw [node15004_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15005 input9592)).val
theorem input15006_def : input15006 = (.seq input15005 input9592) := by
  unfold input15006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15005)).val
theorem output15006_def : output15006 = (output15005) := by
  unfold output15006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15006_skip : Flapjack.WordAlloc.isSkip output15006 = false := by
  rw [output15006_def]
  conv => lhs; cbv
  try rfl
theorem node15006_eq : Flapjack.WordAlloc.removeDeadStructural input15006 value4800 value1 value2 = (output15006, value6896, value1) := by
  rw [input15006_def, output15006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9592_eq]
  try dsimp only
  rw [node15005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15006 input9591)).val
theorem input15007_def : input15007 = (.seq input15006 input9591) := by
  unfold input15007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15006 output9591)).val
theorem output15007_def : output15007 = (.seq output15006 output9591) := by
  unfold output15007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15007_skip : Flapjack.WordAlloc.isSkip output15007 = false := by
  rw [output15007_def]
  conv => lhs; cbv
  try rfl
theorem node15007_eq : Flapjack.WordAlloc.removeDeadStructural input15007 value4799 value1 value2 = (output15007, value6896, value1) := by
  rw [input15007_def, output15007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9591_eq]
  try dsimp only
  rw [node15006_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15007 input9590)).val
theorem input15008_def : input15008 = (.seq input15007 input9590) := by
  unfold input15008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15007 output9590)).val
theorem output15008_def : output15008 = (.seq output15007 output9590) := by
  unfold output15008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15008_skip : Flapjack.WordAlloc.isSkip output15008 = false := by
  rw [output15008_def]
  conv => lhs; cbv
  try rfl
theorem node15008_eq : Flapjack.WordAlloc.removeDeadStructural input15008 value5 value1 value2 = (output15008, value6896, value1) := by
  rw [input15008_def, output15008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9590_eq]
  try dsimp only
  rw [node15007_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15008 input9587)).val
theorem input15009_def : input15009 = (.seq input15008 input9587) := by
  unfold input15009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15008 output9587)).val
theorem output15009_def : output15009 = (.seq output15008 output9587) := by
  unfold output15009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15009_skip : Flapjack.WordAlloc.isSkip output15009 = false := by
  rw [output15009_def]
  conv => lhs; cbv
  try rfl
theorem node15009_eq : Flapjack.WordAlloc.removeDeadStructural input15009 value4792 value1 value2 = (output15009, value6896, value1) := by
  rw [input15009_def, output15009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9587_eq]
  try dsimp only
  rw [node15008_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15009 input9576)).val
theorem input15010_def : input15010 = (.seq input15009 input9576) := by
  unfold input15010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15009)).val
theorem output15010_def : output15010 = (output15009) := by
  unfold output15010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15010_skip : Flapjack.WordAlloc.isSkip output15010 = false := by
  rw [output15010_def]
  conv => lhs; cbv
  try rfl
theorem node15010_eq : Flapjack.WordAlloc.removeDeadStructural input15010 value4792 value1 value2 = (output15010, value6896, value1) := by
  rw [input15010_def, output15010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9576_eq]
  try dsimp only
  rw [node15009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15010 input9575)).val
theorem input15011_def : input15011 = (.seq input15010 input9575) := by
  unfold input15011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15010 output9575)).val
theorem output15011_def : output15011 = (.seq output15010 output9575) := by
  unfold output15011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15011_skip : Flapjack.WordAlloc.isSkip output15011 = false := by
  rw [output15011_def]
  conv => lhs; cbv
  try rfl
theorem node15011_eq : Flapjack.WordAlloc.removeDeadStructural input15011 value4791 value1 value2 = (output15011, value6896, value1) := by
  rw [input15011_def, output15011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9575_eq]
  try dsimp only
  rw [node15010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15011 input9574)).val
theorem input15012_def : input15012 = (.seq input15011 input9574) := by
  unfold input15012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15011 output9574)).val
theorem output15012_def : output15012 = (.seq output15011 output9574) := by
  unfold output15012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15012_skip : Flapjack.WordAlloc.isSkip output15012 = false := by
  rw [output15012_def]
  conv => lhs; cbv
  try rfl
theorem node15012_eq : Flapjack.WordAlloc.removeDeadStructural input15012 value5 value1 value2 = (output15012, value6896, value1) := by
  rw [input15012_def, output15012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9574_eq]
  try dsimp only
  rw [node15011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15012 input9571)).val
theorem input15013_def : input15013 = (.seq input15012 input9571) := by
  unfold input15013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15012 output9571)).val
theorem output15013_def : output15013 = (.seq output15012 output9571) := by
  unfold output15013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15013_skip : Flapjack.WordAlloc.isSkip output15013 = false := by
  rw [output15013_def]
  conv => lhs; cbv
  try rfl
theorem node15013_eq : Flapjack.WordAlloc.removeDeadStructural input15013 value4784 value1 value2 = (output15013, value6896, value1) := by
  rw [input15013_def, output15013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9571_eq]
  try dsimp only
  rw [node15012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15013 input9560)).val
theorem input15014_def : input15014 = (.seq input15013 input9560) := by
  unfold input15014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15013)).val
theorem output15014_def : output15014 = (output15013) := by
  unfold output15014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15014_skip : Flapjack.WordAlloc.isSkip output15014 = false := by
  rw [output15014_def]
  conv => lhs; cbv
  try rfl
theorem node15014_eq : Flapjack.WordAlloc.removeDeadStructural input15014 value4784 value1 value2 = (output15014, value6896, value1) := by
  rw [input15014_def, output15014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9560_eq]
  try dsimp only
  rw [node15013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15014 input9559)).val
theorem input15015_def : input15015 = (.seq input15014 input9559) := by
  unfold input15015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15014 output9559)).val
theorem output15015_def : output15015 = (.seq output15014 output9559) := by
  unfold output15015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15015_skip : Flapjack.WordAlloc.isSkip output15015 = false := by
  rw [output15015_def]
  conv => lhs; cbv
  try rfl
theorem node15015_eq : Flapjack.WordAlloc.removeDeadStructural input15015 value4783 value1 value2 = (output15015, value6896, value1) := by
  rw [input15015_def, output15015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9559_eq]
  try dsimp only
  rw [node15014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15015 input9558)).val
theorem input15016_def : input15016 = (.seq input15015 input9558) := by
  unfold input15016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15015 output9558)).val
theorem output15016_def : output15016 = (.seq output15015 output9558) := by
  unfold output15016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15016_skip : Flapjack.WordAlloc.isSkip output15016 = false := by
  rw [output15016_def]
  conv => lhs; cbv
  try rfl
theorem node15016_eq : Flapjack.WordAlloc.removeDeadStructural input15016 value5 value1 value2 = (output15016, value6896, value1) := by
  rw [input15016_def, output15016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9558_eq]
  try dsimp only
  rw [node15015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15016 input9555)).val
theorem input15017_def : input15017 = (.seq input15016 input9555) := by
  unfold input15017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15016 output9555)).val
theorem output15017_def : output15017 = (.seq output15016 output9555) := by
  unfold output15017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15017_skip : Flapjack.WordAlloc.isSkip output15017 = false := by
  rw [output15017_def]
  conv => lhs; cbv
  try rfl
theorem node15017_eq : Flapjack.WordAlloc.removeDeadStructural input15017 value4776 value1 value2 = (output15017, value6896, value1) := by
  rw [input15017_def, output15017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9555_eq]
  try dsimp only
  rw [node15016_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15017 input9544)).val
theorem input15018_def : input15018 = (.seq input15017 input9544) := by
  unfold input15018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15017)).val
theorem output15018_def : output15018 = (output15017) := by
  unfold output15018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15018_skip : Flapjack.WordAlloc.isSkip output15018 = false := by
  rw [output15018_def]
  conv => lhs; cbv
  try rfl
theorem node15018_eq : Flapjack.WordAlloc.removeDeadStructural input15018 value4776 value1 value2 = (output15018, value6896, value1) := by
  rw [input15018_def, output15018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9544_eq]
  try dsimp only
  rw [node15017_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15018 input9543)).val
theorem input15019_def : input15019 = (.seq input15018 input9543) := by
  unfold input15019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15018 output9543)).val
theorem output15019_def : output15019 = (.seq output15018 output9543) := by
  unfold output15019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15019_skip : Flapjack.WordAlloc.isSkip output15019 = false := by
  rw [output15019_def]
  conv => lhs; cbv
  try rfl
theorem node15019_eq : Flapjack.WordAlloc.removeDeadStructural input15019 value4775 value1 value2 = (output15019, value6896, value1) := by
  rw [input15019_def, output15019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9543_eq]
  try dsimp only
  rw [node15018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15019 input9542)).val
theorem input15020_def : input15020 = (.seq input15019 input9542) := by
  unfold input15020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15019 output9542)).val
theorem output15020_def : output15020 = (.seq output15019 output9542) := by
  unfold output15020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15020_skip : Flapjack.WordAlloc.isSkip output15020 = false := by
  rw [output15020_def]
  conv => lhs; cbv
  try rfl
theorem node15020_eq : Flapjack.WordAlloc.removeDeadStructural input15020 value5 value1 value2 = (output15020, value6896, value1) := by
  rw [input15020_def, output15020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9542_eq]
  try dsimp only
  rw [node15019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15020 input9539)).val
theorem input15021_def : input15021 = (.seq input15020 input9539) := by
  unfold input15021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15020 output9539)).val
theorem output15021_def : output15021 = (.seq output15020 output9539) := by
  unfold output15021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15021_skip : Flapjack.WordAlloc.isSkip output15021 = false := by
  rw [output15021_def]
  conv => lhs; cbv
  try rfl
theorem node15021_eq : Flapjack.WordAlloc.removeDeadStructural input15021 value4768 value1 value2 = (output15021, value6896, value1) := by
  rw [input15021_def, output15021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9539_eq]
  try dsimp only
  rw [node15020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15021 input9528)).val
theorem input15022_def : input15022 = (.seq input15021 input9528) := by
  unfold input15022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15021)).val
theorem output15022_def : output15022 = (output15021) := by
  unfold output15022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15022_skip : Flapjack.WordAlloc.isSkip output15022 = false := by
  rw [output15022_def]
  conv => lhs; cbv
  try rfl
theorem node15022_eq : Flapjack.WordAlloc.removeDeadStructural input15022 value4768 value1 value2 = (output15022, value6896, value1) := by
  rw [input15022_def, output15022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9528_eq]
  try dsimp only
  rw [node15021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15022 input9527)).val
theorem input15023_def : input15023 = (.seq input15022 input9527) := by
  unfold input15023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15022 output9527)).val
theorem output15023_def : output15023 = (.seq output15022 output9527) := by
  unfold output15023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15023_skip : Flapjack.WordAlloc.isSkip output15023 = false := by
  rw [output15023_def]
  conv => lhs; cbv
  try rfl
theorem node15023_eq : Flapjack.WordAlloc.removeDeadStructural input15023 value4767 value1 value2 = (output15023, value6896, value1) := by
  rw [input15023_def, output15023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9527_eq]
  try dsimp only
  rw [node15022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15023 input9526)).val
theorem input15024_def : input15024 = (.seq input15023 input9526) := by
  unfold input15024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15023 output9526)).val
theorem output15024_def : output15024 = (.seq output15023 output9526) := by
  unfold output15024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15024_skip : Flapjack.WordAlloc.isSkip output15024 = false := by
  rw [output15024_def]
  conv => lhs; cbv
  try rfl
theorem node15024_eq : Flapjack.WordAlloc.removeDeadStructural input15024 value5 value1 value2 = (output15024, value6896, value1) := by
  rw [input15024_def, output15024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9526_eq]
  try dsimp only
  rw [node15023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15024 input9523)).val
theorem input15025_def : input15025 = (.seq input15024 input9523) := by
  unfold input15025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15024 output9523)).val
theorem output15025_def : output15025 = (.seq output15024 output9523) := by
  unfold output15025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15025_skip : Flapjack.WordAlloc.isSkip output15025 = false := by
  rw [output15025_def]
  conv => lhs; cbv
  try rfl
theorem node15025_eq : Flapjack.WordAlloc.removeDeadStructural input15025 value4760 value1 value2 = (output15025, value6896, value1) := by
  rw [input15025_def, output15025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9523_eq]
  try dsimp only
  rw [node15024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15025 input9512)).val
theorem input15026_def : input15026 = (.seq input15025 input9512) := by
  unfold input15026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15025)).val
theorem output15026_def : output15026 = (output15025) := by
  unfold output15026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15026_skip : Flapjack.WordAlloc.isSkip output15026 = false := by
  rw [output15026_def]
  conv => lhs; cbv
  try rfl
theorem node15026_eq : Flapjack.WordAlloc.removeDeadStructural input15026 value4760 value1 value2 = (output15026, value6896, value1) := by
  rw [input15026_def, output15026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9512_eq]
  try dsimp only
  rw [node15025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15026 input9511)).val
theorem input15027_def : input15027 = (.seq input15026 input9511) := by
  unfold input15027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15026 output9511)).val
theorem output15027_def : output15027 = (.seq output15026 output9511) := by
  unfold output15027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15027_skip : Flapjack.WordAlloc.isSkip output15027 = false := by
  rw [output15027_def]
  conv => lhs; cbv
  try rfl
theorem node15027_eq : Flapjack.WordAlloc.removeDeadStructural input15027 value4759 value1 value2 = (output15027, value6896, value1) := by
  rw [input15027_def, output15027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9511_eq]
  try dsimp only
  rw [node15026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15027 input9510)).val
theorem input15028_def : input15028 = (.seq input15027 input9510) := by
  unfold input15028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15027 output9510)).val
theorem output15028_def : output15028 = (.seq output15027 output9510) := by
  unfold output15028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15028_skip : Flapjack.WordAlloc.isSkip output15028 = false := by
  rw [output15028_def]
  conv => lhs; cbv
  try rfl
theorem node15028_eq : Flapjack.WordAlloc.removeDeadStructural input15028 value5 value1 value2 = (output15028, value6896, value1) := by
  rw [input15028_def, output15028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9510_eq]
  try dsimp only
  rw [node15027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15028 input9507)).val
theorem input15029_def : input15029 = (.seq input15028 input9507) := by
  unfold input15029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15028 output9507)).val
theorem output15029_def : output15029 = (.seq output15028 output9507) := by
  unfold output15029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15029_skip : Flapjack.WordAlloc.isSkip output15029 = false := by
  rw [output15029_def]
  conv => lhs; cbv
  try rfl
theorem node15029_eq : Flapjack.WordAlloc.removeDeadStructural input15029 value4752 value1 value2 = (output15029, value6896, value1) := by
  rw [input15029_def, output15029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9507_eq]
  try dsimp only
  rw [node15028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15029 input9496)).val
theorem input15030_def : input15030 = (.seq input15029 input9496) := by
  unfold input15030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15029)).val
theorem output15030_def : output15030 = (output15029) := by
  unfold output15030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15030_skip : Flapjack.WordAlloc.isSkip output15030 = false := by
  rw [output15030_def]
  conv => lhs; cbv
  try rfl
theorem node15030_eq : Flapjack.WordAlloc.removeDeadStructural input15030 value4752 value1 value2 = (output15030, value6896, value1) := by
  rw [input15030_def, output15030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9496_eq]
  try dsimp only
  rw [node15029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15030 input9495)).val
theorem input15031_def : input15031 = (.seq input15030 input9495) := by
  unfold input15031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15030 output9495)).val
theorem output15031_def : output15031 = (.seq output15030 output9495) := by
  unfold output15031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15031_skip : Flapjack.WordAlloc.isSkip output15031 = false := by
  rw [output15031_def]
  conv => lhs; cbv
  try rfl
theorem node15031_eq : Flapjack.WordAlloc.removeDeadStructural input15031 value4751 value1 value2 = (output15031, value6896, value1) := by
  rw [input15031_def, output15031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9495_eq]
  try dsimp only
  rw [node15030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15031 input9494)).val
theorem input15032_def : input15032 = (.seq input15031 input9494) := by
  unfold input15032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15031 output9494)).val
theorem output15032_def : output15032 = (.seq output15031 output9494) := by
  unfold output15032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15032_skip : Flapjack.WordAlloc.isSkip output15032 = false := by
  rw [output15032_def]
  conv => lhs; cbv
  try rfl
theorem node15032_eq : Flapjack.WordAlloc.removeDeadStructural input15032 value5 value1 value2 = (output15032, value6896, value1) := by
  rw [input15032_def, output15032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9494_eq]
  try dsimp only
  rw [node15031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15032 input9491)).val
theorem input15033_def : input15033 = (.seq input15032 input9491) := by
  unfold input15033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15032 output9491)).val
theorem output15033_def : output15033 = (.seq output15032 output9491) := by
  unfold output15033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15033_skip : Flapjack.WordAlloc.isSkip output15033 = false := by
  rw [output15033_def]
  conv => lhs; cbv
  try rfl
theorem node15033_eq : Flapjack.WordAlloc.removeDeadStructural input15033 value4744 value1 value2 = (output15033, value6896, value1) := by
  rw [input15033_def, output15033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9491_eq]
  try dsimp only
  rw [node15032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15033 input9480)).val
theorem input15034_def : input15034 = (.seq input15033 input9480) := by
  unfold input15034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15033)).val
theorem output15034_def : output15034 = (output15033) := by
  unfold output15034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15034_skip : Flapjack.WordAlloc.isSkip output15034 = false := by
  rw [output15034_def]
  conv => lhs; cbv
  try rfl
theorem node15034_eq : Flapjack.WordAlloc.removeDeadStructural input15034 value4744 value1 value2 = (output15034, value6896, value1) := by
  rw [input15034_def, output15034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9480_eq]
  try dsimp only
  rw [node15033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15034 input9479)).val
theorem input15035_def : input15035 = (.seq input15034 input9479) := by
  unfold input15035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15034 output9479)).val
theorem output15035_def : output15035 = (.seq output15034 output9479) := by
  unfold output15035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15035_skip : Flapjack.WordAlloc.isSkip output15035 = false := by
  rw [output15035_def]
  conv => lhs; cbv
  try rfl
theorem node15035_eq : Flapjack.WordAlloc.removeDeadStructural input15035 value4743 value1 value2 = (output15035, value6896, value1) := by
  rw [input15035_def, output15035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9479_eq]
  try dsimp only
  rw [node15034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15035 input9478)).val
theorem input15036_def : input15036 = (.seq input15035 input9478) := by
  unfold input15036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15035 output9478)).val
theorem output15036_def : output15036 = (.seq output15035 output9478) := by
  unfold output15036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15036_skip : Flapjack.WordAlloc.isSkip output15036 = false := by
  rw [output15036_def]
  conv => lhs; cbv
  try rfl
theorem node15036_eq : Flapjack.WordAlloc.removeDeadStructural input15036 value5 value1 value2 = (output15036, value6896, value1) := by
  rw [input15036_def, output15036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9478_eq]
  try dsimp only
  rw [node15035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15036 input9475)).val
theorem input15037_def : input15037 = (.seq input15036 input9475) := by
  unfold input15037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15036 output9475)).val
theorem output15037_def : output15037 = (.seq output15036 output9475) := by
  unfold output15037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15037_skip : Flapjack.WordAlloc.isSkip output15037 = false := by
  rw [output15037_def]
  conv => lhs; cbv
  try rfl
theorem node15037_eq : Flapjack.WordAlloc.removeDeadStructural input15037 value4736 value1 value2 = (output15037, value6896, value1) := by
  rw [input15037_def, output15037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9475_eq]
  try dsimp only
  rw [node15036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15037 input9464)).val
theorem input15038_def : input15038 = (.seq input15037 input9464) := by
  unfold input15038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15037)).val
theorem output15038_def : output15038 = (output15037) := by
  unfold output15038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15038_skip : Flapjack.WordAlloc.isSkip output15038 = false := by
  rw [output15038_def]
  conv => lhs; cbv
  try rfl
theorem node15038_eq : Flapjack.WordAlloc.removeDeadStructural input15038 value4736 value1 value2 = (output15038, value6896, value1) := by
  rw [input15038_def, output15038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9464_eq]
  try dsimp only
  rw [node15037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15038 input9463)).val
theorem input15039_def : input15039 = (.seq input15038 input9463) := by
  unfold input15039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15038 output9463)).val
theorem output15039_def : output15039 = (.seq output15038 output9463) := by
  unfold output15039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15039_skip : Flapjack.WordAlloc.isSkip output15039 = false := by
  rw [output15039_def]
  conv => lhs; cbv
  try rfl
theorem node15039_eq : Flapjack.WordAlloc.removeDeadStructural input15039 value4735 value1 value2 = (output15039, value6896, value1) := by
  rw [input15039_def, output15039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9463_eq]
  try dsimp only
  rw [node15038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15039 input9462)).val
theorem input15040_def : input15040 = (.seq input15039 input9462) := by
  unfold input15040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15039 output9462)).val
theorem output15040_def : output15040 = (.seq output15039 output9462) := by
  unfold output15040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15040_skip : Flapjack.WordAlloc.isSkip output15040 = false := by
  rw [output15040_def]
  conv => lhs; cbv
  try rfl
theorem node15040_eq : Flapjack.WordAlloc.removeDeadStructural input15040 value5 value1 value2 = (output15040, value6896, value1) := by
  rw [input15040_def, output15040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9462_eq]
  try dsimp only
  rw [node15039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15040 input9459)).val
theorem input15041_def : input15041 = (.seq input15040 input9459) := by
  unfold input15041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15040 output9459)).val
theorem output15041_def : output15041 = (.seq output15040 output9459) := by
  unfold output15041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15041_skip : Flapjack.WordAlloc.isSkip output15041 = false := by
  rw [output15041_def]
  conv => lhs; cbv
  try rfl
theorem node15041_eq : Flapjack.WordAlloc.removeDeadStructural input15041 value4728 value1 value2 = (output15041, value6896, value1) := by
  rw [input15041_def, output15041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9459_eq]
  try dsimp only
  rw [node15040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15041 input9448)).val
theorem input15042_def : input15042 = (.seq input15041 input9448) := by
  unfold input15042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15041)).val
theorem output15042_def : output15042 = (output15041) := by
  unfold output15042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15042_skip : Flapjack.WordAlloc.isSkip output15042 = false := by
  rw [output15042_def]
  conv => lhs; cbv
  try rfl
theorem node15042_eq : Flapjack.WordAlloc.removeDeadStructural input15042 value4728 value1 value2 = (output15042, value6896, value1) := by
  rw [input15042_def, output15042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9448_eq]
  try dsimp only
  rw [node15041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15042 input9447)).val
theorem input15043_def : input15043 = (.seq input15042 input9447) := by
  unfold input15043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15042 output9447)).val
theorem output15043_def : output15043 = (.seq output15042 output9447) := by
  unfold output15043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15043_skip : Flapjack.WordAlloc.isSkip output15043 = false := by
  rw [output15043_def]
  conv => lhs; cbv
  try rfl
theorem node15043_eq : Flapjack.WordAlloc.removeDeadStructural input15043 value4727 value1 value2 = (output15043, value6896, value1) := by
  rw [input15043_def, output15043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9447_eq]
  try dsimp only
  rw [node15042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15043 input9446)).val
theorem input15044_def : input15044 = (.seq input15043 input9446) := by
  unfold input15044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15043 output9446)).val
theorem output15044_def : output15044 = (.seq output15043 output9446) := by
  unfold output15044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15044_skip : Flapjack.WordAlloc.isSkip output15044 = false := by
  rw [output15044_def]
  conv => lhs; cbv
  try rfl
theorem node15044_eq : Flapjack.WordAlloc.removeDeadStructural input15044 value5 value1 value2 = (output15044, value6896, value1) := by
  rw [input15044_def, output15044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9446_eq]
  try dsimp only
  rw [node15043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15044 input9443)).val
theorem input15045_def : input15045 = (.seq input15044 input9443) := by
  unfold input15045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15044 output9443)).val
theorem output15045_def : output15045 = (.seq output15044 output9443) := by
  unfold output15045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15045_skip : Flapjack.WordAlloc.isSkip output15045 = false := by
  rw [output15045_def]
  conv => lhs; cbv
  try rfl
theorem node15045_eq : Flapjack.WordAlloc.removeDeadStructural input15045 value4720 value1 value2 = (output15045, value6896, value1) := by
  rw [input15045_def, output15045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9443_eq]
  try dsimp only
  rw [node15044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15045 input9432)).val
theorem input15046_def : input15046 = (.seq input15045 input9432) := by
  unfold input15046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15045)).val
theorem output15046_def : output15046 = (output15045) := by
  unfold output15046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15046_skip : Flapjack.WordAlloc.isSkip output15046 = false := by
  rw [output15046_def]
  conv => lhs; cbv
  try rfl
theorem node15046_eq : Flapjack.WordAlloc.removeDeadStructural input15046 value4720 value1 value2 = (output15046, value6896, value1) := by
  rw [input15046_def, output15046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9432_eq]
  try dsimp only
  rw [node15045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15046 input9431)).val
theorem input15047_def : input15047 = (.seq input15046 input9431) := by
  unfold input15047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15046 output9431)).val
theorem output15047_def : output15047 = (.seq output15046 output9431) := by
  unfold output15047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15047_skip : Flapjack.WordAlloc.isSkip output15047 = false := by
  rw [output15047_def]
  conv => lhs; cbv
  try rfl
theorem node15047_eq : Flapjack.WordAlloc.removeDeadStructural input15047 value4719 value1 value2 = (output15047, value6896, value1) := by
  rw [input15047_def, output15047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9431_eq]
  try dsimp only
  rw [node15046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15047 input9430)).val
theorem input15048_def : input15048 = (.seq input15047 input9430) := by
  unfold input15048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15047 output9430)).val
theorem output15048_def : output15048 = (.seq output15047 output9430) := by
  unfold output15048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15048_skip : Flapjack.WordAlloc.isSkip output15048 = false := by
  rw [output15048_def]
  conv => lhs; cbv
  try rfl
theorem node15048_eq : Flapjack.WordAlloc.removeDeadStructural input15048 value5 value1 value2 = (output15048, value6896, value1) := by
  rw [input15048_def, output15048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9430_eq]
  try dsimp only
  rw [node15047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15048 input9427)).val
theorem input15049_def : input15049 = (.seq input15048 input9427) := by
  unfold input15049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15048 output9427)).val
theorem output15049_def : output15049 = (.seq output15048 output9427) := by
  unfold output15049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15049_skip : Flapjack.WordAlloc.isSkip output15049 = false := by
  rw [output15049_def]
  conv => lhs; cbv
  try rfl
theorem node15049_eq : Flapjack.WordAlloc.removeDeadStructural input15049 value4712 value1 value2 = (output15049, value6896, value1) := by
  rw [input15049_def, output15049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9427_eq]
  try dsimp only
  rw [node15048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15049 input9416)).val
theorem input15050_def : input15050 = (.seq input15049 input9416) := by
  unfold input15050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15049)).val
theorem output15050_def : output15050 = (output15049) := by
  unfold output15050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15050_skip : Flapjack.WordAlloc.isSkip output15050 = false := by
  rw [output15050_def]
  conv => lhs; cbv
  try rfl
theorem node15050_eq : Flapjack.WordAlloc.removeDeadStructural input15050 value4712 value1 value2 = (output15050, value6896, value1) := by
  rw [input15050_def, output15050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9416_eq]
  try dsimp only
  rw [node15049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15050 input9415)).val
theorem input15051_def : input15051 = (.seq input15050 input9415) := by
  unfold input15051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15050 output9415)).val
theorem output15051_def : output15051 = (.seq output15050 output9415) := by
  unfold output15051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15051_skip : Flapjack.WordAlloc.isSkip output15051 = false := by
  rw [output15051_def]
  conv => lhs; cbv
  try rfl
theorem node15051_eq : Flapjack.WordAlloc.removeDeadStructural input15051 value4711 value1 value2 = (output15051, value6896, value1) := by
  rw [input15051_def, output15051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9415_eq]
  try dsimp only
  rw [node15050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15051 input9414)).val
theorem input15052_def : input15052 = (.seq input15051 input9414) := by
  unfold input15052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15051 output9414)).val
theorem output15052_def : output15052 = (.seq output15051 output9414) := by
  unfold output15052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15052_skip : Flapjack.WordAlloc.isSkip output15052 = false := by
  rw [output15052_def]
  conv => lhs; cbv
  try rfl
theorem node15052_eq : Flapjack.WordAlloc.removeDeadStructural input15052 value5 value1 value2 = (output15052, value6896, value1) := by
  rw [input15052_def, output15052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9414_eq]
  try dsimp only
  rw [node15051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15052 input9411)).val
theorem input15053_def : input15053 = (.seq input15052 input9411) := by
  unfold input15053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15052 output9411)).val
theorem output15053_def : output15053 = (.seq output15052 output9411) := by
  unfold output15053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15053_skip : Flapjack.WordAlloc.isSkip output15053 = false := by
  rw [output15053_def]
  conv => lhs; cbv
  try rfl
theorem node15053_eq : Flapjack.WordAlloc.removeDeadStructural input15053 value4704 value1 value2 = (output15053, value6896, value1) := by
  rw [input15053_def, output15053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9411_eq]
  try dsimp only
  rw [node15052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15053 input9400)).val
theorem input15054_def : input15054 = (.seq input15053 input9400) := by
  unfold input15054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15053)).val
theorem output15054_def : output15054 = (output15053) := by
  unfold output15054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15054_skip : Flapjack.WordAlloc.isSkip output15054 = false := by
  rw [output15054_def]
  conv => lhs; cbv
  try rfl
theorem node15054_eq : Flapjack.WordAlloc.removeDeadStructural input15054 value4704 value1 value2 = (output15054, value6896, value1) := by
  rw [input15054_def, output15054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9400_eq]
  try dsimp only
  rw [node15053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15054 input9399)).val
theorem input15055_def : input15055 = (.seq input15054 input9399) := by
  unfold input15055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15054 output9399)).val
theorem output15055_def : output15055 = (.seq output15054 output9399) := by
  unfold output15055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15055_skip : Flapjack.WordAlloc.isSkip output15055 = false := by
  rw [output15055_def]
  conv => lhs; cbv
  try rfl
theorem node15055_eq : Flapjack.WordAlloc.removeDeadStructural input15055 value4703 value1 value2 = (output15055, value6896, value1) := by
  rw [input15055_def, output15055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9399_eq]
  try dsimp only
  rw [node15054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15055 input9398)).val
theorem input15056_def : input15056 = (.seq input15055 input9398) := by
  unfold input15056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15055 output9398)).val
theorem output15056_def : output15056 = (.seq output15055 output9398) := by
  unfold output15056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15056_skip : Flapjack.WordAlloc.isSkip output15056 = false := by
  rw [output15056_def]
  conv => lhs; cbv
  try rfl
theorem node15056_eq : Flapjack.WordAlloc.removeDeadStructural input15056 value5 value1 value2 = (output15056, value6896, value1) := by
  rw [input15056_def, output15056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9398_eq]
  try dsimp only
  rw [node15055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15056 input9395)).val
theorem input15057_def : input15057 = (.seq input15056 input9395) := by
  unfold input15057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15056 output9395)).val
theorem output15057_def : output15057 = (.seq output15056 output9395) := by
  unfold output15057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15057_skip : Flapjack.WordAlloc.isSkip output15057 = false := by
  rw [output15057_def]
  conv => lhs; cbv
  try rfl
theorem node15057_eq : Flapjack.WordAlloc.removeDeadStructural input15057 value4696 value1 value2 = (output15057, value6896, value1) := by
  rw [input15057_def, output15057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9395_eq]
  try dsimp only
  rw [node15056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15057 input9384)).val
theorem input15058_def : input15058 = (.seq input15057 input9384) := by
  unfold input15058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15057)).val
theorem output15058_def : output15058 = (output15057) := by
  unfold output15058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15058_skip : Flapjack.WordAlloc.isSkip output15058 = false := by
  rw [output15058_def]
  conv => lhs; cbv
  try rfl
theorem node15058_eq : Flapjack.WordAlloc.removeDeadStructural input15058 value4696 value1 value2 = (output15058, value6896, value1) := by
  rw [input15058_def, output15058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9384_eq]
  try dsimp only
  rw [node15057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15058 input9383)).val
theorem input15059_def : input15059 = (.seq input15058 input9383) := by
  unfold input15059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15058 output9383)).val
theorem output15059_def : output15059 = (.seq output15058 output9383) := by
  unfold output15059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15059_skip : Flapjack.WordAlloc.isSkip output15059 = false := by
  rw [output15059_def]
  conv => lhs; cbv
  try rfl
theorem node15059_eq : Flapjack.WordAlloc.removeDeadStructural input15059 value4695 value1 value2 = (output15059, value6896, value1) := by
  rw [input15059_def, output15059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9383_eq]
  try dsimp only
  rw [node15058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15059 input9382)).val
theorem input15060_def : input15060 = (.seq input15059 input9382) := by
  unfold input15060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15059 output9382)).val
theorem output15060_def : output15060 = (.seq output15059 output9382) := by
  unfold output15060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15060_skip : Flapjack.WordAlloc.isSkip output15060 = false := by
  rw [output15060_def]
  conv => lhs; cbv
  try rfl
theorem node15060_eq : Flapjack.WordAlloc.removeDeadStructural input15060 value5 value1 value2 = (output15060, value6896, value1) := by
  rw [input15060_def, output15060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9382_eq]
  try dsimp only
  rw [node15059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15060 input9379)).val
theorem input15061_def : input15061 = (.seq input15060 input9379) := by
  unfold input15061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15060 output9379)).val
theorem output15061_def : output15061 = (.seq output15060 output9379) := by
  unfold output15061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15061_skip : Flapjack.WordAlloc.isSkip output15061 = false := by
  rw [output15061_def]
  conv => lhs; cbv
  try rfl
theorem node15061_eq : Flapjack.WordAlloc.removeDeadStructural input15061 value4688 value1 value2 = (output15061, value6896, value1) := by
  rw [input15061_def, output15061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9379_eq]
  try dsimp only
  rw [node15060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15061 input9368)).val
theorem input15062_def : input15062 = (.seq input15061 input9368) := by
  unfold input15062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15061)).val
theorem output15062_def : output15062 = (output15061) := by
  unfold output15062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15062_skip : Flapjack.WordAlloc.isSkip output15062 = false := by
  rw [output15062_def]
  conv => lhs; cbv
  try rfl
theorem node15062_eq : Flapjack.WordAlloc.removeDeadStructural input15062 value4688 value1 value2 = (output15062, value6896, value1) := by
  rw [input15062_def, output15062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9368_eq]
  try dsimp only
  rw [node15061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15062 input9367)).val
theorem input15063_def : input15063 = (.seq input15062 input9367) := by
  unfold input15063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15062 output9367)).val
theorem output15063_def : output15063 = (.seq output15062 output9367) := by
  unfold output15063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15063_skip : Flapjack.WordAlloc.isSkip output15063 = false := by
  rw [output15063_def]
  conv => lhs; cbv
  try rfl
theorem node15063_eq : Flapjack.WordAlloc.removeDeadStructural input15063 value4687 value1 value2 = (output15063, value6896, value1) := by
  rw [input15063_def, output15063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9367_eq]
  try dsimp only
  rw [node15062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15063 input9366)).val
theorem input15064_def : input15064 = (.seq input15063 input9366) := by
  unfold input15064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15063 output9366)).val
theorem output15064_def : output15064 = (.seq output15063 output9366) := by
  unfold output15064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15064_skip : Flapjack.WordAlloc.isSkip output15064 = false := by
  rw [output15064_def]
  conv => lhs; cbv
  try rfl
theorem node15064_eq : Flapjack.WordAlloc.removeDeadStructural input15064 value5 value1 value2 = (output15064, value6896, value1) := by
  rw [input15064_def, output15064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9366_eq]
  try dsimp only
  rw [node15063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15064 input9363)).val
theorem input15065_def : input15065 = (.seq input15064 input9363) := by
  unfold input15065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15064 output9363)).val
theorem output15065_def : output15065 = (.seq output15064 output9363) := by
  unfold output15065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15065_skip : Flapjack.WordAlloc.isSkip output15065 = false := by
  rw [output15065_def]
  conv => lhs; cbv
  try rfl
theorem node15065_eq : Flapjack.WordAlloc.removeDeadStructural input15065 value4680 value1 value2 = (output15065, value6896, value1) := by
  rw [input15065_def, output15065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9363_eq]
  try dsimp only
  rw [node15064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15065 input9352)).val
theorem input15066_def : input15066 = (.seq input15065 input9352) := by
  unfold input15066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15065)).val
theorem output15066_def : output15066 = (output15065) := by
  unfold output15066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15066_skip : Flapjack.WordAlloc.isSkip output15066 = false := by
  rw [output15066_def]
  conv => lhs; cbv
  try rfl
theorem node15066_eq : Flapjack.WordAlloc.removeDeadStructural input15066 value4680 value1 value2 = (output15066, value6896, value1) := by
  rw [input15066_def, output15066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9352_eq]
  try dsimp only
  rw [node15065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15066 input9351)).val
theorem input15067_def : input15067 = (.seq input15066 input9351) := by
  unfold input15067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15066 output9351)).val
theorem output15067_def : output15067 = (.seq output15066 output9351) := by
  unfold output15067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15067_skip : Flapjack.WordAlloc.isSkip output15067 = false := by
  rw [output15067_def]
  conv => lhs; cbv
  try rfl
theorem node15067_eq : Flapjack.WordAlloc.removeDeadStructural input15067 value4679 value1 value2 = (output15067, value6896, value1) := by
  rw [input15067_def, output15067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9351_eq]
  try dsimp only
  rw [node15066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15067 input9350)).val
theorem input15068_def : input15068 = (.seq input15067 input9350) := by
  unfold input15068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15067 output9350)).val
theorem output15068_def : output15068 = (.seq output15067 output9350) := by
  unfold output15068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15068_skip : Flapjack.WordAlloc.isSkip output15068 = false := by
  rw [output15068_def]
  conv => lhs; cbv
  try rfl
theorem node15068_eq : Flapjack.WordAlloc.removeDeadStructural input15068 value5 value1 value2 = (output15068, value6896, value1) := by
  rw [input15068_def, output15068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9350_eq]
  try dsimp only
  rw [node15067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15068 input9347)).val
theorem input15069_def : input15069 = (.seq input15068 input9347) := by
  unfold input15069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15068 output9347)).val
theorem output15069_def : output15069 = (.seq output15068 output9347) := by
  unfold output15069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15069_skip : Flapjack.WordAlloc.isSkip output15069 = false := by
  rw [output15069_def]
  conv => lhs; cbv
  try rfl
theorem node15069_eq : Flapjack.WordAlloc.removeDeadStructural input15069 value4672 value1 value2 = (output15069, value6896, value1) := by
  rw [input15069_def, output15069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9347_eq]
  try dsimp only
  rw [node15068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15069 input9336)).val
theorem input15070_def : input15070 = (.seq input15069 input9336) := by
  unfold input15070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15069)).val
theorem output15070_def : output15070 = (output15069) := by
  unfold output15070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15070_skip : Flapjack.WordAlloc.isSkip output15070 = false := by
  rw [output15070_def]
  conv => lhs; cbv
  try rfl
theorem node15070_eq : Flapjack.WordAlloc.removeDeadStructural input15070 value4672 value1 value2 = (output15070, value6896, value1) := by
  rw [input15070_def, output15070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9336_eq]
  try dsimp only
  rw [node15069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15070 input9335)).val
theorem input15071_def : input15071 = (.seq input15070 input9335) := by
  unfold input15071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15070 output9335)).val
theorem output15071_def : output15071 = (.seq output15070 output9335) := by
  unfold output15071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15071_skip : Flapjack.WordAlloc.isSkip output15071 = false := by
  rw [output15071_def]
  conv => lhs; cbv
  try rfl
theorem node15071_eq : Flapjack.WordAlloc.removeDeadStructural input15071 value4671 value1 value2 = (output15071, value6896, value1) := by
  rw [input15071_def, output15071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9335_eq]
  try dsimp only
  rw [node15070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15071 input9334)).val
theorem input15072_def : input15072 = (.seq input15071 input9334) := by
  unfold input15072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15071 output9334)).val
theorem output15072_def : output15072 = (.seq output15071 output9334) := by
  unfold output15072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15072_skip : Flapjack.WordAlloc.isSkip output15072 = false := by
  rw [output15072_def]
  conv => lhs; cbv
  try rfl
theorem node15072_eq : Flapjack.WordAlloc.removeDeadStructural input15072 value5 value1 value2 = (output15072, value6896, value1) := by
  rw [input15072_def, output15072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9334_eq]
  try dsimp only
  rw [node15071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15072 input9331)).val
theorem input15073_def : input15073 = (.seq input15072 input9331) := by
  unfold input15073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15072 output9331)).val
theorem output15073_def : output15073 = (.seq output15072 output9331) := by
  unfold output15073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15073_skip : Flapjack.WordAlloc.isSkip output15073 = false := by
  rw [output15073_def]
  conv => lhs; cbv
  try rfl
theorem node15073_eq : Flapjack.WordAlloc.removeDeadStructural input15073 value4664 value1 value2 = (output15073, value6896, value1) := by
  rw [input15073_def, output15073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9331_eq]
  try dsimp only
  rw [node15072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15073 input9320)).val
theorem input15074_def : input15074 = (.seq input15073 input9320) := by
  unfold input15074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15073)).val
theorem output15074_def : output15074 = (output15073) := by
  unfold output15074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15074_skip : Flapjack.WordAlloc.isSkip output15074 = false := by
  rw [output15074_def]
  conv => lhs; cbv
  try rfl
theorem node15074_eq : Flapjack.WordAlloc.removeDeadStructural input15074 value4664 value1 value2 = (output15074, value6896, value1) := by
  rw [input15074_def, output15074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9320_eq]
  try dsimp only
  rw [node15073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15074 input9319)).val
theorem input15075_def : input15075 = (.seq input15074 input9319) := by
  unfold input15075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15074 output9319)).val
theorem output15075_def : output15075 = (.seq output15074 output9319) := by
  unfold output15075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15075_skip : Flapjack.WordAlloc.isSkip output15075 = false := by
  rw [output15075_def]
  conv => lhs; cbv
  try rfl
theorem node15075_eq : Flapjack.WordAlloc.removeDeadStructural input15075 value4663 value1 value2 = (output15075, value6896, value1) := by
  rw [input15075_def, output15075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9319_eq]
  try dsimp only
  rw [node15074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15075 input9318)).val
theorem input15076_def : input15076 = (.seq input15075 input9318) := by
  unfold input15076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15075 output9318)).val
theorem output15076_def : output15076 = (.seq output15075 output9318) := by
  unfold output15076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15076_skip : Flapjack.WordAlloc.isSkip output15076 = false := by
  rw [output15076_def]
  conv => lhs; cbv
  try rfl
theorem node15076_eq : Flapjack.WordAlloc.removeDeadStructural input15076 value5 value1 value2 = (output15076, value6896, value1) := by
  rw [input15076_def, output15076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9318_eq]
  try dsimp only
  rw [node15075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15076 input9315)).val
theorem input15077_def : input15077 = (.seq input15076 input9315) := by
  unfold input15077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15076 output9315)).val
theorem output15077_def : output15077 = (.seq output15076 output9315) := by
  unfold output15077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15077_skip : Flapjack.WordAlloc.isSkip output15077 = false := by
  rw [output15077_def]
  conv => lhs; cbv
  try rfl
theorem node15077_eq : Flapjack.WordAlloc.removeDeadStructural input15077 value4656 value1 value2 = (output15077, value6896, value1) := by
  rw [input15077_def, output15077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9315_eq]
  try dsimp only
  rw [node15076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15077 input9304)).val
theorem input15078_def : input15078 = (.seq input15077 input9304) := by
  unfold input15078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15077)).val
theorem output15078_def : output15078 = (output15077) := by
  unfold output15078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15078_skip : Flapjack.WordAlloc.isSkip output15078 = false := by
  rw [output15078_def]
  conv => lhs; cbv
  try rfl
theorem node15078_eq : Flapjack.WordAlloc.removeDeadStructural input15078 value4656 value1 value2 = (output15078, value6896, value1) := by
  rw [input15078_def, output15078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9304_eq]
  try dsimp only
  rw [node15077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15078 input9303)).val
theorem input15079_def : input15079 = (.seq input15078 input9303) := by
  unfold input15079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15078 output9303)).val
theorem output15079_def : output15079 = (.seq output15078 output9303) := by
  unfold output15079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15079_skip : Flapjack.WordAlloc.isSkip output15079 = false := by
  rw [output15079_def]
  conv => lhs; cbv
  try rfl
theorem node15079_eq : Flapjack.WordAlloc.removeDeadStructural input15079 value4655 value1 value2 = (output15079, value6896, value1) := by
  rw [input15079_def, output15079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9303_eq]
  try dsimp only
  rw [node15078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15079 input9302)).val
theorem input15080_def : input15080 = (.seq input15079 input9302) := by
  unfold input15080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15079 output9302)).val
theorem output15080_def : output15080 = (.seq output15079 output9302) := by
  unfold output15080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15080_skip : Flapjack.WordAlloc.isSkip output15080 = false := by
  rw [output15080_def]
  conv => lhs; cbv
  try rfl
theorem node15080_eq : Flapjack.WordAlloc.removeDeadStructural input15080 value5 value1 value2 = (output15080, value6896, value1) := by
  rw [input15080_def, output15080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9302_eq]
  try dsimp only
  rw [node15079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15080 input9299)).val
theorem input15081_def : input15081 = (.seq input15080 input9299) := by
  unfold input15081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15080 output9299)).val
theorem output15081_def : output15081 = (.seq output15080 output9299) := by
  unfold output15081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15081_skip : Flapjack.WordAlloc.isSkip output15081 = false := by
  rw [output15081_def]
  conv => lhs; cbv
  try rfl
theorem node15081_eq : Flapjack.WordAlloc.removeDeadStructural input15081 value4648 value1 value2 = (output15081, value6896, value1) := by
  rw [input15081_def, output15081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9299_eq]
  try dsimp only
  rw [node15080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15081 input9288)).val
theorem input15082_def : input15082 = (.seq input15081 input9288) := by
  unfold input15082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15081)).val
theorem output15082_def : output15082 = (output15081) := by
  unfold output15082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15082_skip : Flapjack.WordAlloc.isSkip output15082 = false := by
  rw [output15082_def]
  conv => lhs; cbv
  try rfl
theorem node15082_eq : Flapjack.WordAlloc.removeDeadStructural input15082 value4648 value1 value2 = (output15082, value6896, value1) := by
  rw [input15082_def, output15082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9288_eq]
  try dsimp only
  rw [node15081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15082 input9287)).val
theorem input15083_def : input15083 = (.seq input15082 input9287) := by
  unfold input15083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15082 output9287)).val
theorem output15083_def : output15083 = (.seq output15082 output9287) := by
  unfold output15083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15083_skip : Flapjack.WordAlloc.isSkip output15083 = false := by
  rw [output15083_def]
  conv => lhs; cbv
  try rfl
theorem node15083_eq : Flapjack.WordAlloc.removeDeadStructural input15083 value4647 value1 value2 = (output15083, value6896, value1) := by
  rw [input15083_def, output15083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9287_eq]
  try dsimp only
  rw [node15082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15083 input9286)).val
theorem input15084_def : input15084 = (.seq input15083 input9286) := by
  unfold input15084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15083 output9286)).val
theorem output15084_def : output15084 = (.seq output15083 output9286) := by
  unfold output15084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15084_skip : Flapjack.WordAlloc.isSkip output15084 = false := by
  rw [output15084_def]
  conv => lhs; cbv
  try rfl
theorem node15084_eq : Flapjack.WordAlloc.removeDeadStructural input15084 value5 value1 value2 = (output15084, value6896, value1) := by
  rw [input15084_def, output15084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9286_eq]
  try dsimp only
  rw [node15083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15084 input9283)).val
theorem input15085_def : input15085 = (.seq input15084 input9283) := by
  unfold input15085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15084 output9283)).val
theorem output15085_def : output15085 = (.seq output15084 output9283) := by
  unfold output15085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15085_skip : Flapjack.WordAlloc.isSkip output15085 = false := by
  rw [output15085_def]
  conv => lhs; cbv
  try rfl
theorem node15085_eq : Flapjack.WordAlloc.removeDeadStructural input15085 value4640 value1 value2 = (output15085, value6896, value1) := by
  rw [input15085_def, output15085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9283_eq]
  try dsimp only
  rw [node15084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15085 input9272)).val
theorem input15086_def : input15086 = (.seq input15085 input9272) := by
  unfold input15086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15085)).val
theorem output15086_def : output15086 = (output15085) := by
  unfold output15086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15086_skip : Flapjack.WordAlloc.isSkip output15086 = false := by
  rw [output15086_def]
  conv => lhs; cbv
  try rfl
theorem node15086_eq : Flapjack.WordAlloc.removeDeadStructural input15086 value4640 value1 value2 = (output15086, value6896, value1) := by
  rw [input15086_def, output15086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9272_eq]
  try dsimp only
  rw [node15085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15086 input9271)).val
theorem input15087_def : input15087 = (.seq input15086 input9271) := by
  unfold input15087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15086 output9271)).val
theorem output15087_def : output15087 = (.seq output15086 output9271) := by
  unfold output15087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15087_skip : Flapjack.WordAlloc.isSkip output15087 = false := by
  rw [output15087_def]
  conv => lhs; cbv
  try rfl
theorem node15087_eq : Flapjack.WordAlloc.removeDeadStructural input15087 value4639 value1 value2 = (output15087, value6896, value1) := by
  rw [input15087_def, output15087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9271_eq]
  try dsimp only
  rw [node15086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15087 input9270)).val
theorem input15088_def : input15088 = (.seq input15087 input9270) := by
  unfold input15088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15087 output9270)).val
theorem output15088_def : output15088 = (.seq output15087 output9270) := by
  unfold output15088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15088_skip : Flapjack.WordAlloc.isSkip output15088 = false := by
  rw [output15088_def]
  conv => lhs; cbv
  try rfl
theorem node15088_eq : Flapjack.WordAlloc.removeDeadStructural input15088 value5 value1 value2 = (output15088, value6896, value1) := by
  rw [input15088_def, output15088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9270_eq]
  try dsimp only
  rw [node15087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15088 input9267)).val
theorem input15089_def : input15089 = (.seq input15088 input9267) := by
  unfold input15089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15088 output9267)).val
theorem output15089_def : output15089 = (.seq output15088 output9267) := by
  unfold output15089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15089_skip : Flapjack.WordAlloc.isSkip output15089 = false := by
  rw [output15089_def]
  conv => lhs; cbv
  try rfl
theorem node15089_eq : Flapjack.WordAlloc.removeDeadStructural input15089 value4632 value1 value2 = (output15089, value6896, value1) := by
  rw [input15089_def, output15089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9267_eq]
  try dsimp only
  rw [node15088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15089 input9256)).val
theorem input15090_def : input15090 = (.seq input15089 input9256) := by
  unfold input15090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15089)).val
theorem output15090_def : output15090 = (output15089) := by
  unfold output15090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15090_skip : Flapjack.WordAlloc.isSkip output15090 = false := by
  rw [output15090_def]
  conv => lhs; cbv
  try rfl
theorem node15090_eq : Flapjack.WordAlloc.removeDeadStructural input15090 value4632 value1 value2 = (output15090, value6896, value1) := by
  rw [input15090_def, output15090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9256_eq]
  try dsimp only
  rw [node15089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15090 input9255)).val
theorem input15091_def : input15091 = (.seq input15090 input9255) := by
  unfold input15091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15090 output9255)).val
theorem output15091_def : output15091 = (.seq output15090 output9255) := by
  unfold output15091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15091_skip : Flapjack.WordAlloc.isSkip output15091 = false := by
  rw [output15091_def]
  conv => lhs; cbv
  try rfl
theorem node15091_eq : Flapjack.WordAlloc.removeDeadStructural input15091 value4631 value1 value2 = (output15091, value6896, value1) := by
  rw [input15091_def, output15091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9255_eq]
  try dsimp only
  rw [node15090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15091 input9254)).val
theorem input15092_def : input15092 = (.seq input15091 input9254) := by
  unfold input15092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15091 output9254)).val
theorem output15092_def : output15092 = (.seq output15091 output9254) := by
  unfold output15092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15092_skip : Flapjack.WordAlloc.isSkip output15092 = false := by
  rw [output15092_def]
  conv => lhs; cbv
  try rfl
theorem node15092_eq : Flapjack.WordAlloc.removeDeadStructural input15092 value5 value1 value2 = (output15092, value6896, value1) := by
  rw [input15092_def, output15092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9254_eq]
  try dsimp only
  rw [node15091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15092 input9251)).val
theorem input15093_def : input15093 = (.seq input15092 input9251) := by
  unfold input15093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15092 output9251)).val
theorem output15093_def : output15093 = (.seq output15092 output9251) := by
  unfold output15093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15093_skip : Flapjack.WordAlloc.isSkip output15093 = false := by
  rw [output15093_def]
  conv => lhs; cbv
  try rfl
theorem node15093_eq : Flapjack.WordAlloc.removeDeadStructural input15093 value4624 value1 value2 = (output15093, value6896, value1) := by
  rw [input15093_def, output15093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9251_eq]
  try dsimp only
  rw [node15092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15093 input9240)).val
theorem input15094_def : input15094 = (.seq input15093 input9240) := by
  unfold input15094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15093)).val
theorem output15094_def : output15094 = (output15093) := by
  unfold output15094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15094_skip : Flapjack.WordAlloc.isSkip output15094 = false := by
  rw [output15094_def]
  conv => lhs; cbv
  try rfl
theorem node15094_eq : Flapjack.WordAlloc.removeDeadStructural input15094 value4624 value1 value2 = (output15094, value6896, value1) := by
  rw [input15094_def, output15094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9240_eq]
  try dsimp only
  rw [node15093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15094 input9239)).val
theorem input15095_def : input15095 = (.seq input15094 input9239) := by
  unfold input15095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15094 output9239)).val
theorem output15095_def : output15095 = (.seq output15094 output9239) := by
  unfold output15095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15095_skip : Flapjack.WordAlloc.isSkip output15095 = false := by
  rw [output15095_def]
  conv => lhs; cbv
  try rfl
theorem node15095_eq : Flapjack.WordAlloc.removeDeadStructural input15095 value4623 value1 value2 = (output15095, value6896, value1) := by
  rw [input15095_def, output15095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9239_eq]
  try dsimp only
  rw [node15094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15095 input9238)).val
theorem input15096_def : input15096 = (.seq input15095 input9238) := by
  unfold input15096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15095 output9238)).val
theorem output15096_def : output15096 = (.seq output15095 output9238) := by
  unfold output15096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15096_skip : Flapjack.WordAlloc.isSkip output15096 = false := by
  rw [output15096_def]
  conv => lhs; cbv
  try rfl
theorem node15096_eq : Flapjack.WordAlloc.removeDeadStructural input15096 value5 value1 value2 = (output15096, value6896, value1) := by
  rw [input15096_def, output15096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9238_eq]
  try dsimp only
  rw [node15095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15096 input9235)).val
theorem input15097_def : input15097 = (.seq input15096 input9235) := by
  unfold input15097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15096 output9235)).val
theorem output15097_def : output15097 = (.seq output15096 output9235) := by
  unfold output15097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15097_skip : Flapjack.WordAlloc.isSkip output15097 = false := by
  rw [output15097_def]
  conv => lhs; cbv
  try rfl
theorem node15097_eq : Flapjack.WordAlloc.removeDeadStructural input15097 value4616 value1 value2 = (output15097, value6896, value1) := by
  rw [input15097_def, output15097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9235_eq]
  try dsimp only
  rw [node15096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15097 input9224)).val
theorem input15098_def : input15098 = (.seq input15097 input9224) := by
  unfold input15098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15097)).val
theorem output15098_def : output15098 = (output15097) := by
  unfold output15098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15098_skip : Flapjack.WordAlloc.isSkip output15098 = false := by
  rw [output15098_def]
  conv => lhs; cbv
  try rfl
theorem node15098_eq : Flapjack.WordAlloc.removeDeadStructural input15098 value4616 value1 value2 = (output15098, value6896, value1) := by
  rw [input15098_def, output15098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9224_eq]
  try dsimp only
  rw [node15097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15098 input9223)).val
theorem input15099_def : input15099 = (.seq input15098 input9223) := by
  unfold input15099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15098 output9223)).val
theorem output15099_def : output15099 = (.seq output15098 output9223) := by
  unfold output15099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15099_skip : Flapjack.WordAlloc.isSkip output15099 = false := by
  rw [output15099_def]
  conv => lhs; cbv
  try rfl
theorem node15099_eq : Flapjack.WordAlloc.removeDeadStructural input15099 value4615 value1 value2 = (output15099, value6896, value1) := by
  rw [input15099_def, output15099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9223_eq]
  try dsimp only
  rw [node15098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15099 input9222)).val
theorem input15100_def : input15100 = (.seq input15099 input9222) := by
  unfold input15100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15099 output9222)).val
theorem output15100_def : output15100 = (.seq output15099 output9222) := by
  unfold output15100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15100_skip : Flapjack.WordAlloc.isSkip output15100 = false := by
  rw [output15100_def]
  conv => lhs; cbv
  try rfl
theorem node15100_eq : Flapjack.WordAlloc.removeDeadStructural input15100 value5 value1 value2 = (output15100, value6896, value1) := by
  rw [input15100_def, output15100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9222_eq]
  try dsimp only
  rw [node15099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15100 input9219)).val
theorem input15101_def : input15101 = (.seq input15100 input9219) := by
  unfold input15101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15100 output9219)).val
theorem output15101_def : output15101 = (.seq output15100 output9219) := by
  unfold output15101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15101_skip : Flapjack.WordAlloc.isSkip output15101 = false := by
  rw [output15101_def]
  conv => lhs; cbv
  try rfl
theorem node15101_eq : Flapjack.WordAlloc.removeDeadStructural input15101 value4608 value1 value2 = (output15101, value6896, value1) := by
  rw [input15101_def, output15101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9219_eq]
  try dsimp only
  rw [node15100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15101 input9208)).val
theorem input15102_def : input15102 = (.seq input15101 input9208) := by
  unfold input15102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15101)).val
theorem output15102_def : output15102 = (output15101) := by
  unfold output15102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15102_skip : Flapjack.WordAlloc.isSkip output15102 = false := by
  rw [output15102_def]
  conv => lhs; cbv
  try rfl
theorem node15102_eq : Flapjack.WordAlloc.removeDeadStructural input15102 value4608 value1 value2 = (output15102, value6896, value1) := by
  rw [input15102_def, output15102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9208_eq]
  try dsimp only
  rw [node15101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15102 input9207)).val
theorem input15103_def : input15103 = (.seq input15102 input9207) := by
  unfold input15103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15102 output9207)).val
theorem output15103_def : output15103 = (.seq output15102 output9207) := by
  unfold output15103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15103_skip : Flapjack.WordAlloc.isSkip output15103 = false := by
  rw [output15103_def]
  conv => lhs; cbv
  try rfl
theorem node15103_eq : Flapjack.WordAlloc.removeDeadStructural input15103 value4607 value1 value2 = (output15103, value6896, value1) := by
  rw [input15103_def, output15103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9207_eq]
  try dsimp only
  rw [node15102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node15103_eq
end InitECandidate.Proofs.DeadStages713
