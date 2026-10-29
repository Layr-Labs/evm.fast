import InitECandidate.Proofs.DeadStages713.Chunk065
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input16896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16895 input2038)).val
theorem input16896_def : input16896 = (.seq input16895 input2038) := by
  unfold input16896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16895 output2038)).val
theorem output16896_def : output16896 = (.seq output16895 output2038) := by
  unfold output16896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16896_skip : Flapjack.WordAlloc.isSkip output16896 = false := by
  rw [output16896_def]
  conv => lhs; cbv
  try rfl
theorem node16896_eq : Flapjack.WordAlloc.removeDeadStructural input16896 value5 value1 value2 = (output16896, value6896, value1) := by
  rw [input16896_def, output16896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2038_eq]
  try dsimp only
  rw [node16895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16896 input2035)).val
theorem input16897_def : input16897 = (.seq input16896 input2035) := by
  unfold input16897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16896 output2035)).val
theorem output16897_def : output16897 = (.seq output16896 output2035) := by
  unfold output16897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16897_skip : Flapjack.WordAlloc.isSkip output16897 = false := by
  rw [output16897_def]
  conv => lhs; cbv
  try rfl
theorem node16897_eq : Flapjack.WordAlloc.removeDeadStructural input16897 value1016 value1 value2 = (output16897, value6896, value1) := by
  rw [input16897_def, output16897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2035_eq]
  try dsimp only
  rw [node16896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16897 input2024)).val
theorem input16898_def : input16898 = (.seq input16897 input2024) := by
  unfold input16898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16897)).val
theorem output16898_def : output16898 = (output16897) := by
  unfold output16898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16898_skip : Flapjack.WordAlloc.isSkip output16898 = false := by
  rw [output16898_def]
  conv => lhs; cbv
  try rfl
theorem node16898_eq : Flapjack.WordAlloc.removeDeadStructural input16898 value1016 value1 value2 = (output16898, value6896, value1) := by
  rw [input16898_def, output16898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2024_eq]
  try dsimp only
  rw [node16897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16898 input2023)).val
theorem input16899_def : input16899 = (.seq input16898 input2023) := by
  unfold input16899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16898 output2023)).val
theorem output16899_def : output16899 = (.seq output16898 output2023) := by
  unfold output16899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16899_skip : Flapjack.WordAlloc.isSkip output16899 = false := by
  rw [output16899_def]
  conv => lhs; cbv
  try rfl
theorem node16899_eq : Flapjack.WordAlloc.removeDeadStructural input16899 value1015 value1 value2 = (output16899, value6896, value1) := by
  rw [input16899_def, output16899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2023_eq]
  try dsimp only
  rw [node16898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16899 input2022)).val
theorem input16900_def : input16900 = (.seq input16899 input2022) := by
  unfold input16900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16899 output2022)).val
theorem output16900_def : output16900 = (.seq output16899 output2022) := by
  unfold output16900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16900_skip : Flapjack.WordAlloc.isSkip output16900 = false := by
  rw [output16900_def]
  conv => lhs; cbv
  try rfl
theorem node16900_eq : Flapjack.WordAlloc.removeDeadStructural input16900 value5 value1 value2 = (output16900, value6896, value1) := by
  rw [input16900_def, output16900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2022_eq]
  try dsimp only
  rw [node16899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16900 input2019)).val
theorem input16901_def : input16901 = (.seq input16900 input2019) := by
  unfold input16901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16900 output2019)).val
theorem output16901_def : output16901 = (.seq output16900 output2019) := by
  unfold output16901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16901_skip : Flapjack.WordAlloc.isSkip output16901 = false := by
  rw [output16901_def]
  conv => lhs; cbv
  try rfl
theorem node16901_eq : Flapjack.WordAlloc.removeDeadStructural input16901 value1008 value1 value2 = (output16901, value6896, value1) := by
  rw [input16901_def, output16901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2019_eq]
  try dsimp only
  rw [node16900_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16901 input2008)).val
theorem input16902_def : input16902 = (.seq input16901 input2008) := by
  unfold input16902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16901)).val
theorem output16902_def : output16902 = (output16901) := by
  unfold output16902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16902_skip : Flapjack.WordAlloc.isSkip output16902 = false := by
  rw [output16902_def]
  conv => lhs; cbv
  try rfl
theorem node16902_eq : Flapjack.WordAlloc.removeDeadStructural input16902 value1008 value1 value2 = (output16902, value6896, value1) := by
  rw [input16902_def, output16902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2008_eq]
  try dsimp only
  rw [node16901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16902 input2007)).val
theorem input16903_def : input16903 = (.seq input16902 input2007) := by
  unfold input16903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16902 output2007)).val
theorem output16903_def : output16903 = (.seq output16902 output2007) := by
  unfold output16903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16903_skip : Flapjack.WordAlloc.isSkip output16903 = false := by
  rw [output16903_def]
  conv => lhs; cbv
  try rfl
theorem node16903_eq : Flapjack.WordAlloc.removeDeadStructural input16903 value1007 value1 value2 = (output16903, value6896, value1) := by
  rw [input16903_def, output16903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2007_eq]
  try dsimp only
  rw [node16902_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16903 input2006)).val
theorem input16904_def : input16904 = (.seq input16903 input2006) := by
  unfold input16904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16903 output2006)).val
theorem output16904_def : output16904 = (.seq output16903 output2006) := by
  unfold output16904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16904_skip : Flapjack.WordAlloc.isSkip output16904 = false := by
  rw [output16904_def]
  conv => lhs; cbv
  try rfl
theorem node16904_eq : Flapjack.WordAlloc.removeDeadStructural input16904 value5 value1 value2 = (output16904, value6896, value1) := by
  rw [input16904_def, output16904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2006_eq]
  try dsimp only
  rw [node16903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16904 input2003)).val
theorem input16905_def : input16905 = (.seq input16904 input2003) := by
  unfold input16905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16904 output2003)).val
theorem output16905_def : output16905 = (.seq output16904 output2003) := by
  unfold output16905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16905_skip : Flapjack.WordAlloc.isSkip output16905 = false := by
  rw [output16905_def]
  conv => lhs; cbv
  try rfl
theorem node16905_eq : Flapjack.WordAlloc.removeDeadStructural input16905 value1000 value1 value2 = (output16905, value6896, value1) := by
  rw [input16905_def, output16905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2003_eq]
  try dsimp only
  rw [node16904_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16905 input1992)).val
theorem input16906_def : input16906 = (.seq input16905 input1992) := by
  unfold input16906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16905)).val
theorem output16906_def : output16906 = (output16905) := by
  unfold output16906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16906_skip : Flapjack.WordAlloc.isSkip output16906 = false := by
  rw [output16906_def]
  conv => lhs; cbv
  try rfl
theorem node16906_eq : Flapjack.WordAlloc.removeDeadStructural input16906 value1000 value1 value2 = (output16906, value6896, value1) := by
  rw [input16906_def, output16906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1992_eq]
  try dsimp only
  rw [node16905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16906 input1991)).val
theorem input16907_def : input16907 = (.seq input16906 input1991) := by
  unfold input16907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16906 output1991)).val
theorem output16907_def : output16907 = (.seq output16906 output1991) := by
  unfold output16907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16907_skip : Flapjack.WordAlloc.isSkip output16907 = false := by
  rw [output16907_def]
  conv => lhs; cbv
  try rfl
theorem node16907_eq : Flapjack.WordAlloc.removeDeadStructural input16907 value999 value1 value2 = (output16907, value6896, value1) := by
  rw [input16907_def, output16907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1991_eq]
  try dsimp only
  rw [node16906_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16907 input1990)).val
theorem input16908_def : input16908 = (.seq input16907 input1990) := by
  unfold input16908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16907 output1990)).val
theorem output16908_def : output16908 = (.seq output16907 output1990) := by
  unfold output16908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16908_skip : Flapjack.WordAlloc.isSkip output16908 = false := by
  rw [output16908_def]
  conv => lhs; cbv
  try rfl
theorem node16908_eq : Flapjack.WordAlloc.removeDeadStructural input16908 value5 value1 value2 = (output16908, value6896, value1) := by
  rw [input16908_def, output16908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1990_eq]
  try dsimp only
  rw [node16907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16908 input1987)).val
theorem input16909_def : input16909 = (.seq input16908 input1987) := by
  unfold input16909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16908 output1987)).val
theorem output16909_def : output16909 = (.seq output16908 output1987) := by
  unfold output16909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16909_skip : Flapjack.WordAlloc.isSkip output16909 = false := by
  rw [output16909_def]
  conv => lhs; cbv
  try rfl
theorem node16909_eq : Flapjack.WordAlloc.removeDeadStructural input16909 value992 value1 value2 = (output16909, value6896, value1) := by
  rw [input16909_def, output16909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1987_eq]
  try dsimp only
  rw [node16908_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16909 input1976)).val
theorem input16910_def : input16910 = (.seq input16909 input1976) := by
  unfold input16910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16909)).val
theorem output16910_def : output16910 = (output16909) := by
  unfold output16910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16910_skip : Flapjack.WordAlloc.isSkip output16910 = false := by
  rw [output16910_def]
  conv => lhs; cbv
  try rfl
theorem node16910_eq : Flapjack.WordAlloc.removeDeadStructural input16910 value992 value1 value2 = (output16910, value6896, value1) := by
  rw [input16910_def, output16910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1976_eq]
  try dsimp only
  rw [node16909_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16910 input1975)).val
theorem input16911_def : input16911 = (.seq input16910 input1975) := by
  unfold input16911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16910 output1975)).val
theorem output16911_def : output16911 = (.seq output16910 output1975) := by
  unfold output16911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16911_skip : Flapjack.WordAlloc.isSkip output16911 = false := by
  rw [output16911_def]
  conv => lhs; cbv
  try rfl
theorem node16911_eq : Flapjack.WordAlloc.removeDeadStructural input16911 value991 value1 value2 = (output16911, value6896, value1) := by
  rw [input16911_def, output16911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1975_eq]
  try dsimp only
  rw [node16910_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16911 input1974)).val
theorem input16912_def : input16912 = (.seq input16911 input1974) := by
  unfold input16912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16911 output1974)).val
theorem output16912_def : output16912 = (.seq output16911 output1974) := by
  unfold output16912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16912_skip : Flapjack.WordAlloc.isSkip output16912 = false := by
  rw [output16912_def]
  conv => lhs; cbv
  try rfl
theorem node16912_eq : Flapjack.WordAlloc.removeDeadStructural input16912 value5 value1 value2 = (output16912, value6896, value1) := by
  rw [input16912_def, output16912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1974_eq]
  try dsimp only
  rw [node16911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16912 input1971)).val
theorem input16913_def : input16913 = (.seq input16912 input1971) := by
  unfold input16913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16912 output1971)).val
theorem output16913_def : output16913 = (.seq output16912 output1971) := by
  unfold output16913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16913_skip : Flapjack.WordAlloc.isSkip output16913 = false := by
  rw [output16913_def]
  conv => lhs; cbv
  try rfl
theorem node16913_eq : Flapjack.WordAlloc.removeDeadStructural input16913 value984 value1 value2 = (output16913, value6896, value1) := by
  rw [input16913_def, output16913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1971_eq]
  try dsimp only
  rw [node16912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16913 input1960)).val
theorem input16914_def : input16914 = (.seq input16913 input1960) := by
  unfold input16914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16913)).val
theorem output16914_def : output16914 = (output16913) := by
  unfold output16914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16914_skip : Flapjack.WordAlloc.isSkip output16914 = false := by
  rw [output16914_def]
  conv => lhs; cbv
  try rfl
theorem node16914_eq : Flapjack.WordAlloc.removeDeadStructural input16914 value984 value1 value2 = (output16914, value6896, value1) := by
  rw [input16914_def, output16914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1960_eq]
  try dsimp only
  rw [node16913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16914 input1959)).val
theorem input16915_def : input16915 = (.seq input16914 input1959) := by
  unfold input16915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16914 output1959)).val
theorem output16915_def : output16915 = (.seq output16914 output1959) := by
  unfold output16915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16915_skip : Flapjack.WordAlloc.isSkip output16915 = false := by
  rw [output16915_def]
  conv => lhs; cbv
  try rfl
theorem node16915_eq : Flapjack.WordAlloc.removeDeadStructural input16915 value983 value1 value2 = (output16915, value6896, value1) := by
  rw [input16915_def, output16915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1959_eq]
  try dsimp only
  rw [node16914_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16915 input1958)).val
theorem input16916_def : input16916 = (.seq input16915 input1958) := by
  unfold input16916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16915 output1958)).val
theorem output16916_def : output16916 = (.seq output16915 output1958) := by
  unfold output16916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16916_skip : Flapjack.WordAlloc.isSkip output16916 = false := by
  rw [output16916_def]
  conv => lhs; cbv
  try rfl
theorem node16916_eq : Flapjack.WordAlloc.removeDeadStructural input16916 value5 value1 value2 = (output16916, value6896, value1) := by
  rw [input16916_def, output16916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1958_eq]
  try dsimp only
  rw [node16915_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16916 input1955)).val
theorem input16917_def : input16917 = (.seq input16916 input1955) := by
  unfold input16917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16916 output1955)).val
theorem output16917_def : output16917 = (.seq output16916 output1955) := by
  unfold output16917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16917_skip : Flapjack.WordAlloc.isSkip output16917 = false := by
  rw [output16917_def]
  conv => lhs; cbv
  try rfl
theorem node16917_eq : Flapjack.WordAlloc.removeDeadStructural input16917 value976 value1 value2 = (output16917, value6896, value1) := by
  rw [input16917_def, output16917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1955_eq]
  try dsimp only
  rw [node16916_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16917 input1944)).val
theorem input16918_def : input16918 = (.seq input16917 input1944) := by
  unfold input16918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16917)).val
theorem output16918_def : output16918 = (output16917) := by
  unfold output16918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16918_skip : Flapjack.WordAlloc.isSkip output16918 = false := by
  rw [output16918_def]
  conv => lhs; cbv
  try rfl
theorem node16918_eq : Flapjack.WordAlloc.removeDeadStructural input16918 value976 value1 value2 = (output16918, value6896, value1) := by
  rw [input16918_def, output16918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1944_eq]
  try dsimp only
  rw [node16917_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16918 input1943)).val
theorem input16919_def : input16919 = (.seq input16918 input1943) := by
  unfold input16919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16918 output1943)).val
theorem output16919_def : output16919 = (.seq output16918 output1943) := by
  unfold output16919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16919_skip : Flapjack.WordAlloc.isSkip output16919 = false := by
  rw [output16919_def]
  conv => lhs; cbv
  try rfl
theorem node16919_eq : Flapjack.WordAlloc.removeDeadStructural input16919 value975 value1 value2 = (output16919, value6896, value1) := by
  rw [input16919_def, output16919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1943_eq]
  try dsimp only
  rw [node16918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16919 input1942)).val
theorem input16920_def : input16920 = (.seq input16919 input1942) := by
  unfold input16920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16919 output1942)).val
theorem output16920_def : output16920 = (.seq output16919 output1942) := by
  unfold output16920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16920_skip : Flapjack.WordAlloc.isSkip output16920 = false := by
  rw [output16920_def]
  conv => lhs; cbv
  try rfl
theorem node16920_eq : Flapjack.WordAlloc.removeDeadStructural input16920 value5 value1 value2 = (output16920, value6896, value1) := by
  rw [input16920_def, output16920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1942_eq]
  try dsimp only
  rw [node16919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16920 input1939)).val
theorem input16921_def : input16921 = (.seq input16920 input1939) := by
  unfold input16921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16920 output1939)).val
theorem output16921_def : output16921 = (.seq output16920 output1939) := by
  unfold output16921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16921_skip : Flapjack.WordAlloc.isSkip output16921 = false := by
  rw [output16921_def]
  conv => lhs; cbv
  try rfl
theorem node16921_eq : Flapjack.WordAlloc.removeDeadStructural input16921 value968 value1 value2 = (output16921, value6896, value1) := by
  rw [input16921_def, output16921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1939_eq]
  try dsimp only
  rw [node16920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16921 input1928)).val
theorem input16922_def : input16922 = (.seq input16921 input1928) := by
  unfold input16922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16921)).val
theorem output16922_def : output16922 = (output16921) := by
  unfold output16922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16922_skip : Flapjack.WordAlloc.isSkip output16922 = false := by
  rw [output16922_def]
  conv => lhs; cbv
  try rfl
theorem node16922_eq : Flapjack.WordAlloc.removeDeadStructural input16922 value968 value1 value2 = (output16922, value6896, value1) := by
  rw [input16922_def, output16922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1928_eq]
  try dsimp only
  rw [node16921_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16922 input1927)).val
theorem input16923_def : input16923 = (.seq input16922 input1927) := by
  unfold input16923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16922 output1927)).val
theorem output16923_def : output16923 = (.seq output16922 output1927) := by
  unfold output16923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16923_skip : Flapjack.WordAlloc.isSkip output16923 = false := by
  rw [output16923_def]
  conv => lhs; cbv
  try rfl
theorem node16923_eq : Flapjack.WordAlloc.removeDeadStructural input16923 value967 value1 value2 = (output16923, value6896, value1) := by
  rw [input16923_def, output16923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1927_eq]
  try dsimp only
  rw [node16922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16923 input1926)).val
theorem input16924_def : input16924 = (.seq input16923 input1926) := by
  unfold input16924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16923 output1926)).val
theorem output16924_def : output16924 = (.seq output16923 output1926) := by
  unfold output16924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16924_skip : Flapjack.WordAlloc.isSkip output16924 = false := by
  rw [output16924_def]
  conv => lhs; cbv
  try rfl
theorem node16924_eq : Flapjack.WordAlloc.removeDeadStructural input16924 value5 value1 value2 = (output16924, value6896, value1) := by
  rw [input16924_def, output16924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1926_eq]
  try dsimp only
  rw [node16923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16924 input1923)).val
theorem input16925_def : input16925 = (.seq input16924 input1923) := by
  unfold input16925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16924 output1923)).val
theorem output16925_def : output16925 = (.seq output16924 output1923) := by
  unfold output16925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16925_skip : Flapjack.WordAlloc.isSkip output16925 = false := by
  rw [output16925_def]
  conv => lhs; cbv
  try rfl
theorem node16925_eq : Flapjack.WordAlloc.removeDeadStructural input16925 value960 value1 value2 = (output16925, value6896, value1) := by
  rw [input16925_def, output16925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1923_eq]
  try dsimp only
  rw [node16924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16925 input1912)).val
theorem input16926_def : input16926 = (.seq input16925 input1912) := by
  unfold input16926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16925)).val
theorem output16926_def : output16926 = (output16925) := by
  unfold output16926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16926_skip : Flapjack.WordAlloc.isSkip output16926 = false := by
  rw [output16926_def]
  conv => lhs; cbv
  try rfl
theorem node16926_eq : Flapjack.WordAlloc.removeDeadStructural input16926 value960 value1 value2 = (output16926, value6896, value1) := by
  rw [input16926_def, output16926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1912_eq]
  try dsimp only
  rw [node16925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16926 input1911)).val
theorem input16927_def : input16927 = (.seq input16926 input1911) := by
  unfold input16927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16926 output1911)).val
theorem output16927_def : output16927 = (.seq output16926 output1911) := by
  unfold output16927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16927_skip : Flapjack.WordAlloc.isSkip output16927 = false := by
  rw [output16927_def]
  conv => lhs; cbv
  try rfl
