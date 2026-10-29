import InitECandidate.Proofs.DeadStages231.Chunk003
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages231
@[irreducible, cbv_opaque] def input1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1023 input610)).val
theorem input1024_def : input1024 = (.seq input1023 input610) := by
  unfold input1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1023 output610)).val
theorem output1024_def : output1024 = (.seq output1023 output610) := by
  unfold output1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1024_skip : Flapjack.WordAlloc.isSkip output1024 = false := by
  rw [output1024_def]
  conv => lhs; cbv
  try rfl
theorem node1024_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value368 value1 value2 = (output1024, value540, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node610_eq]
  try dsimp only
  rw [node1023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1024 input609)).val
theorem input1025_def : input1025 = (.seq input1024 input609) := by
  unfold input1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1024 output609)).val
theorem output1025_def : output1025 = (.seq output1024 output609) := by
  unfold output1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1025_skip : Flapjack.WordAlloc.isSkip output1025 = false := by
  rw [output1025_def]
  conv => lhs; cbv
  try rfl
theorem node1025_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value367 value1 value2 = (output1025, value540, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node609_eq]
  try dsimp only
  rw [node1024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1025 input608)).val
theorem input1026_def : input1026 = (.seq input1025 input608) := by
  unfold input1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1025 output608)).val
theorem output1026_def : output1026 = (.seq output1025 output608) := by
  unfold output1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1026_skip : Flapjack.WordAlloc.isSkip output1026 = false := by
  rw [output1026_def]
  conv => lhs; cbv
  try rfl
theorem node1026_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value364 value1 value2 = (output1026, value540, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  try dsimp only
  rw [node1025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1026 input603)).val
theorem input1027_def : input1027 = (.seq input1026 input603) := by
  unfold input1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1026 output603)).val
theorem output1027_def : output1027 = (.seq output1026 output603) := by
  unfold output1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1027_skip : Flapjack.WordAlloc.isSkip output1027 = false := by
  rw [output1027_def]
  conv => lhs; cbv
  try rfl
theorem node1027_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value364 value1 value2 = (output1027, value540, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node603_eq]
  try dsimp only
  rw [node1026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1027 input602)).val
theorem input1028_def : input1028 = (.seq input1027 input602) := by
  unfold input1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1027 output602)).val
theorem output1028_def : output1028 = (.seq output1027 output602) := by
  unfold output1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1028_skip : Flapjack.WordAlloc.isSkip output1028 = false := by
  rw [output1028_def]
  conv => lhs; cbv
  try rfl
theorem node1028_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value363 value1 value2 = (output1028, value540, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  try dsimp only
  rw [node1027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1028 input601)).val
theorem input1029_def : input1029 = (.seq input1028 input601) := by
  unfold input1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1028 output601)).val
theorem output1029_def : output1029 = (.seq output1028 output601) := by
  unfold output1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1029_skip : Flapjack.WordAlloc.isSkip output1029 = false := by
  rw [output1029_def]
  conv => lhs; cbv
  try rfl
theorem node1029_eq : Flapjack.WordAlloc.removeDeadStructural input1029 value362 value1 value2 = (output1029, value540, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node601_eq]
  try dsimp only
  rw [node1028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1029 input600)).val
theorem input1030_def : input1030 = (.seq input1029 input600) := by
  unfold input1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1029 output600)).val
theorem output1030_def : output1030 = (.seq output1029 output600) := by
  unfold output1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1030_skip : Flapjack.WordAlloc.isSkip output1030 = false := by
  rw [output1030_def]
  conv => lhs; cbv
  try rfl
theorem node1030_eq : Flapjack.WordAlloc.removeDeadStructural input1030 value361 value1 value2 = (output1030, value540, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node600_eq]
  try dsimp only
  rw [node1029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1030 input599)).val
theorem input1031_def : input1031 = (.seq input1030 input599) := by
  unfold input1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1030 output599)).val
theorem output1031_def : output1031 = (.seq output1030 output599) := by
  unfold output1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1031_skip : Flapjack.WordAlloc.isSkip output1031 = false := by
  rw [output1031_def]
  conv => lhs; cbv
  try rfl
theorem node1031_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value360 value1 value2 = (output1031, value540, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node599_eq]
  try dsimp only
  rw [node1030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1031 input598)).val
theorem input1032_def : input1032 = (.seq input1031 input598) := by
  unfold input1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1031 output598)).val
theorem output1032_def : output1032 = (.seq output1031 output598) := by
  unfold output1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1032_skip : Flapjack.WordAlloc.isSkip output1032 = false := by
  rw [output1032_def]
  conv => lhs; cbv
  try rfl
theorem node1032_eq : Flapjack.WordAlloc.removeDeadStructural input1032 value359 value1 value2 = (output1032, value540, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node598_eq]
  try dsimp only
  rw [node1031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1032 input597)).val
theorem input1033_def : input1033 = (.seq input1032 input597) := by
  unfold input1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1032 output597)).val
theorem output1033_def : output1033 = (.seq output1032 output597) := by
  unfold output1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1033_skip : Flapjack.WordAlloc.isSkip output1033 = false := by
  rw [output1033_def]
  conv => lhs; cbv
  try rfl
theorem node1033_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value358 value1 value2 = (output1033, value540, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node597_eq]
  try dsimp only
  rw [node1032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1033 input596)).val
theorem input1034_def : input1034 = (.seq input1033 input596) := by
  unfold input1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1033 output596)).val
theorem output1034_def : output1034 = (.seq output1033 output596) := by
  unfold output1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1034_skip : Flapjack.WordAlloc.isSkip output1034 = false := by
  rw [output1034_def]
  conv => lhs; cbv
  try rfl
theorem node1034_eq : Flapjack.WordAlloc.removeDeadStructural input1034 value357 value1 value2 = (output1034, value540, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node596_eq]
  try dsimp only
  rw [node1033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1034 input595)).val
theorem input1035_def : input1035 = (.seq input1034 input595) := by
  unfold input1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1034 output595)).val
theorem output1035_def : output1035 = (.seq output1034 output595) := by
  unfold output1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1035_skip : Flapjack.WordAlloc.isSkip output1035 = false := by
  rw [output1035_def]
  conv => lhs; cbv
  try rfl
theorem node1035_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value356 value1 value2 = (output1035, value540, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node595_eq]
  try dsimp only
  rw [node1034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1035 input594)).val
theorem input1036_def : input1036 = (.seq input1035 input594) := by
  unfold input1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1035 output594)).val
theorem output1036_def : output1036 = (.seq output1035 output594) := by
  unfold output1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1036_skip : Flapjack.WordAlloc.isSkip output1036 = false := by
  rw [output1036_def]
  conv => lhs; cbv
  try rfl
theorem node1036_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value353 value1 value2 = (output1036, value540, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node594_eq]
  try dsimp only
  rw [node1035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1036 input589)).val
theorem input1037_def : input1037 = (.seq input1036 input589) := by
  unfold input1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1036 output589)).val
theorem output1037_def : output1037 = (.seq output1036 output589) := by
  unfold output1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1037_skip : Flapjack.WordAlloc.isSkip output1037 = false := by
  rw [output1037_def]
  conv => lhs; cbv
  try rfl
theorem node1037_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value353 value1 value2 = (output1037, value540, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node589_eq]
  try dsimp only
  rw [node1036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1037 input588)).val
theorem input1038_def : input1038 = (.seq input1037 input588) := by
  unfold input1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1037 output588)).val
theorem output1038_def : output1038 = (.seq output1037 output588) := by
  unfold output1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1038_skip : Flapjack.WordAlloc.isSkip output1038 = false := by
  rw [output1038_def]
  conv => lhs; cbv
  try rfl
theorem node1038_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value352 value1 value2 = (output1038, value540, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node588_eq]
  try dsimp only
  rw [node1037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1038 input587)).val
theorem input1039_def : input1039 = (.seq input1038 input587) := by
  unfold input1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1038 output587)).val
theorem output1039_def : output1039 = (.seq output1038 output587) := by
  unfold output1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1039_skip : Flapjack.WordAlloc.isSkip output1039 = false := by
  rw [output1039_def]
  conv => lhs; cbv
  try rfl
theorem node1039_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value351 value1 value2 = (output1039, value540, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node587_eq]
  try dsimp only
  rw [node1038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1039 input586)).val
theorem input1040_def : input1040 = (.seq input1039 input586) := by
  unfold input1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1039 output586)).val
theorem output1040_def : output1040 = (.seq output1039 output586) := by
  unfold output1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1040_skip : Flapjack.WordAlloc.isSkip output1040 = false := by
  rw [output1040_def]
  conv => lhs; cbv
  try rfl
theorem node1040_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value350 value1 value2 = (output1040, value540, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node586_eq]
  try dsimp only
  rw [node1039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1040 input585)).val
theorem input1041_def : input1041 = (.seq input1040 input585) := by
  unfold input1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1040 output585)).val
theorem output1041_def : output1041 = (.seq output1040 output585) := by
  unfold output1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1041_skip : Flapjack.WordAlloc.isSkip output1041 = false := by
  rw [output1041_def]
  conv => lhs; cbv
  try rfl
theorem node1041_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value349 value1 value2 = (output1041, value540, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node585_eq]
  try dsimp only
  rw [node1040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1041 input584)).val
theorem input1042_def : input1042 = (.seq input1041 input584) := by
  unfold input1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1041 output584)).val
theorem output1042_def : output1042 = (.seq output1041 output584) := by
  unfold output1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1042_skip : Flapjack.WordAlloc.isSkip output1042 = false := by
  rw [output1042_def]
  conv => lhs; cbv
  try rfl
theorem node1042_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value348 value1 value2 = (output1042, value540, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node584_eq]
  try dsimp only
  rw [node1041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1042 input583)).val
theorem input1043_def : input1043 = (.seq input1042 input583) := by
  unfold input1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1042 output583)).val
theorem output1043_def : output1043 = (.seq output1042 output583) := by
  unfold output1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1043_skip : Flapjack.WordAlloc.isSkip output1043 = false := by
  rw [output1043_def]
  conv => lhs; cbv
  try rfl
theorem node1043_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value347 value1 value2 = (output1043, value540, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node583_eq]
  try dsimp only
  rw [node1042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1043 input582)).val
theorem input1044_def : input1044 = (.seq input1043 input582) := by
  unfold input1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1043 output582)).val
theorem output1044_def : output1044 = (.seq output1043 output582) := by
  unfold output1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1044_skip : Flapjack.WordAlloc.isSkip output1044 = false := by
  rw [output1044_def]
  conv => lhs; cbv
  try rfl
theorem node1044_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value346 value1 value2 = (output1044, value540, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node582_eq]
  try dsimp only
  rw [node1043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1044 input581)).val
theorem input1045_def : input1045 = (.seq input1044 input581) := by
  unfold input1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1044 output581)).val
theorem output1045_def : output1045 = (.seq output1044 output581) := by
  unfold output1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1045_skip : Flapjack.WordAlloc.isSkip output1045 = false := by
  rw [output1045_def]
  conv => lhs; cbv
  try rfl
theorem node1045_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value345 value1 value2 = (output1045, value540, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node581_eq]
  try dsimp only
  rw [node1044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1045 input580)).val
theorem input1046_def : input1046 = (.seq input1045 input580) := by
  unfold input1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1045 output580)).val
theorem output1046_def : output1046 = (.seq output1045 output580) := by
  unfold output1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1046_skip : Flapjack.WordAlloc.isSkip output1046 = false := by
  rw [output1046_def]
  conv => lhs; cbv
  try rfl
theorem node1046_eq : Flapjack.WordAlloc.removeDeadStructural input1046 value342 value1 value2 = (output1046, value540, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node580_eq]
  try dsimp only
  rw [node1045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1046 input575)).val
theorem input1047_def : input1047 = (.seq input1046 input575) := by
  unfold input1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1046 output575)).val
theorem output1047_def : output1047 = (.seq output1046 output575) := by
  unfold output1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1047_skip : Flapjack.WordAlloc.isSkip output1047 = false := by
  rw [output1047_def]
  conv => lhs; cbv
  try rfl
theorem node1047_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value342 value1 value2 = (output1047, value540, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node575_eq]
  try dsimp only
  rw [node1046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1047 input574)).val
theorem input1048_def : input1048 = (.seq input1047 input574) := by
  unfold input1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1047 output574)).val
theorem output1048_def : output1048 = (.seq output1047 output574) := by
  unfold output1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1048_skip : Flapjack.WordAlloc.isSkip output1048 = false := by
  rw [output1048_def]
  conv => lhs; cbv
  try rfl
theorem node1048_eq : Flapjack.WordAlloc.removeDeadStructural input1048 value341 value1 value2 = (output1048, value540, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node574_eq]
  try dsimp only
  rw [node1047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1048 input573)).val
theorem input1049_def : input1049 = (.seq input1048 input573) := by
  unfold input1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1048 output573)).val
theorem output1049_def : output1049 = (.seq output1048 output573) := by
  unfold output1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1049_skip : Flapjack.WordAlloc.isSkip output1049 = false := by
  rw [output1049_def]
  conv => lhs; cbv
  try rfl
theorem node1049_eq : Flapjack.WordAlloc.removeDeadStructural input1049 value340 value1 value2 = (output1049, value540, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node573_eq]
  try dsimp only
  rw [node1048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1049 input572)).val
theorem input1050_def : input1050 = (.seq input1049 input572) := by
  unfold input1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1049 output572)).val
theorem output1050_def : output1050 = (.seq output1049 output572) := by
  unfold output1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1050_skip : Flapjack.WordAlloc.isSkip output1050 = false := by
  rw [output1050_def]
  conv => lhs; cbv
  try rfl
theorem node1050_eq : Flapjack.WordAlloc.removeDeadStructural input1050 value339 value1 value2 = (output1050, value540, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node572_eq]
  try dsimp only
  rw [node1049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1050 input571)).val
theorem input1051_def : input1051 = (.seq input1050 input571) := by
  unfold input1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1050 output571)).val
theorem output1051_def : output1051 = (.seq output1050 output571) := by
  unfold output1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1051_skip : Flapjack.WordAlloc.isSkip output1051 = false := by
  rw [output1051_def]
  conv => lhs; cbv
  try rfl
theorem node1051_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value338 value1 value2 = (output1051, value540, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node571_eq]
  try dsimp only
  rw [node1050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1051 input570)).val
theorem input1052_def : input1052 = (.seq input1051 input570) := by
  unfold input1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1051 output570)).val
theorem output1052_def : output1052 = (.seq output1051 output570) := by
  unfold output1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1052_skip : Flapjack.WordAlloc.isSkip output1052 = false := by
  rw [output1052_def]
  conv => lhs; cbv
  try rfl
theorem node1052_eq : Flapjack.WordAlloc.removeDeadStructural input1052 value337 value1 value2 = (output1052, value540, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node570_eq]
  try dsimp only
  rw [node1051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1052 input569)).val
theorem input1053_def : input1053 = (.seq input1052 input569) := by
  unfold input1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1052 output569)).val
theorem output1053_def : output1053 = (.seq output1052 output569) := by
  unfold output1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1053_skip : Flapjack.WordAlloc.isSkip output1053 = false := by
  rw [output1053_def]
  conv => lhs; cbv
  try rfl
theorem node1053_eq : Flapjack.WordAlloc.removeDeadStructural input1053 value336 value1 value2 = (output1053, value540, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  try dsimp only
  rw [node1052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1053 input568)).val
theorem input1054_def : input1054 = (.seq input1053 input568) := by
  unfold input1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1053 output568)).val
theorem output1054_def : output1054 = (.seq output1053 output568) := by
  unfold output1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1054_skip : Flapjack.WordAlloc.isSkip output1054 = false := by
  rw [output1054_def]
  conv => lhs; cbv
  try rfl
theorem node1054_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value335 value1 value2 = (output1054, value540, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node568_eq]
  try dsimp only
  rw [node1053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1054 input567)).val
theorem input1055_def : input1055 = (.seq input1054 input567) := by
  unfold input1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1054 output567)).val
theorem output1055_def : output1055 = (.seq output1054 output567) := by
  unfold output1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1055_skip : Flapjack.WordAlloc.isSkip output1055 = false := by
  rw [output1055_def]
  conv => lhs; cbv
  try rfl
theorem node1055_eq : Flapjack.WordAlloc.removeDeadStructural input1055 value334 value1 value2 = (output1055, value540, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node567_eq]
  try dsimp only
  rw [node1054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1055 input566)).val
theorem input1056_def : input1056 = (.seq input1055 input566) := by
  unfold input1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1055 output566)).val
theorem output1056_def : output1056 = (.seq output1055 output566) := by
  unfold output1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1056_skip : Flapjack.WordAlloc.isSkip output1056 = false := by
  rw [output1056_def]
  conv => lhs; cbv
  try rfl
theorem node1056_eq : Flapjack.WordAlloc.removeDeadStructural input1056 value331 value1 value2 = (output1056, value540, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node566_eq]
  try dsimp only
  rw [node1055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1056 input561)).val
theorem input1057_def : input1057 = (.seq input1056 input561) := by
  unfold input1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1056 output561)).val
theorem output1057_def : output1057 = (.seq output1056 output561) := by
  unfold output1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1057_skip : Flapjack.WordAlloc.isSkip output1057 = false := by
  rw [output1057_def]
  conv => lhs; cbv
  try rfl
theorem node1057_eq : Flapjack.WordAlloc.removeDeadStructural input1057 value331 value1 value2 = (output1057, value540, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node561_eq]
  try dsimp only
  rw [node1056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1057 input560)).val
theorem input1058_def : input1058 = (.seq input1057 input560) := by
  unfold input1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1057 output560)).val
theorem output1058_def : output1058 = (.seq output1057 output560) := by
  unfold output1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1058_skip : Flapjack.WordAlloc.isSkip output1058 = false := by
  rw [output1058_def]
  conv => lhs; cbv
  try rfl
theorem node1058_eq : Flapjack.WordAlloc.removeDeadStructural input1058 value330 value1 value2 = (output1058, value540, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node560_eq]
  try dsimp only
  rw [node1057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1058 input559)).val
theorem input1059_def : input1059 = (.seq input1058 input559) := by
  unfold input1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1058 output559)).val
theorem output1059_def : output1059 = (.seq output1058 output559) := by
  unfold output1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1059_skip : Flapjack.WordAlloc.isSkip output1059 = false := by
  rw [output1059_def]
  conv => lhs; cbv
  try rfl
theorem node1059_eq : Flapjack.WordAlloc.removeDeadStructural input1059 value329 value1 value2 = (output1059, value540, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node559_eq]
  try dsimp only
  rw [node1058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1059 input558)).val
theorem input1060_def : input1060 = (.seq input1059 input558) := by
  unfold input1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1059 output558)).val
theorem output1060_def : output1060 = (.seq output1059 output558) := by
  unfold output1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1060_skip : Flapjack.WordAlloc.isSkip output1060 = false := by
  rw [output1060_def]
  conv => lhs; cbv
  try rfl
theorem node1060_eq : Flapjack.WordAlloc.removeDeadStructural input1060 value328 value1 value2 = (output1060, value540, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node558_eq]
  try dsimp only
  rw [node1059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1060 input557)).val
theorem input1061_def : input1061 = (.seq input1060 input557) := by
  unfold input1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1060 output557)).val
theorem output1061_def : output1061 = (.seq output1060 output557) := by
  unfold output1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1061_skip : Flapjack.WordAlloc.isSkip output1061 = false := by
  rw [output1061_def]
  conv => lhs; cbv
  try rfl
theorem node1061_eq : Flapjack.WordAlloc.removeDeadStructural input1061 value327 value1 value2 = (output1061, value540, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node557_eq]
  try dsimp only
  rw [node1060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1061 input556)).val
theorem input1062_def : input1062 = (.seq input1061 input556) := by
  unfold input1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1061 output556)).val
theorem output1062_def : output1062 = (.seq output1061 output556) := by
  unfold output1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1062_skip : Flapjack.WordAlloc.isSkip output1062 = false := by
  rw [output1062_def]
  conv => lhs; cbv
  try rfl
theorem node1062_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value326 value1 value2 = (output1062, value540, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node556_eq]
  try dsimp only
  rw [node1061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1062 input555)).val
theorem input1063_def : input1063 = (.seq input1062 input555) := by
  unfold input1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1062 output555)).val
theorem output1063_def : output1063 = (.seq output1062 output555) := by
  unfold output1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1063_skip : Flapjack.WordAlloc.isSkip output1063 = false := by
  rw [output1063_def]
  conv => lhs; cbv
  try rfl
theorem node1063_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value325 value1 value2 = (output1063, value540, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node555_eq]
  try dsimp only
  rw [node1062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1063 input554)).val
theorem input1064_def : input1064 = (.seq input1063 input554) := by
  unfold input1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1063 output554)).val
theorem output1064_def : output1064 = (.seq output1063 output554) := by
  unfold output1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1064_skip : Flapjack.WordAlloc.isSkip output1064 = false := by
  rw [output1064_def]
  conv => lhs; cbv
  try rfl
theorem node1064_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value324 value1 value2 = (output1064, value540, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node554_eq]
  try dsimp only
  rw [node1063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1064 input553)).val
theorem input1065_def : input1065 = (.seq input1064 input553) := by
  unfold input1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1064 output553)).val
theorem output1065_def : output1065 = (.seq output1064 output553) := by
  unfold output1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1065_skip : Flapjack.WordAlloc.isSkip output1065 = false := by
  rw [output1065_def]
  conv => lhs; cbv
  try rfl
theorem node1065_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value323 value1 value2 = (output1065, value540, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node553_eq]
  try dsimp only
  rw [node1064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1065 input552)).val
theorem input1066_def : input1066 = (.seq input1065 input552) := by
  unfold input1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1065 output552)).val
theorem output1066_def : output1066 = (.seq output1065 output552) := by
  unfold output1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1066_skip : Flapjack.WordAlloc.isSkip output1066 = false := by
  rw [output1066_def]
  conv => lhs; cbv
  try rfl
theorem node1066_eq : Flapjack.WordAlloc.removeDeadStructural input1066 value320 value1 value2 = (output1066, value540, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node552_eq]
  try dsimp only
  rw [node1065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1066 input547)).val
theorem input1067_def : input1067 = (.seq input1066 input547) := by
  unfold input1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1066 output547)).val
theorem output1067_def : output1067 = (.seq output1066 output547) := by
  unfold output1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1067_skip : Flapjack.WordAlloc.isSkip output1067 = false := by
  rw [output1067_def]
  conv => lhs; cbv
  try rfl
theorem node1067_eq : Flapjack.WordAlloc.removeDeadStructural input1067 value320 value1 value2 = (output1067, value540, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node547_eq]
  try dsimp only
  rw [node1066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1067 input546)).val
theorem input1068_def : input1068 = (.seq input1067 input546) := by
  unfold input1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1067 output546)).val
theorem output1068_def : output1068 = (.seq output1067 output546) := by
  unfold output1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1068_skip : Flapjack.WordAlloc.isSkip output1068 = false := by
  rw [output1068_def]
  conv => lhs; cbv
  try rfl
theorem node1068_eq : Flapjack.WordAlloc.removeDeadStructural input1068 value319 value1 value2 = (output1068, value540, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node546_eq]
  try dsimp only
  rw [node1067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1068 input545)).val
theorem input1069_def : input1069 = (.seq input1068 input545) := by
  unfold input1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1068 output545)).val
theorem output1069_def : output1069 = (.seq output1068 output545) := by
  unfold output1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1069_skip : Flapjack.WordAlloc.isSkip output1069 = false := by
  rw [output1069_def]
  conv => lhs; cbv
  try rfl
theorem node1069_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value318 value1 value2 = (output1069, value540, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node545_eq]
  try dsimp only
  rw [node1068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1069 input544)).val
theorem input1070_def : input1070 = (.seq input1069 input544) := by
  unfold input1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1069 output544)).val
theorem output1070_def : output1070 = (.seq output1069 output544) := by
  unfold output1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1070_skip : Flapjack.WordAlloc.isSkip output1070 = false := by
  rw [output1070_def]
  conv => lhs; cbv
  try rfl
theorem node1070_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value317 value1 value2 = (output1070, value540, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node544_eq]
  try dsimp only
  rw [node1069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1070 input543)).val
theorem input1071_def : input1071 = (.seq input1070 input543) := by
  unfold input1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1070 output543)).val
theorem output1071_def : output1071 = (.seq output1070 output543) := by
  unfold output1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1071_skip : Flapjack.WordAlloc.isSkip output1071 = false := by
  rw [output1071_def]
  conv => lhs; cbv
  try rfl
theorem node1071_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value316 value1 value2 = (output1071, value540, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  try dsimp only
  rw [node1070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1071 input542)).val
theorem input1072_def : input1072 = (.seq input1071 input542) := by
  unfold input1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1071 output542)).val
theorem output1072_def : output1072 = (.seq output1071 output542) := by
  unfold output1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1072_skip : Flapjack.WordAlloc.isSkip output1072 = false := by
  rw [output1072_def]
  conv => lhs; cbv
  try rfl
theorem node1072_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value315 value1 value2 = (output1072, value540, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  try dsimp only
  rw [node1071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1072 input541)).val
theorem input1073_def : input1073 = (.seq input1072 input541) := by
  unfold input1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1072 output541)).val
theorem output1073_def : output1073 = (.seq output1072 output541) := by
  unfold output1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1073_skip : Flapjack.WordAlloc.isSkip output1073 = false := by
  rw [output1073_def]
  conv => lhs; cbv
  try rfl
theorem node1073_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value314 value1 value2 = (output1073, value540, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node541_eq]
  try dsimp only
  rw [node1072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1073 input540)).val
theorem input1074_def : input1074 = (.seq input1073 input540) := by
  unfold input1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1073 output540)).val
theorem output1074_def : output1074 = (.seq output1073 output540) := by
  unfold output1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1074_skip : Flapjack.WordAlloc.isSkip output1074 = false := by
  rw [output1074_def]
  conv => lhs; cbv
  try rfl
theorem node1074_eq : Flapjack.WordAlloc.removeDeadStructural input1074 value313 value1 value2 = (output1074, value540, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node540_eq]
  try dsimp only
  rw [node1073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1074 input539)).val
theorem input1075_def : input1075 = (.seq input1074 input539) := by
  unfold input1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1074 output539)).val
theorem output1075_def : output1075 = (.seq output1074 output539) := by
  unfold output1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1075_skip : Flapjack.WordAlloc.isSkip output1075 = false := by
  rw [output1075_def]
  conv => lhs; cbv
  try rfl
theorem node1075_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value312 value1 value2 = (output1075, value540, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node539_eq]
  try dsimp only
  rw [node1074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1075 input538)).val
theorem input1076_def : input1076 = (.seq input1075 input538) := by
  unfold input1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1075 output538)).val
theorem output1076_def : output1076 = (.seq output1075 output538) := by
  unfold output1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1076_skip : Flapjack.WordAlloc.isSkip output1076 = false := by
  rw [output1076_def]
  conv => lhs; cbv
  try rfl
theorem node1076_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value309 value1 value2 = (output1076, value540, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node538_eq]
  try dsimp only
  rw [node1075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1076 input533)).val
theorem input1077_def : input1077 = (.seq input1076 input533) := by
  unfold input1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1076 output533)).val
theorem output1077_def : output1077 = (.seq output1076 output533) := by
  unfold output1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1077_skip : Flapjack.WordAlloc.isSkip output1077 = false := by
  rw [output1077_def]
  conv => lhs; cbv
  try rfl
theorem node1077_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value309 value1 value2 = (output1077, value540, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node533_eq]
  try dsimp only
  rw [node1076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1077 input532)).val
theorem input1078_def : input1078 = (.seq input1077 input532) := by
  unfold input1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1077 output532)).val
theorem output1078_def : output1078 = (.seq output1077 output532) := by
  unfold output1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1078_skip : Flapjack.WordAlloc.isSkip output1078 = false := by
  rw [output1078_def]
  conv => lhs; cbv
  try rfl
theorem node1078_eq : Flapjack.WordAlloc.removeDeadStructural input1078 value308 value1 value2 = (output1078, value540, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node532_eq]
  try dsimp only
  rw [node1077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1078 input531)).val
theorem input1079_def : input1079 = (.seq input1078 input531) := by
  unfold input1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1078 output531)).val
theorem output1079_def : output1079 = (.seq output1078 output531) := by
  unfold output1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1079_skip : Flapjack.WordAlloc.isSkip output1079 = false := by
  rw [output1079_def]
  conv => lhs; cbv
  try rfl
theorem node1079_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value307 value1 value2 = (output1079, value540, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node531_eq]
  try dsimp only
  rw [node1078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1079 input530)).val
theorem input1080_def : input1080 = (.seq input1079 input530) := by
  unfold input1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1079 output530)).val
theorem output1080_def : output1080 = (.seq output1079 output530) := by
  unfold output1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1080_skip : Flapjack.WordAlloc.isSkip output1080 = false := by
  rw [output1080_def]
  conv => lhs; cbv
  try rfl
theorem node1080_eq : Flapjack.WordAlloc.removeDeadStructural input1080 value215 value1 value2 = (output1080, value540, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node1079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1080 input273)).val
theorem input1081_def : input1081 = (.seq input1080 input273) := by
  unfold input1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1080 output273)).val
theorem output1081_def : output1081 = (.seq output1080 output273) := by
  unfold output1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1081_skip : Flapjack.WordAlloc.isSkip output1081 = false := by
  rw [output1081_def]
  conv => lhs; cbv
  try rfl
theorem node1081_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value215 value1 value2 = (output1081, value540, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node273_eq]
  try dsimp only
  rw [node1080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1081 input272)).val
theorem input1082_def : input1082 = (.seq input1081 input272) := by
  unfold input1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1081 output272)).val
theorem output1082_def : output1082 = (.seq output1081 output272) := by
  unfold output1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1082_skip : Flapjack.WordAlloc.isSkip output1082 = false := by
  rw [output1082_def]
  conv => lhs; cbv
  try rfl
theorem node1082_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value214 value1 value2 = (output1082, value540, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node1081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1082 input271)).val
theorem input1083_def : input1083 = (.seq input1082 input271) := by
  unfold input1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1082 output271)).val
theorem output1083_def : output1083 = (.seq output1082 output271) := by
  unfold output1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1083_skip : Flapjack.WordAlloc.isSkip output1083 = false := by
  rw [output1083_def]
  conv => lhs; cbv
  try rfl
theorem node1083_eq : Flapjack.WordAlloc.removeDeadStructural input1083 value213 value1 value2 = (output1083, value540, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node271_eq]
  try dsimp only
  rw [node1082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1083 input270)).val
theorem input1084_def : input1084 = (.seq input1083 input270) := by
  unfold input1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1083 output270)).val
theorem output1084_def : output1084 = (.seq output1083 output270) := by
  unfold output1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1084_skip : Flapjack.WordAlloc.isSkip output1084 = false := by
  rw [output1084_def]
  conv => lhs; cbv
  try rfl
theorem node1084_eq : Flapjack.WordAlloc.removeDeadStructural input1084 value212 value1 value2 = (output1084, value540, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node270_eq]
  try dsimp only
  rw [node1083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1084 input269)).val
theorem input1085_def : input1085 = (.seq input1084 input269) := by
  unfold input1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1084 output269)).val
theorem output1085_def : output1085 = (.seq output1084 output269) := by
  unfold output1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1085_skip : Flapjack.WordAlloc.isSkip output1085 = false := by
  rw [output1085_def]
  conv => lhs; cbv
  try rfl
theorem node1085_eq : Flapjack.WordAlloc.removeDeadStructural input1085 value211 value1 value2 = (output1085, value540, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node269_eq]
  try dsimp only
  rw [node1084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1085 input268)).val
theorem input1086_def : input1086 = (.seq input1085 input268) := by
  unfold input1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1085 output268)).val
theorem output1086_def : output1086 = (.seq output1085 output268) := by
  unfold output1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1086_skip : Flapjack.WordAlloc.isSkip output1086 = false := by
  rw [output1086_def]
  conv => lhs; cbv
  try rfl
theorem node1086_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value210 value1 value2 = (output1086, value540, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node268_eq]
  try dsimp only
  rw [node1085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1086 input267)).val
theorem input1087_def : input1087 = (.seq input1086 input267) := by
  unfold input1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1086 output267)).val
theorem output1087_def : output1087 = (.seq output1086 output267) := by
  unfold output1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1087_skip : Flapjack.WordAlloc.isSkip output1087 = false := by
  rw [output1087_def]
  conv => lhs; cbv
  try rfl