theorem node16927_eq : Flapjack.WordAlloc.removeDeadStructural input16927 value959 value1 value2 = (output16927, value6896, value1) := by
  rw [input16927_def, output16927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1911_eq]
  try dsimp only
  rw [node16926_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16927 input1910)).val
theorem input16928_def : input16928 = (.seq input16927 input1910) := by
  unfold input16928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16927 output1910)).val
theorem output16928_def : output16928 = (.seq output16927 output1910) := by
  unfold output16928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16928_skip : Flapjack.WordAlloc.isSkip output16928 = false := by
  rw [output16928_def]
  conv => lhs; cbv
  try rfl
theorem node16928_eq : Flapjack.WordAlloc.removeDeadStructural input16928 value5 value1 value2 = (output16928, value6896, value1) := by
  rw [input16928_def, output16928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1910_eq]
  try dsimp only
  rw [node16927_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16928 input1907)).val
theorem input16929_def : input16929 = (.seq input16928 input1907) := by
  unfold input16929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16928 output1907)).val
theorem output16929_def : output16929 = (.seq output16928 output1907) := by
  unfold output16929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16929_skip : Flapjack.WordAlloc.isSkip output16929 = false := by
  rw [output16929_def]
  conv => lhs; cbv
  try rfl
theorem node16929_eq : Flapjack.WordAlloc.removeDeadStructural input16929 value952 value1 value2 = (output16929, value6896, value1) := by
  rw [input16929_def, output16929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1907_eq]
  try dsimp only
  rw [node16928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16929 input1896)).val
theorem input16930_def : input16930 = (.seq input16929 input1896) := by
  unfold input16930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16929)).val
theorem output16930_def : output16930 = (output16929) := by
  unfold output16930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16930_skip : Flapjack.WordAlloc.isSkip output16930 = false := by
  rw [output16930_def]
  conv => lhs; cbv
  try rfl
theorem node16930_eq : Flapjack.WordAlloc.removeDeadStructural input16930 value952 value1 value2 = (output16930, value6896, value1) := by
  rw [input16930_def, output16930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1896_eq]
  try dsimp only
  rw [node16929_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16930 input1895)).val
theorem input16931_def : input16931 = (.seq input16930 input1895) := by
  unfold input16931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16930 output1895)).val
theorem output16931_def : output16931 = (.seq output16930 output1895) := by
  unfold output16931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16931_skip : Flapjack.WordAlloc.isSkip output16931 = false := by
  rw [output16931_def]
  conv => lhs; cbv
  try rfl
theorem node16931_eq : Flapjack.WordAlloc.removeDeadStructural input16931 value951 value1 value2 = (output16931, value6896, value1) := by
  rw [input16931_def, output16931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1895_eq]
  try dsimp only
  rw [node16930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16931 input1894)).val
theorem input16932_def : input16932 = (.seq input16931 input1894) := by
  unfold input16932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16931 output1894)).val
theorem output16932_def : output16932 = (.seq output16931 output1894) := by
  unfold output16932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16932_skip : Flapjack.WordAlloc.isSkip output16932 = false := by
  rw [output16932_def]
  conv => lhs; cbv
  try rfl
theorem node16932_eq : Flapjack.WordAlloc.removeDeadStructural input16932 value5 value1 value2 = (output16932, value6896, value1) := by
  rw [input16932_def, output16932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1894_eq]
  try dsimp only
  rw [node16931_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16932 input1891)).val
theorem input16933_def : input16933 = (.seq input16932 input1891) := by
  unfold input16933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16932 output1891)).val
theorem output16933_def : output16933 = (.seq output16932 output1891) := by
  unfold output16933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16933_skip : Flapjack.WordAlloc.isSkip output16933 = false := by
  rw [output16933_def]
  conv => lhs; cbv
  try rfl
theorem node16933_eq : Flapjack.WordAlloc.removeDeadStructural input16933 value944 value1 value2 = (output16933, value6896, value1) := by
  rw [input16933_def, output16933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1891_eq]
  try dsimp only
  rw [node16932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16933 input1880)).val
theorem input16934_def : input16934 = (.seq input16933 input1880) := by
  unfold input16934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16933)).val
theorem output16934_def : output16934 = (output16933) := by
  unfold output16934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16934_skip : Flapjack.WordAlloc.isSkip output16934 = false := by
  rw [output16934_def]
  conv => lhs; cbv
  try rfl
theorem node16934_eq : Flapjack.WordAlloc.removeDeadStructural input16934 value944 value1 value2 = (output16934, value6896, value1) := by
  rw [input16934_def, output16934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1880_eq]
  try dsimp only
  rw [node16933_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16934 input1879)).val
theorem input16935_def : input16935 = (.seq input16934 input1879) := by
  unfold input16935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16934 output1879)).val
theorem output16935_def : output16935 = (.seq output16934 output1879) := by
  unfold output16935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16935_skip : Flapjack.WordAlloc.isSkip output16935 = false := by
  rw [output16935_def]
  conv => lhs; cbv
  try rfl
theorem node16935_eq : Flapjack.WordAlloc.removeDeadStructural input16935 value943 value1 value2 = (output16935, value6896, value1) := by
  rw [input16935_def, output16935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1879_eq]
  try dsimp only
  rw [node16934_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16935 input1878)).val
theorem input16936_def : input16936 = (.seq input16935 input1878) := by
  unfold input16936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16935 output1878)).val
theorem output16936_def : output16936 = (.seq output16935 output1878) := by
  unfold output16936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16936_skip : Flapjack.WordAlloc.isSkip output16936 = false := by
  rw [output16936_def]
  conv => lhs; cbv
  try rfl
theorem node16936_eq : Flapjack.WordAlloc.removeDeadStructural input16936 value5 value1 value2 = (output16936, value6896, value1) := by
  rw [input16936_def, output16936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1878_eq]
  try dsimp only
  rw [node16935_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16936 input1875)).val
theorem input16937_def : input16937 = (.seq input16936 input1875) := by
  unfold input16937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16936 output1875)).val
theorem output16937_def : output16937 = (.seq output16936 output1875) := by
  unfold output16937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16937_skip : Flapjack.WordAlloc.isSkip output16937 = false := by
  rw [output16937_def]
  conv => lhs; cbv
  try rfl
theorem node16937_eq : Flapjack.WordAlloc.removeDeadStructural input16937 value936 value1 value2 = (output16937, value6896, value1) := by
  rw [input16937_def, output16937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1875_eq]
  try dsimp only
  rw [node16936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16937 input1864)).val
theorem input16938_def : input16938 = (.seq input16937 input1864) := by
  unfold input16938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16937)).val
theorem output16938_def : output16938 = (output16937) := by
  unfold output16938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16938_skip : Flapjack.WordAlloc.isSkip output16938 = false := by
  rw [output16938_def]
  conv => lhs; cbv
  try rfl
theorem node16938_eq : Flapjack.WordAlloc.removeDeadStructural input16938 value936 value1 value2 = (output16938, value6896, value1) := by
  rw [input16938_def, output16938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1864_eq]
  try dsimp only
  rw [node16937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16938 input1863)).val
theorem input16939_def : input16939 = (.seq input16938 input1863) := by
  unfold input16939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16938 output1863)).val
theorem output16939_def : output16939 = (.seq output16938 output1863) := by
  unfold output16939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16939_skip : Flapjack.WordAlloc.isSkip output16939 = false := by
  rw [output16939_def]
  conv => lhs; cbv
  try rfl
theorem node16939_eq : Flapjack.WordAlloc.removeDeadStructural input16939 value935 value1 value2 = (output16939, value6896, value1) := by
  rw [input16939_def, output16939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1863_eq]
  try dsimp only
  rw [node16938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16939 input1862)).val
theorem input16940_def : input16940 = (.seq input16939 input1862) := by
  unfold input16940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16939 output1862)).val
theorem output16940_def : output16940 = (.seq output16939 output1862) := by
  unfold output16940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16940_skip : Flapjack.WordAlloc.isSkip output16940 = false := by
  rw [output16940_def]
  conv => lhs; cbv
  try rfl
theorem node16940_eq : Flapjack.WordAlloc.removeDeadStructural input16940 value5 value1 value2 = (output16940, value6896, value1) := by
  rw [input16940_def, output16940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1862_eq]
  try dsimp only
  rw [node16939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16940 input1859)).val
theorem input16941_def : input16941 = (.seq input16940 input1859) := by
  unfold input16941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16940 output1859)).val
theorem output16941_def : output16941 = (.seq output16940 output1859) := by
  unfold output16941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16941_skip : Flapjack.WordAlloc.isSkip output16941 = false := by
  rw [output16941_def]
  conv => lhs; cbv
  try rfl
theorem node16941_eq : Flapjack.WordAlloc.removeDeadStructural input16941 value928 value1 value2 = (output16941, value6896, value1) := by
  rw [input16941_def, output16941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1859_eq]
  try dsimp only
  rw [node16940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16941 input1848)).val
theorem input16942_def : input16942 = (.seq input16941 input1848) := by
  unfold input16942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16941)).val
theorem output16942_def : output16942 = (output16941) := by
  unfold output16942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16942_skip : Flapjack.WordAlloc.isSkip output16942 = false := by
  rw [output16942_def]
  conv => lhs; cbv
  try rfl
theorem node16942_eq : Flapjack.WordAlloc.removeDeadStructural input16942 value928 value1 value2 = (output16942, value6896, value1) := by
  rw [input16942_def, output16942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1848_eq]
  try dsimp only
  rw [node16941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16942 input1847)).val
theorem input16943_def : input16943 = (.seq input16942 input1847) := by
  unfold input16943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16942 output1847)).val
theorem output16943_def : output16943 = (.seq output16942 output1847) := by
  unfold output16943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16943_skip : Flapjack.WordAlloc.isSkip output16943 = false := by
  rw [output16943_def]
  conv => lhs; cbv
  try rfl
theorem node16943_eq : Flapjack.WordAlloc.removeDeadStructural input16943 value927 value1 value2 = (output16943, value6896, value1) := by
  rw [input16943_def, output16943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1847_eq]
  try dsimp only
  rw [node16942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16943 input1846)).val
theorem input16944_def : input16944 = (.seq input16943 input1846) := by
  unfold input16944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16943 output1846)).val
theorem output16944_def : output16944 = (.seq output16943 output1846) := by
  unfold output16944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16944_skip : Flapjack.WordAlloc.isSkip output16944 = false := by
  rw [output16944_def]
  conv => lhs; cbv
  try rfl
theorem node16944_eq : Flapjack.WordAlloc.removeDeadStructural input16944 value5 value1 value2 = (output16944, value6896, value1) := by
  rw [input16944_def, output16944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1846_eq]
  try dsimp only
  rw [node16943_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16944 input1843)).val
theorem input16945_def : input16945 = (.seq input16944 input1843) := by
  unfold input16945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16944 output1843)).val
theorem output16945_def : output16945 = (.seq output16944 output1843) := by
  unfold output16945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16945_skip : Flapjack.WordAlloc.isSkip output16945 = false := by
  rw [output16945_def]
  conv => lhs; cbv
  try rfl
theorem node16945_eq : Flapjack.WordAlloc.removeDeadStructural input16945 value920 value1 value2 = (output16945, value6896, value1) := by
  rw [input16945_def, output16945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1843_eq]
  try dsimp only
  rw [node16944_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16945 input1832)).val
theorem input16946_def : input16946 = (.seq input16945 input1832) := by
  unfold input16946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16945)).val
theorem output16946_def : output16946 = (output16945) := by
  unfold output16946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16946_skip : Flapjack.WordAlloc.isSkip output16946 = false := by
  rw [output16946_def]
  conv => lhs; cbv
  try rfl
theorem node16946_eq : Flapjack.WordAlloc.removeDeadStructural input16946 value920 value1 value2 = (output16946, value6896, value1) := by
  rw [input16946_def, output16946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1832_eq]
  try dsimp only
  rw [node16945_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16946 input1831)).val
theorem input16947_def : input16947 = (.seq input16946 input1831) := by
  unfold input16947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16946 output1831)).val
theorem output16947_def : output16947 = (.seq output16946 output1831) := by
  unfold output16947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16947_skip : Flapjack.WordAlloc.isSkip output16947 = false := by
  rw [output16947_def]
  conv => lhs; cbv
  try rfl
theorem node16947_eq : Flapjack.WordAlloc.removeDeadStructural input16947 value919 value1 value2 = (output16947, value6896, value1) := by
  rw [input16947_def, output16947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1831_eq]
  try dsimp only
  rw [node16946_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16947 input1830)).val
theorem input16948_def : input16948 = (.seq input16947 input1830) := by
  unfold input16948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16947 output1830)).val
theorem output16948_def : output16948 = (.seq output16947 output1830) := by
  unfold output16948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16948_skip : Flapjack.WordAlloc.isSkip output16948 = false := by
  rw [output16948_def]
  conv => lhs; cbv
  try rfl
theorem node16948_eq : Flapjack.WordAlloc.removeDeadStructural input16948 value5 value1 value2 = (output16948, value6896, value1) := by
  rw [input16948_def, output16948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1830_eq]
  try dsimp only
  rw [node16947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16948 input1827)).val
theorem input16949_def : input16949 = (.seq input16948 input1827) := by
  unfold input16949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16948 output1827)).val
theorem output16949_def : output16949 = (.seq output16948 output1827) := by
  unfold output16949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16949_skip : Flapjack.WordAlloc.isSkip output16949 = false := by
  rw [output16949_def]
  conv => lhs; cbv
  try rfl
theorem node16949_eq : Flapjack.WordAlloc.removeDeadStructural input16949 value912 value1 value2 = (output16949, value6896, value1) := by
  rw [input16949_def, output16949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1827_eq]
  try dsimp only
  rw [node16948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16949 input1816)).val
theorem input16950_def : input16950 = (.seq input16949 input1816) := by
  unfold input16950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16949)).val
theorem output16950_def : output16950 = (output16949) := by
  unfold output16950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16950_skip : Flapjack.WordAlloc.isSkip output16950 = false := by
  rw [output16950_def]
  conv => lhs; cbv
  try rfl
theorem node16950_eq : Flapjack.WordAlloc.removeDeadStructural input16950 value912 value1 value2 = (output16950, value6896, value1) := by
  rw [input16950_def, output16950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1816_eq]
  try dsimp only
  rw [node16949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16950 input1815)).val
theorem input16951_def : input16951 = (.seq input16950 input1815) := by
  unfold input16951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16950 output1815)).val
theorem output16951_def : output16951 = (.seq output16950 output1815) := by
  unfold output16951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16951_skip : Flapjack.WordAlloc.isSkip output16951 = false := by
  rw [output16951_def]
  conv => lhs; cbv
  try rfl
theorem node16951_eq : Flapjack.WordAlloc.removeDeadStructural input16951 value911 value1 value2 = (output16951, value6896, value1) := by
  rw [input16951_def, output16951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1815_eq]
  try dsimp only
  rw [node16950_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16951 input1814)).val
theorem input16952_def : input16952 = (.seq input16951 input1814) := by
  unfold input16952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16951 output1814)).val
theorem output16952_def : output16952 = (.seq output16951 output1814) := by
  unfold output16952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16952_skip : Flapjack.WordAlloc.isSkip output16952 = false := by
  rw [output16952_def]
  conv => lhs; cbv
  try rfl
theorem node16952_eq : Flapjack.WordAlloc.removeDeadStructural input16952 value5 value1 value2 = (output16952, value6896, value1) := by
  rw [input16952_def, output16952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1814_eq]
  try dsimp only
  rw [node16951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16952 input1811)).val
theorem input16953_def : input16953 = (.seq input16952 input1811) := by
  unfold input16953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16952 output1811)).val
theorem output16953_def : output16953 = (.seq output16952 output1811) := by
  unfold output16953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16953_skip : Flapjack.WordAlloc.isSkip output16953 = false := by
  rw [output16953_def]
  conv => lhs; cbv
  try rfl
theorem node16953_eq : Flapjack.WordAlloc.removeDeadStructural input16953 value904 value1 value2 = (output16953, value6896, value1) := by
  rw [input16953_def, output16953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1811_eq]
  try dsimp only
  rw [node16952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16953 input1800)).val
theorem input16954_def : input16954 = (.seq input16953 input1800) := by
  unfold input16954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16953)).val
theorem output16954_def : output16954 = (output16953) := by
  unfold output16954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16954_skip : Flapjack.WordAlloc.isSkip output16954 = false := by
  rw [output16954_def]
  conv => lhs; cbv
  try rfl
theorem node16954_eq : Flapjack.WordAlloc.removeDeadStructural input16954 value904 value1 value2 = (output16954, value6896, value1) := by
  rw [input16954_def, output16954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1800_eq]
  try dsimp only
  rw [node16953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16954 input1799)).val
theorem input16955_def : input16955 = (.seq input16954 input1799) := by
  unfold input16955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16954 output1799)).val
theorem output16955_def : output16955 = (.seq output16954 output1799) := by
  unfold output16955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16955_skip : Flapjack.WordAlloc.isSkip output16955 = false := by
  rw [output16955_def]
  conv => lhs; cbv
  try rfl
theorem node16955_eq : Flapjack.WordAlloc.removeDeadStructural input16955 value903 value1 value2 = (output16955, value6896, value1) := by
  rw [input16955_def, output16955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1799_eq]
  try dsimp only
  rw [node16954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16955 input1798)).val
theorem input16956_def : input16956 = (.seq input16955 input1798) := by
  unfold input16956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16955 output1798)).val
theorem output16956_def : output16956 = (.seq output16955 output1798) := by
  unfold output16956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16956_skip : Flapjack.WordAlloc.isSkip output16956 = false := by
  rw [output16956_def]
  conv => lhs; cbv
  try rfl
theorem node16956_eq : Flapjack.WordAlloc.removeDeadStructural input16956 value5 value1 value2 = (output16956, value6896, value1) := by
  rw [input16956_def, output16956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1798_eq]
  try dsimp only
  rw [node16955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16956 input1795)).val
theorem input16957_def : input16957 = (.seq input16956 input1795) := by
  unfold input16957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16956 output1795)).val
theorem output16957_def : output16957 = (.seq output16956 output1795) := by
  unfold output16957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16957_skip : Flapjack.WordAlloc.isSkip output16957 = false := by
  rw [output16957_def]
  conv => lhs; cbv
  try rfl
theorem node16957_eq : Flapjack.WordAlloc.removeDeadStructural input16957 value896 value1 value2 = (output16957, value6896, value1) := by
  rw [input16957_def, output16957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1795_eq]
  try dsimp only
  rw [node16956_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16957 input1784)).val
theorem input16958_def : input16958 = (.seq input16957 input1784) := by
  unfold input16958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16957)).val
theorem output16958_def : output16958 = (output16957) := by
  unfold output16958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16958_skip : Flapjack.WordAlloc.isSkip output16958 = false := by
  rw [output16958_def]
  conv => lhs; cbv
  try rfl
theorem node16958_eq : Flapjack.WordAlloc.removeDeadStructural input16958 value896 value1 value2 = (output16958, value6896, value1) := by
  rw [input16958_def, output16958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1784_eq]
  try dsimp only
  rw [node16957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16958 input1783)).val
theorem input16959_def : input16959 = (.seq input16958 input1783) := by
  unfold input16959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16958 output1783)).val
theorem output16959_def : output16959 = (.seq output16958 output1783) := by
  unfold output16959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16959_skip : Flapjack.WordAlloc.isSkip output16959 = false := by
  rw [output16959_def]
  conv => lhs; cbv
  try rfl