theorem node1087_eq : Flapjack.WordAlloc.removeDeadStructural input1087 value209 value1 value2 = (output1087, value540, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node267_eq]
  try dsimp only
  rw [node1086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1087 input266)).val
theorem input1088_def : input1088 = (.seq input1087 input266) := by
  unfold input1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1087 output266)).val
theorem output1088_def : output1088 = (.seq output1087 output266) := by
  unfold output1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1088_skip : Flapjack.WordAlloc.isSkip output1088 = false := by
  rw [output1088_def]
  conv => lhs; cbv
  try rfl
theorem node1088_eq : Flapjack.WordAlloc.removeDeadStructural input1088 value208 value1 value2 = (output1088, value540, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node266_eq]
  try dsimp only
  rw [node1087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1088 input265)).val
theorem input1089_def : input1089 = (.seq input1088 input265) := by
  unfold input1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1088 output265)).val
theorem output1089_def : output1089 = (.seq output1088 output265) := by
  unfold output1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1089_skip : Flapjack.WordAlloc.isSkip output1089 = false := by
  rw [output1089_def]
  conv => lhs; cbv
  try rfl
theorem node1089_eq : Flapjack.WordAlloc.removeDeadStructural input1089 value207 value1 value2 = (output1089, value540, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node265_eq]
  try dsimp only
  rw [node1088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1089 input264)).val
theorem input1090_def : input1090 = (.seq input1089 input264) := by
  unfold input1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1089 output264)).val
theorem output1090_def : output1090 = (.seq output1089 output264) := by
  unfold output1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1090_skip : Flapjack.WordAlloc.isSkip output1090 = false := by
  rw [output1090_def]
  conv => lhs; cbv
  try rfl
theorem node1090_eq : Flapjack.WordAlloc.removeDeadStructural input1090 value204 value1 value2 = (output1090, value540, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node264_eq]
  try dsimp only
  rw [node1089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1090 input259)).val
theorem input1091_def : input1091 = (.seq input1090 input259) := by
  unfold input1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1090 output259)).val
theorem output1091_def : output1091 = (.seq output1090 output259) := by
  unfold output1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1091_skip : Flapjack.WordAlloc.isSkip output1091 = false := by
  rw [output1091_def]
  conv => lhs; cbv
  try rfl
theorem node1091_eq : Flapjack.WordAlloc.removeDeadStructural input1091 value204 value1 value2 = (output1091, value540, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  try dsimp only
  rw [node1090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1091 input258)).val
theorem input1092_def : input1092 = (.seq input1091 input258) := by
  unfold input1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1091 output258)).val
theorem output1092_def : output1092 = (.seq output1091 output258) := by
  unfold output1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1092_skip : Flapjack.WordAlloc.isSkip output1092 = false := by
  rw [output1092_def]
  conv => lhs; cbv
  try rfl
theorem node1092_eq : Flapjack.WordAlloc.removeDeadStructural input1092 value203 value1 value2 = (output1092, value540, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  try dsimp only
  rw [node1091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1092 input257)).val
theorem input1093_def : input1093 = (.seq input1092 input257) := by
  unfold input1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1092 output257)).val
theorem output1093_def : output1093 = (.seq output1092 output257) := by
  unfold output1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1093_skip : Flapjack.WordAlloc.isSkip output1093 = false := by
  rw [output1093_def]
  conv => lhs; cbv
  try rfl
theorem node1093_eq : Flapjack.WordAlloc.removeDeadStructural input1093 value202 value1 value2 = (output1093, value540, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node257_eq]
  try dsimp only
  rw [node1092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1093 input256)).val
theorem input1094_def : input1094 = (.seq input1093 input256) := by
  unfold input1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1093 output256)).val
theorem output1094_def : output1094 = (.seq output1093 output256) := by
  unfold output1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1094_skip : Flapjack.WordAlloc.isSkip output1094 = false := by
  rw [output1094_def]
  conv => lhs; cbv
  try rfl
theorem node1094_eq : Flapjack.WordAlloc.removeDeadStructural input1094 value201 value1 value2 = (output1094, value540, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node256_eq]
  try dsimp only
  rw [node1093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1094 input255)).val
theorem input1095_def : input1095 = (.seq input1094 input255) := by
  unfold input1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1094 output255)).val
theorem output1095_def : output1095 = (.seq output1094 output255) := by
  unfold output1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1095_skip : Flapjack.WordAlloc.isSkip output1095 = false := by
  rw [output1095_def]
  conv => lhs; cbv
  try rfl
theorem node1095_eq : Flapjack.WordAlloc.removeDeadStructural input1095 value200 value1 value2 = (output1095, value540, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node255_eq]
  try dsimp only
  rw [node1094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1095 input254)).val
theorem input1096_def : input1096 = (.seq input1095 input254) := by
  unfold input1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1095 output254)).val
theorem output1096_def : output1096 = (.seq output1095 output254) := by
  unfold output1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1096_skip : Flapjack.WordAlloc.isSkip output1096 = false := by
  rw [output1096_def]
  conv => lhs; cbv
  try rfl
theorem node1096_eq : Flapjack.WordAlloc.removeDeadStructural input1096 value199 value1 value2 = (output1096, value540, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node254_eq]
  try dsimp only
  rw [node1095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1096 input253)).val
theorem input1097_def : input1097 = (.seq input1096 input253) := by
  unfold input1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1096 output253)).val
theorem output1097_def : output1097 = (.seq output1096 output253) := by
  unfold output1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1097_skip : Flapjack.WordAlloc.isSkip output1097 = false := by
  rw [output1097_def]
  conv => lhs; cbv
  try rfl
theorem node1097_eq : Flapjack.WordAlloc.removeDeadStructural input1097 value198 value1 value2 = (output1097, value540, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node253_eq]
  try dsimp only
  rw [node1096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1097 input252)).val
theorem input1098_def : input1098 = (.seq input1097 input252) := by
  unfold input1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1097 output252)).val
theorem output1098_def : output1098 = (.seq output1097 output252) := by
  unfold output1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1098_skip : Flapjack.WordAlloc.isSkip output1098 = false := by
  rw [output1098_def]
  conv => lhs; cbv
  try rfl
theorem node1098_eq : Flapjack.WordAlloc.removeDeadStructural input1098 value197 value1 value2 = (output1098, value540, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node252_eq]
  try dsimp only
  rw [node1097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1098 input251)).val
theorem input1099_def : input1099 = (.seq input1098 input251) := by
  unfold input1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1098 output251)).val
theorem output1099_def : output1099 = (.seq output1098 output251) := by
  unfold output1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1099_skip : Flapjack.WordAlloc.isSkip output1099 = false := by
  rw [output1099_def]
  conv => lhs; cbv
  try rfl
theorem node1099_eq : Flapjack.WordAlloc.removeDeadStructural input1099 value196 value1 value2 = (output1099, value540, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node251_eq]
  try dsimp only
  rw [node1098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1099 input250)).val
theorem input1100_def : input1100 = (.seq input1099 input250) := by
  unfold input1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1099 output250)).val
theorem output1100_def : output1100 = (.seq output1099 output250) := by
  unfold output1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1100_skip : Flapjack.WordAlloc.isSkip output1100 = false := by
  rw [output1100_def]
  conv => lhs; cbv
  try rfl
theorem node1100_eq : Flapjack.WordAlloc.removeDeadStructural input1100 value193 value1 value2 = (output1100, value540, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node250_eq]
  try dsimp only
  rw [node1099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1100 input245)).val
theorem input1101_def : input1101 = (.seq input1100 input245) := by
  unfold input1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1100 output245)).val
theorem output1101_def : output1101 = (.seq output1100 output245) := by
  unfold output1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1101_skip : Flapjack.WordAlloc.isSkip output1101 = false := by
  rw [output1101_def]
  conv => lhs; cbv
  try rfl
theorem node1101_eq : Flapjack.WordAlloc.removeDeadStructural input1101 value193 value1 value2 = (output1101, value540, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node245_eq]
  try dsimp only
  rw [node1100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1101 input244)).val
theorem input1102_def : input1102 = (.seq input1101 input244) := by
  unfold input1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1101 output244)).val
theorem output1102_def : output1102 = (.seq output1101 output244) := by
  unfold output1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1102_skip : Flapjack.WordAlloc.isSkip output1102 = false := by
  rw [output1102_def]
  conv => lhs; cbv
  try rfl
theorem node1102_eq : Flapjack.WordAlloc.removeDeadStructural input1102 value192 value1 value2 = (output1102, value540, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node1101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1102 input243)).val
theorem input1103_def : input1103 = (.seq input1102 input243) := by
  unfold input1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1102 output243)).val
theorem output1103_def : output1103 = (.seq output1102 output243) := by
  unfold output1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1103_skip : Flapjack.WordAlloc.isSkip output1103 = false := by
  rw [output1103_def]
  conv => lhs; cbv
  try rfl
theorem node1103_eq : Flapjack.WordAlloc.removeDeadStructural input1103 value191 value1 value2 = (output1103, value540, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node243_eq]
  try dsimp only
  rw [node1102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1103 input242)).val
theorem input1104_def : input1104 = (.seq input1103 input242) := by
  unfold input1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1103 output242)).val
theorem output1104_def : output1104 = (.seq output1103 output242) := by
  unfold output1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1104_skip : Flapjack.WordAlloc.isSkip output1104 = false := by
  rw [output1104_def]
  conv => lhs; cbv
  try rfl
theorem node1104_eq : Flapjack.WordAlloc.removeDeadStructural input1104 value190 value1 value2 = (output1104, value540, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node242_eq]
  try dsimp only
  rw [node1103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1104 input241)).val
theorem input1105_def : input1105 = (.seq input1104 input241) := by
  unfold input1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1104 output241)).val
theorem output1105_def : output1105 = (.seq output1104 output241) := by
  unfold output1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1105_skip : Flapjack.WordAlloc.isSkip output1105 = false := by
  rw [output1105_def]
  conv => lhs; cbv
  try rfl
theorem node1105_eq : Flapjack.WordAlloc.removeDeadStructural input1105 value189 value1 value2 = (output1105, value540, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node241_eq]
  try dsimp only
  rw [node1104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1105 input240)).val
theorem input1106_def : input1106 = (.seq input1105 input240) := by
  unfold input1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1105 output240)).val
theorem output1106_def : output1106 = (.seq output1105 output240) := by
  unfold output1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1106_skip : Flapjack.WordAlloc.isSkip output1106 = false := by
  rw [output1106_def]
  conv => lhs; cbv
  try rfl
theorem node1106_eq : Flapjack.WordAlloc.removeDeadStructural input1106 value186 value1 value2 = (output1106, value540, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node240_eq]
  try dsimp only
  rw [node1105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1106 input235)).val
theorem input1107_def : input1107 = (.seq input1106 input235) := by
  unfold input1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1106 output235)).val
theorem output1107_def : output1107 = (.seq output1106 output235) := by
  unfold output1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1107_skip : Flapjack.WordAlloc.isSkip output1107 = false := by
  rw [output1107_def]
  conv => lhs; cbv
  try rfl
theorem node1107_eq : Flapjack.WordAlloc.removeDeadStructural input1107 value186 value1 value2 = (output1107, value540, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node235_eq]
  try dsimp only
  rw [node1106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1107 input234)).val
theorem input1108_def : input1108 = (.seq input1107 input234) := by
  unfold input1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1107 output234)).val
theorem output1108_def : output1108 = (.seq output1107 output234) := by
  unfold output1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1108_skip : Flapjack.WordAlloc.isSkip output1108 = false := by
  rw [output1108_def]
  conv => lhs; cbv
  try rfl
theorem node1108_eq : Flapjack.WordAlloc.removeDeadStructural input1108 value185 value1 value2 = (output1108, value540, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node234_eq]
  try dsimp only
  rw [node1107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1108 input233)).val
theorem input1109_def : input1109 = (.seq input1108 input233) := by
  unfold input1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1108 output233)).val
theorem output1109_def : output1109 = (.seq output1108 output233) := by
  unfold output1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1109_skip : Flapjack.WordAlloc.isSkip output1109 = false := by
  rw [output1109_def]
  conv => lhs; cbv
  try rfl
theorem node1109_eq : Flapjack.WordAlloc.removeDeadStructural input1109 value184 value1 value2 = (output1109, value540, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node233_eq]
  try dsimp only
  rw [node1108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1109 input232)).val
theorem input1110_def : input1110 = (.seq input1109 input232) := by
  unfold input1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1109 output232)).val
theorem output1110_def : output1110 = (.seq output1109 output232) := by
  unfold output1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1110_skip : Flapjack.WordAlloc.isSkip output1110 = false := by
  rw [output1110_def]
  conv => lhs; cbv
  try rfl
theorem node1110_eq : Flapjack.WordAlloc.removeDeadStructural input1110 value183 value1 value2 = (output1110, value540, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node232_eq]
  try dsimp only
  rw [node1109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1110 input231)).val
theorem input1111_def : input1111 = (.seq input1110 input231) := by
  unfold input1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1110 output231)).val
theorem output1111_def : output1111 = (.seq output1110 output231) := by
  unfold output1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1111_skip : Flapjack.WordAlloc.isSkip output1111 = false := by
  rw [output1111_def]
  conv => lhs; cbv
  try rfl
theorem node1111_eq : Flapjack.WordAlloc.removeDeadStructural input1111 value182 value1 value2 = (output1111, value540, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node231_eq]
  try dsimp only
  rw [node1110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1111 input230)).val
theorem input1112_def : input1112 = (.seq input1111 input230) := by
  unfold input1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1111 output230)).val
theorem output1112_def : output1112 = (.seq output1111 output230) := by
  unfold output1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1112_skip : Flapjack.WordAlloc.isSkip output1112 = false := by
  rw [output1112_def]
  conv => lhs; cbv
  try rfl
theorem node1112_eq : Flapjack.WordAlloc.removeDeadStructural input1112 value181 value1 value2 = (output1112, value540, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node230_eq]
  try dsimp only
  rw [node1111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1112 input229)).val
theorem input1113_def : input1113 = (.seq input1112 input229) := by
  unfold input1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1112 output229)).val
theorem output1113_def : output1113 = (.seq output1112 output229) := by
  unfold output1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1113_skip : Flapjack.WordAlloc.isSkip output1113 = false := by
  rw [output1113_def]
  conv => lhs; cbv
  try rfl
theorem node1113_eq : Flapjack.WordAlloc.removeDeadStructural input1113 value180 value1 value2 = (output1113, value540, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node229_eq]
  try dsimp only
  rw [node1112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1113 input228)).val
theorem input1114_def : input1114 = (.seq input1113 input228) := by
  unfold input1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1113 output228)).val
theorem output1114_def : output1114 = (.seq output1113 output228) := by
  unfold output1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1114_skip : Flapjack.WordAlloc.isSkip output1114 = false := by
  rw [output1114_def]
  conv => lhs; cbv
  try rfl
theorem node1114_eq : Flapjack.WordAlloc.removeDeadStructural input1114 value179 value1 value2 = (output1114, value540, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node228_eq]
  try dsimp only
  rw [node1113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1114 input227)).val
theorem input1115_def : input1115 = (.seq input1114 input227) := by
  unfold input1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1114 output227)).val
theorem output1115_def : output1115 = (.seq output1114 output227) := by
  unfold output1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1115_skip : Flapjack.WordAlloc.isSkip output1115 = false := by
  rw [output1115_def]
  conv => lhs; cbv
  try rfl
theorem node1115_eq : Flapjack.WordAlloc.removeDeadStructural input1115 value178 value1 value2 = (output1115, value540, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node227_eq]
  try dsimp only
  rw [node1114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1115 input226)).val
theorem input1116_def : input1116 = (.seq input1115 input226) := by
  unfold input1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1115 output226)).val
theorem output1116_def : output1116 = (.seq output1115 output226) := by
  unfold output1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1116_skip : Flapjack.WordAlloc.isSkip output1116 = false := by
  rw [output1116_def]
  conv => lhs; cbv
  try rfl
theorem node1116_eq : Flapjack.WordAlloc.removeDeadStructural input1116 value175 value1 value2 = (output1116, value540, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node226_eq]
  try dsimp only
  rw [node1115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1116 input221)).val
theorem input1117_def : input1117 = (.seq input1116 input221) := by
  unfold input1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1116 output221)).val