theorem node16959_eq : Flapjack.WordAlloc.removeDeadStructural input16959 value895 value1 value2 = (output16959, value6896, value1) := by
  rw [input16959_def, output16959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1783_eq]
  try dsimp only
  rw [node16958_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16959 input1782)).val
theorem input16960_def : input16960 = (.seq input16959 input1782) := by
  unfold input16960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16959 output1782)).val
theorem output16960_def : output16960 = (.seq output16959 output1782) := by
  unfold output16960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16960_skip : Flapjack.WordAlloc.isSkip output16960 = false := by
  rw [output16960_def]
  conv => lhs; cbv
  try rfl
theorem node16960_eq : Flapjack.WordAlloc.removeDeadStructural input16960 value5 value1 value2 = (output16960, value6896, value1) := by
  rw [input16960_def, output16960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1782_eq]
  try dsimp only
  rw [node16959_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16960 input1779)).val
theorem input16961_def : input16961 = (.seq input16960 input1779) := by
  unfold input16961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16960 output1779)).val
theorem output16961_def : output16961 = (.seq output16960 output1779) := by
  unfold output16961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16961_skip : Flapjack.WordAlloc.isSkip output16961 = false := by
  rw [output16961_def]
  conv => lhs; cbv
  try rfl
theorem node16961_eq : Flapjack.WordAlloc.removeDeadStructural input16961 value888 value1 value2 = (output16961, value6896, value1) := by
  rw [input16961_def, output16961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1779_eq]
  try dsimp only
  rw [node16960_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16961 input1768)).val
theorem input16962_def : input16962 = (.seq input16961 input1768) := by
  unfold input16962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16961)).val
theorem output16962_def : output16962 = (output16961) := by
  unfold output16962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16962_skip : Flapjack.WordAlloc.isSkip output16962 = false := by
  rw [output16962_def]
  conv => lhs; cbv
  try rfl
theorem node16962_eq : Flapjack.WordAlloc.removeDeadStructural input16962 value888 value1 value2 = (output16962, value6896, value1) := by
  rw [input16962_def, output16962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1768_eq]
  try dsimp only
  rw [node16961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16962 input1767)).val
theorem input16963_def : input16963 = (.seq input16962 input1767) := by
  unfold input16963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16962 output1767)).val
theorem output16963_def : output16963 = (.seq output16962 output1767) := by
  unfold output16963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16963_skip : Flapjack.WordAlloc.isSkip output16963 = false := by
  rw [output16963_def]
  conv => lhs; cbv
  try rfl
theorem node16963_eq : Flapjack.WordAlloc.removeDeadStructural input16963 value887 value1 value2 = (output16963, value6896, value1) := by
  rw [input16963_def, output16963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1767_eq]
  try dsimp only
  rw [node16962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16963 input1766)).val
theorem input16964_def : input16964 = (.seq input16963 input1766) := by
  unfold input16964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16963 output1766)).val
theorem output16964_def : output16964 = (.seq output16963 output1766) := by
  unfold output16964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16964_skip : Flapjack.WordAlloc.isSkip output16964 = false := by
  rw [output16964_def]
  conv => lhs; cbv
  try rfl
theorem node16964_eq : Flapjack.WordAlloc.removeDeadStructural input16964 value5 value1 value2 = (output16964, value6896, value1) := by
  rw [input16964_def, output16964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1766_eq]
  try dsimp only
  rw [node16963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16964 input1763)).val
theorem input16965_def : input16965 = (.seq input16964 input1763) := by
  unfold input16965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16964 output1763)).val
theorem output16965_def : output16965 = (.seq output16964 output1763) := by
  unfold output16965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16965_skip : Flapjack.WordAlloc.isSkip output16965 = false := by
  rw [output16965_def]
  conv => lhs; cbv
  try rfl
theorem node16965_eq : Flapjack.WordAlloc.removeDeadStructural input16965 value880 value1 value2 = (output16965, value6896, value1) := by
  rw [input16965_def, output16965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1763_eq]
  try dsimp only
  rw [node16964_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16965 input1752)).val
theorem input16966_def : input16966 = (.seq input16965 input1752) := by
  unfold input16966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16965)).val
theorem output16966_def : output16966 = (output16965) := by
  unfold output16966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16966_skip : Flapjack.WordAlloc.isSkip output16966 = false := by
  rw [output16966_def]
  conv => lhs; cbv
  try rfl
theorem node16966_eq : Flapjack.WordAlloc.removeDeadStructural input16966 value880 value1 value2 = (output16966, value6896, value1) := by
  rw [input16966_def, output16966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1752_eq]
  try dsimp only
  rw [node16965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16966 input1751)).val
theorem input16967_def : input16967 = (.seq input16966 input1751) := by
  unfold input16967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16966 output1751)).val
theorem output16967_def : output16967 = (.seq output16966 output1751) := by
  unfold output16967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16967_skip : Flapjack.WordAlloc.isSkip output16967 = false := by
  rw [output16967_def]
  conv => lhs; cbv
  try rfl
theorem node16967_eq : Flapjack.WordAlloc.removeDeadStructural input16967 value879 value1 value2 = (output16967, value6896, value1) := by
  rw [input16967_def, output16967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1751_eq]
  try dsimp only
  rw [node16966_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16967 input1750)).val
theorem input16968_def : input16968 = (.seq input16967 input1750) := by
  unfold input16968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16967 output1750)).val
theorem output16968_def : output16968 = (.seq output16967 output1750) := by
  unfold output16968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16968_skip : Flapjack.WordAlloc.isSkip output16968 = false := by
  rw [output16968_def]
  conv => lhs; cbv
  try rfl
theorem node16968_eq : Flapjack.WordAlloc.removeDeadStructural input16968 value5 value1 value2 = (output16968, value6896, value1) := by
  rw [input16968_def, output16968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1750_eq]
  try dsimp only
  rw [node16967_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16968 input1747)).val
theorem input16969_def : input16969 = (.seq input16968 input1747) := by
  unfold input16969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16968 output1747)).val
theorem output16969_def : output16969 = (.seq output16968 output1747) := by
  unfold output16969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16969_skip : Flapjack.WordAlloc.isSkip output16969 = false := by
  rw [output16969_def]
  conv => lhs; cbv
  try rfl
theorem node16969_eq : Flapjack.WordAlloc.removeDeadStructural input16969 value872 value1 value2 = (output16969, value6896, value1) := by
  rw [input16969_def, output16969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1747_eq]
  try dsimp only
  rw [node16968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16969 input1736)).val
theorem input16970_def : input16970 = (.seq input16969 input1736) := by
  unfold input16970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16969)).val
theorem output16970_def : output16970 = (output16969) := by
  unfold output16970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16970_skip : Flapjack.WordAlloc.isSkip output16970 = false := by
  rw [output16970_def]
  conv => lhs; cbv
  try rfl
theorem node16970_eq : Flapjack.WordAlloc.removeDeadStructural input16970 value872 value1 value2 = (output16970, value6896, value1) := by
  rw [input16970_def, output16970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1736_eq]
  try dsimp only
  rw [node16969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16970 input1735)).val
theorem input16971_def : input16971 = (.seq input16970 input1735) := by
  unfold input16971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16970 output1735)).val
theorem output16971_def : output16971 = (.seq output16970 output1735) := by
  unfold output16971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16971_skip : Flapjack.WordAlloc.isSkip output16971 = false := by
  rw [output16971_def]
  conv => lhs; cbv
  try rfl
theorem node16971_eq : Flapjack.WordAlloc.removeDeadStructural input16971 value871 value1 value2 = (output16971, value6896, value1) := by
  rw [input16971_def, output16971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1735_eq]
  try dsimp only
  rw [node16970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16971 input1734)).val
theorem input16972_def : input16972 = (.seq input16971 input1734) := by
  unfold input16972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16971 output1734)).val
theorem output16972_def : output16972 = (.seq output16971 output1734) := by
  unfold output16972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16972_skip : Flapjack.WordAlloc.isSkip output16972 = false := by
  rw [output16972_def]
  conv => lhs; cbv
  try rfl
theorem node16972_eq : Flapjack.WordAlloc.removeDeadStructural input16972 value5 value1 value2 = (output16972, value6896, value1) := by
  rw [input16972_def, output16972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1734_eq]
  try dsimp only
  rw [node16971_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16972 input1731)).val
theorem input16973_def : input16973 = (.seq input16972 input1731) := by
  unfold input16973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16972 output1731)).val
theorem output16973_def : output16973 = (.seq output16972 output1731) := by
  unfold output16973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16973_skip : Flapjack.WordAlloc.isSkip output16973 = false := by
  rw [output16973_def]
  conv => lhs; cbv
  try rfl
theorem node16973_eq : Flapjack.WordAlloc.removeDeadStructural input16973 value864 value1 value2 = (output16973, value6896, value1) := by
  rw [input16973_def, output16973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1731_eq]
  try dsimp only
  rw [node16972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16973 input1720)).val
theorem input16974_def : input16974 = (.seq input16973 input1720) := by
  unfold input16974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16973)).val
theorem output16974_def : output16974 = (output16973) := by
  unfold output16974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16974_skip : Flapjack.WordAlloc.isSkip output16974 = false := by
  rw [output16974_def]
  conv => lhs; cbv
  try rfl
theorem node16974_eq : Flapjack.WordAlloc.removeDeadStructural input16974 value864 value1 value2 = (output16974, value6896, value1) := by
  rw [input16974_def, output16974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1720_eq]
  try dsimp only
  rw [node16973_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16974 input1719)).val
theorem input16975_def : input16975 = (.seq input16974 input1719) := by
  unfold input16975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16974 output1719)).val
theorem output16975_def : output16975 = (.seq output16974 output1719) := by
  unfold output16975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16975_skip : Flapjack.WordAlloc.isSkip output16975 = false := by
  rw [output16975_def]
  conv => lhs; cbv
  try rfl
theorem node16975_eq : Flapjack.WordAlloc.removeDeadStructural input16975 value863 value1 value2 = (output16975, value6896, value1) := by
  rw [input16975_def, output16975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1719_eq]
  try dsimp only
  rw [node16974_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16975 input1718)).val
theorem input16976_def : input16976 = (.seq input16975 input1718) := by
  unfold input16976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16975 output1718)).val
theorem output16976_def : output16976 = (.seq output16975 output1718) := by
  unfold output16976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16976_skip : Flapjack.WordAlloc.isSkip output16976 = false := by
  rw [output16976_def]
  conv => lhs; cbv
  try rfl
theorem node16976_eq : Flapjack.WordAlloc.removeDeadStructural input16976 value5 value1 value2 = (output16976, value6896, value1) := by
  rw [input16976_def, output16976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1718_eq]
  try dsimp only
  rw [node16975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16976 input1715)).val
theorem input16977_def : input16977 = (.seq input16976 input1715) := by
  unfold input16977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16976 output1715)).val
theorem output16977_def : output16977 = (.seq output16976 output1715) := by
  unfold output16977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16977_skip : Flapjack.WordAlloc.isSkip output16977 = false := by
  rw [output16977_def]
  conv => lhs; cbv
  try rfl
theorem node16977_eq : Flapjack.WordAlloc.removeDeadStructural input16977 value856 value1 value2 = (output16977, value6896, value1) := by
  rw [input16977_def, output16977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1715_eq]
  try dsimp only
  rw [node16976_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16977 input1704)).val
theorem input16978_def : input16978 = (.seq input16977 input1704) := by
  unfold input16978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16977)).val
theorem output16978_def : output16978 = (output16977) := by
  unfold output16978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16978_skip : Flapjack.WordAlloc.isSkip output16978 = false := by
  rw [output16978_def]
  conv => lhs; cbv
  try rfl
theorem node16978_eq : Flapjack.WordAlloc.removeDeadStructural input16978 value856 value1 value2 = (output16978, value6896, value1) := by
  rw [input16978_def, output16978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1704_eq]
  try dsimp only
  rw [node16977_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16978 input1703)).val
theorem input16979_def : input16979 = (.seq input16978 input1703) := by
  unfold input16979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16978 output1703)).val
theorem output16979_def : output16979 = (.seq output16978 output1703) := by
  unfold output16979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16979_skip : Flapjack.WordAlloc.isSkip output16979 = false := by
  rw [output16979_def]
  conv => lhs; cbv
  try rfl
theorem node16979_eq : Flapjack.WordAlloc.removeDeadStructural input16979 value855 value1 value2 = (output16979, value6896, value1) := by
  rw [input16979_def, output16979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1703_eq]
  try dsimp only
  rw [node16978_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16979 input1702)).val
theorem input16980_def : input16980 = (.seq input16979 input1702) := by
  unfold input16980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16979 output1702)).val
theorem output16980_def : output16980 = (.seq output16979 output1702) := by
  unfold output16980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16980_skip : Flapjack.WordAlloc.isSkip output16980 = false := by
  rw [output16980_def]
  conv => lhs; cbv
  try rfl
theorem node16980_eq : Flapjack.WordAlloc.removeDeadStructural input16980 value5 value1 value2 = (output16980, value6896, value1) := by
  rw [input16980_def, output16980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1702_eq]
  try dsimp only
  rw [node16979_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16980 input1699)).val
theorem input16981_def : input16981 = (.seq input16980 input1699) := by
  unfold input16981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16980 output1699)).val
theorem output16981_def : output16981 = (.seq output16980 output1699) := by
  unfold output16981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16981_skip : Flapjack.WordAlloc.isSkip output16981 = false := by
  rw [output16981_def]
  conv => lhs; cbv
  try rfl
theorem node16981_eq : Flapjack.WordAlloc.removeDeadStructural input16981 value848 value1 value2 = (output16981, value6896, value1) := by
  rw [input16981_def, output16981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1699_eq]
  try dsimp only
  rw [node16980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16981 input1688)).val
theorem input16982_def : input16982 = (.seq input16981 input1688) := by
  unfold input16982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16981)).val
theorem output16982_def : output16982 = (output16981) := by
  unfold output16982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16982_skip : Flapjack.WordAlloc.isSkip output16982 = false := by
  rw [output16982_def]
  conv => lhs; cbv
  try rfl
theorem node16982_eq : Flapjack.WordAlloc.removeDeadStructural input16982 value848 value1 value2 = (output16982, value6896, value1) := by
  rw [input16982_def, output16982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1688_eq]
  try dsimp only
  rw [node16981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16982 input1687)).val
theorem input16983_def : input16983 = (.seq input16982 input1687) := by
  unfold input16983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16982 output1687)).val
theorem output16983_def : output16983 = (.seq output16982 output1687) := by
  unfold output16983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16983_skip : Flapjack.WordAlloc.isSkip output16983 = false := by
  rw [output16983_def]
  conv => lhs; cbv
  try rfl
theorem node16983_eq : Flapjack.WordAlloc.removeDeadStructural input16983 value847 value1 value2 = (output16983, value6896, value1) := by
  rw [input16983_def, output16983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1687_eq]
  try dsimp only
  rw [node16982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16983 input1686)).val
theorem input16984_def : input16984 = (.seq input16983 input1686) := by
  unfold input16984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16983 output1686)).val
theorem output16984_def : output16984 = (.seq output16983 output1686) := by
  unfold output16984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16984_skip : Flapjack.WordAlloc.isSkip output16984 = false := by
  rw [output16984_def]
  conv => lhs; cbv
  try rfl
theorem node16984_eq : Flapjack.WordAlloc.removeDeadStructural input16984 value5 value1 value2 = (output16984, value6896, value1) := by
  rw [input16984_def, output16984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1686_eq]
  try dsimp only
  rw [node16983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16984 input1683)).val
theorem input16985_def : input16985 = (.seq input16984 input1683) := by
  unfold input16985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16984 output1683)).val
theorem output16985_def : output16985 = (.seq output16984 output1683) := by
  unfold output16985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16985_skip : Flapjack.WordAlloc.isSkip output16985 = false := by
  rw [output16985_def]
  conv => lhs; cbv
  try rfl
theorem node16985_eq : Flapjack.WordAlloc.removeDeadStructural input16985 value840 value1 value2 = (output16985, value6896, value1) := by
  rw [input16985_def, output16985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1683_eq]
  try dsimp only
  rw [node16984_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16985 input1672)).val
theorem input16986_def : input16986 = (.seq input16985 input1672) := by
  unfold input16986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16985)).val
theorem output16986_def : output16986 = (output16985) := by
  unfold output16986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16986_skip : Flapjack.WordAlloc.isSkip output16986 = false := by
  rw [output16986_def]
  conv => lhs; cbv
  try rfl
theorem node16986_eq : Flapjack.WordAlloc.removeDeadStructural input16986 value840 value1 value2 = (output16986, value6896, value1) := by
  rw [input16986_def, output16986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1672_eq]
  try dsimp only
  rw [node16985_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16986 input1671)).val
theorem input16987_def : input16987 = (.seq input16986 input1671) := by
  unfold input16987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16986 output1671)).val
theorem output16987_def : output16987 = (.seq output16986 output1671) := by
  unfold output16987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16987_skip : Flapjack.WordAlloc.isSkip output16987 = false := by
  rw [output16987_def]
  conv => lhs; cbv
  try rfl
theorem node16987_eq : Flapjack.WordAlloc.removeDeadStructural input16987 value839 value1 value2 = (output16987, value6896, value1) := by
  rw [input16987_def, output16987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1671_eq]
  try dsimp only
  rw [node16986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16987 input1670)).val
theorem input16988_def : input16988 = (.seq input16987 input1670) := by
  unfold input16988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16987 output1670)).val
theorem output16988_def : output16988 = (.seq output16987 output1670) := by
  unfold output16988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16988_skip : Flapjack.WordAlloc.isSkip output16988 = false := by
  rw [output16988_def]
  conv => lhs; cbv
  try rfl
theorem node16988_eq : Flapjack.WordAlloc.removeDeadStructural input16988 value5 value1 value2 = (output16988, value6896, value1) := by
  rw [input16988_def, output16988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1670_eq]
  try dsimp only
  rw [node16987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16988 input1667)).val
theorem input16989_def : input16989 = (.seq input16988 input1667) := by
  unfold input16989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16988 output1667)).val
theorem output16989_def : output16989 = (.seq output16988 output1667) := by
  unfold output16989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16989_skip : Flapjack.WordAlloc.isSkip output16989 = false := by
  rw [output16989_def]
  conv => lhs; cbv
  try rfl
theorem node16989_eq : Flapjack.WordAlloc.removeDeadStructural input16989 value832 value1 value2 = (output16989, value6896, value1) := by
  rw [input16989_def, output16989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1667_eq]
  try dsimp only
  rw [node16988_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16989 input1656)).val
theorem input16990_def : input16990 = (.seq input16989 input1656) := by
  unfold input16990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16989)).val
theorem output16990_def : output16990 = (output16989) := by
  unfold output16990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16990_skip : Flapjack.WordAlloc.isSkip output16990 = false := by
  rw [output16990_def]
  conv => lhs; cbv
  try rfl
theorem node16990_eq : Flapjack.WordAlloc.removeDeadStructural input16990 value832 value1 value2 = (output16990, value6896, value1) := by
  rw [input16990_def, output16990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1656_eq]
  try dsimp only
  rw [node16989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16990 input1655)).val
theorem input16991_def : input16991 = (.seq input16990 input1655) := by
  unfold input16991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16990 output1655)).val
theorem output16991_def : output16991 = (.seq output16990 output1655) := by
  unfold output16991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16991_skip : Flapjack.WordAlloc.isSkip output16991 = false := by
  rw [output16991_def]
  conv => lhs; cbv
  try rfl