theorem output1117_def : output1117 = (.seq output1116 output221) := by
  unfold output1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1117_skip : Flapjack.WordAlloc.isSkip output1117 = false := by
  rw [output1117_def]
  conv => lhs; cbv
  try rfl
theorem node1117_eq : Flapjack.WordAlloc.removeDeadStructural input1117 value175 value1 value2 = (output1117, value540, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node221_eq]
  try dsimp only
  rw [node1116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1117 input220)).val
theorem input1118_def : input1118 = (.seq input1117 input220) := by
  unfold input1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1117 output220)).val
theorem output1118_def : output1118 = (.seq output1117 output220) := by
  unfold output1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1118_skip : Flapjack.WordAlloc.isSkip output1118 = false := by
  rw [output1118_def]
  conv => lhs; cbv
  try rfl
theorem node1118_eq : Flapjack.WordAlloc.removeDeadStructural input1118 value174 value1 value2 = (output1118, value540, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node220_eq]
  try dsimp only
  rw [node1117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1118 input219)).val
theorem input1119_def : input1119 = (.seq input1118 input219) := by
  unfold input1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1118 output219)).val
theorem output1119_def : output1119 = (.seq output1118 output219) := by
  unfold output1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1119_skip : Flapjack.WordAlloc.isSkip output1119 = false := by
  rw [output1119_def]
  conv => lhs; cbv
  try rfl
theorem node1119_eq : Flapjack.WordAlloc.removeDeadStructural input1119 value173 value1 value2 = (output1119, value540, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node219_eq]
  try dsimp only
  rw [node1118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1119 input218)).val
theorem input1120_def : input1120 = (.seq input1119 input218) := by
  unfold input1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1119 output218)).val
theorem output1120_def : output1120 = (.seq output1119 output218) := by
  unfold output1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1120_skip : Flapjack.WordAlloc.isSkip output1120 = false := by
  rw [output1120_def]
  conv => lhs; cbv
  try rfl
theorem node1120_eq : Flapjack.WordAlloc.removeDeadStructural input1120 value172 value1 value2 = (output1120, value540, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node1119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1120 input217)).val
theorem input1121_def : input1121 = (.seq input1120 input217) := by
  unfold input1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1120 output217)).val
theorem output1121_def : output1121 = (.seq output1120 output217) := by
  unfold output1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1121_skip : Flapjack.WordAlloc.isSkip output1121 = false := by
  rw [output1121_def]
  conv => lhs; cbv
  try rfl
theorem node1121_eq : Flapjack.WordAlloc.removeDeadStructural input1121 value171 value1 value2 = (output1121, value540, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node217_eq]
  try dsimp only
  rw [node1120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1121 input216)).val
theorem input1122_def : input1122 = (.seq input1121 input216) := by
  unfold input1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1121 output216)).val
theorem output1122_def : output1122 = (.seq output1121 output216) := by
  unfold output1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1122_skip : Flapjack.WordAlloc.isSkip output1122 = false := by
  rw [output1122_def]
  conv => lhs; cbv
  try rfl
theorem node1122_eq : Flapjack.WordAlloc.removeDeadStructural input1122 value170 value1 value2 = (output1122, value540, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node216_eq]
  try dsimp only
  rw [node1121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1122 input215)).val
theorem input1123_def : input1123 = (.seq input1122 input215) := by
  unfold input1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1122 output215)).val
theorem output1123_def : output1123 = (.seq output1122 output215) := by
  unfold output1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1123_skip : Flapjack.WordAlloc.isSkip output1123 = false := by
  rw [output1123_def]
  conv => lhs; cbv
  try rfl
theorem node1123_eq : Flapjack.WordAlloc.removeDeadStructural input1123 value169 value1 value2 = (output1123, value540, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node215_eq]
  try dsimp only
  rw [node1122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1123 input214)).val
theorem input1124_def : input1124 = (.seq input1123 input214) := by
  unfold input1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1123 output214)).val
theorem output1124_def : output1124 = (.seq output1123 output214) := by
  unfold output1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1124_skip : Flapjack.WordAlloc.isSkip output1124 = false := by
  rw [output1124_def]
  conv => lhs; cbv
  try rfl
theorem node1124_eq : Flapjack.WordAlloc.removeDeadStructural input1124 value168 value1 value2 = (output1124, value540, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node214_eq]
  try dsimp only
  rw [node1123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1124 input213)).val
theorem input1125_def : input1125 = (.seq input1124 input213) := by
  unfold input1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1124 output213)).val
theorem output1125_def : output1125 = (.seq output1124 output213) := by
  unfold output1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1125_skip : Flapjack.WordAlloc.isSkip output1125 = false := by
  rw [output1125_def]
  conv => lhs; cbv
  try rfl
theorem node1125_eq : Flapjack.WordAlloc.removeDeadStructural input1125 value167 value1 value2 = (output1125, value540, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  try dsimp only
  rw [node1124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1125 input212)).val
theorem input1126_def : input1126 = (.seq input1125 input212) := by
  unfold input1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1125 output212)).val
theorem output1126_def : output1126 = (.seq output1125 output212) := by
  unfold output1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1126_skip : Flapjack.WordAlloc.isSkip output1126 = false := by
  rw [output1126_def]
  conv => lhs; cbv
  try rfl
theorem node1126_eq : Flapjack.WordAlloc.removeDeadStructural input1126 value164 value1 value2 = (output1126, value540, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node212_eq]
  try dsimp only
  rw [node1125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1126 input207)).val
theorem input1127_def : input1127 = (.seq input1126 input207) := by
  unfold input1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1126 output207)).val
theorem output1127_def : output1127 = (.seq output1126 output207) := by
  unfold output1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1127_skip : Flapjack.WordAlloc.isSkip output1127 = false := by
  rw [output1127_def]
  conv => lhs; cbv
  try rfl
theorem node1127_eq : Flapjack.WordAlloc.removeDeadStructural input1127 value164 value1 value2 = (output1127, value540, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node207_eq]
  try dsimp only
  rw [node1126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1127 input206)).val
theorem input1128_def : input1128 = (.seq input1127 input206) := by
  unfold input1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1127 output206)).val
theorem output1128_def : output1128 = (.seq output1127 output206) := by
  unfold output1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1128_skip : Flapjack.WordAlloc.isSkip output1128 = false := by
  rw [output1128_def]
  conv => lhs; cbv
  try rfl
theorem node1128_eq : Flapjack.WordAlloc.removeDeadStructural input1128 value163 value1 value2 = (output1128, value540, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node206_eq]
  try dsimp only
  rw [node1127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1128 input205)).val
theorem input1129_def : input1129 = (.seq input1128 input205) := by
  unfold input1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1128 output205)).val
theorem output1129_def : output1129 = (.seq output1128 output205) := by
  unfold output1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1129_skip : Flapjack.WordAlloc.isSkip output1129 = false := by
  rw [output1129_def]
  conv => lhs; cbv
  try rfl
theorem node1129_eq : Flapjack.WordAlloc.removeDeadStructural input1129 value162 value1 value2 = (output1129, value540, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node205_eq]
  try dsimp only
  rw [node1128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1129 input204)).val
theorem input1130_def : input1130 = (.seq input1129 input204) := by
  unfold input1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1129 output204)).val
theorem output1130_def : output1130 = (.seq output1129 output204) := by
  unfold output1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1130_skip : Flapjack.WordAlloc.isSkip output1130 = false := by
  rw [output1130_def]
  conv => lhs; cbv
  try rfl
theorem node1130_eq : Flapjack.WordAlloc.removeDeadStructural input1130 value161 value1 value2 = (output1130, value540, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node1129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1130 input203)).val
theorem input1131_def : input1131 = (.seq input1130 input203) := by
  unfold input1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1130 output203)).val
theorem output1131_def : output1131 = (.seq output1130 output203) := by
  unfold output1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1131_skip : Flapjack.WordAlloc.isSkip output1131 = false := by
  rw [output1131_def]
  conv => lhs; cbv
  try rfl
theorem node1131_eq : Flapjack.WordAlloc.removeDeadStructural input1131 value160 value1 value2 = (output1131, value540, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node1130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1131 input202)).val
theorem input1132_def : input1132 = (.seq input1131 input202) := by
  unfold input1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1131 output202)).val
theorem output1132_def : output1132 = (.seq output1131 output202) := by
  unfold output1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1132_skip : Flapjack.WordAlloc.isSkip output1132 = false := by
  rw [output1132_def]
  conv => lhs; cbv
  try rfl
theorem node1132_eq : Flapjack.WordAlloc.removeDeadStructural input1132 value157 value1 value2 = (output1132, value540, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node202_eq]
  try dsimp only
  rw [node1131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1132 input197)).val
theorem input1133_def : input1133 = (.seq input1132 input197) := by
  unfold input1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1132 output197)).val
theorem output1133_def : output1133 = (.seq output1132 output197) := by
  unfold output1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1133_skip : Flapjack.WordAlloc.isSkip output1133 = false := by
  rw [output1133_def]
  conv => lhs; cbv
  try rfl
theorem node1133_eq : Flapjack.WordAlloc.removeDeadStructural input1133 value157 value1 value2 = (output1133, value540, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node197_eq]
  try dsimp only
  rw [node1132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1133 input196)).val
theorem input1134_def : input1134 = (.seq input1133 input196) := by
  unfold input1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1133 output196)).val
theorem output1134_def : output1134 = (.seq output1133 output196) := by
  unfold output1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1134_skip : Flapjack.WordAlloc.isSkip output1134 = false := by
  rw [output1134_def]
  conv => lhs; cbv
  try rfl
theorem node1134_eq : Flapjack.WordAlloc.removeDeadStructural input1134 value156 value1 value2 = (output1134, value540, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node196_eq]
  try dsimp only
  rw [node1133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1134 input195)).val
theorem input1135_def : input1135 = (.seq input1134 input195) := by
  unfold input1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1134 output195)).val
theorem output1135_def : output1135 = (.seq output1134 output195) := by
  unfold output1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1135_skip : Flapjack.WordAlloc.isSkip output1135 = false := by
  rw [output1135_def]
  conv => lhs; cbv
  try rfl
theorem node1135_eq : Flapjack.WordAlloc.removeDeadStructural input1135 value155 value1 value2 = (output1135, value540, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node195_eq]
  try dsimp only
  rw [node1134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1135 input194)).val
theorem input1136_def : input1136 = (.seq input1135 input194) := by
  unfold input1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1135 output194)).val
theorem output1136_def : output1136 = (.seq output1135 output194) := by
  unfold output1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1136_skip : Flapjack.WordAlloc.isSkip output1136 = false := by
  rw [output1136_def]
  conv => lhs; cbv
  try rfl
theorem node1136_eq : Flapjack.WordAlloc.removeDeadStructural input1136 value154 value1 value2 = (output1136, value540, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node194_eq]
  try dsimp only
  rw [node1135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1136 input193)).val
theorem input1137_def : input1137 = (.seq input1136 input193) := by
  unfold input1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1136 output193)).val
theorem output1137_def : output1137 = (.seq output1136 output193) := by
  unfold output1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1137_skip : Flapjack.WordAlloc.isSkip output1137 = false := by
  rw [output1137_def]
  conv => lhs; cbv
  try rfl
theorem node1137_eq : Flapjack.WordAlloc.removeDeadStructural input1137 value153 value1 value2 = (output1137, value540, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node193_eq]
  try dsimp only
  rw [node1136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1137 input192)).val
theorem input1138_def : input1138 = (.seq input1137 input192) := by
  unfold input1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1137 output192)).val
theorem output1138_def : output1138 = (.seq output1137 output192) := by
  unfold output1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1138_skip : Flapjack.WordAlloc.isSkip output1138 = false := by
  rw [output1138_def]
  conv => lhs; cbv
  try rfl
theorem node1138_eq : Flapjack.WordAlloc.removeDeadStructural input1138 value152 value1 value2 = (output1138, value540, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node192_eq]
  try dsimp only
  rw [node1137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1138 input191)).val
theorem input1139_def : input1139 = (.seq input1138 input191) := by
  unfold input1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1138 output191)).val
theorem output1139_def : output1139 = (.seq output1138 output191) := by
  unfold output1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1139_skip : Flapjack.WordAlloc.isSkip output1139 = false := by
  rw [output1139_def]
  conv => lhs; cbv
  try rfl
theorem node1139_eq : Flapjack.WordAlloc.removeDeadStructural input1139 value151 value1 value2 = (output1139, value540, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node191_eq]
  try dsimp only
  rw [node1138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1139 input190)).val
theorem input1140_def : input1140 = (.seq input1139 input190) := by
  unfold input1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1139 output190)).val
theorem output1140_def : output1140 = (.seq output1139 output190) := by
  unfold output1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1140_skip : Flapjack.WordAlloc.isSkip output1140 = false := by
  rw [output1140_def]
  conv => lhs; cbv
  try rfl
theorem node1140_eq : Flapjack.WordAlloc.removeDeadStructural input1140 value150 value1 value2 = (output1140, value540, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  try dsimp only
  rw [node1139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1140 input189)).val
theorem input1141_def : input1141 = (.seq input1140 input189) := by
  unfold input1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1140 output189)).val
theorem output1141_def : output1141 = (.seq output1140 output189) := by
  unfold output1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1141_skip : Flapjack.WordAlloc.isSkip output1141 = false := by
  rw [output1141_def]
  conv => lhs; cbv
  try rfl
theorem node1141_eq : Flapjack.WordAlloc.removeDeadStructural input1141 value149 value1 value2 = (output1141, value540, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node1140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1141 input188)).val
theorem input1142_def : input1142 = (.seq input1141 input188) := by
  unfold input1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1141 output188)).val
theorem output1142_def : output1142 = (.seq output1141 output188) := by
  unfold output1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1142_skip : Flapjack.WordAlloc.isSkip output1142 = false := by
  rw [output1142_def]
  conv => lhs; cbv
  try rfl
theorem node1142_eq : Flapjack.WordAlloc.removeDeadStructural input1142 value146 value1 value2 = (output1142, value540, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  try dsimp only
  rw [node1141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1142 input183)).val
theorem input1143_def : input1143 = (.seq input1142 input183) := by
  unfold input1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1142 output183)).val
theorem output1143_def : output1143 = (.seq output1142 output183) := by
  unfold output1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1143_skip : Flapjack.WordAlloc.isSkip output1143 = false := by
  rw [output1143_def]
  conv => lhs; cbv
  try rfl
theorem node1143_eq : Flapjack.WordAlloc.removeDeadStructural input1143 value146 value1 value2 = (output1143, value540, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node183_eq]
  try dsimp only
  rw [node1142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1143 input182)).val
theorem input1144_def : input1144 = (.seq input1143 input182) := by
  unfold input1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1143 output182)).val
theorem output1144_def : output1144 = (.seq output1143 output182) := by
  unfold output1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1144_skip : Flapjack.WordAlloc.isSkip output1144 = false := by
  rw [output1144_def]
  conv => lhs; cbv
  try rfl
theorem node1144_eq : Flapjack.WordAlloc.removeDeadStructural input1144 value145 value1 value2 = (output1144, value540, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node182_eq]
  try dsimp only
  rw [node1143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1144 input181)).val
theorem input1145_def : input1145 = (.seq input1144 input181) := by
  unfold input1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1144 output181)).val
theorem output1145_def : output1145 = (.seq output1144 output181) := by
  unfold output1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1145_skip : Flapjack.WordAlloc.isSkip output1145 = false := by
  rw [output1145_def]
  conv => lhs; cbv
  try rfl
theorem node1145_eq : Flapjack.WordAlloc.removeDeadStructural input1145 value144 value1 value2 = (output1145, value540, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node181_eq]
  try dsimp only
  rw [node1144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1145 input180)).val
theorem input1146_def : input1146 = (.seq input1145 input180) := by
  unfold input1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1145 output180)).val
theorem output1146_def : output1146 = (.seq output1145 output180) := by
  unfold output1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1146_skip : Flapjack.WordAlloc.isSkip output1146 = false := by
  rw [output1146_def]
  conv => lhs; cbv
  try rfl
theorem node1146_eq : Flapjack.WordAlloc.removeDeadStructural input1146 value143 value1 value2 = (output1146, value540, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node180_eq]
  try dsimp only
  rw [node1145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1146 input179)).val
theorem input1147_def : input1147 = (.seq input1146 input179) := by
  unfold input1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1146 output179)).val
theorem output1147_def : output1147 = (.seq output1146 output179) := by
  unfold output1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1147_skip : Flapjack.WordAlloc.isSkip output1147 = false := by
  rw [output1147_def]
  conv => lhs; cbv
  try rfl
theorem node1147_eq : Flapjack.WordAlloc.removeDeadStructural input1147 value142 value1 value2 = (output1147, value540, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node179_eq]
  try dsimp only
  rw [node1146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1147 input178)).val
theorem input1148_def : input1148 = (.seq input1147 input178) := by
  unfold input1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1147 output178)).val
theorem output1148_def : output1148 = (.seq output1147 output178) := by
  unfold output1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1148_skip : Flapjack.WordAlloc.isSkip output1148 = false := by
  rw [output1148_def]
  conv => lhs; cbv
  try rfl
theorem node1148_eq : Flapjack.WordAlloc.removeDeadStructural input1148 value141 value1 value2 = (output1148, value540, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node178_eq]
  try dsimp only
  rw [node1147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1148 input177)).val
theorem input1149_def : input1149 = (.seq input1148 input177) := by
  unfold input1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1148 output177)).val
theorem output1149_def : output1149 = (.seq output1148 output177) := by
  unfold output1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1149_skip : Flapjack.WordAlloc.isSkip output1149 = false := by
  rw [output1149_def]
  conv => lhs; cbv
  try rfl
theorem node1149_eq : Flapjack.WordAlloc.removeDeadStructural input1149 value140 value1 value2 = (output1149, value540, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node177_eq]
  try dsimp only
  rw [node1148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1149 input176)).val
theorem input1150_def : input1150 = (.seq input1149 input176) := by
  unfold input1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1149 output176)).val
theorem output1150_def : output1150 = (.seq output1149 output176) := by
  unfold output1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1150_skip : Flapjack.WordAlloc.isSkip output1150 = false := by
  rw [output1150_def]
  conv => lhs; cbv
  try rfl
theorem node1150_eq : Flapjack.WordAlloc.removeDeadStructural input1150 value139 value1 value2 = (output1150, value540, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node176_eq]
  try dsimp only
  rw [node1149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1150 input175)).val
theorem input1151_def : input1151 = (.seq input1150 input175) := by
  unfold input1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1150 output175)).val
theorem output1151_def : output1151 = (.seq output1150 output175) := by
  unfold output1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1151_skip : Flapjack.WordAlloc.isSkip output1151 = false := by
  rw [output1151_def]
  conv => lhs; cbv
  try rfl
theorem node1151_eq : Flapjack.WordAlloc.removeDeadStructural input1151 value138 value1 value2 = (output1151, value540, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node175_eq]
  try dsimp only
  rw [node1150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1151 input174)).val
theorem input1152_def : input1152 = (.seq input1151 input174) := by
  unfold input1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1151 output174)).val
theorem output1152_def : output1152 = (.seq output1151 output174) := by
  unfold output1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1152_skip : Flapjack.WordAlloc.isSkip output1152 = false := by
  rw [output1152_def]
  conv => lhs; cbv
  try rfl
theorem node1152_eq : Flapjack.WordAlloc.removeDeadStructural input1152 value135 value1 value2 = (output1152, value540, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node174_eq]
  try dsimp only
  rw [node1151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1152 input169)).val
theorem input1153_def : input1153 = (.seq input1152 input169) := by
  unfold input1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1152 output169)).val
theorem output1153_def : output1153 = (.seq output1152 output169) := by
  unfold output1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1153_skip : Flapjack.WordAlloc.isSkip output1153 = false := by
  rw [output1153_def]
  conv => lhs; cbv
  try rfl
theorem node1153_eq : Flapjack.WordAlloc.removeDeadStructural input1153 value135 value1 value2 = (output1153, value540, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node169_eq]
  try dsimp only
  rw [node1152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1153 input168)).val
theorem input1154_def : input1154 = (.seq input1153 input168) := by
  unfold input1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1153 output168)).val
theorem output1154_def : output1154 = (.seq output1153 output168) := by
  unfold output1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1154_skip : Flapjack.WordAlloc.isSkip output1154 = false := by
  rw [output1154_def]
  conv => lhs; cbv
  try rfl
theorem node1154_eq : Flapjack.WordAlloc.removeDeadStructural input1154 value134 value1 value2 = (output1154, value540, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node168_eq]
  try dsimp only
  rw [node1153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1154 input167)).val
theorem input1155_def : input1155 = (.seq input1154 input167) := by
  unfold input1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1154 output167)).val
theorem output1155_def : output1155 = (.seq output1154 output167) := by
  unfold output1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1155_skip : Flapjack.WordAlloc.isSkip output1155 = false := by
  rw [output1155_def]
  conv => lhs; cbv
  try rfl
theorem node1155_eq : Flapjack.WordAlloc.removeDeadStructural input1155 value133 value1 value2 = (output1155, value540, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node167_eq]
  try dsimp only
  rw [node1154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1155 input166)).val
theorem input1156_def : input1156 = (.seq input1155 input166) := by
  unfold input1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1155 output166)).val
theorem output1156_def : output1156 = (.seq output1155 output166) := by
  unfold output1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1156_skip : Flapjack.WordAlloc.isSkip output1156 = false := by
  rw [output1156_def]
  conv => lhs; cbv
  try rfl
theorem node1156_eq : Flapjack.WordAlloc.removeDeadStructural input1156 value132 value1 value2 = (output1156, value540, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  try dsimp only
  rw [node1155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1156 input165)).val
theorem input1157_def : input1157 = (.seq input1156 input165) := by
  unfold input1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1156 output165)).val
theorem output1157_def : output1157 = (.seq output1156 output165) := by
  unfold output1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1157_skip : Flapjack.WordAlloc.isSkip output1157 = false := by
  rw [output1157_def]
  conv => lhs; cbv
  try rfl
theorem node1157_eq : Flapjack.WordAlloc.removeDeadStructural input1157 value131 value1 value2 = (output1157, value540, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  try dsimp only
  rw [node1156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1157 input164)).val
theorem input1158_def : input1158 = (.seq input1157 input164) := by
  unfold input1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1157 output164)).val
theorem output1158_def : output1158 = (.seq output1157 output164) := by
  unfold output1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1158_skip : Flapjack.WordAlloc.isSkip output1158 = false := by
  rw [output1158_def]
  conv => lhs; cbv
  try rfl
theorem node1158_eq : Flapjack.WordAlloc.removeDeadStructural input1158 value130 value1 value2 = (output1158, value540, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  try dsimp only
  rw [node1157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1158 input163)).val
theorem input1159_def : input1159 = (.seq input1158 input163) := by
  unfold input1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1158 output163)).val
theorem output1159_def : output1159 = (.seq output1158 output163) := by
  unfold output1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1159_skip : Flapjack.WordAlloc.isSkip output1159 = false := by
  rw [output1159_def]
  conv => lhs; cbv
  try rfl
theorem node1159_eq : Flapjack.WordAlloc.removeDeadStructural input1159 value129 value1 value2 = (output1159, value540, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node163_eq]
  try dsimp only
  rw [node1158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1159 input162)).val
theorem input1160_def : input1160 = (.seq input1159 input162) := by
  unfold input1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1159 output162)).val
theorem output1160_def : output1160 = (.seq output1159 output162) := by
  unfold output1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1160_skip : Flapjack.WordAlloc.isSkip output1160 = false := by
  rw [output1160_def]
  conv => lhs; cbv
  try rfl
theorem node1160_eq : Flapjack.WordAlloc.removeDeadStructural input1160 value128 value1 value2 = (output1160, value540, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node162_eq]
  try dsimp only
  rw [node1159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1160 input161)).val
theorem input1161_def : input1161 = (.seq input1160 input161) := by
  unfold input1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1160 output161)).val
theorem output1161_def : output1161 = (.seq output1160 output161) := by
  unfold output1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1161_skip : Flapjack.WordAlloc.isSkip output1161 = false := by
  rw [output1161_def]
  conv => lhs; cbv
  try rfl
theorem node1161_eq : Flapjack.WordAlloc.removeDeadStructural input1161 value127 value1 value2 = (output1161, value540, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node161_eq]
  try dsimp only
  rw [node1160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1161 input160)).val
theorem input1162_def : input1162 = (.seq input1161 input160) := by
  unfold input1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1161 output160)).val
theorem output1162_def : output1162 = (.seq output1161 output160) := by
  unfold output1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1162_skip : Flapjack.WordAlloc.isSkip output1162 = false := by
  rw [output1162_def]
  conv => lhs; cbv
  try rfl
theorem node1162_eq : Flapjack.WordAlloc.removeDeadStructural input1162 value124 value1 value2 = (output1162, value540, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node160_eq]
  try dsimp only
  rw [node1161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1162 input155)).val
theorem input1163_def : input1163 = (.seq input1162 input155) := by
  unfold input1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1162 output155)).val
theorem output1163_def : output1163 = (.seq output1162 output155) := by
  unfold output1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1163_skip : Flapjack.WordAlloc.isSkip output1163 = false := by
  rw [output1163_def]
  conv => lhs; cbv
  try rfl
theorem node1163_eq : Flapjack.WordAlloc.removeDeadStructural input1163 value124 value1 value2 = (output1163, value540, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node1162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1163 input154)).val
theorem input1164_def : input1164 = (.seq input1163 input154) := by
  unfold input1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1163 output154)).val
theorem output1164_def : output1164 = (.seq output1163 output154) := by
  unfold output1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1164_skip : Flapjack.WordAlloc.isSkip output1164 = false := by
  rw [output1164_def]
  conv => lhs; cbv
  try rfl
theorem node1164_eq : Flapjack.WordAlloc.removeDeadStructural input1164 value123 value1 value2 = (output1164, value540, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node1163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1164 input153)).val
theorem input1165_def : input1165 = (.seq input1164 input153) := by
  unfold input1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1164 output153)).val
theorem output1165_def : output1165 = (.seq output1164 output153) := by
  unfold output1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1165_skip : Flapjack.WordAlloc.isSkip output1165 = false := by
  rw [output1165_def]
  conv => lhs; cbv
  try rfl
theorem node1165_eq : Flapjack.WordAlloc.removeDeadStructural input1165 value122 value1 value2 = (output1165, value540, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node1164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1165 input152)).val
theorem input1166_def : input1166 = (.seq input1165 input152) := by
  unfold input1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1165 output152)).val
theorem output1166_def : output1166 = (.seq output1165 output152) := by
  unfold output1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1166_skip : Flapjack.WordAlloc.isSkip output1166 = false := by
  rw [output1166_def]
  conv => lhs; cbv
  try rfl
theorem node1166_eq : Flapjack.WordAlloc.removeDeadStructural input1166 value121 value1 value2 = (output1166, value540, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node152_eq]
  try dsimp only
  rw [node1165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1166 input151)).val
theorem input1167_def : input1167 = (.seq input1166 input151) := by
  unfold input1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1166 output151)).val
theorem output1167_def : output1167 = (.seq output1166 output151) := by
  unfold output1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1167_skip : Flapjack.WordAlloc.isSkip output1167 = false := by
  rw [output1167_def]
  conv => lhs; cbv
  try rfl
theorem node1167_eq : Flapjack.WordAlloc.removeDeadStructural input1167 value120 value1 value2 = (output1167, value540, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node151_eq]
  try dsimp only
  rw [node1166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1167 input150)).val
theorem input1168_def : input1168 = (.seq input1167 input150) := by
  unfold input1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1167 output150)).val
theorem output1168_def : output1168 = (.seq output1167 output150) := by
  unfold output1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1168_skip : Flapjack.WordAlloc.isSkip output1168 = false := by
  rw [output1168_def]
  conv => lhs; cbv
  try rfl
theorem node1168_eq : Flapjack.WordAlloc.removeDeadStructural input1168 value119 value1 value2 = (output1168, value540, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node150_eq]
  try dsimp only
  rw [node1167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1168 input149)).val
theorem input1169_def : input1169 = (.seq input1168 input149) := by
  unfold input1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1168 output149)).val
theorem output1169_def : output1169 = (.seq output1168 output149) := by
  unfold output1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1169_skip : Flapjack.WordAlloc.isSkip output1169 = false := by
  rw [output1169_def]
  conv => lhs; cbv
  try rfl
theorem node1169_eq : Flapjack.WordAlloc.removeDeadStructural input1169 value118 value1 value2 = (output1169, value540, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node149_eq]
  try dsimp only
  rw [node1168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1169 input148)).val
theorem input1170_def : input1170 = (.seq input1169 input148) := by
  unfold input1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1169 output148)).val
theorem output1170_def : output1170 = (.seq output1169 output148) := by
  unfold output1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1170_skip : Flapjack.WordAlloc.isSkip output1170 = false := by
  rw [output1170_def]
  conv => lhs; cbv
  try rfl
theorem node1170_eq : Flapjack.WordAlloc.removeDeadStructural input1170 value117 value1 value2 = (output1170, value540, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node1169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1170 input147)).val
theorem input1171_def : input1171 = (.seq input1170 input147) := by
  unfold input1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1170 output147)).val
theorem output1171_def : output1171 = (.seq output1170 output147) := by
  unfold output1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1171_skip : Flapjack.WordAlloc.isSkip output1171 = false := by
  rw [output1171_def]
  conv => lhs; cbv
  try rfl
theorem node1171_eq : Flapjack.WordAlloc.removeDeadStructural input1171 value116 value1 value2 = (output1171, value540, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node1170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1171 input146)).val
theorem input1172_def : input1172 = (.seq input1171 input146) := by
  unfold input1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1171 output146)).val
theorem output1172_def : output1172 = (.seq output1171 output146) := by
  unfold output1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1172_skip : Flapjack.WordAlloc.isSkip output1172 = false := by
  rw [output1172_def]
  conv => lhs; cbv
  try rfl
theorem node1172_eq : Flapjack.WordAlloc.removeDeadStructural input1172 value113 value1 value2 = (output1172, value540, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node1171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1172 input141)).val
theorem input1173_def : input1173 = (.seq input1172 input141) := by
  unfold input1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1172 output141)).val
theorem output1173_def : output1173 = (.seq output1172 output141) := by
  unfold output1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1173_skip : Flapjack.WordAlloc.isSkip output1173 = false := by
  rw [output1173_def]
  conv => lhs; cbv
  try rfl
theorem node1173_eq : Flapjack.WordAlloc.removeDeadStructural input1173 value113 value1 value2 = (output1173, value540, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node141_eq]
  try dsimp only
  rw [node1172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1173 input140)).val
theorem input1174_def : input1174 = (.seq input1173 input140) := by
  unfold input1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1173 output140)).val
theorem output1174_def : output1174 = (.seq output1173 output140) := by
  unfold output1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1174_skip : Flapjack.WordAlloc.isSkip output1174 = false := by
  rw [output1174_def]
  conv => lhs; cbv
  try rfl
theorem node1174_eq : Flapjack.WordAlloc.removeDeadStructural input1174 value112 value1 value2 = (output1174, value540, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node140_eq]
  try dsimp only
  rw [node1173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1174 input139)).val
theorem input1175_def : input1175 = (.seq input1174 input139) := by
  unfold input1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1174 output139)).val
theorem output1175_def : output1175 = (.seq output1174 output139) := by
  unfold output1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1175_skip : Flapjack.WordAlloc.isSkip output1175 = false := by
  rw [output1175_def]
  conv => lhs; cbv
  try rfl
theorem node1175_eq : Flapjack.WordAlloc.removeDeadStructural input1175 value111 value1 value2 = (output1175, value540, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node139_eq]
  try dsimp only
  rw [node1174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1175 input138)).val
theorem input1176_def : input1176 = (.seq input1175 input138) := by
  unfold input1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1175 output138)).val
theorem output1176_def : output1176 = (.seq output1175 output138) := by
  unfold output1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1176_skip : Flapjack.WordAlloc.isSkip output1176 = false := by
  rw [output1176_def]
  conv => lhs; cbv
  try rfl
theorem node1176_eq : Flapjack.WordAlloc.removeDeadStructural input1176 value110 value1 value2 = (output1176, value540, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node138_eq]
  try dsimp only
  rw [node1175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1176 input137)).val
theorem input1177_def : input1177 = (.seq input1176 input137) := by
  unfold input1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1176 output137)).val