theorem node16991_eq : Flapjack.WordAlloc.removeDeadStructural input16991 value831 value1 value2 = (output16991, value6896, value1) := by
  rw [input16991_def, output16991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1655_eq]
  try dsimp only
  rw [node16990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16991 input1654)).val
theorem input16992_def : input16992 = (.seq input16991 input1654) := by
  unfold input16992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16991 output1654)).val
theorem output16992_def : output16992 = (.seq output16991 output1654) := by
  unfold output16992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16992_skip : Flapjack.WordAlloc.isSkip output16992 = false := by
  rw [output16992_def]
  conv => lhs; cbv
  try rfl
theorem node16992_eq : Flapjack.WordAlloc.removeDeadStructural input16992 value5 value1 value2 = (output16992, value6896, value1) := by
  rw [input16992_def, output16992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1654_eq]
  try dsimp only
  rw [node16991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16992 input1651)).val
theorem input16993_def : input16993 = (.seq input16992 input1651) := by
  unfold input16993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16992 output1651)).val
theorem output16993_def : output16993 = (.seq output16992 output1651) := by
  unfold output16993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16993_skip : Flapjack.WordAlloc.isSkip output16993 = false := by
  rw [output16993_def]
  conv => lhs; cbv
  try rfl
theorem node16993_eq : Flapjack.WordAlloc.removeDeadStructural input16993 value824 value1 value2 = (output16993, value6896, value1) := by
  rw [input16993_def, output16993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1651_eq]
  try dsimp only
  rw [node16992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16993 input1640)).val
theorem input16994_def : input16994 = (.seq input16993 input1640) := by
  unfold input16994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16993)).val
theorem output16994_def : output16994 = (output16993) := by
  unfold output16994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16994_skip : Flapjack.WordAlloc.isSkip output16994 = false := by
  rw [output16994_def]
  conv => lhs; cbv
  try rfl
theorem node16994_eq : Flapjack.WordAlloc.removeDeadStructural input16994 value824 value1 value2 = (output16994, value6896, value1) := by
  rw [input16994_def, output16994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1640_eq]
  try dsimp only
  rw [node16993_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16994 input1639)).val
theorem input16995_def : input16995 = (.seq input16994 input1639) := by
  unfold input16995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16994 output1639)).val
theorem output16995_def : output16995 = (.seq output16994 output1639) := by
  unfold output16995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16995_skip : Flapjack.WordAlloc.isSkip output16995 = false := by
  rw [output16995_def]
  conv => lhs; cbv
  try rfl
theorem node16995_eq : Flapjack.WordAlloc.removeDeadStructural input16995 value823 value1 value2 = (output16995, value6896, value1) := by
  rw [input16995_def, output16995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1639_eq]
  try dsimp only
  rw [node16994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16995 input1638)).val
theorem input16996_def : input16996 = (.seq input16995 input1638) := by
  unfold input16996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16995 output1638)).val
theorem output16996_def : output16996 = (.seq output16995 output1638) := by
  unfold output16996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16996_skip : Flapjack.WordAlloc.isSkip output16996 = false := by
  rw [output16996_def]
  conv => lhs; cbv
  try rfl
theorem node16996_eq : Flapjack.WordAlloc.removeDeadStructural input16996 value5 value1 value2 = (output16996, value6896, value1) := by
  rw [input16996_def, output16996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1638_eq]
  try dsimp only
  rw [node16995_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16996 input1635)).val
theorem input16997_def : input16997 = (.seq input16996 input1635) := by
  unfold input16997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16996 output1635)).val
theorem output16997_def : output16997 = (.seq output16996 output1635) := by
  unfold output16997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16997_skip : Flapjack.WordAlloc.isSkip output16997 = false := by
  rw [output16997_def]
  conv => lhs; cbv
  try rfl
theorem node16997_eq : Flapjack.WordAlloc.removeDeadStructural input16997 value816 value1 value2 = (output16997, value6896, value1) := by
  rw [input16997_def, output16997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1635_eq]
  try dsimp only
  rw [node16996_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16997 input1624)).val
theorem input16998_def : input16998 = (.seq input16997 input1624) := by
  unfold input16998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16997)).val
theorem output16998_def : output16998 = (output16997) := by
  unfold output16998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16998_skip : Flapjack.WordAlloc.isSkip output16998 = false := by
  rw [output16998_def]
  conv => lhs; cbv
  try rfl
theorem node16998_eq : Flapjack.WordAlloc.removeDeadStructural input16998 value816 value1 value2 = (output16998, value6896, value1) := by
  rw [input16998_def, output16998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1624_eq]
  try dsimp only
  rw [node16997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16998 input1623)).val
theorem input16999_def : input16999 = (.seq input16998 input1623) := by
  unfold input16999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16998 output1623)).val
theorem output16999_def : output16999 = (.seq output16998 output1623) := by
  unfold output16999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16999_skip : Flapjack.WordAlloc.isSkip output16999 = false := by
  rw [output16999_def]
  conv => lhs; cbv
  try rfl
theorem node16999_eq : Flapjack.WordAlloc.removeDeadStructural input16999 value815 value1 value2 = (output16999, value6896, value1) := by
  rw [input16999_def, output16999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1623_eq]
  try dsimp only
  rw [node16998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16999 input1622)).val
theorem input17000_def : input17000 = (.seq input16999 input1622) := by
  unfold input17000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16999 output1622)).val
theorem output17000_def : output17000 = (.seq output16999 output1622) := by
  unfold output17000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17000_skip : Flapjack.WordAlloc.isSkip output17000 = false := by
  rw [output17000_def]
  conv => lhs; cbv
  try rfl
theorem node17000_eq : Flapjack.WordAlloc.removeDeadStructural input17000 value5 value1 value2 = (output17000, value6896, value1) := by
  rw [input17000_def, output17000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1622_eq]
  try dsimp only
  rw [node16999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17000 input1619)).val
theorem input17001_def : input17001 = (.seq input17000 input1619) := by
  unfold input17001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17000 output1619)).val
theorem output17001_def : output17001 = (.seq output17000 output1619) := by
  unfold output17001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17001_skip : Flapjack.WordAlloc.isSkip output17001 = false := by
  rw [output17001_def]
  conv => lhs; cbv
  try rfl
theorem node17001_eq : Flapjack.WordAlloc.removeDeadStructural input17001 value808 value1 value2 = (output17001, value6896, value1) := by
  rw [input17001_def, output17001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1619_eq]
  try dsimp only
  rw [node17000_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17001 input1608)).val
theorem input17002_def : input17002 = (.seq input17001 input1608) := by
  unfold input17002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17001)).val
theorem output17002_def : output17002 = (output17001) := by
  unfold output17002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17002_skip : Flapjack.WordAlloc.isSkip output17002 = false := by
  rw [output17002_def]
  conv => lhs; cbv
  try rfl
theorem node17002_eq : Flapjack.WordAlloc.removeDeadStructural input17002 value808 value1 value2 = (output17002, value6896, value1) := by
  rw [input17002_def, output17002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1608_eq]
  try dsimp only
  rw [node17001_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17002 input1607)).val
theorem input17003_def : input17003 = (.seq input17002 input1607) := by
  unfold input17003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17002 output1607)).val
theorem output17003_def : output17003 = (.seq output17002 output1607) := by
  unfold output17003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17003_skip : Flapjack.WordAlloc.isSkip output17003 = false := by
  rw [output17003_def]
  conv => lhs; cbv
  try rfl
theorem node17003_eq : Flapjack.WordAlloc.removeDeadStructural input17003 value807 value1 value2 = (output17003, value6896, value1) := by
  rw [input17003_def, output17003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1607_eq]
  try dsimp only
  rw [node17002_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17003 input1606)).val
theorem input17004_def : input17004 = (.seq input17003 input1606) := by
  unfold input17004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17003 output1606)).val
theorem output17004_def : output17004 = (.seq output17003 output1606) := by
  unfold output17004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17004_skip : Flapjack.WordAlloc.isSkip output17004 = false := by
  rw [output17004_def]
  conv => lhs; cbv
  try rfl
theorem node17004_eq : Flapjack.WordAlloc.removeDeadStructural input17004 value5 value1 value2 = (output17004, value6896, value1) := by
  rw [input17004_def, output17004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1606_eq]
  try dsimp only
  rw [node17003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17004 input1603)).val
theorem input17005_def : input17005 = (.seq input17004 input1603) := by
  unfold input17005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17004 output1603)).val
theorem output17005_def : output17005 = (.seq output17004 output1603) := by
  unfold output17005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17005_skip : Flapjack.WordAlloc.isSkip output17005 = false := by
  rw [output17005_def]
  conv => lhs; cbv
  try rfl
theorem node17005_eq : Flapjack.WordAlloc.removeDeadStructural input17005 value800 value1 value2 = (output17005, value6896, value1) := by
  rw [input17005_def, output17005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1603_eq]
  try dsimp only
  rw [node17004_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17005 input1592)).val
theorem input17006_def : input17006 = (.seq input17005 input1592) := by
  unfold input17006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17005)).val
theorem output17006_def : output17006 = (output17005) := by
  unfold output17006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17006_skip : Flapjack.WordAlloc.isSkip output17006 = false := by
  rw [output17006_def]
  conv => lhs; cbv
  try rfl
theorem node17006_eq : Flapjack.WordAlloc.removeDeadStructural input17006 value800 value1 value2 = (output17006, value6896, value1) := by
  rw [input17006_def, output17006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1592_eq]
  try dsimp only
  rw [node17005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17006 input1591)).val
theorem input17007_def : input17007 = (.seq input17006 input1591) := by
  unfold input17007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17006 output1591)).val
theorem output17007_def : output17007 = (.seq output17006 output1591) := by
  unfold output17007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17007_skip : Flapjack.WordAlloc.isSkip output17007 = false := by
  rw [output17007_def]
  conv => lhs; cbv
  try rfl
theorem node17007_eq : Flapjack.WordAlloc.removeDeadStructural input17007 value799 value1 value2 = (output17007, value6896, value1) := by
  rw [input17007_def, output17007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1591_eq]
  try dsimp only
  rw [node17006_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17007 input1590)).val
theorem input17008_def : input17008 = (.seq input17007 input1590) := by
  unfold input17008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17007 output1590)).val
theorem output17008_def : output17008 = (.seq output17007 output1590) := by
  unfold output17008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17008_skip : Flapjack.WordAlloc.isSkip output17008 = false := by
  rw [output17008_def]
  conv => lhs; cbv
  try rfl
theorem node17008_eq : Flapjack.WordAlloc.removeDeadStructural input17008 value5 value1 value2 = (output17008, value6896, value1) := by
  rw [input17008_def, output17008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1590_eq]
  try dsimp only
  rw [node17007_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17008 input1587)).val
theorem input17009_def : input17009 = (.seq input17008 input1587) := by
  unfold input17009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17008 output1587)).val
theorem output17009_def : output17009 = (.seq output17008 output1587) := by
  unfold output17009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17009_skip : Flapjack.WordAlloc.isSkip output17009 = false := by
  rw [output17009_def]
  conv => lhs; cbv
  try rfl
theorem node17009_eq : Flapjack.WordAlloc.removeDeadStructural input17009 value792 value1 value2 = (output17009, value6896, value1) := by
  rw [input17009_def, output17009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1587_eq]
  try dsimp only
  rw [node17008_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17009 input1576)).val
theorem input17010_def : input17010 = (.seq input17009 input1576) := by
  unfold input17010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17009)).val
theorem output17010_def : output17010 = (output17009) := by
  unfold output17010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17010_skip : Flapjack.WordAlloc.isSkip output17010 = false := by
  rw [output17010_def]
  conv => lhs; cbv
  try rfl
theorem node17010_eq : Flapjack.WordAlloc.removeDeadStructural input17010 value792 value1 value2 = (output17010, value6896, value1) := by
  rw [input17010_def, output17010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1576_eq]
  try dsimp only
  rw [node17009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17010 input1575)).val
theorem input17011_def : input17011 = (.seq input17010 input1575) := by
  unfold input17011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17010 output1575)).val
theorem output17011_def : output17011 = (.seq output17010 output1575) := by
  unfold output17011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17011_skip : Flapjack.WordAlloc.isSkip output17011 = false := by
  rw [output17011_def]
  conv => lhs; cbv
  try rfl
theorem node17011_eq : Flapjack.WordAlloc.removeDeadStructural input17011 value791 value1 value2 = (output17011, value6896, value1) := by
  rw [input17011_def, output17011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1575_eq]
  try dsimp only
  rw [node17010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17011 input1574)).val
theorem input17012_def : input17012 = (.seq input17011 input1574) := by
  unfold input17012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17011 output1574)).val
theorem output17012_def : output17012 = (.seq output17011 output1574) := by
  unfold output17012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17012_skip : Flapjack.WordAlloc.isSkip output17012 = false := by
  rw [output17012_def]
  conv => lhs; cbv
  try rfl
theorem node17012_eq : Flapjack.WordAlloc.removeDeadStructural input17012 value5 value1 value2 = (output17012, value6896, value1) := by
  rw [input17012_def, output17012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1574_eq]
  try dsimp only
  rw [node17011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17012 input1571)).val
theorem input17013_def : input17013 = (.seq input17012 input1571) := by
  unfold input17013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17012 output1571)).val
theorem output17013_def : output17013 = (.seq output17012 output1571) := by
  unfold output17013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17013_skip : Flapjack.WordAlloc.isSkip output17013 = false := by
  rw [output17013_def]
  conv => lhs; cbv
  try rfl
theorem node17013_eq : Flapjack.WordAlloc.removeDeadStructural input17013 value784 value1 value2 = (output17013, value6896, value1) := by
  rw [input17013_def, output17013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1571_eq]
  try dsimp only
  rw [node17012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17013 input1560)).val
theorem input17014_def : input17014 = (.seq input17013 input1560) := by
  unfold input17014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17013)).val
theorem output17014_def : output17014 = (output17013) := by
  unfold output17014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17014_skip : Flapjack.WordAlloc.isSkip output17014 = false := by
  rw [output17014_def]
  conv => lhs; cbv
  try rfl
theorem node17014_eq : Flapjack.WordAlloc.removeDeadStructural input17014 value784 value1 value2 = (output17014, value6896, value1) := by
  rw [input17014_def, output17014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1560_eq]
  try dsimp only
  rw [node17013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17014 input1559)).val
theorem input17015_def : input17015 = (.seq input17014 input1559) := by
  unfold input17015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17014 output1559)).val
theorem output17015_def : output17015 = (.seq output17014 output1559) := by
  unfold output17015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17015_skip : Flapjack.WordAlloc.isSkip output17015 = false := by
  rw [output17015_def]
  conv => lhs; cbv
  try rfl
theorem node17015_eq : Flapjack.WordAlloc.removeDeadStructural input17015 value783 value1 value2 = (output17015, value6896, value1) := by
  rw [input17015_def, output17015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1559_eq]
  try dsimp only
  rw [node17014_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17015 input1558)).val
theorem input17016_def : input17016 = (.seq input17015 input1558) := by
  unfold input17016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17015 output1558)).val
theorem output17016_def : output17016 = (.seq output17015 output1558) := by
  unfold output17016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17016_skip : Flapjack.WordAlloc.isSkip output17016 = false := by
  rw [output17016_def]
  conv => lhs; cbv
  try rfl
theorem node17016_eq : Flapjack.WordAlloc.removeDeadStructural input17016 value5 value1 value2 = (output17016, value6896, value1) := by
  rw [input17016_def, output17016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1558_eq]
  try dsimp only
  rw [node17015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17016 input1555)).val
theorem input17017_def : input17017 = (.seq input17016 input1555) := by
  unfold input17017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17016 output1555)).val
theorem output17017_def : output17017 = (.seq output17016 output1555) := by
  unfold output17017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17017_skip : Flapjack.WordAlloc.isSkip output17017 = false := by
  rw [output17017_def]
  conv => lhs; cbv
  try rfl
theorem node17017_eq : Flapjack.WordAlloc.removeDeadStructural input17017 value776 value1 value2 = (output17017, value6896, value1) := by
  rw [input17017_def, output17017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1555_eq]
  try dsimp only
  rw [node17016_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17017 input1544)).val
theorem input17018_def : input17018 = (.seq input17017 input1544) := by
  unfold input17018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17017)).val
theorem output17018_def : output17018 = (output17017) := by
  unfold output17018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17018_skip : Flapjack.WordAlloc.isSkip output17018 = false := by
  rw [output17018_def]
  conv => lhs; cbv
  try rfl
theorem node17018_eq : Flapjack.WordAlloc.removeDeadStructural input17018 value776 value1 value2 = (output17018, value6896, value1) := by
  rw [input17018_def, output17018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1544_eq]
  try dsimp only
  rw [node17017_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17018 input1543)).val
theorem input17019_def : input17019 = (.seq input17018 input1543) := by
  unfold input17019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17018 output1543)).val
theorem output17019_def : output17019 = (.seq output17018 output1543) := by
  unfold output17019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17019_skip : Flapjack.WordAlloc.isSkip output17019 = false := by
  rw [output17019_def]
  conv => lhs; cbv
  try rfl
theorem node17019_eq : Flapjack.WordAlloc.removeDeadStructural input17019 value775 value1 value2 = (output17019, value6896, value1) := by
  rw [input17019_def, output17019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1543_eq]
  try dsimp only
  rw [node17018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17019 input1542)).val
theorem input17020_def : input17020 = (.seq input17019 input1542) := by
  unfold input17020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17019 output1542)).val
theorem output17020_def : output17020 = (.seq output17019 output1542) := by
  unfold output17020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17020_skip : Flapjack.WordAlloc.isSkip output17020 = false := by
  rw [output17020_def]
  conv => lhs; cbv
  try rfl
theorem node17020_eq : Flapjack.WordAlloc.removeDeadStructural input17020 value5 value1 value2 = (output17020, value6896, value1) := by
  rw [input17020_def, output17020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1542_eq]
  try dsimp only
  rw [node17019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17020 input1539)).val
theorem input17021_def : input17021 = (.seq input17020 input1539) := by
  unfold input17021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17020 output1539)).val
theorem output17021_def : output17021 = (.seq output17020 output1539) := by
  unfold output17021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17021_skip : Flapjack.WordAlloc.isSkip output17021 = false := by
  rw [output17021_def]
  conv => lhs; cbv
  try rfl
theorem node17021_eq : Flapjack.WordAlloc.removeDeadStructural input17021 value768 value1 value2 = (output17021, value6896, value1) := by
  rw [input17021_def, output17021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1539_eq]
  try dsimp only
  rw [node17020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17021 input1528)).val
theorem input17022_def : input17022 = (.seq input17021 input1528) := by
  unfold input17022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17021)).val
theorem output17022_def : output17022 = (output17021) := by
  unfold output17022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17022_skip : Flapjack.WordAlloc.isSkip output17022 = false := by
  rw [output17022_def]
  conv => lhs; cbv
  try rfl
theorem node17022_eq : Flapjack.WordAlloc.removeDeadStructural input17022 value768 value1 value2 = (output17022, value6896, value1) := by
  rw [input17022_def, output17022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1528_eq]
  try dsimp only
  rw [node17021_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17022 input1527)).val
theorem input17023_def : input17023 = (.seq input17022 input1527) := by
  unfold input17023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17022 output1527)).val
theorem output17023_def : output17023 = (.seq output17022 output1527) := by
  unfold output17023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17023_skip : Flapjack.WordAlloc.isSkip output17023 = false := by
  rw [output17023_def]
  conv => lhs; cbv
  try rfl