theorem output1177_def : output1177 = (.seq output1176 output137) := by
  unfold output1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1177_skip : Flapjack.WordAlloc.isSkip output1177 = false := by
  rw [output1177_def]
  conv => lhs; cbv
  try rfl
theorem node1177_eq : Flapjack.WordAlloc.removeDeadStructural input1177 value109 value1 value2 = (output1177, value540, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node137_eq]
  try dsimp only
  rw [node1176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1177 input136)).val
theorem input1178_def : input1178 = (.seq input1177 input136) := by
  unfold input1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1177 output136)).val
theorem output1178_def : output1178 = (.seq output1177 output136) := by
  unfold output1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1178_skip : Flapjack.WordAlloc.isSkip output1178 = false := by
  rw [output1178_def]
  conv => lhs; cbv
  try rfl
theorem node1178_eq : Flapjack.WordAlloc.removeDeadStructural input1178 value108 value1 value2 = (output1178, value540, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node136_eq]
  try dsimp only
  rw [node1177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1178 input135)).val
theorem input1179_def : input1179 = (.seq input1178 input135) := by
  unfold input1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1178 output135)).val
theorem output1179_def : output1179 = (.seq output1178 output135) := by
  unfold output1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1179_skip : Flapjack.WordAlloc.isSkip output1179 = false := by
  rw [output1179_def]
  conv => lhs; cbv
  try rfl
theorem node1179_eq : Flapjack.WordAlloc.removeDeadStructural input1179 value107 value1 value2 = (output1179, value540, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  try dsimp only
  rw [node1178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1179 input134)).val
theorem input1180_def : input1180 = (.seq input1179 input134) := by
  unfold input1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1179 output134)).val
theorem output1180_def : output1180 = (.seq output1179 output134) := by
  unfold output1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1180_skip : Flapjack.WordAlloc.isSkip output1180 = false := by
  rw [output1180_def]
  conv => lhs; cbv
  try rfl
theorem node1180_eq : Flapjack.WordAlloc.removeDeadStructural input1180 value106 value1 value2 = (output1180, value540, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node134_eq]
  try dsimp only
  rw [node1179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1180 input133)).val
theorem input1181_def : input1181 = (.seq input1180 input133) := by
  unfold input1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1180 output133)).val
theorem output1181_def : output1181 = (.seq output1180 output133) := by
  unfold output1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1181_skip : Flapjack.WordAlloc.isSkip output1181 = false := by
  rw [output1181_def]
  conv => lhs; cbv
  try rfl
theorem node1181_eq : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value540, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node133_eq]
  try dsimp only
  rw [node1180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1181 input132)).val
theorem input1182_def : input1182 = (.seq input1181 input132) := by
  unfold input1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1181 output132)).val
theorem output1182_def : output1182 = (.seq output1181 output132) := by
  unfold output1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1182_skip : Flapjack.WordAlloc.isSkip output1182 = false := by
  rw [output1182_def]
  conv => lhs; cbv
  try rfl
theorem node1182_eq : Flapjack.WordAlloc.removeDeadStructural input1182 value102 value1 value2 = (output1182, value540, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node132_eq]
  try dsimp only
  rw [node1181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1182 input127)).val
theorem input1183_def : input1183 = (.seq input1182 input127) := by
  unfold input1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1182 output127)).val
theorem output1183_def : output1183 = (.seq output1182 output127) := by
  unfold output1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1183_skip : Flapjack.WordAlloc.isSkip output1183 = false := by
  rw [output1183_def]
  conv => lhs; cbv
  try rfl
theorem node1183_eq : Flapjack.WordAlloc.removeDeadStructural input1183 value102 value1 value2 = (output1183, value540, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node127_eq]
  try dsimp only
  rw [node1182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1183 input126)).val
theorem input1184_def : input1184 = (.seq input1183 input126) := by
  unfold input1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1183 output126)).val
theorem output1184_def : output1184 = (.seq output1183 output126) := by
  unfold output1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1184_skip : Flapjack.WordAlloc.isSkip output1184 = false := by
  rw [output1184_def]
  conv => lhs; cbv
  try rfl
theorem node1184_eq : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value540, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node126_eq]
  try dsimp only
  rw [node1183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1184 input125)).val
theorem input1185_def : input1185 = (.seq input1184 input125) := by
  unfold input1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1184 output125)).val
theorem output1185_def : output1185 = (.seq output1184 output125) := by
  unfold output1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1185_skip : Flapjack.WordAlloc.isSkip output1185 = false := by
  rw [output1185_def]
  conv => lhs; cbv
  try rfl
theorem node1185_eq : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value540, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node125_eq]
  try dsimp only
  rw [node1184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1185 input124)).val
theorem input1186_def : input1186 = (.seq input1185 input124) := by
  unfold input1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1185 output124)).val
theorem output1186_def : output1186 = (.seq output1185 output124) := by
  unfold output1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1186_skip : Flapjack.WordAlloc.isSkip output1186 = false := by
  rw [output1186_def]
  conv => lhs; cbv
  try rfl
theorem node1186_eq : Flapjack.WordAlloc.removeDeadStructural input1186 value99 value1 value2 = (output1186, value540, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node124_eq]
  try dsimp only
  rw [node1185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1186 input123)).val
theorem input1187_def : input1187 = (.seq input1186 input123) := by
  unfold input1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1186 output123)).val
theorem output1187_def : output1187 = (.seq output1186 output123) := by
  unfold output1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1187_skip : Flapjack.WordAlloc.isSkip output1187 = false := by
  rw [output1187_def]
  conv => lhs; cbv
  try rfl
theorem node1187_eq : Flapjack.WordAlloc.removeDeadStructural input1187 value98 value1 value2 = (output1187, value540, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node123_eq]
  try dsimp only
  rw [node1186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1187 input122)).val
theorem input1188_def : input1188 = (.seq input1187 input122) := by
  unfold input1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1187 output122)).val
theorem output1188_def : output1188 = (.seq output1187 output122) := by
  unfold output1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1188_skip : Flapjack.WordAlloc.isSkip output1188 = false := by
  rw [output1188_def]
  conv => lhs; cbv
  try rfl
theorem node1188_eq : Flapjack.WordAlloc.removeDeadStructural input1188 value97 value1 value2 = (output1188, value540, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node122_eq]
  try dsimp only
  rw [node1187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1188 input121)).val
theorem input1189_def : input1189 = (.seq input1188 input121) := by
  unfold input1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1188 output121)).val
theorem output1189_def : output1189 = (.seq output1188 output121) := by
  unfold output1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1189_skip : Flapjack.WordAlloc.isSkip output1189 = false := by
  rw [output1189_def]
  conv => lhs; cbv
  try rfl
theorem node1189_eq : Flapjack.WordAlloc.removeDeadStructural input1189 value96 value1 value2 = (output1189, value540, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node121_eq]
  try dsimp only
  rw [node1188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1189 input120)).val
theorem input1190_def : input1190 = (.seq input1189 input120) := by
  unfold input1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1189 output120)).val
theorem output1190_def : output1190 = (.seq output1189 output120) := by
  unfold output1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1190_skip : Flapjack.WordAlloc.isSkip output1190 = false := by
  rw [output1190_def]
  conv => lhs; cbv
  try rfl
theorem node1190_eq : Flapjack.WordAlloc.removeDeadStructural input1190 value95 value1 value2 = (output1190, value540, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node120_eq]
  try dsimp only
  rw [node1189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1190 input119)).val
theorem input1191_def : input1191 = (.seq input1190 input119) := by
  unfold input1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1190 output119)).val
theorem output1191_def : output1191 = (.seq output1190 output119) := by
  unfold output1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1191_skip : Flapjack.WordAlloc.isSkip output1191 = false := by
  rw [output1191_def]
  conv => lhs; cbv
  try rfl
theorem node1191_eq : Flapjack.WordAlloc.removeDeadStructural input1191 value94 value1 value2 = (output1191, value540, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node119_eq]
  try dsimp only
  rw [node1190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1191 input118)).val
theorem input1192_def : input1192 = (.seq input1191 input118) := by
  unfold input1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1191 output118)).val
theorem output1192_def : output1192 = (.seq output1191 output118) := by
  unfold output1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1192_skip : Flapjack.WordAlloc.isSkip output1192 = false := by
  rw [output1192_def]
  conv => lhs; cbv
  try rfl
theorem node1192_eq : Flapjack.WordAlloc.removeDeadStructural input1192 value91 value1 value2 = (output1192, value540, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node1191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1192 input113)).val
theorem input1193_def : input1193 = (.seq input1192 input113) := by
  unfold input1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1192 output113)).val
theorem output1193_def : output1193 = (.seq output1192 output113) := by
  unfold output1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1193_skip : Flapjack.WordAlloc.isSkip output1193 = false := by
  rw [output1193_def]
  conv => lhs; cbv
  try rfl
theorem node1193_eq : Flapjack.WordAlloc.removeDeadStructural input1193 value91 value1 value2 = (output1193, value540, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node113_eq]
  try dsimp only
  rw [node1192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1193 input112)).val
theorem input1194_def : input1194 = (.seq input1193 input112) := by
  unfold input1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1193 output112)).val
theorem output1194_def : output1194 = (.seq output1193 output112) := by
  unfold output1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1194_skip : Flapjack.WordAlloc.isSkip output1194 = false := by
  rw [output1194_def]
  conv => lhs; cbv
  try rfl
theorem node1194_eq : Flapjack.WordAlloc.removeDeadStructural input1194 value90 value1 value2 = (output1194, value540, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node112_eq]
  try dsimp only
  rw [node1193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1194 input111)).val
theorem input1195_def : input1195 = (.seq input1194 input111) := by
  unfold input1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1194 output111)).val
theorem output1195_def : output1195 = (.seq output1194 output111) := by
  unfold output1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1195_skip : Flapjack.WordAlloc.isSkip output1195 = false := by
  rw [output1195_def]
  conv => lhs; cbv
  try rfl
theorem node1195_eq : Flapjack.WordAlloc.removeDeadStructural input1195 value89 value1 value2 = (output1195, value540, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node111_eq]
  try dsimp only
  rw [node1194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1195 input110)).val
theorem input1196_def : input1196 = (.seq input1195 input110) := by
  unfold input1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1195 output110)).val
theorem output1196_def : output1196 = (.seq output1195 output110) := by
  unfold output1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1196_skip : Flapjack.WordAlloc.isSkip output1196 = false := by
  rw [output1196_def]
  conv => lhs; cbv
  try rfl
theorem node1196_eq : Flapjack.WordAlloc.removeDeadStructural input1196 value88 value1 value2 = (output1196, value540, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node110_eq]
  try dsimp only
  rw [node1195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1196 input109)).val
theorem input1197_def : input1197 = (.seq input1196 input109) := by
  unfold input1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1196 output109)).val
theorem output1197_def : output1197 = (.seq output1196 output109) := by
  unfold output1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1197_skip : Flapjack.WordAlloc.isSkip output1197 = false := by
  rw [output1197_def]
  conv => lhs; cbv
  try rfl
theorem node1197_eq : Flapjack.WordAlloc.removeDeadStructural input1197 value87 value1 value2 = (output1197, value540, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node109_eq]
  try dsimp only
  rw [node1196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1197 input108)).val
theorem input1198_def : input1198 = (.seq input1197 input108) := by
  unfold input1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1197 output108)).val
theorem output1198_def : output1198 = (.seq output1197 output108) := by
  unfold output1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1198_skip : Flapjack.WordAlloc.isSkip output1198 = false := by
  rw [output1198_def]
  conv => lhs; cbv
  try rfl
theorem node1198_eq : Flapjack.WordAlloc.removeDeadStructural input1198 value86 value1 value2 = (output1198, value540, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node1197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1198 input107)).val
theorem input1199_def : input1199 = (.seq input1198 input107) := by
  unfold input1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1198 output107)).val
theorem output1199_def : output1199 = (.seq output1198 output107) := by
  unfold output1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1199_skip : Flapjack.WordAlloc.isSkip output1199 = false := by
  rw [output1199_def]
  conv => lhs; cbv
  try rfl
theorem node1199_eq : Flapjack.WordAlloc.removeDeadStructural input1199 value85 value1 value2 = (output1199, value540, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node1198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1199 input106)).val
theorem input1200_def : input1200 = (.seq input1199 input106) := by
  unfold input1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1199 output106)).val
theorem output1200_def : output1200 = (.seq output1199 output106) := by
  unfold output1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1200_skip : Flapjack.WordAlloc.isSkip output1200 = false := by
  rw [output1200_def]
  conv => lhs; cbv
  try rfl
theorem node1200_eq : Flapjack.WordAlloc.removeDeadStructural input1200 value84 value1 value2 = (output1200, value540, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node1199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1200 input105)).val
theorem input1201_def : input1201 = (.seq input1200 input105) := by
  unfold input1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1200 output105)).val
theorem output1201_def : output1201 = (.seq output1200 output105) := by
  unfold output1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1201_skip : Flapjack.WordAlloc.isSkip output1201 = false := by
  rw [output1201_def]
  conv => lhs; cbv
  try rfl
theorem node1201_eq : Flapjack.WordAlloc.removeDeadStructural input1201 value83 value1 value2 = (output1201, value540, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  try dsimp only
  rw [node1200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1201 input104)).val
theorem input1202_def : input1202 = (.seq input1201 input104) := by
  unfold input1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1201 output104)).val
theorem output1202_def : output1202 = (.seq output1201 output104) := by
  unfold output1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1202_skip : Flapjack.WordAlloc.isSkip output1202 = false := by
  rw [output1202_def]
  conv => lhs; cbv
  try rfl
theorem node1202_eq : Flapjack.WordAlloc.removeDeadStructural input1202 value80 value1 value2 = (output1202, value540, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  try dsimp only
  rw [node1201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1202 input99)).val
theorem input1203_def : input1203 = (.seq input1202 input99) := by
  unfold input1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1202 output99)).val
theorem output1203_def : output1203 = (.seq output1202 output99) := by
  unfold output1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1203_skip : Flapjack.WordAlloc.isSkip output1203 = false := by
  rw [output1203_def]
  conv => lhs; cbv
  try rfl
theorem node1203_eq : Flapjack.WordAlloc.removeDeadStructural input1203 value80 value1 value2 = (output1203, value540, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  try dsimp only
  rw [node1202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1203 input98)).val
theorem input1204_def : input1204 = (.seq input1203 input98) := by
  unfold input1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1203 output98)).val
theorem output1204_def : output1204 = (.seq output1203 output98) := by
  unfold output1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1204_skip : Flapjack.WordAlloc.isSkip output1204 = false := by
  rw [output1204_def]
  conv => lhs; cbv
  try rfl
theorem node1204_eq : Flapjack.WordAlloc.removeDeadStructural input1204 value79 value1 value2 = (output1204, value540, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node1203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1204 input97)).val
theorem input1205_def : input1205 = (.seq input1204 input97) := by
  unfold input1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1204 output97)).val
theorem output1205_def : output1205 = (.seq output1204 output97) := by
  unfold output1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1205_skip : Flapjack.WordAlloc.isSkip output1205 = false := by
  rw [output1205_def]
  conv => lhs; cbv
  try rfl
theorem node1205_eq : Flapjack.WordAlloc.removeDeadStructural input1205 value78 value1 value2 = (output1205, value540, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node97_eq]
  try dsimp only
  rw [node1204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1205 input96)).val
theorem input1206_def : input1206 = (.seq input1205 input96) := by
  unfold input1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1205 output96)).val
theorem output1206_def : output1206 = (.seq output1205 output96) := by
  unfold output1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1206_skip : Flapjack.WordAlloc.isSkip output1206 = false := by
  rw [output1206_def]
  conv => lhs; cbv
  try rfl
theorem node1206_eq : Flapjack.WordAlloc.removeDeadStructural input1206 value77 value1 value2 = (output1206, value540, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node96_eq]
  try dsimp only
  rw [node1205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1206 input95)).val
theorem input1207_def : input1207 = (.seq input1206 input95) := by
  unfold input1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1206 output95)).val
theorem output1207_def : output1207 = (.seq output1206 output95) := by
  unfold output1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1207_skip : Flapjack.WordAlloc.isSkip output1207 = false := by
  rw [output1207_def]
  conv => lhs; cbv
  try rfl
theorem node1207_eq : Flapjack.WordAlloc.removeDeadStructural input1207 value76 value1 value2 = (output1207, value540, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node1206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1207 input94)).val
theorem input1208_def : input1208 = (.seq input1207 input94) := by
  unfold input1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1207 output94)).val
theorem output1208_def : output1208 = (.seq output1207 output94) := by
  unfold output1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1208_skip : Flapjack.WordAlloc.isSkip output1208 = false := by
  rw [output1208_def]
  conv => lhs; cbv
  try rfl
theorem node1208_eq : Flapjack.WordAlloc.removeDeadStructural input1208 value75 value1 value2 = (output1208, value540, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node1207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1208 input93)).val
theorem input1209_def : input1209 = (.seq input1208 input93) := by
  unfold input1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1208 output93)).val
theorem output1209_def : output1209 = (.seq output1208 output93) := by
  unfold output1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1209_skip : Flapjack.WordAlloc.isSkip output1209 = false := by
  rw [output1209_def]
  conv => lhs; cbv
  try rfl
theorem node1209_eq : Flapjack.WordAlloc.removeDeadStructural input1209 value74 value1 value2 = (output1209, value540, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node1208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1209 input92)).val
theorem input1210_def : input1210 = (.seq input1209 input92) := by
  unfold input1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1209 output92)).val
theorem output1210_def : output1210 = (.seq output1209 output92) := by
  unfold output1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1210_skip : Flapjack.WordAlloc.isSkip output1210 = false := by
  rw [output1210_def]
  conv => lhs; cbv
  try rfl
theorem node1210_eq : Flapjack.WordAlloc.removeDeadStructural input1210 value73 value1 value2 = (output1210, value540, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node1209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1210 input91)).val
theorem input1211_def : input1211 = (.seq input1210 input91) := by
  unfold input1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1210 output91)).val
theorem output1211_def : output1211 = (.seq output1210 output91) := by
  unfold output1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1211_skip : Flapjack.WordAlloc.isSkip output1211 = false := by
  rw [output1211_def]
  conv => lhs; cbv
  try rfl
theorem node1211_eq : Flapjack.WordAlloc.removeDeadStructural input1211 value72 value1 value2 = (output1211, value540, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node91_eq]
  try dsimp only
  rw [node1210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1211 input90)).val
theorem input1212_def : input1212 = (.seq input1211 input90) := by
  unfold input1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1211 output90)).val
theorem output1212_def : output1212 = (.seq output1211 output90) := by
  unfold output1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1212_skip : Flapjack.WordAlloc.isSkip output1212 = false := by
  rw [output1212_def]
  conv => lhs; cbv
  try rfl
theorem node1212_eq : Flapjack.WordAlloc.removeDeadStructural input1212 value69 value1 value2 = (output1212, value540, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node90_eq]
  try dsimp only
  rw [node1211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1212 input85)).val
theorem input1213_def : input1213 = (.seq input1212 input85) := by
  unfold input1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1212 output85)).val
theorem output1213_def : output1213 = (.seq output1212 output85) := by
  unfold output1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1213_skip : Flapjack.WordAlloc.isSkip output1213 = false := by
  rw [output1213_def]
  conv => lhs; cbv
  try rfl
theorem node1213_eq : Flapjack.WordAlloc.removeDeadStructural input1213 value69 value1 value2 = (output1213, value540, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node85_eq]
  try dsimp only
  rw [node1212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1213 input84)).val
theorem input1214_def : input1214 = (.seq input1213 input84) := by
  unfold input1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1213 output84)).val
theorem output1214_def : output1214 = (.seq output1213 output84) := by
  unfold output1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1214_skip : Flapjack.WordAlloc.isSkip output1214 = false := by
  rw [output1214_def]
  conv => lhs; cbv
  try rfl
theorem node1214_eq : Flapjack.WordAlloc.removeDeadStructural input1214 value68 value1 value2 = (output1214, value540, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node84_eq]
  try dsimp only
  rw [node1213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1214 input83)).val
theorem input1215_def : input1215 = (.seq input1214 input83) := by
  unfold input1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1214 output83)).val
theorem output1215_def : output1215 = (.seq output1214 output83) := by
  unfold output1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1215_skip : Flapjack.WordAlloc.isSkip output1215 = false := by
  rw [output1215_def]
  conv => lhs; cbv
  try rfl
theorem node1215_eq : Flapjack.WordAlloc.removeDeadStructural input1215 value67 value1 value2 = (output1215, value540, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node83_eq]
  try dsimp only
  rw [node1214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1215 input82)).val
theorem input1216_def : input1216 = (.seq input1215 input82) := by
  unfold input1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1215 output82)).val
theorem output1216_def : output1216 = (.seq output1215 output82) := by
  unfold output1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1216_skip : Flapjack.WordAlloc.isSkip output1216 = false := by
  rw [output1216_def]
  conv => lhs; cbv
  try rfl
theorem node1216_eq : Flapjack.WordAlloc.removeDeadStructural input1216 value66 value1 value2 = (output1216, value540, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node82_eq]
  try dsimp only
  rw [node1215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1216 input81)).val
theorem input1217_def : input1217 = (.seq input1216 input81) := by
  unfold input1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1216 output81)).val
theorem output1217_def : output1217 = (.seq output1216 output81) := by
  unfold output1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1217_skip : Flapjack.WordAlloc.isSkip output1217 = false := by
  rw [output1217_def]
  conv => lhs; cbv
  try rfl
theorem node1217_eq : Flapjack.WordAlloc.removeDeadStructural input1217 value65 value1 value2 = (output1217, value540, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node81_eq]
  try dsimp only
  rw [node1216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1217 input80)).val
theorem input1218_def : input1218 = (.seq input1217 input80) := by
  unfold input1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1217 output80)).val
theorem output1218_def : output1218 = (.seq output1217 output80) := by
  unfold output1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1218_skip : Flapjack.WordAlloc.isSkip output1218 = false := by
  rw [output1218_def]
  conv => lhs; cbv
  try rfl
theorem node1218_eq : Flapjack.WordAlloc.removeDeadStructural input1218 value64 value1 value2 = (output1218, value540, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node80_eq]
  try dsimp only
  rw [node1217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1218 input79)).val
theorem input1219_def : input1219 = (.seq input1218 input79) := by
  unfold input1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1218 output79)).val
theorem output1219_def : output1219 = (.seq output1218 output79) := by
  unfold output1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1219_skip : Flapjack.WordAlloc.isSkip output1219 = false := by
  rw [output1219_def]
  conv => lhs; cbv
  try rfl
theorem node1219_eq : Flapjack.WordAlloc.removeDeadStructural input1219 value63 value1 value2 = (output1219, value540, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node79_eq]
  try dsimp only
  rw [node1218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1219 input78)).val
theorem input1220_def : input1220 = (.seq input1219 input78) := by
  unfold input1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1219 output78)).val
theorem output1220_def : output1220 = (.seq output1219 output78) := by
  unfold output1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1220_skip : Flapjack.WordAlloc.isSkip output1220 = false := by
  rw [output1220_def]
  conv => lhs; cbv
  try rfl
theorem node1220_eq : Flapjack.WordAlloc.removeDeadStructural input1220 value62 value1 value2 = (output1220, value540, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node78_eq]
  try dsimp only
  rw [node1219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1220 input77)).val
theorem input1221_def : input1221 = (.seq input1220 input77) := by
  unfold input1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1220 output77)).val
theorem output1221_def : output1221 = (.seq output1220 output77) := by
  unfold output1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1221_skip : Flapjack.WordAlloc.isSkip output1221 = false := by
  rw [output1221_def]
  conv => lhs; cbv
  try rfl
theorem node1221_eq : Flapjack.WordAlloc.removeDeadStructural input1221 value61 value1 value2 = (output1221, value540, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node1220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1221 input76)).val
theorem input1222_def : input1222 = (.seq input1221 input76) := by
  unfold input1222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1221 output76)).val
theorem output1222_def : output1222 = (.seq output1221 output76) := by
  unfold output1222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1222_skip : Flapjack.WordAlloc.isSkip output1222 = false := by
  rw [output1222_def]
  conv => lhs; cbv
  try rfl
theorem node1222_eq : Flapjack.WordAlloc.removeDeadStructural input1222 value58 value1 value2 = (output1222, value540, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node1221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1222 input71)).val
theorem input1223_def : input1223 = (.seq input1222 input71) := by
  unfold input1223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1222 output71)).val
theorem output1223_def : output1223 = (.seq output1222 output71) := by
  unfold output1223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1223_skip : Flapjack.WordAlloc.isSkip output1223 = false := by
  rw [output1223_def]
  conv => lhs; cbv
  try rfl
theorem node1223_eq : Flapjack.WordAlloc.removeDeadStructural input1223 value58 value1 value2 = (output1223, value540, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node71_eq]
  try dsimp only
  rw [node1222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1223 input70)).val
theorem input1224_def : input1224 = (.seq input1223 input70) := by
  unfold input1224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1223 output70)).val
theorem output1224_def : output1224 = (.seq output1223 output70) := by
  unfold output1224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1224_skip : Flapjack.WordAlloc.isSkip output1224 = false := by
  rw [output1224_def]
  conv => lhs; cbv
  try rfl
theorem node1224_eq : Flapjack.WordAlloc.removeDeadStructural input1224 value57 value1 value2 = (output1224, value540, value1) := by
  rw [input1224_def, output1224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node70_eq]
  try dsimp only
  rw [node1223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1224 input69)).val
theorem input1225_def : input1225 = (.seq input1224 input69) := by
  unfold input1225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1224 output69)).val
theorem output1225_def : output1225 = (.seq output1224 output69) := by
  unfold output1225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1225_skip : Flapjack.WordAlloc.isSkip output1225 = false := by
  rw [output1225_def]
  conv => lhs; cbv
  try rfl
theorem node1225_eq : Flapjack.WordAlloc.removeDeadStructural input1225 value56 value1 value2 = (output1225, value540, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node69_eq]
  try dsimp only
  rw [node1224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1225 input68)).val
theorem input1226_def : input1226 = (.seq input1225 input68) := by
  unfold input1226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1225 output68)).val
theorem output1226_def : output1226 = (.seq output1225 output68) := by
  unfold output1226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1226_skip : Flapjack.WordAlloc.isSkip output1226 = false := by
  rw [output1226_def]
  conv => lhs; cbv
  try rfl
theorem node1226_eq : Flapjack.WordAlloc.removeDeadStructural input1226 value55 value1 value2 = (output1226, value540, value1) := by
  rw [input1226_def, output1226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node68_eq]
  try dsimp only
  rw [node1225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1226 input67)).val
theorem input1227_def : input1227 = (.seq input1226 input67) := by
  unfold input1227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1226 output67)).val
theorem output1227_def : output1227 = (.seq output1226 output67) := by
  unfold output1227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1227_skip : Flapjack.WordAlloc.isSkip output1227 = false := by
  rw [output1227_def]
  conv => lhs; cbv
  try rfl
theorem node1227_eq : Flapjack.WordAlloc.removeDeadStructural input1227 value54 value1 value2 = (output1227, value540, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node67_eq]
  try dsimp only
  rw [node1226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1227 input66)).val
theorem input1228_def : input1228 = (.seq input1227 input66) := by
  unfold input1228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1227 output66)).val
theorem output1228_def : output1228 = (.seq output1227 output66) := by
  unfold output1228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1228_skip : Flapjack.WordAlloc.isSkip output1228 = false := by
  rw [output1228_def]
  conv => lhs; cbv
  try rfl
theorem node1228_eq : Flapjack.WordAlloc.removeDeadStructural input1228 value53 value1 value2 = (output1228, value540, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node66_eq]
  try dsimp only
  rw [node1227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1228 input65)).val
theorem input1229_def : input1229 = (.seq input1228 input65) := by
  unfold input1229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1228 output65)).val
theorem output1229_def : output1229 = (.seq output1228 output65) := by
  unfold output1229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1229_skip : Flapjack.WordAlloc.isSkip output1229 = false := by
  rw [output1229_def]
  conv => lhs; cbv
  try rfl
theorem node1229_eq : Flapjack.WordAlloc.removeDeadStructural input1229 value52 value1 value2 = (output1229, value540, value1) := by
  rw [input1229_def, output1229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node65_eq]
  try dsimp only
  rw [node1228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1229 input64)).val
theorem input1230_def : input1230 = (.seq input1229 input64) := by
  unfold input1230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1229 output64)).val
theorem output1230_def : output1230 = (.seq output1229 output64) := by
  unfold output1230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1230_skip : Flapjack.WordAlloc.isSkip output1230 = false := by
  rw [output1230_def]
  conv => lhs; cbv
  try rfl
theorem node1230_eq : Flapjack.WordAlloc.removeDeadStructural input1230 value50 value1 value2 = (output1230, value540, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node64_eq]
  try dsimp only
  rw [node1229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1230 input61)).val
theorem input1231_def : input1231 = (.seq input1230 input61) := by
  unfold input1231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1230 output61)).val
theorem output1231_def : output1231 = (.seq output1230 output61) := by
  unfold output1231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1231_skip : Flapjack.WordAlloc.isSkip output1231 = false := by
  rw [output1231_def]
  conv => lhs; cbv
  try rfl
theorem node1231_eq : Flapjack.WordAlloc.removeDeadStructural input1231 value49 value1 value2 = (output1231, value540, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node61_eq]
  try dsimp only
  rw [node1230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1231 input60)).val
theorem input1232_def : input1232 = (.seq input1231 input60) := by
  unfold input1232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1231 output60)).val
theorem output1232_def : output1232 = (.seq output1231 output60) := by
  unfold output1232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1232_skip : Flapjack.WordAlloc.isSkip output1232 = false := by
  rw [output1232_def]
  conv => lhs; cbv
  try rfl
theorem node1232_eq : Flapjack.WordAlloc.removeDeadStructural input1232 value47 value1 value2 = (output1232, value540, value1) := by
  rw [input1232_def, output1232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node60_eq]
  try dsimp only
  rw [node1231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1232 input57)).val
theorem input1233_def : input1233 = (.seq input1232 input57) := by
  unfold input1233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1232 output57)).val
theorem output1233_def : output1233 = (.seq output1232 output57) := by
  unfold output1233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1233_skip : Flapjack.WordAlloc.isSkip output1233 = false := by
  rw [output1233_def]
  conv => lhs; cbv
  try rfl
theorem node1233_eq : Flapjack.WordAlloc.removeDeadStructural input1233 value46 value1 value2 = (output1233, value540, value1) := by
  rw [input1233_def, output1233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node57_eq]
  try dsimp only
  rw [node1232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1233 input56)).val
theorem input1234_def : input1234 = (.seq input1233 input56) := by
  unfold input1234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1233 output56)).val
theorem output1234_def : output1234 = (.seq output1233 output56) := by
  unfold output1234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1234_skip : Flapjack.WordAlloc.isSkip output1234 = false := by
  rw [output1234_def]
  conv => lhs; cbv
  try rfl
theorem node1234_eq : Flapjack.WordAlloc.removeDeadStructural input1234 value44 value1 value2 = (output1234, value540, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node1233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1234 input53)).val
theorem input1235_def : input1235 = (.seq input1234 input53) := by
  unfold input1235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1234 output53)).val
theorem output1235_def : output1235 = (.seq output1234 output53) := by
  unfold output1235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1235_skip : Flapjack.WordAlloc.isSkip output1235 = false := by
  rw [output1235_def]
  conv => lhs; cbv
  try rfl
theorem node1235_eq : Flapjack.WordAlloc.removeDeadStructural input1235 value43 value1 value2 = (output1235, value540, value1) := by
  rw [input1235_def, output1235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node53_eq]
  try dsimp only
  rw [node1234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1235 input52)).val
theorem input1236_def : input1236 = (.seq input1235 input52) := by
  unfold input1236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1235 output52)).val
theorem output1236_def : output1236 = (.seq output1235 output52) := by
  unfold output1236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1236_skip : Flapjack.WordAlloc.isSkip output1236 = false := by
  rw [output1236_def]
  conv => lhs; cbv
  try rfl
theorem node1236_eq : Flapjack.WordAlloc.removeDeadStructural input1236 value41 value1 value2 = (output1236, value540, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node52_eq]
  try dsimp only
  rw [node1235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1236 input49)).val
theorem input1237_def : input1237 = (.seq input1236 input49) := by
  unfold input1237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1236 output49)).val