theorem node17023_eq : Flapjack.WordAlloc.removeDeadStructural input17023 value767 value1 value2 = (output17023, value6896, value1) := by
  rw [input17023_def, output17023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1527_eq]
  try dsimp only
  rw [node17022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17023 input1526)).val
theorem input17024_def : input17024 = (.seq input17023 input1526) := by
  unfold input17024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17023 output1526)).val
theorem output17024_def : output17024 = (.seq output17023 output1526) := by
  unfold output17024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17024_skip : Flapjack.WordAlloc.isSkip output17024 = false := by
  rw [output17024_def]
  conv => lhs; cbv
  try rfl
theorem node17024_eq : Flapjack.WordAlloc.removeDeadStructural input17024 value5 value1 value2 = (output17024, value6896, value1) := by
  rw [input17024_def, output17024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1526_eq]
  try dsimp only
  rw [node17023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17024 input1523)).val
theorem input17025_def : input17025 = (.seq input17024 input1523) := by
  unfold input17025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17024 output1523)).val
theorem output17025_def : output17025 = (.seq output17024 output1523) := by
  unfold output17025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17025_skip : Flapjack.WordAlloc.isSkip output17025 = false := by
  rw [output17025_def]
  conv => lhs; cbv
  try rfl
theorem node17025_eq : Flapjack.WordAlloc.removeDeadStructural input17025 value760 value1 value2 = (output17025, value6896, value1) := by
  rw [input17025_def, output17025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1523_eq]
  try dsimp only
  rw [node17024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17025 input1512)).val
theorem input17026_def : input17026 = (.seq input17025 input1512) := by
  unfold input17026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17025)).val
theorem output17026_def : output17026 = (output17025) := by
  unfold output17026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17026_skip : Flapjack.WordAlloc.isSkip output17026 = false := by
  rw [output17026_def]
  conv => lhs; cbv
  try rfl
theorem node17026_eq : Flapjack.WordAlloc.removeDeadStructural input17026 value760 value1 value2 = (output17026, value6896, value1) := by
  rw [input17026_def, output17026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1512_eq]
  try dsimp only
  rw [node17025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17026 input1511)).val
theorem input17027_def : input17027 = (.seq input17026 input1511) := by
  unfold input17027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17026 output1511)).val
theorem output17027_def : output17027 = (.seq output17026 output1511) := by
  unfold output17027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17027_skip : Flapjack.WordAlloc.isSkip output17027 = false := by
  rw [output17027_def]
  conv => lhs; cbv
  try rfl
theorem node17027_eq : Flapjack.WordAlloc.removeDeadStructural input17027 value759 value1 value2 = (output17027, value6896, value1) := by
  rw [input17027_def, output17027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1511_eq]
  try dsimp only
  rw [node17026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17027 input1510)).val
theorem input17028_def : input17028 = (.seq input17027 input1510) := by
  unfold input17028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17027 output1510)).val
theorem output17028_def : output17028 = (.seq output17027 output1510) := by
  unfold output17028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17028_skip : Flapjack.WordAlloc.isSkip output17028 = false := by
  rw [output17028_def]
  conv => lhs; cbv
  try rfl
theorem node17028_eq : Flapjack.WordAlloc.removeDeadStructural input17028 value5 value1 value2 = (output17028, value6896, value1) := by
  rw [input17028_def, output17028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1510_eq]
  try dsimp only
  rw [node17027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17028 input1507)).val
theorem input17029_def : input17029 = (.seq input17028 input1507) := by
  unfold input17029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17028 output1507)).val
theorem output17029_def : output17029 = (.seq output17028 output1507) := by
  unfold output17029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17029_skip : Flapjack.WordAlloc.isSkip output17029 = false := by
  rw [output17029_def]
  conv => lhs; cbv
  try rfl
theorem node17029_eq : Flapjack.WordAlloc.removeDeadStructural input17029 value752 value1 value2 = (output17029, value6896, value1) := by
  rw [input17029_def, output17029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1507_eq]
  try dsimp only
  rw [node17028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17029 input1496)).val
theorem input17030_def : input17030 = (.seq input17029 input1496) := by
  unfold input17030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17029)).val
theorem output17030_def : output17030 = (output17029) := by
  unfold output17030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17030_skip : Flapjack.WordAlloc.isSkip output17030 = false := by
  rw [output17030_def]
  conv => lhs; cbv
  try rfl
theorem node17030_eq : Flapjack.WordAlloc.removeDeadStructural input17030 value752 value1 value2 = (output17030, value6896, value1) := by
  rw [input17030_def, output17030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1496_eq]
  try dsimp only
  rw [node17029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17030 input1495)).val
theorem input17031_def : input17031 = (.seq input17030 input1495) := by
  unfold input17031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17030 output1495)).val
theorem output17031_def : output17031 = (.seq output17030 output1495) := by
  unfold output17031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17031_skip : Flapjack.WordAlloc.isSkip output17031 = false := by
  rw [output17031_def]
  conv => lhs; cbv
  try rfl
theorem node17031_eq : Flapjack.WordAlloc.removeDeadStructural input17031 value751 value1 value2 = (output17031, value6896, value1) := by
  rw [input17031_def, output17031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1495_eq]
  try dsimp only
  rw [node17030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17031 input1494)).val
theorem input17032_def : input17032 = (.seq input17031 input1494) := by
  unfold input17032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17031 output1494)).val
theorem output17032_def : output17032 = (.seq output17031 output1494) := by
  unfold output17032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17032_skip : Flapjack.WordAlloc.isSkip output17032 = false := by
  rw [output17032_def]
  conv => lhs; cbv
  try rfl
theorem node17032_eq : Flapjack.WordAlloc.removeDeadStructural input17032 value5 value1 value2 = (output17032, value6896, value1) := by
  rw [input17032_def, output17032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1494_eq]
  try dsimp only
  rw [node17031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17032 input1491)).val
theorem input17033_def : input17033 = (.seq input17032 input1491) := by
  unfold input17033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17032 output1491)).val
theorem output17033_def : output17033 = (.seq output17032 output1491) := by
  unfold output17033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17033_skip : Flapjack.WordAlloc.isSkip output17033 = false := by
  rw [output17033_def]
  conv => lhs; cbv
  try rfl
theorem node17033_eq : Flapjack.WordAlloc.removeDeadStructural input17033 value744 value1 value2 = (output17033, value6896, value1) := by
  rw [input17033_def, output17033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1491_eq]
  try dsimp only
  rw [node17032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17033 input1480)).val
theorem input17034_def : input17034 = (.seq input17033 input1480) := by
  unfold input17034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17033)).val
theorem output17034_def : output17034 = (output17033) := by
  unfold output17034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17034_skip : Flapjack.WordAlloc.isSkip output17034 = false := by
  rw [output17034_def]
  conv => lhs; cbv
  try rfl
theorem node17034_eq : Flapjack.WordAlloc.removeDeadStructural input17034 value744 value1 value2 = (output17034, value6896, value1) := by
  rw [input17034_def, output17034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1480_eq]
  try dsimp only
  rw [node17033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17034 input1479)).val
theorem input17035_def : input17035 = (.seq input17034 input1479) := by
  unfold input17035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17034 output1479)).val
theorem output17035_def : output17035 = (.seq output17034 output1479) := by
  unfold output17035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17035_skip : Flapjack.WordAlloc.isSkip output17035 = false := by
  rw [output17035_def]
  conv => lhs; cbv
  try rfl
theorem node17035_eq : Flapjack.WordAlloc.removeDeadStructural input17035 value743 value1 value2 = (output17035, value6896, value1) := by
  rw [input17035_def, output17035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1479_eq]
  try dsimp only
  rw [node17034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17035 input1478)).val
theorem input17036_def : input17036 = (.seq input17035 input1478) := by
  unfold input17036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17035 output1478)).val
theorem output17036_def : output17036 = (.seq output17035 output1478) := by
  unfold output17036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17036_skip : Flapjack.WordAlloc.isSkip output17036 = false := by
  rw [output17036_def]
  conv => lhs; cbv
  try rfl
theorem node17036_eq : Flapjack.WordAlloc.removeDeadStructural input17036 value5 value1 value2 = (output17036, value6896, value1) := by
  rw [input17036_def, output17036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1478_eq]
  try dsimp only
  rw [node17035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17036 input1475)).val
theorem input17037_def : input17037 = (.seq input17036 input1475) := by
  unfold input17037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17036 output1475)).val
theorem output17037_def : output17037 = (.seq output17036 output1475) := by
  unfold output17037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17037_skip : Flapjack.WordAlloc.isSkip output17037 = false := by
  rw [output17037_def]
  conv => lhs; cbv
  try rfl
theorem node17037_eq : Flapjack.WordAlloc.removeDeadStructural input17037 value736 value1 value2 = (output17037, value6896, value1) := by
  rw [input17037_def, output17037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1475_eq]
  try dsimp only
  rw [node17036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17037 input1464)).val
theorem input17038_def : input17038 = (.seq input17037 input1464) := by
  unfold input17038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17037)).val
theorem output17038_def : output17038 = (output17037) := by
  unfold output17038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17038_skip : Flapjack.WordAlloc.isSkip output17038 = false := by
  rw [output17038_def]
  conv => lhs; cbv
  try rfl
theorem node17038_eq : Flapjack.WordAlloc.removeDeadStructural input17038 value736 value1 value2 = (output17038, value6896, value1) := by
  rw [input17038_def, output17038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1464_eq]
  try dsimp only
  rw [node17037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17038 input1463)).val
theorem input17039_def : input17039 = (.seq input17038 input1463) := by
  unfold input17039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17038 output1463)).val
theorem output17039_def : output17039 = (.seq output17038 output1463) := by
  unfold output17039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17039_skip : Flapjack.WordAlloc.isSkip output17039 = false := by
  rw [output17039_def]
  conv => lhs; cbv
  try rfl
theorem node17039_eq : Flapjack.WordAlloc.removeDeadStructural input17039 value735 value1 value2 = (output17039, value6896, value1) := by
  rw [input17039_def, output17039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1463_eq]
  try dsimp only
  rw [node17038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17039 input1462)).val
theorem input17040_def : input17040 = (.seq input17039 input1462) := by
  unfold input17040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17039 output1462)).val
theorem output17040_def : output17040 = (.seq output17039 output1462) := by
  unfold output17040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17040_skip : Flapjack.WordAlloc.isSkip output17040 = false := by
  rw [output17040_def]
  conv => lhs; cbv
  try rfl
theorem node17040_eq : Flapjack.WordAlloc.removeDeadStructural input17040 value5 value1 value2 = (output17040, value6896, value1) := by
  rw [input17040_def, output17040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1462_eq]
  try dsimp only
  rw [node17039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17040 input1459)).val
theorem input17041_def : input17041 = (.seq input17040 input1459) := by
  unfold input17041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17040 output1459)).val
theorem output17041_def : output17041 = (.seq output17040 output1459) := by
  unfold output17041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17041_skip : Flapjack.WordAlloc.isSkip output17041 = false := by
  rw [output17041_def]
  conv => lhs; cbv
  try rfl
theorem node17041_eq : Flapjack.WordAlloc.removeDeadStructural input17041 value728 value1 value2 = (output17041, value6896, value1) := by
  rw [input17041_def, output17041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1459_eq]
  try dsimp only
  rw [node17040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17041 input1448)).val
theorem input17042_def : input17042 = (.seq input17041 input1448) := by
  unfold input17042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17041)).val
theorem output17042_def : output17042 = (output17041) := by
  unfold output17042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17042_skip : Flapjack.WordAlloc.isSkip output17042 = false := by
  rw [output17042_def]
  conv => lhs; cbv
  try rfl
theorem node17042_eq : Flapjack.WordAlloc.removeDeadStructural input17042 value728 value1 value2 = (output17042, value6896, value1) := by
  rw [input17042_def, output17042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1448_eq]
  try dsimp only
  rw [node17041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17042 input1447)).val
theorem input17043_def : input17043 = (.seq input17042 input1447) := by
  unfold input17043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17042 output1447)).val
theorem output17043_def : output17043 = (.seq output17042 output1447) := by
  unfold output17043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17043_skip : Flapjack.WordAlloc.isSkip output17043 = false := by
  rw [output17043_def]
  conv => lhs; cbv
  try rfl
theorem node17043_eq : Flapjack.WordAlloc.removeDeadStructural input17043 value727 value1 value2 = (output17043, value6896, value1) := by
  rw [input17043_def, output17043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1447_eq]
  try dsimp only
  rw [node17042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17043 input1446)).val
theorem input17044_def : input17044 = (.seq input17043 input1446) := by
  unfold input17044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17043 output1446)).val
theorem output17044_def : output17044 = (.seq output17043 output1446) := by
  unfold output17044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17044_skip : Flapjack.WordAlloc.isSkip output17044 = false := by
  rw [output17044_def]
  conv => lhs; cbv
  try rfl
theorem node17044_eq : Flapjack.WordAlloc.removeDeadStructural input17044 value5 value1 value2 = (output17044, value6896, value1) := by
  rw [input17044_def, output17044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1446_eq]
  try dsimp only
  rw [node17043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17044 input1443)).val
theorem input17045_def : input17045 = (.seq input17044 input1443) := by
  unfold input17045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17044 output1443)).val
theorem output17045_def : output17045 = (.seq output17044 output1443) := by
  unfold output17045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17045_skip : Flapjack.WordAlloc.isSkip output17045 = false := by
  rw [output17045_def]
  conv => lhs; cbv
  try rfl
theorem node17045_eq : Flapjack.WordAlloc.removeDeadStructural input17045 value720 value1 value2 = (output17045, value6896, value1) := by
  rw [input17045_def, output17045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1443_eq]
  try dsimp only
  rw [node17044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17045 input1432)).val
theorem input17046_def : input17046 = (.seq input17045 input1432) := by
  unfold input17046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17045)).val
theorem output17046_def : output17046 = (output17045) := by
  unfold output17046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17046_skip : Flapjack.WordAlloc.isSkip output17046 = false := by
  rw [output17046_def]
  conv => lhs; cbv
  try rfl
theorem node17046_eq : Flapjack.WordAlloc.removeDeadStructural input17046 value720 value1 value2 = (output17046, value6896, value1) := by
  rw [input17046_def, output17046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1432_eq]
  try dsimp only
  rw [node17045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17046 input1431)).val
theorem input17047_def : input17047 = (.seq input17046 input1431) := by
  unfold input17047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17046 output1431)).val
theorem output17047_def : output17047 = (.seq output17046 output1431) := by
  unfold output17047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17047_skip : Flapjack.WordAlloc.isSkip output17047 = false := by
  rw [output17047_def]
  conv => lhs; cbv
  try rfl
theorem node17047_eq : Flapjack.WordAlloc.removeDeadStructural input17047 value719 value1 value2 = (output17047, value6896, value1) := by
  rw [input17047_def, output17047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1431_eq]
  try dsimp only
  rw [node17046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17047 input1430)).val
theorem input17048_def : input17048 = (.seq input17047 input1430) := by
  unfold input17048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17047 output1430)).val
theorem output17048_def : output17048 = (.seq output17047 output1430) := by
  unfold output17048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17048_skip : Flapjack.WordAlloc.isSkip output17048 = false := by
  rw [output17048_def]
  conv => lhs; cbv
  try rfl
theorem node17048_eq : Flapjack.WordAlloc.removeDeadStructural input17048 value5 value1 value2 = (output17048, value6896, value1) := by
  rw [input17048_def, output17048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1430_eq]
  try dsimp only
  rw [node17047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17048 input1427)).val
theorem input17049_def : input17049 = (.seq input17048 input1427) := by
  unfold input17049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17048 output1427)).val
theorem output17049_def : output17049 = (.seq output17048 output1427) := by
  unfold output17049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17049_skip : Flapjack.WordAlloc.isSkip output17049 = false := by
  rw [output17049_def]
  conv => lhs; cbv
  try rfl
theorem node17049_eq : Flapjack.WordAlloc.removeDeadStructural input17049 value712 value1 value2 = (output17049, value6896, value1) := by
  rw [input17049_def, output17049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1427_eq]
  try dsimp only
  rw [node17048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17049 input1416)).val
theorem input17050_def : input17050 = (.seq input17049 input1416) := by
  unfold input17050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17049)).val
theorem output17050_def : output17050 = (output17049) := by
  unfold output17050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17050_skip : Flapjack.WordAlloc.isSkip output17050 = false := by
  rw [output17050_def]
  conv => lhs; cbv
  try rfl
theorem node17050_eq : Flapjack.WordAlloc.removeDeadStructural input17050 value712 value1 value2 = (output17050, value6896, value1) := by
  rw [input17050_def, output17050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1416_eq]
  try dsimp only
  rw [node17049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17050 input1415)).val
theorem input17051_def : input17051 = (.seq input17050 input1415) := by
  unfold input17051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17050 output1415)).val
theorem output17051_def : output17051 = (.seq output17050 output1415) := by
  unfold output17051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17051_skip : Flapjack.WordAlloc.isSkip output17051 = false := by
  rw [output17051_def]
  conv => lhs; cbv
  try rfl
theorem node17051_eq : Flapjack.WordAlloc.removeDeadStructural input17051 value711 value1 value2 = (output17051, value6896, value1) := by
  rw [input17051_def, output17051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1415_eq]
  try dsimp only
  rw [node17050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17051 input1414)).val
theorem input17052_def : input17052 = (.seq input17051 input1414) := by
  unfold input17052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17051 output1414)).val
theorem output17052_def : output17052 = (.seq output17051 output1414) := by
  unfold output17052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17052_skip : Flapjack.WordAlloc.isSkip output17052 = false := by
  rw [output17052_def]
  conv => lhs; cbv
  try rfl
theorem node17052_eq : Flapjack.WordAlloc.removeDeadStructural input17052 value5 value1 value2 = (output17052, value6896, value1) := by
  rw [input17052_def, output17052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1414_eq]
  try dsimp only
  rw [node17051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17052 input1411)).val
theorem input17053_def : input17053 = (.seq input17052 input1411) := by
  unfold input17053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17052 output1411)).val
theorem output17053_def : output17053 = (.seq output17052 output1411) := by
  unfold output17053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17053_skip : Flapjack.WordAlloc.isSkip output17053 = false := by
  rw [output17053_def]
  conv => lhs; cbv
  try rfl
theorem node17053_eq : Flapjack.WordAlloc.removeDeadStructural input17053 value704 value1 value2 = (output17053, value6896, value1) := by
  rw [input17053_def, output17053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1411_eq]
  try dsimp only
  rw [node17052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17053 input1400)).val
theorem input17054_def : input17054 = (.seq input17053 input1400) := by
  unfold input17054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17053)).val
theorem output17054_def : output17054 = (output17053) := by
  unfold output17054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17054_skip : Flapjack.WordAlloc.isSkip output17054 = false := by
  rw [output17054_def]
  conv => lhs; cbv
  try rfl
theorem node17054_eq : Flapjack.WordAlloc.removeDeadStructural input17054 value704 value1 value2 = (output17054, value6896, value1) := by
  rw [input17054_def, output17054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1400_eq]
  try dsimp only
  rw [node17053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17054 input1399)).val
theorem input17055_def : input17055 = (.seq input17054 input1399) := by
  unfold input17055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17054 output1399)).val
theorem output17055_def : output17055 = (.seq output17054 output1399) := by
  unfold output17055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17055_skip : Flapjack.WordAlloc.isSkip output17055 = false := by
  rw [output17055_def]
  conv => lhs; cbv
  try rfl
theorem node17055_eq : Flapjack.WordAlloc.removeDeadStructural input17055 value703 value1 value2 = (output17055, value6896, value1) := by
  rw [input17055_def, output17055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1399_eq]
  try dsimp only
  rw [node17054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17055 input1398)).val