theorem output1237_def : output1237 = (.seq output1236 output49) := by
  unfold output1237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1237_skip : Flapjack.WordAlloc.isSkip output1237 = false := by
  rw [output1237_def]
  conv => lhs; cbv
  try rfl
theorem node1237_eq : Flapjack.WordAlloc.removeDeadStructural input1237 value39 value1 value2 = (output1237, value540, value1) := by
  rw [input1237_def, output1237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node49_eq]
  try dsimp only
  rw [node1236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1237 input46)).val
theorem input1238_def : input1238 = (.seq input1237 input46) := by
  unfold input1238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1237 output46)).val
theorem output1238_def : output1238 = (.seq output1237 output46) := by
  unfold output1238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1238_skip : Flapjack.WordAlloc.isSkip output1238 = false := by
  rw [output1238_def]
  conv => lhs; cbv
  try rfl
theorem node1238_eq : Flapjack.WordAlloc.removeDeadStructural input1238 value38 value1 value2 = (output1238, value540, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  try dsimp only
  rw [node1237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1238 input45)).val
theorem input1239_def : input1239 = (.seq input1238 input45) := by
  unfold input1239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1238 output45)).val
theorem output1239_def : output1239 = (.seq output1238 output45) := by
  unfold output1239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1239_skip : Flapjack.WordAlloc.isSkip output1239 = false := by
  rw [output1239_def]
  conv => lhs; cbv
  try rfl
theorem node1239_eq : Flapjack.WordAlloc.removeDeadStructural input1239 value37 value1 value2 = (output1239, value540, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node45_eq]
  try dsimp only
  rw [node1238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1239 input44)).val
theorem input1240_def : input1240 = (.seq input1239 input44) := by
  unfold input1240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1239 output44)).val
theorem output1240_def : output1240 = (.seq output1239 output44) := by
  unfold output1240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1240_skip : Flapjack.WordAlloc.isSkip output1240 = false := by
  rw [output1240_def]
  conv => lhs; cbv
  try rfl
theorem node1240_eq : Flapjack.WordAlloc.removeDeadStructural input1240 value36 value1 value2 = (output1240, value540, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node44_eq]
  try dsimp only
  rw [node1239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1240 input43)).val
theorem input1241_def : input1241 = (.seq input1240 input43) := by
  unfold input1241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1240 output43)).val
theorem output1241_def : output1241 = (.seq output1240 output43) := by
  unfold output1241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1241_skip : Flapjack.WordAlloc.isSkip output1241 = false := by
  rw [output1241_def]
  conv => lhs; cbv
  try rfl
theorem node1241_eq : Flapjack.WordAlloc.removeDeadStructural input1241 value35 value1 value2 = (output1241, value540, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node43_eq]
  try dsimp only
  rw [node1240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1241 input42)).val
theorem input1242_def : input1242 = (.seq input1241 input42) := by
  unfold input1242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1241 output42)).val
theorem output1242_def : output1242 = (.seq output1241 output42) := by
  unfold output1242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1242_skip : Flapjack.WordAlloc.isSkip output1242 = false := by
  rw [output1242_def]
  conv => lhs; cbv
  try rfl
theorem node1242_eq : Flapjack.WordAlloc.removeDeadStructural input1242 value34 value1 value2 = (output1242, value540, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node42_eq]
  try dsimp only
  rw [node1241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1242 input41)).val
theorem input1243_def : input1243 = (.seq input1242 input41) := by
  unfold input1243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1242 output41)).val
theorem output1243_def : output1243 = (.seq output1242 output41) := by
  unfold output1243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1243_skip : Flapjack.WordAlloc.isSkip output1243 = false := by
  rw [output1243_def]
  conv => lhs; cbv
  try rfl
theorem node1243_eq : Flapjack.WordAlloc.removeDeadStructural input1243 value32 value1 value2 = (output1243, value540, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node41_eq]
  try dsimp only
  rw [node1242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1243 input38)).val
theorem input1244_def : input1244 = (.seq input1243 input38) := by
  unfold input1244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1243 output38)).val
theorem output1244_def : output1244 = (.seq output1243 output38) := by
  unfold output1244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1244_skip : Flapjack.WordAlloc.isSkip output1244 = false := by
  rw [output1244_def]
  conv => lhs; cbv
  try rfl
theorem node1244_eq : Flapjack.WordAlloc.removeDeadStructural input1244 value31 value1 value2 = (output1244, value540, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node38_eq]
  try dsimp only
  rw [node1243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1244 input37)).val
theorem input1245_def : input1245 = (.seq input1244 input37) := by
  unfold input1245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1244 output37)).val
theorem output1245_def : output1245 = (.seq output1244 output37) := by
  unfold output1245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1245_skip : Flapjack.WordAlloc.isSkip output1245 = false := by
  rw [output1245_def]
  conv => lhs; cbv
  try rfl
theorem node1245_eq : Flapjack.WordAlloc.removeDeadStructural input1245 value29 value1 value2 = (output1245, value540, value1) := by
  rw [input1245_def, output1245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node37_eq]
  try dsimp only
  rw [node1244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1245 input34)).val
theorem input1246_def : input1246 = (.seq input1245 input34) := by
  unfold input1246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1245 output34)).val
theorem output1246_def : output1246 = (.seq output1245 output34) := by
  unfold output1246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1246_skip : Flapjack.WordAlloc.isSkip output1246 = false := by
  rw [output1246_def]
  conv => lhs; cbv
  try rfl
theorem node1246_eq : Flapjack.WordAlloc.removeDeadStructural input1246 value28 value1 value2 = (output1246, value540, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node1245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1246 input33)).val
theorem input1247_def : input1247 = (.seq input1246 input33) := by
  unfold input1247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1246 output33)).val
theorem output1247_def : output1247 = (.seq output1246 output33) := by
  unfold output1247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1247_skip : Flapjack.WordAlloc.isSkip output1247 = false := by
  rw [output1247_def]
  conv => lhs; cbv
  try rfl
theorem node1247_eq : Flapjack.WordAlloc.removeDeadStructural input1247 value26 value1 value2 = (output1247, value540, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  try dsimp only
  rw [node1246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1247 input30)).val
theorem input1248_def : input1248 = (.seq input1247 input30) := by
  unfold input1248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1247 output30)).val
theorem output1248_def : output1248 = (.seq output1247 output30) := by
  unfold output1248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1248_skip : Flapjack.WordAlloc.isSkip output1248 = false := by
  rw [output1248_def]
  conv => lhs; cbv
  try rfl
theorem node1248_eq : Flapjack.WordAlloc.removeDeadStructural input1248 value25 value1 value2 = (output1248, value540, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node30_eq]
  try dsimp only
  rw [node1247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1248 input29)).val
theorem input1249_def : input1249 = (.seq input1248 input29) := by
  unfold input1249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1248 output29)).val
theorem output1249_def : output1249 = (.seq output1248 output29) := by
  unfold output1249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1249_skip : Flapjack.WordAlloc.isSkip output1249 = false := by
  rw [output1249_def]
  conv => lhs; cbv
  try rfl
theorem node1249_eq : Flapjack.WordAlloc.removeDeadStructural input1249 value23 value1 value2 = (output1249, value540, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node29_eq]
  try dsimp only
  rw [node1248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1249 input26)).val
theorem input1250_def : input1250 = (.seq input1249 input26) := by
  unfold input1250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1249 output26)).val
theorem output1250_def : output1250 = (.seq output1249 output26) := by
  unfold output1250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1250_skip : Flapjack.WordAlloc.isSkip output1250 = false := by
  rw [output1250_def]
  conv => lhs; cbv
  try rfl
theorem node1250_eq : Flapjack.WordAlloc.removeDeadStructural input1250 value21 value1 value2 = (output1250, value540, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node1249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1250 input23)).val
theorem input1251_def : input1251 = (.seq input1250 input23) := by
  unfold input1251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1250 output23)).val
theorem output1251_def : output1251 = (.seq output1250 output23) := by
  unfold output1251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1251_skip : Flapjack.WordAlloc.isSkip output1251 = false := by
  rw [output1251_def]
  conv => lhs; cbv
  try rfl
theorem node1251_eq : Flapjack.WordAlloc.removeDeadStructural input1251 value20 value1 value2 = (output1251, value540, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node1250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1251 input22)).val
theorem input1252_def : input1252 = (.seq input1251 input22) := by
  unfold input1252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1251 output22)).val
theorem output1252_def : output1252 = (.seq output1251 output22) := by
  unfold output1252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1252_skip : Flapjack.WordAlloc.isSkip output1252 = false := by
  rw [output1252_def]
  conv => lhs; cbv
  try rfl
theorem node1252_eq : Flapjack.WordAlloc.removeDeadStructural input1252 value19 value1 value2 = (output1252, value540, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node1251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1252 input21)).val
theorem input1253_def : input1253 = (.seq input1252 input21) := by
  unfold input1253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1252 output21)).val
theorem output1253_def : output1253 = (.seq output1252 output21) := by
  unfold output1253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1253_skip : Flapjack.WordAlloc.isSkip output1253 = false := by
  rw [output1253_def]
  conv => lhs; cbv
  try rfl
theorem node1253_eq : Flapjack.WordAlloc.removeDeadStructural input1253 value18 value1 value2 = (output1253, value540, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  try dsimp only
  rw [node1252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1253 input20)).val
theorem input1254_def : input1254 = (.seq input1253 input20) := by
  unfold input1254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1253 output20)).val
theorem output1254_def : output1254 = (.seq output1253 output20) := by
  unfold output1254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1254_skip : Flapjack.WordAlloc.isSkip output1254 = false := by
  rw [output1254_def]
  conv => lhs; cbv
  try rfl
theorem node1254_eq : Flapjack.WordAlloc.removeDeadStructural input1254 value17 value1 value2 = (output1254, value540, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node20_eq]
  try dsimp only
  rw [node1253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1254 input19)).val
theorem input1255_def : input1255 = (.seq input1254 input19) := by
  unfold input1255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1254 output19)).val
theorem output1255_def : output1255 = (.seq output1254 output19) := by
  unfold output1255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1255_skip : Flapjack.WordAlloc.isSkip output1255 = false := by
  rw [output1255_def]
  conv => lhs; cbv
  try rfl
theorem node1255_eq : Flapjack.WordAlloc.removeDeadStructural input1255 value16 value1 value2 = (output1255, value540, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  try dsimp only
  rw [node1254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1255 input18)).val
theorem input1256_def : input1256 = (.seq input1255 input18) := by
  unfold input1256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1255 output18)).val
theorem output1256_def : output1256 = (.seq output1255 output18) := by
  unfold output1256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1256_skip : Flapjack.WordAlloc.isSkip output1256 = false := by
  rw [output1256_def]
  conv => lhs; cbv
  try rfl
theorem node1256_eq : Flapjack.WordAlloc.removeDeadStructural input1256 value14 value1 value2 = (output1256, value540, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node1255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1256 input15)).val
theorem input1257_def : input1257 = (.seq input1256 input15) := by
  unfold input1257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1256 output15)).val
theorem output1257_def : output1257 = (.seq output1256 output15) := by
  unfold output1257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1257_skip : Flapjack.WordAlloc.isSkip output1257 = false := by
  rw [output1257_def]
  conv => lhs; cbv
  try rfl
theorem node1257_eq : Flapjack.WordAlloc.removeDeadStructural input1257 value13 value1 value2 = (output1257, value540, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  try dsimp only
  rw [node1256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1257 input14)).val
theorem input1258_def : input1258 = (.seq input1257 input14) := by
  unfold input1258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1257 output14)).val
theorem output1258_def : output1258 = (.seq output1257 output14) := by
  unfold output1258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1258_skip : Flapjack.WordAlloc.isSkip output1258 = false := by
  rw [output1258_def]
  conv => lhs; cbv
  try rfl
theorem node1258_eq : Flapjack.WordAlloc.removeDeadStructural input1258 value11 value1 value2 = (output1258, value540, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node14_eq]
  try dsimp only
  rw [node1257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1258 input11)).val
theorem input1259_def : input1259 = (.seq input1258 input11) := by
  unfold input1259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1258 output11)).val
theorem output1259_def : output1259 = (.seq output1258 output11) := by
  unfold output1259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1259_skip : Flapjack.WordAlloc.isSkip output1259 = false := by
  rw [output1259_def]
  conv => lhs; cbv
  try rfl
theorem node1259_eq : Flapjack.WordAlloc.removeDeadStructural input1259 value10 value1 value2 = (output1259, value540, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node1258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1259 input10)).val
theorem input1260_def : input1260 = (.seq input1259 input10) := by
  unfold input1260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1259 output10)).val
theorem output1260_def : output1260 = (.seq output1259 output10) := by
  unfold output1260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1260_skip : Flapjack.WordAlloc.isSkip output1260 = false := by
  rw [output1260_def]
  conv => lhs; cbv
  try rfl
theorem node1260_eq : Flapjack.WordAlloc.removeDeadStructural input1260 value8 value1 value2 = (output1260, value540, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node1259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1260 input7)).val
theorem input1261_def : input1261 = (.seq input1260 input7) := by
  unfold input1261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1260 output7)).val
theorem output1261_def : output1261 = (.seq output1260 output7) := by
  unfold output1261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1261_skip : Flapjack.WordAlloc.isSkip output1261 = false := by
  rw [output1261_def]
  conv => lhs; cbv
  try rfl
theorem node1261_eq : Flapjack.WordAlloc.removeDeadStructural input1261 value7 value1 value2 = (output1261, value540, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node1260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1261 input6)).val
theorem input1262_def : input1262 = (.seq input1261 input6) := by
  unfold input1262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1261 output6)).val
theorem output1262_def : output1262 = (.seq output1261 output6) := by
  unfold output1262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1262_skip : Flapjack.WordAlloc.isSkip output1262 = false := by
  rw [output1262_def]
  conv => lhs; cbv
  try rfl
theorem node1262_eq : Flapjack.WordAlloc.removeDeadStructural input1262 value5 value1 value2 = (output1262, value540, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node1261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1262 input3)).val
theorem input1263_def : input1263 = (.seq input1262 input3) := by
  unfold input1263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1262 output3)).val
theorem output1263_def : output1263 = (.seq output1262 output3) := by
  unfold output1263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1263_skip : Flapjack.WordAlloc.isSkip output1263 = false := by
  rw [output1263_def]
  conv => lhs; cbv
  try rfl
theorem node1263_eq : Flapjack.WordAlloc.removeDeadStructural input1263 value4 value1 value2 = (output1263, value540, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node1262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1263 input2)).val
theorem input1264_def : input1264 = (.seq input1263 input2) := by
  unfold input1264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1263 output2)).val
theorem output1264_def : output1264 = (.seq output1263 output2) := by
  unfold output1264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1264_skip : Flapjack.WordAlloc.isSkip output1264 = false := by
  rw [output1264_def]
  conv => lhs; cbv
  try rfl
theorem node1264_eq : Flapjack.WordAlloc.removeDeadStructural input1264 value0 value1 value2 = (output1264, value540, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node1263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value541 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input1265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(205, 0), (209, 2), (213, 4)])).val
theorem input1265_def : input1265 = (Flapjack.WordLangProgHOL.move 1 [(205, 0), (209, 2), (213, 4)]) := by
  unfold input1265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(205, 0), (209, 2), (213, 4)])).val
theorem output1265_def : output1265 = (Flapjack.WordLangProgHOL.move 1 [(205, 0), (209, 2), (213, 4)]) := by
  unfold output1265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1265_skip : Flapjack.WordAlloc.isSkip output1265 = false := by
  rw [output1265_def]
  conv => lhs; cbv
  try rfl
theorem node1265_eq : Flapjack.WordAlloc.removeDeadStructural input1265 value540 value1 value2 = (output1265, value541, value1) := by
  rw [input1265_def, output1265_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1265 input1264)).val
theorem input1266_def : input1266 = (.seq input1265 input1264) := by
  unfold input1266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1265 output1264)).val
theorem output1266_def : output1266 = (.seq output1265 output1264) := by
  unfold output1266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1266_skip : Flapjack.WordAlloc.isSkip output1266 = false := by
  rw [output1266_def]
  conv => lhs; cbv
  try rfl
theorem node1266_eq : Flapjack.WordAlloc.removeDeadStructural input1266 value0 value1 value2 = (output1266, value541, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1264_eq]
  try dsimp only
  rw [node1265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1266_eq
end InitECandidate.Proofs.DeadStages231