theorem input17056_def : input17056 = (.seq input17055 input1398) := by
  unfold input17056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17055 output1398)).val
theorem output17056_def : output17056 = (.seq output17055 output1398) := by
  unfold output17056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17056_skip : Flapjack.WordAlloc.isSkip output17056 = false := by
  rw [output17056_def]
  conv => lhs; cbv
  try rfl
theorem node17056_eq : Flapjack.WordAlloc.removeDeadStructural input17056 value5 value1 value2 = (output17056, value6896, value1) := by
  rw [input17056_def, output17056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1398_eq]
  try dsimp only
  rw [node17055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17056 input1395)).val
theorem input17057_def : input17057 = (.seq input17056 input1395) := by
  unfold input17057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17056 output1395)).val
theorem output17057_def : output17057 = (.seq output17056 output1395) := by
  unfold output17057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17057_skip : Flapjack.WordAlloc.isSkip output17057 = false := by
  rw [output17057_def]
  conv => lhs; cbv
  try rfl
theorem node17057_eq : Flapjack.WordAlloc.removeDeadStructural input17057 value696 value1 value2 = (output17057, value6896, value1) := by
  rw [input17057_def, output17057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1395_eq]
  try dsimp only
  rw [node17056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17057 input1384)).val
theorem input17058_def : input17058 = (.seq input17057 input1384) := by
  unfold input17058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17057)).val
theorem output17058_def : output17058 = (output17057) := by
  unfold output17058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17058_skip : Flapjack.WordAlloc.isSkip output17058 = false := by
  rw [output17058_def]
  conv => lhs; cbv
  try rfl
theorem node17058_eq : Flapjack.WordAlloc.removeDeadStructural input17058 value696 value1 value2 = (output17058, value6896, value1) := by
  rw [input17058_def, output17058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1384_eq]
  try dsimp only
  rw [node17057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17058 input1383)).val
theorem input17059_def : input17059 = (.seq input17058 input1383) := by
  unfold input17059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17058 output1383)).val
theorem output17059_def : output17059 = (.seq output17058 output1383) := by
  unfold output17059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17059_skip : Flapjack.WordAlloc.isSkip output17059 = false := by
  rw [output17059_def]
  conv => lhs; cbv
  try rfl
theorem node17059_eq : Flapjack.WordAlloc.removeDeadStructural input17059 value695 value1 value2 = (output17059, value6896, value1) := by
  rw [input17059_def, output17059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1383_eq]
  try dsimp only
  rw [node17058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17059 input1382)).val
theorem input17060_def : input17060 = (.seq input17059 input1382) := by
  unfold input17060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17059 output1382)).val
theorem output17060_def : output17060 = (.seq output17059 output1382) := by
  unfold output17060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17060_skip : Flapjack.WordAlloc.isSkip output17060 = false := by
  rw [output17060_def]
  conv => lhs; cbv
  try rfl
theorem node17060_eq : Flapjack.WordAlloc.removeDeadStructural input17060 value5 value1 value2 = (output17060, value6896, value1) := by
  rw [input17060_def, output17060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1382_eq]
  try dsimp only
  rw [node17059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17060 input1379)).val
theorem input17061_def : input17061 = (.seq input17060 input1379) := by
  unfold input17061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17060 output1379)).val
theorem output17061_def : output17061 = (.seq output17060 output1379) := by
  unfold output17061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17061_skip : Flapjack.WordAlloc.isSkip output17061 = false := by
  rw [output17061_def]
  conv => lhs; cbv
  try rfl
theorem node17061_eq : Flapjack.WordAlloc.removeDeadStructural input17061 value688 value1 value2 = (output17061, value6896, value1) := by
  rw [input17061_def, output17061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1379_eq]
  try dsimp only
  rw [node17060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17061 input1368)).val
theorem input17062_def : input17062 = (.seq input17061 input1368) := by
  unfold input17062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17061)).val
theorem output17062_def : output17062 = (output17061) := by
  unfold output17062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17062_skip : Flapjack.WordAlloc.isSkip output17062 = false := by
  rw [output17062_def]
  conv => lhs; cbv
  try rfl
theorem node17062_eq : Flapjack.WordAlloc.removeDeadStructural input17062 value688 value1 value2 = (output17062, value6896, value1) := by
  rw [input17062_def, output17062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1368_eq]
  try dsimp only
  rw [node17061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17062 input1367)).val
theorem input17063_def : input17063 = (.seq input17062 input1367) := by
  unfold input17063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17062 output1367)).val
theorem output17063_def : output17063 = (.seq output17062 output1367) := by
  unfold output17063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17063_skip : Flapjack.WordAlloc.isSkip output17063 = false := by
  rw [output17063_def]
  conv => lhs; cbv
  try rfl
theorem node17063_eq : Flapjack.WordAlloc.removeDeadStructural input17063 value687 value1 value2 = (output17063, value6896, value1) := by
  rw [input17063_def, output17063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1367_eq]
  try dsimp only
  rw [node17062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17063 input1366)).val
theorem input17064_def : input17064 = (.seq input17063 input1366) := by
  unfold input17064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17063 output1366)).val
theorem output17064_def : output17064 = (.seq output17063 output1366) := by
  unfold output17064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17064_skip : Flapjack.WordAlloc.isSkip output17064 = false := by
  rw [output17064_def]
  conv => lhs; cbv
  try rfl
theorem node17064_eq : Flapjack.WordAlloc.removeDeadStructural input17064 value5 value1 value2 = (output17064, value6896, value1) := by
  rw [input17064_def, output17064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1366_eq]
  try dsimp only
  rw [node17063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17064 input1363)).val
theorem input17065_def : input17065 = (.seq input17064 input1363) := by
  unfold input17065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17064 output1363)).val
theorem output17065_def : output17065 = (.seq output17064 output1363) := by
  unfold output17065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17065_skip : Flapjack.WordAlloc.isSkip output17065 = false := by
  rw [output17065_def]
  conv => lhs; cbv
  try rfl
theorem node17065_eq : Flapjack.WordAlloc.removeDeadStructural input17065 value680 value1 value2 = (output17065, value6896, value1) := by
  rw [input17065_def, output17065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1363_eq]
  try dsimp only
  rw [node17064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17065 input1352)).val
theorem input17066_def : input17066 = (.seq input17065 input1352) := by
  unfold input17066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17065)).val
theorem output17066_def : output17066 = (output17065) := by
  unfold output17066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17066_skip : Flapjack.WordAlloc.isSkip output17066 = false := by
  rw [output17066_def]
  conv => lhs; cbv
  try rfl
theorem node17066_eq : Flapjack.WordAlloc.removeDeadStructural input17066 value680 value1 value2 = (output17066, value6896, value1) := by
  rw [input17066_def, output17066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1352_eq]
  try dsimp only
  rw [node17065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17066 input1351)).val
theorem input17067_def : input17067 = (.seq input17066 input1351) := by
  unfold input17067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17066 output1351)).val
theorem output17067_def : output17067 = (.seq output17066 output1351) := by
  unfold output17067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17067_skip : Flapjack.WordAlloc.isSkip output17067 = false := by
  rw [output17067_def]
  conv => lhs; cbv
  try rfl
theorem node17067_eq : Flapjack.WordAlloc.removeDeadStructural input17067 value679 value1 value2 = (output17067, value6896, value1) := by
  rw [input17067_def, output17067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1351_eq]
  try dsimp only
  rw [node17066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17067 input1350)).val
theorem input17068_def : input17068 = (.seq input17067 input1350) := by
  unfold input17068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17067 output1350)).val
theorem output17068_def : output17068 = (.seq output17067 output1350) := by
  unfold output17068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17068_skip : Flapjack.WordAlloc.isSkip output17068 = false := by
  rw [output17068_def]
  conv => lhs; cbv
  try rfl
theorem node17068_eq : Flapjack.WordAlloc.removeDeadStructural input17068 value5 value1 value2 = (output17068, value6896, value1) := by
  rw [input17068_def, output17068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1350_eq]
  try dsimp only
  rw [node17067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17068 input1347)).val
theorem input17069_def : input17069 = (.seq input17068 input1347) := by
  unfold input17069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17068 output1347)).val
theorem output17069_def : output17069 = (.seq output17068 output1347) := by
  unfold output17069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17069_skip : Flapjack.WordAlloc.isSkip output17069 = false := by
  rw [output17069_def]
  conv => lhs; cbv
  try rfl
theorem node17069_eq : Flapjack.WordAlloc.removeDeadStructural input17069 value672 value1 value2 = (output17069, value6896, value1) := by
  rw [input17069_def, output17069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1347_eq]
  try dsimp only
  rw [node17068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17069 input1336)).val
theorem input17070_def : input17070 = (.seq input17069 input1336) := by
  unfold input17070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17069)).val
theorem output17070_def : output17070 = (output17069) := by
  unfold output17070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17070_skip : Flapjack.WordAlloc.isSkip output17070 = false := by
  rw [output17070_def]
  conv => lhs; cbv
  try rfl
theorem node17070_eq : Flapjack.WordAlloc.removeDeadStructural input17070 value672 value1 value2 = (output17070, value6896, value1) := by
  rw [input17070_def, output17070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1336_eq]
  try dsimp only
  rw [node17069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17070 input1335)).val
theorem input17071_def : input17071 = (.seq input17070 input1335) := by
  unfold input17071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17070 output1335)).val
theorem output17071_def : output17071 = (.seq output17070 output1335) := by
  unfold output17071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17071_skip : Flapjack.WordAlloc.isSkip output17071 = false := by
  rw [output17071_def]
  conv => lhs; cbv
  try rfl
theorem node17071_eq : Flapjack.WordAlloc.removeDeadStructural input17071 value671 value1 value2 = (output17071, value6896, value1) := by
  rw [input17071_def, output17071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1335_eq]
  try dsimp only
  rw [node17070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17071 input1334)).val
theorem input17072_def : input17072 = (.seq input17071 input1334) := by
  unfold input17072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17071 output1334)).val
theorem output17072_def : output17072 = (.seq output17071 output1334) := by
  unfold output17072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17072_skip : Flapjack.WordAlloc.isSkip output17072 = false := by
  rw [output17072_def]
  conv => lhs; cbv
  try rfl
theorem node17072_eq : Flapjack.WordAlloc.removeDeadStructural input17072 value5 value1 value2 = (output17072, value6896, value1) := by
  rw [input17072_def, output17072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1334_eq]
  try dsimp only
  rw [node17071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17072 input1331)).val
theorem input17073_def : input17073 = (.seq input17072 input1331) := by
  unfold input17073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17072 output1331)).val
theorem output17073_def : output17073 = (.seq output17072 output1331) := by
  unfold output17073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17073_skip : Flapjack.WordAlloc.isSkip output17073 = false := by
  rw [output17073_def]
  conv => lhs; cbv
  try rfl
theorem node17073_eq : Flapjack.WordAlloc.removeDeadStructural input17073 value664 value1 value2 = (output17073, value6896, value1) := by
  rw [input17073_def, output17073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1331_eq]
  try dsimp only
  rw [node17072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17073 input1320)).val
theorem input17074_def : input17074 = (.seq input17073 input1320) := by
  unfold input17074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17073)).val
theorem output17074_def : output17074 = (output17073) := by
  unfold output17074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17074_skip : Flapjack.WordAlloc.isSkip output17074 = false := by
  rw [output17074_def]
  conv => lhs; cbv
  try rfl
theorem node17074_eq : Flapjack.WordAlloc.removeDeadStructural input17074 value664 value1 value2 = (output17074, value6896, value1) := by
  rw [input17074_def, output17074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1320_eq]
  try dsimp only
  rw [node17073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17074 input1319)).val
theorem input17075_def : input17075 = (.seq input17074 input1319) := by
  unfold input17075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17074 output1319)).val
theorem output17075_def : output17075 = (.seq output17074 output1319) := by
  unfold output17075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17075_skip : Flapjack.WordAlloc.isSkip output17075 = false := by
  rw [output17075_def]
  conv => lhs; cbv
  try rfl
theorem node17075_eq : Flapjack.WordAlloc.removeDeadStructural input17075 value663 value1 value2 = (output17075, value6896, value1) := by
  rw [input17075_def, output17075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1319_eq]
  try dsimp only
  rw [node17074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17075 input1318)).val
theorem input17076_def : input17076 = (.seq input17075 input1318) := by
  unfold input17076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17075 output1318)).val
theorem output17076_def : output17076 = (.seq output17075 output1318) := by
  unfold output17076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17076_skip : Flapjack.WordAlloc.isSkip output17076 = false := by
  rw [output17076_def]
  conv => lhs; cbv
  try rfl
theorem node17076_eq : Flapjack.WordAlloc.removeDeadStructural input17076 value5 value1 value2 = (output17076, value6896, value1) := by
  rw [input17076_def, output17076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1318_eq]
  try dsimp only
  rw [node17075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17076 input1315)).val
theorem input17077_def : input17077 = (.seq input17076 input1315) := by
  unfold input17077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17076 output1315)).val
theorem output17077_def : output17077 = (.seq output17076 output1315) := by
  unfold output17077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17077_skip : Flapjack.WordAlloc.isSkip output17077 = false := by
  rw [output17077_def]
  conv => lhs; cbv
  try rfl
theorem node17077_eq : Flapjack.WordAlloc.removeDeadStructural input17077 value656 value1 value2 = (output17077, value6896, value1) := by
  rw [input17077_def, output17077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1315_eq]
  try dsimp only
  rw [node17076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17077 input1304)).val
theorem input17078_def : input17078 = (.seq input17077 input1304) := by
  unfold input17078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17077)).val
theorem output17078_def : output17078 = (output17077) := by
  unfold output17078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17078_skip : Flapjack.WordAlloc.isSkip output17078 = false := by
  rw [output17078_def]
  conv => lhs; cbv
  try rfl
theorem node17078_eq : Flapjack.WordAlloc.removeDeadStructural input17078 value656 value1 value2 = (output17078, value6896, value1) := by
  rw [input17078_def, output17078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1304_eq]
  try dsimp only
  rw [node17077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17078 input1303)).val
theorem input17079_def : input17079 = (.seq input17078 input1303) := by
  unfold input17079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17078 output1303)).val
theorem output17079_def : output17079 = (.seq output17078 output1303) := by
  unfold output17079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17079_skip : Flapjack.WordAlloc.isSkip output17079 = false := by
  rw [output17079_def]
  conv => lhs; cbv
  try rfl
theorem node17079_eq : Flapjack.WordAlloc.removeDeadStructural input17079 value655 value1 value2 = (output17079, value6896, value1) := by
  rw [input17079_def, output17079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1303_eq]
  try dsimp only
  rw [node17078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17079 input1302)).val
theorem input17080_def : input17080 = (.seq input17079 input1302) := by
  unfold input17080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17079 output1302)).val
theorem output17080_def : output17080 = (.seq output17079 output1302) := by
  unfold output17080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17080_skip : Flapjack.WordAlloc.isSkip output17080 = false := by
  rw [output17080_def]
  conv => lhs; cbv
  try rfl
theorem node17080_eq : Flapjack.WordAlloc.removeDeadStructural input17080 value5 value1 value2 = (output17080, value6896, value1) := by
  rw [input17080_def, output17080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1302_eq]
  try dsimp only
  rw [node17079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17080 input1299)).val
theorem input17081_def : input17081 = (.seq input17080 input1299) := by
  unfold input17081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17080 output1299)).val
theorem output17081_def : output17081 = (.seq output17080 output1299) := by
  unfold output17081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17081_skip : Flapjack.WordAlloc.isSkip output17081 = false := by
  rw [output17081_def]
  conv => lhs; cbv
  try rfl
theorem node17081_eq : Flapjack.WordAlloc.removeDeadStructural input17081 value648 value1 value2 = (output17081, value6896, value1) := by
  rw [input17081_def, output17081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1299_eq]
  try dsimp only
  rw [node17080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17081 input1288)).val
theorem input17082_def : input17082 = (.seq input17081 input1288) := by
  unfold input17082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17081)).val
theorem output17082_def : output17082 = (output17081) := by
  unfold output17082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17082_skip : Flapjack.WordAlloc.isSkip output17082 = false := by
  rw [output17082_def]
  conv => lhs; cbv
  try rfl
theorem node17082_eq : Flapjack.WordAlloc.removeDeadStructural input17082 value648 value1 value2 = (output17082, value6896, value1) := by
  rw [input17082_def, output17082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1288_eq]
  try dsimp only
  rw [node17081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17082 input1287)).val
theorem input17083_def : input17083 = (.seq input17082 input1287) := by
  unfold input17083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17082 output1287)).val
theorem output17083_def : output17083 = (.seq output17082 output1287) := by
  unfold output17083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17083_skip : Flapjack.WordAlloc.isSkip output17083 = false := by
  rw [output17083_def]
  conv => lhs; cbv
  try rfl
theorem node17083_eq : Flapjack.WordAlloc.removeDeadStructural input17083 value647 value1 value2 = (output17083, value6896, value1) := by
  rw [input17083_def, output17083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1287_eq]
  try dsimp only
  rw [node17082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17083 input1286)).val
theorem input17084_def : input17084 = (.seq input17083 input1286) := by
  unfold input17084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17083 output1286)).val
theorem output17084_def : output17084 = (.seq output17083 output1286) := by
  unfold output17084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17084_skip : Flapjack.WordAlloc.isSkip output17084 = false := by
  rw [output17084_def]
  conv => lhs; cbv
  try rfl
theorem node17084_eq : Flapjack.WordAlloc.removeDeadStructural input17084 value5 value1 value2 = (output17084, value6896, value1) := by
  rw [input17084_def, output17084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1286_eq]
  try dsimp only
  rw [node17083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17084 input1283)).val
theorem input17085_def : input17085 = (.seq input17084 input1283) := by
  unfold input17085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17084 output1283)).val
theorem output17085_def : output17085 = (.seq output17084 output1283) := by
  unfold output17085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17085_skip : Flapjack.WordAlloc.isSkip output17085 = false := by
  rw [output17085_def]
  conv => lhs; cbv
  try rfl
theorem node17085_eq : Flapjack.WordAlloc.removeDeadStructural input17085 value640 value1 value2 = (output17085, value6896, value1) := by
  rw [input17085_def, output17085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1283_eq]
  try dsimp only
  rw [node17084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17085 input1272)).val
theorem input17086_def : input17086 = (.seq input17085 input1272) := by
  unfold input17086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17085)).val
theorem output17086_def : output17086 = (output17085) := by
  unfold output17086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17086_skip : Flapjack.WordAlloc.isSkip output17086 = false := by
  rw [output17086_def]
  conv => lhs; cbv
  try rfl
theorem node17086_eq : Flapjack.WordAlloc.removeDeadStructural input17086 value640 value1 value2 = (output17086, value6896, value1) := by
  rw [input17086_def, output17086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1272_eq]
  try dsimp only
  rw [node17085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17086 input1271)).val
theorem input17087_def : input17087 = (.seq input17086 input1271) := by
  unfold input17087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17086 output1271)).val
theorem output17087_def : output17087 = (.seq output17086 output1271) := by
  unfold output17087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17087_skip : Flapjack.WordAlloc.isSkip output17087 = false := by
  rw [output17087_def]
  conv => lhs; cbv
  try rfl
theorem node17087_eq : Flapjack.WordAlloc.removeDeadStructural input17087 value639 value1 value2 = (output17087, value6896, value1) := by
  rw [input17087_def, output17087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1271_eq]
  try dsimp only
  rw [node17086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17087 input1270)).val
theorem input17088_def : input17088 = (.seq input17087 input1270) := by
  unfold input17088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17087 output1270)).val
theorem output17088_def : output17088 = (.seq output17087 output1270) := by
  unfold output17088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17088_skip : Flapjack.WordAlloc.isSkip output17088 = false := by
  rw [output17088_def]
  conv => lhs; cbv
  try rfl
theorem node17088_eq : Flapjack.WordAlloc.removeDeadStructural input17088 value5 value1 value2 = (output17088, value6896, value1) := by
  rw [input17088_def, output17088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1270_eq]
  try dsimp only
  rw [node17087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17088 input1267)).val
theorem input17089_def : input17089 = (.seq input17088 input1267) := by
  unfold input17089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17088 output1267)).val
theorem output17089_def : output17089 = (.seq output17088 output1267) := by
  unfold output17089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17089_skip : Flapjack.WordAlloc.isSkip output17089 = false := by
  rw [output17089_def]
  conv => lhs; cbv
  try rfl
theorem node17089_eq : Flapjack.WordAlloc.removeDeadStructural input17089 value632 value1 value2 = (output17089, value6896, value1) := by
  rw [input17089_def, output17089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1267_eq]
  try dsimp only
  rw [node17088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17089 input1256)).val
theorem input17090_def : input17090 = (.seq input17089 input1256) := by
  unfold input17090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17089)).val
theorem output17090_def : output17090 = (output17089) := by
  unfold output17090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17090_skip : Flapjack.WordAlloc.isSkip output17090 = false := by
  rw [output17090_def]
  conv => lhs; cbv
  try rfl
theorem node17090_eq : Flapjack.WordAlloc.removeDeadStructural input17090 value632 value1 value2 = (output17090, value6896, value1) := by
  rw [input17090_def, output17090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1256_eq]
  try dsimp only
  rw [node17089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17090 input1255)).val
theorem input17091_def : input17091 = (.seq input17090 input1255) := by
  unfold input17091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17090 output1255)).val
theorem output17091_def : output17091 = (.seq output17090 output1255) := by
  unfold output17091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17091_skip : Flapjack.WordAlloc.isSkip output17091 = false := by
  rw [output17091_def]
  conv => lhs; cbv
  try rfl
theorem node17091_eq : Flapjack.WordAlloc.removeDeadStructural input17091 value631 value1 value2 = (output17091, value6896, value1) := by
  rw [input17091_def, output17091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1255_eq]
  try dsimp only
  rw [node17090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17091 input1254)).val
theorem input17092_def : input17092 = (.seq input17091 input1254) := by
  unfold input17092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17091 output1254)).val
theorem output17092_def : output17092 = (.seq output17091 output1254) := by
  unfold output17092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17092_skip : Flapjack.WordAlloc.isSkip output17092 = false := by
  rw [output17092_def]
  conv => lhs; cbv
  try rfl
theorem node17092_eq : Flapjack.WordAlloc.removeDeadStructural input17092 value5 value1 value2 = (output17092, value6896, value1) := by
  rw [input17092_def, output17092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1254_eq]
  try dsimp only
  rw [node17091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17092 input1251)).val
theorem input17093_def : input17093 = (.seq input17092 input1251) := by
  unfold input17093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17092 output1251)).val
theorem output17093_def : output17093 = (.seq output17092 output1251) := by
  unfold output17093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17093_skip : Flapjack.WordAlloc.isSkip output17093 = false := by
  rw [output17093_def]
  conv => lhs; cbv
  try rfl
theorem node17093_eq : Flapjack.WordAlloc.removeDeadStructural input17093 value624 value1 value2 = (output17093, value6896, value1) := by
  rw [input17093_def, output17093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1251_eq]
  try dsimp only
  rw [node17092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17093 input1240)).val
theorem input17094_def : input17094 = (.seq input17093 input1240) := by
  unfold input17094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17093)).val
theorem output17094_def : output17094 = (output17093) := by
  unfold output17094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17094_skip : Flapjack.WordAlloc.isSkip output17094 = false := by
  rw [output17094_def]
  conv => lhs; cbv
  try rfl
theorem node17094_eq : Flapjack.WordAlloc.removeDeadStructural input17094 value624 value1 value2 = (output17094, value6896, value1) := by
  rw [input17094_def, output17094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1240_eq]
  try dsimp only
  rw [node17093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17094 input1239)).val
theorem input17095_def : input17095 = (.seq input17094 input1239) := by
  unfold input17095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17094 output1239)).val
theorem output17095_def : output17095 = (.seq output17094 output1239) := by
  unfold output17095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17095_skip : Flapjack.WordAlloc.isSkip output17095 = false := by
  rw [output17095_def]
  conv => lhs; cbv
  try rfl
theorem node17095_eq : Flapjack.WordAlloc.removeDeadStructural input17095 value623 value1 value2 = (output17095, value6896, value1) := by
  rw [input17095_def, output17095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1239_eq]
  try dsimp only
  rw [node17094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17095 input1238)).val
theorem input17096_def : input17096 = (.seq input17095 input1238) := by
  unfold input17096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17095 output1238)).val
theorem output17096_def : output17096 = (.seq output17095 output1238) := by
  unfold output17096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17096_skip : Flapjack.WordAlloc.isSkip output17096 = false := by
  rw [output17096_def]
  conv => lhs; cbv
  try rfl
theorem node17096_eq : Flapjack.WordAlloc.removeDeadStructural input17096 value5 value1 value2 = (output17096, value6896, value1) := by
  rw [input17096_def, output17096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1238_eq]
  try dsimp only
  rw [node17095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17096 input1235)).val
theorem input17097_def : input17097 = (.seq input17096 input1235) := by
  unfold input17097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17096 output1235)).val
theorem output17097_def : output17097 = (.seq output17096 output1235) := by
  unfold output17097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17097_skip : Flapjack.WordAlloc.isSkip output17097 = false := by
  rw [output17097_def]
  conv => lhs; cbv
  try rfl
theorem node17097_eq : Flapjack.WordAlloc.removeDeadStructural input17097 value616 value1 value2 = (output17097, value6896, value1) := by
  rw [input17097_def, output17097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1235_eq]
  try dsimp only
  rw [node17096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17097 input1224)).val
theorem input17098_def : input17098 = (.seq input17097 input1224) := by
  unfold input17098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17097)).val
theorem output17098_def : output17098 = (output17097) := by
  unfold output17098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17098_skip : Flapjack.WordAlloc.isSkip output17098 = false := by
  rw [output17098_def]
  conv => lhs; cbv
  try rfl
theorem node17098_eq : Flapjack.WordAlloc.removeDeadStructural input17098 value616 value1 value2 = (output17098, value6896, value1) := by
  rw [input17098_def, output17098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1224_eq]
  try dsimp only
  rw [node17097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17098 input1223)).val
theorem input17099_def : input17099 = (.seq input17098 input1223) := by
  unfold input17099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17098 output1223)).val
theorem output17099_def : output17099 = (.seq output17098 output1223) := by
  unfold output17099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17099_skip : Flapjack.WordAlloc.isSkip output17099 = false := by
  rw [output17099_def]
  conv => lhs; cbv
  try rfl
theorem node17099_eq : Flapjack.WordAlloc.removeDeadStructural input17099 value615 value1 value2 = (output17099, value6896, value1) := by
  rw [input17099_def, output17099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1223_eq]
  try dsimp only
  rw [node17098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17099 input1222)).val
theorem input17100_def : input17100 = (.seq input17099 input1222) := by
  unfold input17100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17099 output1222)).val
theorem output17100_def : output17100 = (.seq output17099 output1222) := by
  unfold output17100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17100_skip : Flapjack.WordAlloc.isSkip output17100 = false := by
  rw [output17100_def]
  conv => lhs; cbv
  try rfl
theorem node17100_eq : Flapjack.WordAlloc.removeDeadStructural input17100 value5 value1 value2 = (output17100, value6896, value1) := by
  rw [input17100_def, output17100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1222_eq]
  try dsimp only
  rw [node17099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17100 input1219)).val
theorem input17101_def : input17101 = (.seq input17100 input1219) := by
  unfold input17101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17100 output1219)).val
theorem output17101_def : output17101 = (.seq output17100 output1219) := by
  unfold output17101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17101_skip : Flapjack.WordAlloc.isSkip output17101 = false := by
  rw [output17101_def]
  conv => lhs; cbv
  try rfl
theorem node17101_eq : Flapjack.WordAlloc.removeDeadStructural input17101 value608 value1 value2 = (output17101, value6896, value1) := by
  rw [input17101_def, output17101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1219_eq]
  try dsimp only
  rw [node17100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17101 input1208)).val
theorem input17102_def : input17102 = (.seq input17101 input1208) := by
  unfold input17102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17101)).val
theorem output17102_def : output17102 = (output17101) := by
  unfold output17102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17102_skip : Flapjack.WordAlloc.isSkip output17102 = false := by
  rw [output17102_def]
  conv => lhs; cbv
  try rfl
theorem node17102_eq : Flapjack.WordAlloc.removeDeadStructural input17102 value608 value1 value2 = (output17102, value6896, value1) := by
  rw [input17102_def, output17102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1208_eq]
  try dsimp only
  rw [node17101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17102 input1207)).val
theorem input17103_def : input17103 = (.seq input17102 input1207) := by
  unfold input17103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17102 output1207)).val
theorem output17103_def : output17103 = (.seq output17102 output1207) := by
  unfold output17103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17103_skip : Flapjack.WordAlloc.isSkip output17103 = false := by
  rw [output17103_def]
  conv => lhs; cbv
  try rfl
theorem node17103_eq : Flapjack.WordAlloc.removeDeadStructural input17103 value607 value1 value2 = (output17103, value6896, value1) := by
  rw [input17103_def, output17103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1207_eq]
  try dsimp only
  rw [node17102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17103 input1206)).val
theorem input17104_def : input17104 = (.seq input17103 input1206) := by
  unfold input17104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17103 output1206)).val
theorem output17104_def : output17104 = (.seq output17103 output1206) := by
  unfold output17104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17104_skip : Flapjack.WordAlloc.isSkip output17104 = false := by
  rw [output17104_def]
  conv => lhs; cbv
  try rfl
theorem node17104_eq : Flapjack.WordAlloc.removeDeadStructural input17104 value5 value1 value2 = (output17104, value6896, value1) := by
  rw [input17104_def, output17104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1206_eq]
  try dsimp only
  rw [node17103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17104 input1203)).val
theorem input17105_def : input17105 = (.seq input17104 input1203) := by
  unfold input17105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17104 output1203)).val
theorem output17105_def : output17105 = (.seq output17104 output1203) := by
  unfold output17105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17105_skip : Flapjack.WordAlloc.isSkip output17105 = false := by
  rw [output17105_def]
  conv => lhs; cbv
  try rfl
theorem node17105_eq : Flapjack.WordAlloc.removeDeadStructural input17105 value600 value1 value2 = (output17105, value6896, value1) := by
  rw [input17105_def, output17105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1203_eq]
  try dsimp only
  rw [node17104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17105 input1192)).val
theorem input17106_def : input17106 = (.seq input17105 input1192) := by
  unfold input17106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17105)).val
theorem output17106_def : output17106 = (output17105) := by
  unfold output17106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17106_skip : Flapjack.WordAlloc.isSkip output17106 = false := by
  rw [output17106_def]
  conv => lhs; cbv
  try rfl
theorem node17106_eq : Flapjack.WordAlloc.removeDeadStructural input17106 value600 value1 value2 = (output17106, value6896, value1) := by
  rw [input17106_def, output17106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1192_eq]
  try dsimp only
  rw [node17105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17106 input1191)).val
theorem input17107_def : input17107 = (.seq input17106 input1191) := by
  unfold input17107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17106 output1191)).val
theorem output17107_def : output17107 = (.seq output17106 output1191) := by
  unfold output17107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17107_skip : Flapjack.WordAlloc.isSkip output17107 = false := by
  rw [output17107_def]
  conv => lhs; cbv
  try rfl
theorem node17107_eq : Flapjack.WordAlloc.removeDeadStructural input17107 value599 value1 value2 = (output17107, value6896, value1) := by
  rw [input17107_def, output17107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1191_eq]
  try dsimp only
  rw [node17106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17107 input1190)).val
theorem input17108_def : input17108 = (.seq input17107 input1190) := by
  unfold input17108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17107 output1190)).val
theorem output17108_def : output17108 = (.seq output17107 output1190) := by
  unfold output17108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17108_skip : Flapjack.WordAlloc.isSkip output17108 = false := by
  rw [output17108_def]
  conv => lhs; cbv
  try rfl
theorem node17108_eq : Flapjack.WordAlloc.removeDeadStructural input17108 value5 value1 value2 = (output17108, value6896, value1) := by
  rw [input17108_def, output17108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1190_eq]
  try dsimp only
  rw [node17107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17108 input1187)).val
theorem input17109_def : input17109 = (.seq input17108 input1187) := by
  unfold input17109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17108 output1187)).val
theorem output17109_def : output17109 = (.seq output17108 output1187) := by
  unfold output17109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17109_skip : Flapjack.WordAlloc.isSkip output17109 = false := by
  rw [output17109_def]
  conv => lhs; cbv
  try rfl
theorem node17109_eq : Flapjack.WordAlloc.removeDeadStructural input17109 value592 value1 value2 = (output17109, value6896, value1) := by
  rw [input17109_def, output17109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1187_eq]
  try dsimp only
  rw [node17108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17109 input1176)).val
theorem input17110_def : input17110 = (.seq input17109 input1176) := by
  unfold input17110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17109)).val
theorem output17110_def : output17110 = (output17109) := by
  unfold output17110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17110_skip : Flapjack.WordAlloc.isSkip output17110 = false := by
  rw [output17110_def]
  conv => lhs; cbv
  try rfl
theorem node17110_eq : Flapjack.WordAlloc.removeDeadStructural input17110 value592 value1 value2 = (output17110, value6896, value1) := by
  rw [input17110_def, output17110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1176_eq]
  try dsimp only
  rw [node17109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17110 input1175)).val
theorem input17111_def : input17111 = (.seq input17110 input1175) := by
  unfold input17111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17110 output1175)).val
theorem output17111_def : output17111 = (.seq output17110 output1175) := by
  unfold output17111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17111_skip : Flapjack.WordAlloc.isSkip output17111 = false := by
  rw [output17111_def]
  conv => lhs; cbv
  try rfl
theorem node17111_eq : Flapjack.WordAlloc.removeDeadStructural input17111 value591 value1 value2 = (output17111, value6896, value1) := by
  rw [input17111_def, output17111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1175_eq]
  try dsimp only
  rw [node17110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17111 input1174)).val
theorem input17112_def : input17112 = (.seq input17111 input1174) := by
  unfold input17112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17111 output1174)).val
theorem output17112_def : output17112 = (.seq output17111 output1174) := by
  unfold output17112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17112_skip : Flapjack.WordAlloc.isSkip output17112 = false := by
  rw [output17112_def]
  conv => lhs; cbv
  try rfl
theorem node17112_eq : Flapjack.WordAlloc.removeDeadStructural input17112 value5 value1 value2 = (output17112, value6896, value1) := by
  rw [input17112_def, output17112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1174_eq]
  try dsimp only
  rw [node17111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17112 input1171)).val
theorem input17113_def : input17113 = (.seq input17112 input1171) := by
  unfold input17113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17112 output1171)).val
theorem output17113_def : output17113 = (.seq output17112 output1171) := by
  unfold output17113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17113_skip : Flapjack.WordAlloc.isSkip output17113 = false := by
  rw [output17113_def]
  conv => lhs; cbv
  try rfl
theorem node17113_eq : Flapjack.WordAlloc.removeDeadStructural input17113 value584 value1 value2 = (output17113, value6896, value1) := by
  rw [input17113_def, output17113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1171_eq]
  try dsimp only
  rw [node17112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17113 input1160)).val
theorem input17114_def : input17114 = (.seq input17113 input1160) := by
  unfold input17114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17113)).val
theorem output17114_def : output17114 = (output17113) := by
  unfold output17114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17114_skip : Flapjack.WordAlloc.isSkip output17114 = false := by
  rw [output17114_def]
  conv => lhs; cbv
  try rfl
theorem node17114_eq : Flapjack.WordAlloc.removeDeadStructural input17114 value584 value1 value2 = (output17114, value6896, value1) := by
  rw [input17114_def, output17114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1160_eq]
  try dsimp only
  rw [node17113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17114 input1159)).val
theorem input17115_def : input17115 = (.seq input17114 input1159) := by
  unfold input17115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17114 output1159)).val
theorem output17115_def : output17115 = (.seq output17114 output1159) := by
  unfold output17115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17115_skip : Flapjack.WordAlloc.isSkip output17115 = false := by
  rw [output17115_def]
  conv => lhs; cbv
  try rfl
theorem node17115_eq : Flapjack.WordAlloc.removeDeadStructural input17115 value583 value1 value2 = (output17115, value6896, value1) := by
  rw [input17115_def, output17115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1159_eq]
  try dsimp only
  rw [node17114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17115 input1158)).val
theorem input17116_def : input17116 = (.seq input17115 input1158) := by
  unfold input17116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17115 output1158)).val
theorem output17116_def : output17116 = (.seq output17115 output1158) := by
  unfold output17116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17116_skip : Flapjack.WordAlloc.isSkip output17116 = false := by
  rw [output17116_def]
  conv => lhs; cbv
  try rfl
theorem node17116_eq : Flapjack.WordAlloc.removeDeadStructural input17116 value5 value1 value2 = (output17116, value6896, value1) := by
  rw [input17116_def, output17116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1158_eq]
  try dsimp only
  rw [node17115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17116 input1155)).val
theorem input17117_def : input17117 = (.seq input17116 input1155) := by
  unfold input17117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17116 output1155)).val
theorem output17117_def : output17117 = (.seq output17116 output1155) := by
  unfold output17117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17117_skip : Flapjack.WordAlloc.isSkip output17117 = false := by
  rw [output17117_def]
  conv => lhs; cbv
  try rfl
theorem node17117_eq : Flapjack.WordAlloc.removeDeadStructural input17117 value576 value1 value2 = (output17117, value6896, value1) := by
  rw [input17117_def, output17117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1155_eq]
  try dsimp only
  rw [node17116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17117 input1144)).val
theorem input17118_def : input17118 = (.seq input17117 input1144) := by
  unfold input17118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17117)).val
theorem output17118_def : output17118 = (output17117) := by
  unfold output17118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17118_skip : Flapjack.WordAlloc.isSkip output17118 = false := by
  rw [output17118_def]
  conv => lhs; cbv
  try rfl
theorem node17118_eq : Flapjack.WordAlloc.removeDeadStructural input17118 value576 value1 value2 = (output17118, value6896, value1) := by
  rw [input17118_def, output17118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1144_eq]
  try dsimp only
  rw [node17117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17118 input1143)).val
theorem input17119_def : input17119 = (.seq input17118 input1143) := by
  unfold input17119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17118 output1143)).val
theorem output17119_def : output17119 = (.seq output17118 output1143) := by
  unfold output17119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17119_skip : Flapjack.WordAlloc.isSkip output17119 = false := by
  rw [output17119_def]
  conv => lhs; cbv
  try rfl
theorem node17119_eq : Flapjack.WordAlloc.removeDeadStructural input17119 value575 value1 value2 = (output17119, value6896, value1) := by
  rw [input17119_def, output17119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1143_eq]
  try dsimp only
  rw [node17118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17119 input1142)).val
theorem input17120_def : input17120 = (.seq input17119 input1142) := by
  unfold input17120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17119 output1142)).val
theorem output17120_def : output17120 = (.seq output17119 output1142) := by
  unfold output17120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17120_skip : Flapjack.WordAlloc.isSkip output17120 = false := by
  rw [output17120_def]
  conv => lhs; cbv
  try rfl
theorem node17120_eq : Flapjack.WordAlloc.removeDeadStructural input17120 value5 value1 value2 = (output17120, value6896, value1) := by
  rw [input17120_def, output17120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1142_eq]
  try dsimp only
  rw [node17119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17120 input1139)).val
theorem input17121_def : input17121 = (.seq input17120 input1139) := by
  unfold input17121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17120 output1139)).val
theorem output17121_def : output17121 = (.seq output17120 output1139) := by
  unfold output17121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17121_skip : Flapjack.WordAlloc.isSkip output17121 = false := by
  rw [output17121_def]
  conv => lhs; cbv
  try rfl
theorem node17121_eq : Flapjack.WordAlloc.removeDeadStructural input17121 value568 value1 value2 = (output17121, value6896, value1) := by
  rw [input17121_def, output17121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1139_eq]
  try dsimp only
  rw [node17120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17121 input1128)).val
theorem input17122_def : input17122 = (.seq input17121 input1128) := by
  unfold input17122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17121)).val
theorem output17122_def : output17122 = (output17121) := by
  unfold output17122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17122_skip : Flapjack.WordAlloc.isSkip output17122 = false := by
  rw [output17122_def]
  conv => lhs; cbv
  try rfl
theorem node17122_eq : Flapjack.WordAlloc.removeDeadStructural input17122 value568 value1 value2 = (output17122, value6896, value1) := by
  rw [input17122_def, output17122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1128_eq]
  try dsimp only
  rw [node17121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17122 input1127)).val
theorem input17123_def : input17123 = (.seq input17122 input1127) := by
  unfold input17123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17122 output1127)).val
theorem output17123_def : output17123 = (.seq output17122 output1127) := by
  unfold output17123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17123_skip : Flapjack.WordAlloc.isSkip output17123 = false := by
  rw [output17123_def]
  conv => lhs; cbv
  try rfl
theorem node17123_eq : Flapjack.WordAlloc.removeDeadStructural input17123 value567 value1 value2 = (output17123, value6896, value1) := by
  rw [input17123_def, output17123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1127_eq]
  try dsimp only
  rw [node17122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17123 input1126)).val
theorem input17124_def : input17124 = (.seq input17123 input1126) := by
  unfold input17124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17123 output1126)).val
theorem output17124_def : output17124 = (.seq output17123 output1126) := by
  unfold output17124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17124_skip : Flapjack.WordAlloc.isSkip output17124 = false := by
  rw [output17124_def]
  conv => lhs; cbv
  try rfl
theorem node17124_eq : Flapjack.WordAlloc.removeDeadStructural input17124 value5 value1 value2 = (output17124, value6896, value1) := by
  rw [input17124_def, output17124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1126_eq]
  try dsimp only
  rw [node17123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17124 input1123)).val
theorem input17125_def : input17125 = (.seq input17124 input1123) := by
  unfold input17125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17124 output1123)).val
theorem output17125_def : output17125 = (.seq output17124 output1123) := by
  unfold output17125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17125_skip : Flapjack.WordAlloc.isSkip output17125 = false := by
  rw [output17125_def]
  conv => lhs; cbv
  try rfl
theorem node17125_eq : Flapjack.WordAlloc.removeDeadStructural input17125 value560 value1 value2 = (output17125, value6896, value1) := by
  rw [input17125_def, output17125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1123_eq]
  try dsimp only
  rw [node17124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17125 input1112)).val
theorem input17126_def : input17126 = (.seq input17125 input1112) := by
  unfold input17126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17125)).val
theorem output17126_def : output17126 = (output17125) := by
  unfold output17126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17126_skip : Flapjack.WordAlloc.isSkip output17126 = false := by
  rw [output17126_def]
  conv => lhs; cbv
  try rfl
theorem node17126_eq : Flapjack.WordAlloc.removeDeadStructural input17126 value560 value1 value2 = (output17126, value6896, value1) := by
  rw [input17126_def, output17126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1112_eq]
  try dsimp only
  rw [node17125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17126 input1111)).val
theorem input17127_def : input17127 = (.seq input17126 input1111) := by
  unfold input17127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17126 output1111)).val
theorem output17127_def : output17127 = (.seq output17126 output1111) := by
  unfold output17127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17127_skip : Flapjack.WordAlloc.isSkip output17127 = false := by
  rw [output17127_def]
  conv => lhs; cbv
  try rfl
theorem node17127_eq : Flapjack.WordAlloc.removeDeadStructural input17127 value559 value1 value2 = (output17127, value6896, value1) := by
  rw [input17127_def, output17127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1111_eq]
  try dsimp only
  rw [node17126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17127 input1110)).val
theorem input17128_def : input17128 = (.seq input17127 input1110) := by
  unfold input17128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17127 output1110)).val
theorem output17128_def : output17128 = (.seq output17127 output1110) := by
  unfold output17128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17128_skip : Flapjack.WordAlloc.isSkip output17128 = false := by
  rw [output17128_def]
  conv => lhs; cbv
  try rfl
theorem node17128_eq : Flapjack.WordAlloc.removeDeadStructural input17128 value5 value1 value2 = (output17128, value6896, value1) := by
  rw [input17128_def, output17128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1110_eq]
  try dsimp only
  rw [node17127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17128 input1107)).val
theorem input17129_def : input17129 = (.seq input17128 input1107) := by
  unfold input17129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17128 output1107)).val
theorem output17129_def : output17129 = (.seq output17128 output1107) := by
  unfold output17129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17129_skip : Flapjack.WordAlloc.isSkip output17129 = false := by
  rw [output17129_def]
  conv => lhs; cbv
  try rfl
theorem node17129_eq : Flapjack.WordAlloc.removeDeadStructural input17129 value552 value1 value2 = (output17129, value6896, value1) := by
  rw [input17129_def, output17129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1107_eq]
  try dsimp only
  rw [node17128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17129 input1096)).val
theorem input17130_def : input17130 = (.seq input17129 input1096) := by
  unfold input17130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17129)).val
theorem output17130_def : output17130 = (output17129) := by
  unfold output17130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17130_skip : Flapjack.WordAlloc.isSkip output17130 = false := by
  rw [output17130_def]
  conv => lhs; cbv
  try rfl
theorem node17130_eq : Flapjack.WordAlloc.removeDeadStructural input17130 value552 value1 value2 = (output17130, value6896, value1) := by
  rw [input17130_def, output17130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1096_eq]
  try dsimp only
  rw [node17129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17130 input1095)).val
theorem input17131_def : input17131 = (.seq input17130 input1095) := by
  unfold input17131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17130 output1095)).val
theorem output17131_def : output17131 = (.seq output17130 output1095) := by
  unfold output17131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17131_skip : Flapjack.WordAlloc.isSkip output17131 = false := by
  rw [output17131_def]
  conv => lhs; cbv
  try rfl
theorem node17131_eq : Flapjack.WordAlloc.removeDeadStructural input17131 value551 value1 value2 = (output17131, value6896, value1) := by
  rw [input17131_def, output17131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1095_eq]
  try dsimp only
  rw [node17130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17131 input1094)).val
theorem input17132_def : input17132 = (.seq input17131 input1094) := by
  unfold input17132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17131 output1094)).val
theorem output17132_def : output17132 = (.seq output17131 output1094) := by
  unfold output17132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17132_skip : Flapjack.WordAlloc.isSkip output17132 = false := by
  rw [output17132_def]
  conv => lhs; cbv
  try rfl
theorem node17132_eq : Flapjack.WordAlloc.removeDeadStructural input17132 value5 value1 value2 = (output17132, value6896, value1) := by
  rw [input17132_def, output17132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1094_eq]
  try dsimp only
  rw [node17131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17132 input1091)).val
theorem input17133_def : input17133 = (.seq input17132 input1091) := by
  unfold input17133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17132 output1091)).val
theorem output17133_def : output17133 = (.seq output17132 output1091) := by
  unfold output17133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17133_skip : Flapjack.WordAlloc.isSkip output17133 = false := by
  rw [output17133_def]
  conv => lhs; cbv
  try rfl
theorem node17133_eq : Flapjack.WordAlloc.removeDeadStructural input17133 value544 value1 value2 = (output17133, value6896, value1) := by
  rw [input17133_def, output17133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1091_eq]
  try dsimp only
  rw [node17132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17133 input1080)).val
theorem input17134_def : input17134 = (.seq input17133 input1080) := by
  unfold input17134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17133)).val
theorem output17134_def : output17134 = (output17133) := by
  unfold output17134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17134_skip : Flapjack.WordAlloc.isSkip output17134 = false := by
  rw [output17134_def]
  conv => lhs; cbv
  try rfl
theorem node17134_eq : Flapjack.WordAlloc.removeDeadStructural input17134 value544 value1 value2 = (output17134, value6896, value1) := by
  rw [input17134_def, output17134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1080_eq]
  try dsimp only
  rw [node17133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17134 input1079)).val
theorem input17135_def : input17135 = (.seq input17134 input1079) := by
  unfold input17135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17134 output1079)).val
theorem output17135_def : output17135 = (.seq output17134 output1079) := by
  unfold output17135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17135_skip : Flapjack.WordAlloc.isSkip output17135 = false := by
  rw [output17135_def]
  conv => lhs; cbv
  try rfl
theorem node17135_eq : Flapjack.WordAlloc.removeDeadStructural input17135 value543 value1 value2 = (output17135, value6896, value1) := by
  rw [input17135_def, output17135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1079_eq]
  try dsimp only
  rw [node17134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17135 input1078)).val
theorem input17136_def : input17136 = (.seq input17135 input1078) := by
  unfold input17136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17135 output1078)).val
theorem output17136_def : output17136 = (.seq output17135 output1078) := by
  unfold output17136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17136_skip : Flapjack.WordAlloc.isSkip output17136 = false := by
  rw [output17136_def]
  conv => lhs; cbv
  try rfl
theorem node17136_eq : Flapjack.WordAlloc.removeDeadStructural input17136 value5 value1 value2 = (output17136, value6896, value1) := by
  rw [input17136_def, output17136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1078_eq]
  try dsimp only
  rw [node17135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17136 input1075)).val
theorem input17137_def : input17137 = (.seq input17136 input1075) := by
  unfold input17137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17136 output1075)).val
theorem output17137_def : output17137 = (.seq output17136 output1075) := by
  unfold output17137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17137_skip : Flapjack.WordAlloc.isSkip output17137 = false := by
  rw [output17137_def]
  conv => lhs; cbv
  try rfl
theorem node17137_eq : Flapjack.WordAlloc.removeDeadStructural input17137 value536 value1 value2 = (output17137, value6896, value1) := by
  rw [input17137_def, output17137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1075_eq]
  try dsimp only
  rw [node17136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17137 input1064)).val
theorem input17138_def : input17138 = (.seq input17137 input1064) := by
  unfold input17138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17137)).val
theorem output17138_def : output17138 = (output17137) := by
  unfold output17138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17138_skip : Flapjack.WordAlloc.isSkip output17138 = false := by
  rw [output17138_def]
  conv => lhs; cbv
  try rfl
theorem node17138_eq : Flapjack.WordAlloc.removeDeadStructural input17138 value536 value1 value2 = (output17138, value6896, value1) := by
  rw [input17138_def, output17138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1064_eq]
  try dsimp only
  rw [node17137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17138 input1063)).val
theorem input17139_def : input17139 = (.seq input17138 input1063) := by
  unfold input17139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17138 output1063)).val
theorem output17139_def : output17139 = (.seq output17138 output1063) := by
  unfold output17139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17139_skip : Flapjack.WordAlloc.isSkip output17139 = false := by
  rw [output17139_def]
  conv => lhs; cbv
  try rfl
theorem node17139_eq : Flapjack.WordAlloc.removeDeadStructural input17139 value535 value1 value2 = (output17139, value6896, value1) := by
  rw [input17139_def, output17139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1063_eq]
  try dsimp only
  rw [node17138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17139 input1062)).val
theorem input17140_def : input17140 = (.seq input17139 input1062) := by
  unfold input17140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17139 output1062)).val
theorem output17140_def : output17140 = (.seq output17139 output1062) := by
  unfold output17140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17140_skip : Flapjack.WordAlloc.isSkip output17140 = false := by
  rw [output17140_def]
  conv => lhs; cbv
  try rfl
theorem node17140_eq : Flapjack.WordAlloc.removeDeadStructural input17140 value5 value1 value2 = (output17140, value6896, value1) := by
  rw [input17140_def, output17140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1062_eq]
  try dsimp only
  rw [node17139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17140 input1059)).val
theorem input17141_def : input17141 = (.seq input17140 input1059) := by
  unfold input17141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17140 output1059)).val
theorem output17141_def : output17141 = (.seq output17140 output1059) := by
  unfold output17141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17141_skip : Flapjack.WordAlloc.isSkip output17141 = false := by
  rw [output17141_def]
  conv => lhs; cbv
  try rfl
theorem node17141_eq : Flapjack.WordAlloc.removeDeadStructural input17141 value528 value1 value2 = (output17141, value6896, value1) := by
  rw [input17141_def, output17141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1059_eq]
  try dsimp only
  rw [node17140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17141 input1048)).val
theorem input17142_def : input17142 = (.seq input17141 input1048) := by
  unfold input17142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17141)).val
theorem output17142_def : output17142 = (output17141) := by
  unfold output17142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17142_skip : Flapjack.WordAlloc.isSkip output17142 = false := by
  rw [output17142_def]
  conv => lhs; cbv
  try rfl
theorem node17142_eq : Flapjack.WordAlloc.removeDeadStructural input17142 value528 value1 value2 = (output17142, value6896, value1) := by
  rw [input17142_def, output17142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1048_eq]
  try dsimp only
  rw [node17141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17142 input1047)).val
theorem input17143_def : input17143 = (.seq input17142 input1047) := by
  unfold input17143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17142 output1047)).val
theorem output17143_def : output17143 = (.seq output17142 output1047) := by
  unfold output17143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17143_skip : Flapjack.WordAlloc.isSkip output17143 = false := by
  rw [output17143_def]
  conv => lhs; cbv
  try rfl
theorem node17143_eq : Flapjack.WordAlloc.removeDeadStructural input17143 value527 value1 value2 = (output17143, value6896, value1) := by
  rw [input17143_def, output17143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1047_eq]
  try dsimp only
  rw [node17142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17143 input1046)).val
theorem input17144_def : input17144 = (.seq input17143 input1046) := by
  unfold input17144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17143 output1046)).val
theorem output17144_def : output17144 = (.seq output17143 output1046) := by
  unfold output17144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17144_skip : Flapjack.WordAlloc.isSkip output17144 = false := by
  rw [output17144_def]
  conv => lhs; cbv
  try rfl
theorem node17144_eq : Flapjack.WordAlloc.removeDeadStructural input17144 value5 value1 value2 = (output17144, value6896, value1) := by
  rw [input17144_def, output17144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1046_eq]
  try dsimp only
  rw [node17143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17144 input1043)).val
theorem input17145_def : input17145 = (.seq input17144 input1043) := by
  unfold input17145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17144 output1043)).val
theorem output17145_def : output17145 = (.seq output17144 output1043) := by
  unfold output17145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17145_skip : Flapjack.WordAlloc.isSkip output17145 = false := by
  rw [output17145_def]
  conv => lhs; cbv
  try rfl
theorem node17145_eq : Flapjack.WordAlloc.removeDeadStructural input17145 value520 value1 value2 = (output17145, value6896, value1) := by
  rw [input17145_def, output17145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1043_eq]
  try dsimp only
  rw [node17144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17145 input1032)).val
theorem input17146_def : input17146 = (.seq input17145 input1032) := by
  unfold input17146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17145)).val
theorem output17146_def : output17146 = (output17145) := by
  unfold output17146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17146_skip : Flapjack.WordAlloc.isSkip output17146 = false := by
  rw [output17146_def]
  conv => lhs; cbv
  try rfl
theorem node17146_eq : Flapjack.WordAlloc.removeDeadStructural input17146 value520 value1 value2 = (output17146, value6896, value1) := by
  rw [input17146_def, output17146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1032_eq]
  try dsimp only
  rw [node17145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17146 input1031)).val
theorem input17147_def : input17147 = (.seq input17146 input1031) := by
  unfold input17147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17146 output1031)).val
theorem output17147_def : output17147 = (.seq output17146 output1031) := by
  unfold output17147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17147_skip : Flapjack.WordAlloc.isSkip output17147 = false := by
  rw [output17147_def]
  conv => lhs; cbv
  try rfl
theorem node17147_eq : Flapjack.WordAlloc.removeDeadStructural input17147 value519 value1 value2 = (output17147, value6896, value1) := by
  rw [input17147_def, output17147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1031_eq]
  try dsimp only
  rw [node17146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17147 input1030)).val
theorem input17148_def : input17148 = (.seq input17147 input1030) := by
  unfold input17148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17147 output1030)).val
theorem output17148_def : output17148 = (.seq output17147 output1030) := by
  unfold output17148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17148_skip : Flapjack.WordAlloc.isSkip output17148 = false := by
  rw [output17148_def]
  conv => lhs; cbv
  try rfl
theorem node17148_eq : Flapjack.WordAlloc.removeDeadStructural input17148 value5 value1 value2 = (output17148, value6896, value1) := by
  rw [input17148_def, output17148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1030_eq]
  try dsimp only
  rw [node17147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17148 input1027)).val
theorem input17149_def : input17149 = (.seq input17148 input1027) := by
  unfold input17149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17148 output1027)).val
theorem output17149_def : output17149 = (.seq output17148 output1027) := by
  unfold output17149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17149_skip : Flapjack.WordAlloc.isSkip output17149 = false := by
  rw [output17149_def]
  conv => lhs; cbv
  try rfl
theorem node17149_eq : Flapjack.WordAlloc.removeDeadStructural input17149 value512 value1 value2 = (output17149, value6896, value1) := by
  rw [input17149_def, output17149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1027_eq]
  try dsimp only
  rw [node17148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17149 input1016)).val
theorem input17150_def : input17150 = (.seq input17149 input1016) := by
  unfold input17150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17149)).val
theorem output17150_def : output17150 = (output17149) := by
  unfold output17150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17150_skip : Flapjack.WordAlloc.isSkip output17150 = false := by
  rw [output17150_def]
  conv => lhs; cbv
  try rfl
theorem node17150_eq : Flapjack.WordAlloc.removeDeadStructural input17150 value512 value1 value2 = (output17150, value6896, value1) := by
  rw [input17150_def, output17150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1016_eq]
  try dsimp only
  rw [node17149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17150 input1015)).val
theorem input17151_def : input17151 = (.seq input17150 input1015) := by
  unfold input17151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17150 output1015)).val
theorem output17151_def : output17151 = (.seq output17150 output1015) := by
  unfold output17151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17151_skip : Flapjack.WordAlloc.isSkip output17151 = false := by
  rw [output17151_def]
  conv => lhs; cbv
  try rfl
theorem node17151_eq : Flapjack.WordAlloc.removeDeadStructural input17151 value511 value1 value2 = (output17151, value6896, value1) := by
  rw [input17151_def, output17151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1015_eq]
  try dsimp only
  rw [node17150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node17151_eq
end InitECandidate.Proofs.DeadStages713
