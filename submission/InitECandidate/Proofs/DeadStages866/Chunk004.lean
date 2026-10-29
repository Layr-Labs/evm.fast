import InitECandidate.Proofs.DeadStages866.Chunk003
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages866
@[irreducible, cbv_opaque] def input1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1023 input756)).val
theorem input1024_def : input1024 = (.seq input1023 input756) := by
  unfold input1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1023 output756)).val
theorem output1024_def : output1024 = (.seq output1023 output756) := by
  unfold output1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1024_skip : Flapjack.WordAlloc.isSkip output1024 = false := by
  rw [output1024_def]
  conv => lhs; cbv
  try rfl
theorem node1024_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value423 value1 value2 = (output1024, value539, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node756_eq]
  try dsimp only
  rw [node1023_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1024 input753)).val
theorem input1025_def : input1025 = (.seq input1024 input753) := by
  unfold input1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1024 output753)).val
theorem output1025_def : output1025 = (.seq output1024 output753) := by
  unfold output1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1025_skip : Flapjack.WordAlloc.isSkip output1025 = false := by
  rw [output1025_def]
  conv => lhs; cbv
  try rfl
theorem node1025_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value421 value1 value2 = (output1025, value539, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node753_eq]
  try dsimp only
  rw [node1024_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1025 input750)).val
theorem input1026_def : input1026 = (.seq input1025 input750) := by
  unfold input1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1025 output750)).val
theorem output1026_def : output1026 = (.seq output1025 output750) := by
  unfold output1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1026_skip : Flapjack.WordAlloc.isSkip output1026 = false := by
  rw [output1026_def]
  conv => lhs; cbv
  try rfl
theorem node1026_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value419 value1 value2 = (output1026, value539, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node750_eq]
  try dsimp only
  rw [node1025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1026 input747)).val
theorem input1027_def : input1027 = (.seq input1026 input747) := by
  unfold input1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1026 output747)).val
theorem output1027_def : output1027 = (.seq output1026 output747) := by
  unfold output1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1027_skip : Flapjack.WordAlloc.isSkip output1027 = false := by
  rw [output1027_def]
  conv => lhs; cbv
  try rfl
theorem node1027_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value418 value1 value2 = (output1027, value539, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node747_eq]
  try dsimp only
  rw [node1026_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1027 input746)).val
theorem input1028_def : input1028 = (.seq input1027 input746) := by
  unfold input1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1027 output746)).val
theorem output1028_def : output1028 = (.seq output1027 output746) := by
  unfold output1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1028_skip : Flapjack.WordAlloc.isSkip output1028 = false := by
  rw [output1028_def]
  conv => lhs; cbv
  try rfl
theorem node1028_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value416 value1 value2 = (output1028, value539, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node746_eq]
  try dsimp only
  rw [node1027_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1028 input743)).val
theorem input1029_def : input1029 = (.seq input1028 input743) := by
  unfold input1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1028 output743)).val
theorem output1029_def : output1029 = (.seq output1028 output743) := by
  unfold output1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1029_skip : Flapjack.WordAlloc.isSkip output1029 = false := by
  rw [output1029_def]
  conv => lhs; cbv
  try rfl
theorem node1029_eq : Flapjack.WordAlloc.removeDeadStructural input1029 value414 value1 value2 = (output1029, value539, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node743_eq]
  try dsimp only
  rw [node1028_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1029 input740)).val
theorem input1030_def : input1030 = (.seq input1029 input740) := by
  unfold input1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1029 output740)).val
theorem output1030_def : output1030 = (.seq output1029 output740) := by
  unfold output1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1030_skip : Flapjack.WordAlloc.isSkip output1030 = false := by
  rw [output1030_def]
  conv => lhs; cbv
  try rfl
theorem node1030_eq : Flapjack.WordAlloc.removeDeadStructural input1030 value412 value1 value2 = (output1030, value539, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  try dsimp only
  rw [node1029_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1030 input737)).val
theorem input1031_def : input1031 = (.seq input1030 input737) := by
  unfold input1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1030 output737)).val
theorem output1031_def : output1031 = (.seq output1030 output737) := by
  unfold output1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1031_skip : Flapjack.WordAlloc.isSkip output1031 = false := by
  rw [output1031_def]
  conv => lhs; cbv
  try rfl
theorem node1031_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value411 value1 value2 = (output1031, value539, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node737_eq]
  try dsimp only
  rw [node1030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1031 input736)).val
theorem input1032_def : input1032 = (.seq input1031 input736) := by
  unfold input1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1031 output736)).val
theorem output1032_def : output1032 = (.seq output1031 output736) := by
  unfold output1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1032_skip : Flapjack.WordAlloc.isSkip output1032 = false := by
  rw [output1032_def]
  conv => lhs; cbv
  try rfl
theorem node1032_eq : Flapjack.WordAlloc.removeDeadStructural input1032 value409 value1 value2 = (output1032, value539, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node736_eq]
  try dsimp only
  rw [node1031_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1032 input733)).val
theorem input1033_def : input1033 = (.seq input1032 input733) := by
  unfold input1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1032 output733)).val
theorem output1033_def : output1033 = (.seq output1032 output733) := by
  unfold output1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1033_skip : Flapjack.WordAlloc.isSkip output1033 = false := by
  rw [output1033_def]
  conv => lhs; cbv
  try rfl
theorem node1033_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value407 value1 value2 = (output1033, value539, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node733_eq]
  try dsimp only
  rw [node1032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1033 input730)).val
theorem input1034_def : input1034 = (.seq input1033 input730) := by
  unfold input1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1033 output730)).val
theorem output1034_def : output1034 = (.seq output1033 output730) := by
  unfold output1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1034_skip : Flapjack.WordAlloc.isSkip output1034 = false := by
  rw [output1034_def]
  conv => lhs; cbv
  try rfl
theorem node1034_eq : Flapjack.WordAlloc.removeDeadStructural input1034 value405 value1 value2 = (output1034, value539, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node730_eq]
  try dsimp only
  rw [node1033_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1034 input727)).val
theorem input1035_def : input1035 = (.seq input1034 input727) := by
  unfold input1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1034 output727)).val
theorem output1035_def : output1035 = (.seq output1034 output727) := by
  unfold output1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1035_skip : Flapjack.WordAlloc.isSkip output1035 = false := by
  rw [output1035_def]
  conv => lhs; cbv
  try rfl
theorem node1035_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value404 value1 value2 = (output1035, value539, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node727_eq]
  try dsimp only
  rw [node1034_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1035 input726)).val
theorem input1036_def : input1036 = (.seq input1035 input726) := by
  unfold input1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1035 output726)).val
theorem output1036_def : output1036 = (.seq output1035 output726) := by
  unfold output1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1036_skip : Flapjack.WordAlloc.isSkip output1036 = false := by
  rw [output1036_def]
  conv => lhs; cbv
  try rfl
theorem node1036_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value402 value1 value2 = (output1036, value539, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node726_eq]
  try dsimp only
  rw [node1035_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1036 input723)).val
theorem input1037_def : input1037 = (.seq input1036 input723) := by
  unfold input1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1036 output723)).val
theorem output1037_def : output1037 = (.seq output1036 output723) := by
  unfold output1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1037_skip : Flapjack.WordAlloc.isSkip output1037 = false := by
  rw [output1037_def]
  conv => lhs; cbv
  try rfl
theorem node1037_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value400 value1 value2 = (output1037, value539, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node723_eq]
  try dsimp only
  rw [node1036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1037 input720)).val
theorem input1038_def : input1038 = (.seq input1037 input720) := by
  unfold input1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1037 output720)).val
theorem output1038_def : output1038 = (.seq output1037 output720) := by
  unfold output1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1038_skip : Flapjack.WordAlloc.isSkip output1038 = false := by
  rw [output1038_def]
  conv => lhs; cbv
  try rfl
theorem node1038_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value398 value1 value2 = (output1038, value539, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node1037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1038 input717)).val
theorem input1039_def : input1039 = (.seq input1038 input717) := by
  unfold input1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1038 output717)).val
theorem output1039_def : output1039 = (.seq output1038 output717) := by
  unfold output1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1039_skip : Flapjack.WordAlloc.isSkip output1039 = false := by
  rw [output1039_def]
  conv => lhs; cbv
  try rfl
theorem node1039_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value397 value1 value2 = (output1039, value539, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node717_eq]
  try dsimp only
  rw [node1038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1039 input716)).val
theorem input1040_def : input1040 = (.seq input1039 input716) := by
  unfold input1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1039 output716)).val
theorem output1040_def : output1040 = (.seq output1039 output716) := by
  unfold output1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1040_skip : Flapjack.WordAlloc.isSkip output1040 = false := by
  rw [output1040_def]
  conv => lhs; cbv
  try rfl
theorem node1040_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value395 value1 value2 = (output1040, value539, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node716_eq]
  try dsimp only
  rw [node1039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1040 input713)).val
theorem input1041_def : input1041 = (.seq input1040 input713) := by
  unfold input1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1040)).val
theorem output1041_def : output1041 = (output1040) := by
  unfold output1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1041_skip : Flapjack.WordAlloc.isSkip output1041 = false := by
  rw [output1041_def]
  conv => lhs; cbv
  try rfl
theorem node1041_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value395 value1 value2 = (output1041, value539, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node713_eq]
  try dsimp only
  rw [node1040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1041 input712)).val
theorem input1042_def : input1042 = (.seq input1041 input712) := by
  unfold input1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1041 output712)).val
theorem output1042_def : output1042 = (.seq output1041 output712) := by
  unfold output1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1042_skip : Flapjack.WordAlloc.isSkip output1042 = false := by
  rw [output1042_def]
  conv => lhs; cbv
  try rfl
theorem node1042_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value394 value1 value2 = (output1042, value539, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node712_eq]
  try dsimp only
  rw [node1041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1042 input711)).val
theorem input1043_def : input1043 = (.seq input1042 input711) := by
  unfold input1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1042 output711)).val
theorem output1043_def : output1043 = (.seq output1042 output711) := by
  unfold output1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1043_skip : Flapjack.WordAlloc.isSkip output1043 = false := by
  rw [output1043_def]
  conv => lhs; cbv
  try rfl
theorem node1043_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value391 value1 value2 = (output1043, value539, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node711_eq]
  try dsimp only
  rw [node1042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1043 input706)).val
theorem input1044_def : input1044 = (.seq input1043 input706) := by
  unfold input1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1043 output706)).val
theorem output1044_def : output1044 = (.seq output1043 output706) := by
  unfold output1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1044_skip : Flapjack.WordAlloc.isSkip output1044 = false := by
  rw [output1044_def]
  conv => lhs; cbv
  try rfl
theorem node1044_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value391 value1 value2 = (output1044, value539, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node706_eq]
  try dsimp only
  rw [node1043_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1044 input705)).val
theorem input1045_def : input1045 = (.seq input1044 input705) := by
  unfold input1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1044 output705)).val
theorem output1045_def : output1045 = (.seq output1044 output705) := by
  unfold output1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1045_skip : Flapjack.WordAlloc.isSkip output1045 = false := by
  rw [output1045_def]
  conv => lhs; cbv
  try rfl
theorem node1045_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value390 value1 value2 = (output1045, value539, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node705_eq]
  try dsimp only
  rw [node1044_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1045 input704)).val
theorem input1046_def : input1046 = (.seq input1045 input704) := by
  unfold input1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1045)).val
theorem output1046_def : output1046 = (output1045) := by
  unfold output1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1046_skip : Flapjack.WordAlloc.isSkip output1046 = false := by
  rw [output1046_def]
  conv => lhs; cbv
  try rfl
theorem node1046_eq : Flapjack.WordAlloc.removeDeadStructural input1046 value390 value1 value2 = (output1046, value539, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node704_eq]
  try dsimp only
  rw [node1045_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1046 input703)).val
theorem input1047_def : input1047 = (.seq input1046 input703) := by
  unfold input1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1046 output703)).val
theorem output1047_def : output1047 = (.seq output1046 output703) := by
  unfold output1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1047_skip : Flapjack.WordAlloc.isSkip output1047 = false := by
  rw [output1047_def]
  conv => lhs; cbv
  try rfl
theorem node1047_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value389 value1 value2 = (output1047, value539, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node703_eq]
  try dsimp only
  rw [node1046_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1047 input702)).val
theorem input1048_def : input1048 = (.seq input1047 input702) := by
  unfold input1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1047 output702)).val
theorem output1048_def : output1048 = (.seq output1047 output702) := by
  unfold output1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1048_skip : Flapjack.WordAlloc.isSkip output1048 = false := by
  rw [output1048_def]
  conv => lhs; cbv
  try rfl
theorem node1048_eq : Flapjack.WordAlloc.removeDeadStructural input1048 value386 value1 value2 = (output1048, value539, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  try dsimp only
  rw [node1047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1048 input697)).val
theorem input1049_def : input1049 = (.seq input1048 input697) := by
  unfold input1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1048 output697)).val
theorem output1049_def : output1049 = (.seq output1048 output697) := by
  unfold output1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1049_skip : Flapjack.WordAlloc.isSkip output1049 = false := by
  rw [output1049_def]
  conv => lhs; cbv
  try rfl
theorem node1049_eq : Flapjack.WordAlloc.removeDeadStructural input1049 value386 value1 value2 = (output1049, value539, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node697_eq]
  try dsimp only
  rw [node1048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1049 input696)).val
theorem input1050_def : input1050 = (.seq input1049 input696) := by
  unfold input1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1049 output696)).val
theorem output1050_def : output1050 = (.seq output1049 output696) := by
  unfold output1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1050_skip : Flapjack.WordAlloc.isSkip output1050 = false := by
  rw [output1050_def]
  conv => lhs; cbv
  try rfl
theorem node1050_eq : Flapjack.WordAlloc.removeDeadStructural input1050 value384 value1 value2 = (output1050, value539, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node696_eq]
  try dsimp only
  rw [node1049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1050 input693)).val
theorem input1051_def : input1051 = (.seq input1050 input693) := by
  unfold input1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1050 output693)).val
theorem output1051_def : output1051 = (.seq output1050 output693) := by
  unfold output1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1051_skip : Flapjack.WordAlloc.isSkip output1051 = false := by
  rw [output1051_def]
  conv => lhs; cbv
  try rfl
theorem node1051_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value383 value1 value2 = (output1051, value539, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node693_eq]
  try dsimp only
  rw [node1050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1051 input692)).val
theorem input1052_def : input1052 = (.seq input1051 input692) := by
  unfold input1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1051 output692)).val
theorem output1052_def : output1052 = (.seq output1051 output692) := by
  unfold output1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1052_skip : Flapjack.WordAlloc.isSkip output1052 = false := by
  rw [output1052_def]
  conv => lhs; cbv
  try rfl
theorem node1052_eq : Flapjack.WordAlloc.removeDeadStructural input1052 value382 value1 value2 = (output1052, value539, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  try dsimp only
  rw [node1051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1052 input691)).val
theorem input1053_def : input1053 = (.seq input1052 input691) := by
  unfold input1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1052 output691)).val
theorem output1053_def : output1053 = (.seq output1052 output691) := by
  unfold output1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1053_skip : Flapjack.WordAlloc.isSkip output1053 = false := by
  rw [output1053_def]
  conv => lhs; cbv
  try rfl
theorem node1053_eq : Flapjack.WordAlloc.removeDeadStructural input1053 value380 value1 value2 = (output1053, value539, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node691_eq]
  try dsimp only
  rw [node1052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1053 input688)).val
theorem input1054_def : input1054 = (.seq input1053 input688) := by
  unfold input1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1053 output688)).val
theorem output1054_def : output1054 = (.seq output1053 output688) := by
  unfold output1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1054_skip : Flapjack.WordAlloc.isSkip output1054 = false := by
  rw [output1054_def]
  conv => lhs; cbv
  try rfl
theorem node1054_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value378 value1 value2 = (output1054, value539, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node688_eq]
  try dsimp only
  rw [node1053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1054 input685)).val
theorem input1055_def : input1055 = (.seq input1054 input685) := by
  unfold input1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1054 output685)).val
theorem output1055_def : output1055 = (.seq output1054 output685) := by
  unfold output1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1055_skip : Flapjack.WordAlloc.isSkip output1055 = false := by
  rw [output1055_def]
  conv => lhs; cbv
  try rfl
theorem node1055_eq : Flapjack.WordAlloc.removeDeadStructural input1055 value377 value1 value2 = (output1055, value539, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node685_eq]
  try dsimp only
  rw [node1054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1055 input684)).val
theorem input1056_def : input1056 = (.seq input1055 input684) := by
  unfold input1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1055 output684)).val
theorem output1056_def : output1056 = (.seq output1055 output684) := by
  unfold output1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1056_skip : Flapjack.WordAlloc.isSkip output1056 = false := by
  rw [output1056_def]
  conv => lhs; cbv
  try rfl
theorem node1056_eq : Flapjack.WordAlloc.removeDeadStructural input1056 value375 value1 value2 = (output1056, value539, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node684_eq]
  try dsimp only
  rw [node1055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1056 input681)).val
theorem input1057_def : input1057 = (.seq input1056 input681) := by
  unfold input1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1056 output681)).val
theorem output1057_def : output1057 = (.seq output1056 output681) := by
  unfold output1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1057_skip : Flapjack.WordAlloc.isSkip output1057 = false := by
  rw [output1057_def]
  conv => lhs; cbv
  try rfl
theorem node1057_eq : Flapjack.WordAlloc.removeDeadStructural input1057 value374 value1 value2 = (output1057, value539, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node681_eq]
  try dsimp only
  rw [node1056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1057 input680)).val
theorem input1058_def : input1058 = (.seq input1057 input680) := by
  unfold input1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1057 output680)).val
theorem output1058_def : output1058 = (.seq output1057 output680) := by
  unfold output1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1058_skip : Flapjack.WordAlloc.isSkip output1058 = false := by
  rw [output1058_def]
  conv => lhs; cbv
  try rfl
theorem node1058_eq : Flapjack.WordAlloc.removeDeadStructural input1058 value372 value1 value2 = (output1058, value539, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node680_eq]
  try dsimp only
  rw [node1057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1058 input677)).val
theorem input1059_def : input1059 = (.seq input1058 input677) := by
  unfold input1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1058 output677)).val
theorem output1059_def : output1059 = (.seq output1058 output677) := by
  unfold output1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1059_skip : Flapjack.WordAlloc.isSkip output1059 = false := by
  rw [output1059_def]
  conv => lhs; cbv
  try rfl
theorem node1059_eq : Flapjack.WordAlloc.removeDeadStructural input1059 value371 value1 value2 = (output1059, value539, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node677_eq]
  try dsimp only
  rw [node1058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1059 input676)).val
theorem input1060_def : input1060 = (.seq input1059 input676) := by
  unfold input1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1059 output676)).val
theorem output1060_def : output1060 = (.seq output1059 output676) := by
  unfold output1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1060_skip : Flapjack.WordAlloc.isSkip output1060 = false := by
  rw [output1060_def]
  conv => lhs; cbv
  try rfl
theorem node1060_eq : Flapjack.WordAlloc.removeDeadStructural input1060 value369 value1 value2 = (output1060, value539, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node676_eq]
  try dsimp only
  rw [node1059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1060 input673)).val
theorem input1061_def : input1061 = (.seq input1060 input673) := by
  unfold input1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1060 output673)).val
theorem output1061_def : output1061 = (.seq output1060 output673) := by
  unfold output1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1061_skip : Flapjack.WordAlloc.isSkip output1061 = false := by
  rw [output1061_def]
  conv => lhs; cbv
  try rfl
theorem node1061_eq : Flapjack.WordAlloc.removeDeadStructural input1061 value368 value1 value2 = (output1061, value539, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node673_eq]
  try dsimp only
  rw [node1060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1061 input672)).val
theorem input1062_def : input1062 = (.seq input1061 input672) := by
  unfold input1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1061 output672)).val
theorem output1062_def : output1062 = (.seq output1061 output672) := by
  unfold output1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1062_skip : Flapjack.WordAlloc.isSkip output1062 = false := by
  rw [output1062_def]
  conv => lhs; cbv
  try rfl
theorem node1062_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value366 value1 value2 = (output1062, value539, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node672_eq]
  try dsimp only
  rw [node1061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1062 input669)).val
theorem input1063_def : input1063 = (.seq input1062 input669) := by
  unfold input1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1062 output669)).val
theorem output1063_def : output1063 = (.seq output1062 output669) := by
  unfold output1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1063_skip : Flapjack.WordAlloc.isSkip output1063 = false := by
  rw [output1063_def]
  conv => lhs; cbv
  try rfl
theorem node1063_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value365 value1 value2 = (output1063, value539, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  try dsimp only
  rw [node1062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1063 input668)).val
theorem input1064_def : input1064 = (.seq input1063 input668) := by
  unfold input1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1063 output668)).val
theorem output1064_def : output1064 = (.seq output1063 output668) := by
  unfold output1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1064_skip : Flapjack.WordAlloc.isSkip output1064 = false := by
  rw [output1064_def]
  conv => lhs; cbv
  try rfl
theorem node1064_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value363 value1 value2 = (output1064, value539, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node668_eq]
  try dsimp only
  rw [node1063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1064 input665)).val
theorem input1065_def : input1065 = (.seq input1064 input665) := by
  unfold input1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1064 output665)).val
theorem output1065_def : output1065 = (.seq output1064 output665) := by
  unfold output1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1065_skip : Flapjack.WordAlloc.isSkip output1065 = false := by
  rw [output1065_def]
  conv => lhs; cbv
  try rfl
theorem node1065_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value362 value1 value2 = (output1065, value539, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  try dsimp only
  rw [node1064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1065 input664)).val
theorem input1066_def : input1066 = (.seq input1065 input664) := by
  unfold input1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1065 output664)).val
theorem output1066_def : output1066 = (.seq output1065 output664) := by
  unfold output1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1066_skip : Flapjack.WordAlloc.isSkip output1066 = false := by
  rw [output1066_def]
  conv => lhs; cbv
  try rfl
theorem node1066_eq : Flapjack.WordAlloc.removeDeadStructural input1066 value360 value1 value2 = (output1066, value539, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node664_eq]
  try dsimp only
  rw [node1065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1066 input661)).val
theorem input1067_def : input1067 = (.seq input1066 input661) := by
  unfold input1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1066 output661)).val
theorem output1067_def : output1067 = (.seq output1066 output661) := by
  unfold output1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1067_skip : Flapjack.WordAlloc.isSkip output1067 = false := by
  rw [output1067_def]
  conv => lhs; cbv
  try rfl
theorem node1067_eq : Flapjack.WordAlloc.removeDeadStructural input1067 value359 value1 value2 = (output1067, value539, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node661_eq]
  try dsimp only
  rw [node1066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1067 input660)).val
theorem input1068_def : input1068 = (.seq input1067 input660) := by
  unfold input1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1067 output660)).val
theorem output1068_def : output1068 = (.seq output1067 output660) := by
  unfold output1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1068_skip : Flapjack.WordAlloc.isSkip output1068 = false := by
  rw [output1068_def]
  conv => lhs; cbv
  try rfl
theorem node1068_eq : Flapjack.WordAlloc.removeDeadStructural input1068 value357 value1 value2 = (output1068, value539, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node660_eq]
  try dsimp only
  rw [node1067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1068 input657)).val
theorem input1069_def : input1069 = (.seq input1068 input657) := by
  unfold input1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1068 output657)).val
theorem output1069_def : output1069 = (.seq output1068 output657) := by
  unfold output1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1069_skip : Flapjack.WordAlloc.isSkip output1069 = false := by
  rw [output1069_def]
  conv => lhs; cbv
  try rfl
theorem node1069_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value356 value1 value2 = (output1069, value539, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node657_eq]
  try dsimp only
  rw [node1068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1069 input656)).val
theorem input1070_def : input1070 = (.seq input1069 input656) := by
  unfold input1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1069 output656)).val
theorem output1070_def : output1070 = (.seq output1069 output656) := by
  unfold output1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1070_skip : Flapjack.WordAlloc.isSkip output1070 = false := by
  rw [output1070_def]
  conv => lhs; cbv
  try rfl
theorem node1070_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value334 value1 value2 = (output1070, value539, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node656_eq]
  try dsimp only
  rw [node1069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1070 input613)).val
theorem input1071_def : input1071 = (.seq input1070 input613) := by
  unfold input1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1070 output613)).val
theorem output1071_def : output1071 = (.seq output1070 output613) := by
  unfold output1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1071_skip : Flapjack.WordAlloc.isSkip output1071 = false := by
  rw [output1071_def]
  conv => lhs; cbv
  try rfl
theorem node1071_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value332 value1 value2 = (output1071, value539, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node613_eq]
  try dsimp only
  rw [node1070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1071 input610)).val
theorem input1072_def : input1072 = (.seq input1071 input610) := by
  unfold input1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1071 output610)).val
theorem output1072_def : output1072 = (.seq output1071 output610) := by
  unfold output1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1072_skip : Flapjack.WordAlloc.isSkip output1072 = false := by
  rw [output1072_def]
  conv => lhs; cbv
  try rfl
theorem node1072_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value331 value1 value2 = (output1072, value539, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node610_eq]
  try dsimp only
  rw [node1071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1072 input609)).val
theorem input1073_def : input1073 = (.seq input1072 input609) := by
  unfold input1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1072 output609)).val
theorem output1073_def : output1073 = (.seq output1072 output609) := by
  unfold output1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1073_skip : Flapjack.WordAlloc.isSkip output1073 = false := by
  rw [output1073_def]
  conv => lhs; cbv
  try rfl
theorem node1073_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value329 value1 value2 = (output1073, value539, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node609_eq]
  try dsimp only
  rw [node1072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1073 input606)).val
theorem input1074_def : input1074 = (.seq input1073 input606) := by
  unfold input1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1073 output606)).val
theorem output1074_def : output1074 = (.seq output1073 output606) := by
  unfold output1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1074_skip : Flapjack.WordAlloc.isSkip output1074 = false := by
  rw [output1074_def]
  conv => lhs; cbv
  try rfl
theorem node1074_eq : Flapjack.WordAlloc.removeDeadStructural input1074 value328 value1 value2 = (output1074, value539, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node606_eq]
  try dsimp only
  rw [node1073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1074 input605)).val
theorem input1075_def : input1075 = (.seq input1074 input605) := by
  unfold input1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1074 output605)).val
theorem output1075_def : output1075 = (.seq output1074 output605) := by
  unfold output1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1075_skip : Flapjack.WordAlloc.isSkip output1075 = false := by
  rw [output1075_def]
  conv => lhs; cbv
  try rfl
theorem node1075_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value326 value1 value2 = (output1075, value539, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node605_eq]
  try dsimp only
  rw [node1074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1075 input602)).val
theorem input1076_def : input1076 = (.seq input1075 input602) := by
  unfold input1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1075 output602)).val
theorem output1076_def : output1076 = (.seq output1075 output602) := by
  unfold output1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1076_skip : Flapjack.WordAlloc.isSkip output1076 = false := by
  rw [output1076_def]
  conv => lhs; cbv
  try rfl
theorem node1076_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value325 value1 value2 = (output1076, value539, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  try dsimp only
  rw [node1075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1076 input601)).val
theorem input1077_def : input1077 = (.seq input1076 input601) := by
  unfold input1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1076 output601)).val
theorem output1077_def : output1077 = (.seq output1076 output601) := by
  unfold output1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1077_skip : Flapjack.WordAlloc.isSkip output1077 = false := by
  rw [output1077_def]
  conv => lhs; cbv
  try rfl
theorem node1077_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value323 value1 value2 = (output1077, value539, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node601_eq]
  try dsimp only
  rw [node1076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1077 input598)).val
theorem input1078_def : input1078 = (.seq input1077 input598) := by
  unfold input1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1077 output598)).val
theorem output1078_def : output1078 = (.seq output1077 output598) := by
  unfold output1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1078_skip : Flapjack.WordAlloc.isSkip output1078 = false := by
  rw [output1078_def]
  conv => lhs; cbv
  try rfl
theorem node1078_eq : Flapjack.WordAlloc.removeDeadStructural input1078 value322 value1 value2 = (output1078, value539, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node598_eq]
  try dsimp only
  rw [node1077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1078 input597)).val
theorem input1079_def : input1079 = (.seq input1078 input597) := by
  unfold input1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1078 output597)).val
theorem output1079_def : output1079 = (.seq output1078 output597) := by
  unfold output1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1079_skip : Flapjack.WordAlloc.isSkip output1079 = false := by
  rw [output1079_def]
  conv => lhs; cbv
  try rfl
theorem node1079_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value320 value1 value2 = (output1079, value539, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node597_eq]
  try dsimp only
  rw [node1078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1079 input594)).val
theorem input1080_def : input1080 = (.seq input1079 input594) := by
  unfold input1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1079 output594)).val
theorem output1080_def : output1080 = (.seq output1079 output594) := by
  unfold output1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1080_skip : Flapjack.WordAlloc.isSkip output1080 = false := by
  rw [output1080_def]
  conv => lhs; cbv
  try rfl
theorem node1080_eq : Flapjack.WordAlloc.removeDeadStructural input1080 value319 value1 value2 = (output1080, value539, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node594_eq]
  try dsimp only
  rw [node1079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1080 input593)).val
theorem input1081_def : input1081 = (.seq input1080 input593) := by
  unfold input1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1080 output593)).val
theorem output1081_def : output1081 = (.seq output1080 output593) := by
  unfold output1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1081_skip : Flapjack.WordAlloc.isSkip output1081 = false := by
  rw [output1081_def]
  conv => lhs; cbv
  try rfl
theorem node1081_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value317 value1 value2 = (output1081, value539, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node593_eq]
  try dsimp only
  rw [node1080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1081 input590)).val
theorem input1082_def : input1082 = (.seq input1081 input590) := by
  unfold input1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1081 output590)).val
theorem output1082_def : output1082 = (.seq output1081 output590) := by
  unfold output1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1082_skip : Flapjack.WordAlloc.isSkip output1082 = false := by
  rw [output1082_def]
  conv => lhs; cbv
  try rfl
theorem node1082_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value316 value1 value2 = (output1082, value539, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  try dsimp only
  rw [node1081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1082 input589)).val
theorem input1083_def : input1083 = (.seq input1082 input589) := by
  unfold input1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1082 output589)).val
theorem output1083_def : output1083 = (.seq output1082 output589) := by
  unfold output1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1083_skip : Flapjack.WordAlloc.isSkip output1083 = false := by
  rw [output1083_def]
  conv => lhs; cbv
  try rfl
theorem node1083_eq : Flapjack.WordAlloc.removeDeadStructural input1083 value314 value1 value2 = (output1083, value539, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node589_eq]
  try dsimp only
  rw [node1082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1083 input586)).val
theorem input1084_def : input1084 = (.seq input1083 input586) := by
  unfold input1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1083 output586)).val
theorem output1084_def : output1084 = (.seq output1083 output586) := by
  unfold output1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1084_skip : Flapjack.WordAlloc.isSkip output1084 = false := by
  rw [output1084_def]
  conv => lhs; cbv
  try rfl
theorem node1084_eq : Flapjack.WordAlloc.removeDeadStructural input1084 value313 value1 value2 = (output1084, value539, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node586_eq]
  try dsimp only
  rw [node1083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1084 input585)).val
theorem input1085_def : input1085 = (.seq input1084 input585) := by
  unfold input1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1084 output585)).val
theorem output1085_def : output1085 = (.seq output1084 output585) := by
  unfold output1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1085_skip : Flapjack.WordAlloc.isSkip output1085 = false := by
  rw [output1085_def]
  conv => lhs; cbv
  try rfl
theorem node1085_eq : Flapjack.WordAlloc.removeDeadStructural input1085 value311 value1 value2 = (output1085, value539, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node585_eq]
  try dsimp only
  rw [node1084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1085 input582)).val
theorem input1086_def : input1086 = (.seq input1085 input582) := by
  unfold input1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1085 output582)).val
theorem output1086_def : output1086 = (.seq output1085 output582) := by
  unfold output1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1086_skip : Flapjack.WordAlloc.isSkip output1086 = false := by
  rw [output1086_def]
  conv => lhs; cbv
  try rfl
theorem node1086_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value310 value1 value2 = (output1086, value539, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node582_eq]
  try dsimp only
  rw [node1085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1086 input581)).val
theorem input1087_def : input1087 = (.seq input1086 input581) := by
  unfold input1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1086 output581)).val
theorem output1087_def : output1087 = (.seq output1086 output581) := by
  unfold output1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1087_skip : Flapjack.WordAlloc.isSkip output1087 = false := by
  rw [output1087_def]
  conv => lhs; cbv
  try rfl
theorem node1087_eq : Flapjack.WordAlloc.removeDeadStructural input1087 value288 value1 value2 = (output1087, value539, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node581_eq]
  try dsimp only
  rw [node1086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1087 input538)).val
theorem input1088_def : input1088 = (.seq input1087 input538) := by
  unfold input1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1087 output538)).val
theorem output1088_def : output1088 = (.seq output1087 output538) := by
  unfold output1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1088_skip : Flapjack.WordAlloc.isSkip output1088 = false := by
  rw [output1088_def]
  conv => lhs; cbv
  try rfl
theorem node1088_eq : Flapjack.WordAlloc.removeDeadStructural input1088 value286 value1 value2 = (output1088, value539, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node538_eq]
  try dsimp only
  rw [node1087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1088 input535)).val
theorem input1089_def : input1089 = (.seq input1088 input535) := by
  unfold input1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1088 output535)).val
theorem output1089_def : output1089 = (.seq output1088 output535) := by
  unfold output1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1089_skip : Flapjack.WordAlloc.isSkip output1089 = false := by
  rw [output1089_def]
  conv => lhs; cbv
  try rfl
theorem node1089_eq : Flapjack.WordAlloc.removeDeadStructural input1089 value285 value1 value2 = (output1089, value539, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node535_eq]
  try dsimp only
  rw [node1088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1089 input534)).val
theorem input1090_def : input1090 = (.seq input1089 input534) := by
  unfold input1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1089 output534)).val
theorem output1090_def : output1090 = (.seq output1089 output534) := by
  unfold output1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1090_skip : Flapjack.WordAlloc.isSkip output1090 = false := by
  rw [output1090_def]
  conv => lhs; cbv
  try rfl
theorem node1090_eq : Flapjack.WordAlloc.removeDeadStructural input1090 value283 value1 value2 = (output1090, value539, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node534_eq]
  try dsimp only
  rw [node1089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1090 input531)).val
theorem input1091_def : input1091 = (.seq input1090 input531) := by
  unfold input1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1090 output531)).val
theorem output1091_def : output1091 = (.seq output1090 output531) := by
  unfold output1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1091_skip : Flapjack.WordAlloc.isSkip output1091 = false := by
  rw [output1091_def]
  conv => lhs; cbv
  try rfl
theorem node1091_eq : Flapjack.WordAlloc.removeDeadStructural input1091 value282 value1 value2 = (output1091, value539, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node531_eq]
  try dsimp only
  rw [node1090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1091 input530)).val
theorem input1092_def : input1092 = (.seq input1091 input530) := by
  unfold input1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1091 output530)).val
theorem output1092_def : output1092 = (.seq output1091 output530) := by
  unfold output1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1092_skip : Flapjack.WordAlloc.isSkip output1092 = false := by
  rw [output1092_def]
  conv => lhs; cbv
  try rfl
theorem node1092_eq : Flapjack.WordAlloc.removeDeadStructural input1092 value280 value1 value2 = (output1092, value539, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node1091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1092 input527)).val
theorem input1093_def : input1093 = (.seq input1092 input527) := by
  unfold input1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1092 output527)).val
theorem output1093_def : output1093 = (.seq output1092 output527) := by
  unfold output1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1093_skip : Flapjack.WordAlloc.isSkip output1093 = false := by
  rw [output1093_def]
  conv => lhs; cbv
  try rfl
theorem node1093_eq : Flapjack.WordAlloc.removeDeadStructural input1093 value279 value1 value2 = (output1093, value539, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node527_eq]
  try dsimp only
  rw [node1092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1093 input526)).val
theorem input1094_def : input1094 = (.seq input1093 input526) := by
  unfold input1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1093 output526)).val
theorem output1094_def : output1094 = (.seq output1093 output526) := by
  unfold output1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1094_skip : Flapjack.WordAlloc.isSkip output1094 = false := by
  rw [output1094_def]
  conv => lhs; cbv
  try rfl
theorem node1094_eq : Flapjack.WordAlloc.removeDeadStructural input1094 value277 value1 value2 = (output1094, value539, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  try dsimp only
  rw [node1093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1094 input523)).val
theorem input1095_def : input1095 = (.seq input1094 input523) := by
  unfold input1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1094 output523)).val
theorem output1095_def : output1095 = (.seq output1094 output523) := by
  unfold output1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1095_skip : Flapjack.WordAlloc.isSkip output1095 = false := by
  rw [output1095_def]
  conv => lhs; cbv
  try rfl
theorem node1095_eq : Flapjack.WordAlloc.removeDeadStructural input1095 value276 value1 value2 = (output1095, value539, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node1094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1095 input522)).val
theorem input1096_def : input1096 = (.seq input1095 input522) := by
  unfold input1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1095 output522)).val
theorem output1096_def : output1096 = (.seq output1095 output522) := by
  unfold output1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1096_skip : Flapjack.WordAlloc.isSkip output1096 = false := by
  rw [output1096_def]
  conv => lhs; cbv
  try rfl
theorem node1096_eq : Flapjack.WordAlloc.removeDeadStructural input1096 value274 value1 value2 = (output1096, value539, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node1095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1096 input519)).val
theorem input1097_def : input1097 = (.seq input1096 input519) := by
  unfold input1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1096 output519)).val
theorem output1097_def : output1097 = (.seq output1096 output519) := by
  unfold output1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1097_skip : Flapjack.WordAlloc.isSkip output1097 = false := by
  rw [output1097_def]
  conv => lhs; cbv
  try rfl
theorem node1097_eq : Flapjack.WordAlloc.removeDeadStructural input1097 value273 value1 value2 = (output1097, value539, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node519_eq]
  try dsimp only
  rw [node1096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1097 input518)).val
theorem input1098_def : input1098 = (.seq input1097 input518) := by
  unfold input1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1097 output518)).val
theorem output1098_def : output1098 = (.seq output1097 output518) := by
  unfold output1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1098_skip : Flapjack.WordAlloc.isSkip output1098 = false := by
  rw [output1098_def]
  conv => lhs; cbv
  try rfl
theorem node1098_eq : Flapjack.WordAlloc.removeDeadStructural input1098 value271 value1 value2 = (output1098, value539, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node518_eq]
  try dsimp only
  rw [node1097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1098 input515)).val
theorem input1099_def : input1099 = (.seq input1098 input515) := by
  unfold input1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1098 output515)).val
theorem output1099_def : output1099 = (.seq output1098 output515) := by
  unfold output1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1099_skip : Flapjack.WordAlloc.isSkip output1099 = false := by
  rw [output1099_def]
  conv => lhs; cbv
  try rfl
theorem node1099_eq : Flapjack.WordAlloc.removeDeadStructural input1099 value270 value1 value2 = (output1099, value539, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node1098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1099 input514)).val
theorem input1100_def : input1100 = (.seq input1099 input514) := by
  unfold input1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1099 output514)).val
theorem output1100_def : output1100 = (.seq output1099 output514) := by
  unfold output1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1100_skip : Flapjack.WordAlloc.isSkip output1100 = false := by
  rw [output1100_def]
  conv => lhs; cbv
  try rfl
theorem node1100_eq : Flapjack.WordAlloc.removeDeadStructural input1100 value268 value1 value2 = (output1100, value539, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node514_eq]
  try dsimp only
  rw [node1099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1100 input511)).val
theorem input1101_def : input1101 = (.seq input1100 input511) := by
  unfold input1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1100 output511)).val
theorem output1101_def : output1101 = (.seq output1100 output511) := by
  unfold output1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1101_skip : Flapjack.WordAlloc.isSkip output1101 = false := by
  rw [output1101_def]
  conv => lhs; cbv
  try rfl
theorem node1101_eq : Flapjack.WordAlloc.removeDeadStructural input1101 value267 value1 value2 = (output1101, value539, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node511_eq]
  try dsimp only
  rw [node1100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1101 input510)).val
theorem input1102_def : input1102 = (.seq input1101 input510) := by
  unfold input1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1101 output510)).val
theorem output1102_def : output1102 = (.seq output1101 output510) := by
  unfold output1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1102_skip : Flapjack.WordAlloc.isSkip output1102 = false := by
  rw [output1102_def]
  conv => lhs; cbv
  try rfl
theorem node1102_eq : Flapjack.WordAlloc.removeDeadStructural input1102 value265 value1 value2 = (output1102, value539, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node510_eq]
  try dsimp only
  rw [node1101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1102 input507)).val
theorem input1103_def : input1103 = (.seq input1102 input507) := by
  unfold input1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1102 output507)).val
theorem output1103_def : output1103 = (.seq output1102 output507) := by
  unfold output1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1103_skip : Flapjack.WordAlloc.isSkip output1103 = false := by
  rw [output1103_def]
  conv => lhs; cbv
  try rfl
theorem node1103_eq : Flapjack.WordAlloc.removeDeadStructural input1103 value264 value1 value2 = (output1103, value539, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  try dsimp only
  rw [node1102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1103 input506)).val
theorem input1104_def : input1104 = (.seq input1103 input506) := by
  unfold input1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1103 output506)).val
theorem output1104_def : output1104 = (.seq output1103 output506) := by
  unfold output1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1104_skip : Flapjack.WordAlloc.isSkip output1104 = false := by
  rw [output1104_def]
  conv => lhs; cbv
  try rfl
theorem node1104_eq : Flapjack.WordAlloc.removeDeadStructural input1104 value242 value1 value2 = (output1104, value539, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node506_eq]
  try dsimp only
  rw [node1103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1104 input463)).val
theorem input1105_def : input1105 = (.seq input1104 input463) := by
  unfold input1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1104 output463)).val
theorem output1105_def : output1105 = (.seq output1104 output463) := by
  unfold output1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1105_skip : Flapjack.WordAlloc.isSkip output1105 = false := by
  rw [output1105_def]
  conv => lhs; cbv
  try rfl
theorem node1105_eq : Flapjack.WordAlloc.removeDeadStructural input1105 value240 value1 value2 = (output1105, value539, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node463_eq]
  try dsimp only
  rw [node1104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1105 input460)).val
theorem input1106_def : input1106 = (.seq input1105 input460) := by
  unfold input1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1105 output460)).val
theorem output1106_def : output1106 = (.seq output1105 output460) := by
  unfold output1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1106_skip : Flapjack.WordAlloc.isSkip output1106 = false := by
  rw [output1106_def]
  conv => lhs; cbv
  try rfl
theorem node1106_eq : Flapjack.WordAlloc.removeDeadStructural input1106 value239 value1 value2 = (output1106, value539, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node460_eq]
  try dsimp only
  rw [node1105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1106 input459)).val
theorem input1107_def : input1107 = (.seq input1106 input459) := by
  unfold input1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1106 output459)).val
theorem output1107_def : output1107 = (.seq output1106 output459) := by
  unfold output1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1107_skip : Flapjack.WordAlloc.isSkip output1107 = false := by
  rw [output1107_def]
  conv => lhs; cbv
  try rfl
theorem node1107_eq : Flapjack.WordAlloc.removeDeadStructural input1107 value237 value1 value2 = (output1107, value539, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node459_eq]
  try dsimp only
  rw [node1106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1107 input456)).val
theorem input1108_def : input1108 = (.seq input1107 input456) := by
  unfold input1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1107 output456)).val
theorem output1108_def : output1108 = (.seq output1107 output456) := by
  unfold output1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1108_skip : Flapjack.WordAlloc.isSkip output1108 = false := by
  rw [output1108_def]
  conv => lhs; cbv
  try rfl
theorem node1108_eq : Flapjack.WordAlloc.removeDeadStructural input1108 value236 value1 value2 = (output1108, value539, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node456_eq]
  try dsimp only
  rw [node1107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1108 input455)).val
theorem input1109_def : input1109 = (.seq input1108 input455) := by
  unfold input1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1108 output455)).val
theorem output1109_def : output1109 = (.seq output1108 output455) := by
  unfold output1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1109_skip : Flapjack.WordAlloc.isSkip output1109 = false := by
  rw [output1109_def]
  conv => lhs; cbv
  try rfl
theorem node1109_eq : Flapjack.WordAlloc.removeDeadStructural input1109 value234 value1 value2 = (output1109, value539, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node455_eq]
  try dsimp only
  rw [node1108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1109 input452)).val
theorem input1110_def : input1110 = (.seq input1109 input452) := by
  unfold input1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1109 output452)).val
theorem output1110_def : output1110 = (.seq output1109 output452) := by
  unfold output1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1110_skip : Flapjack.WordAlloc.isSkip output1110 = false := by
  rw [output1110_def]
  conv => lhs; cbv
  try rfl
theorem node1110_eq : Flapjack.WordAlloc.removeDeadStructural input1110 value233 value1 value2 = (output1110, value539, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node452_eq]
  try dsimp only
  rw [node1109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1110 input451)).val
theorem input1111_def : input1111 = (.seq input1110 input451) := by
  unfold input1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1110 output451)).val
theorem output1111_def : output1111 = (.seq output1110 output451) := by
  unfold output1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1111_skip : Flapjack.WordAlloc.isSkip output1111 = false := by
  rw [output1111_def]
  conv => lhs; cbv
  try rfl
theorem node1111_eq : Flapjack.WordAlloc.removeDeadStructural input1111 value231 value1 value2 = (output1111, value539, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node451_eq]
  try dsimp only
  rw [node1110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1111 input448)).val
theorem input1112_def : input1112 = (.seq input1111 input448) := by
  unfold input1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1111 output448)).val
theorem output1112_def : output1112 = (.seq output1111 output448) := by
  unfold output1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1112_skip : Flapjack.WordAlloc.isSkip output1112 = false := by
  rw [output1112_def]
  conv => lhs; cbv
  try rfl
theorem node1112_eq : Flapjack.WordAlloc.removeDeadStructural input1112 value230 value1 value2 = (output1112, value539, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node448_eq]
  try dsimp only
  rw [node1111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1112 input447)).val
theorem input1113_def : input1113 = (.seq input1112 input447) := by
  unfold input1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1112 output447)).val
theorem output1113_def : output1113 = (.seq output1112 output447) := by
  unfold output1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1113_skip : Flapjack.WordAlloc.isSkip output1113 = false := by
  rw [output1113_def]
  conv => lhs; cbv
  try rfl
theorem node1113_eq : Flapjack.WordAlloc.removeDeadStructural input1113 value228 value1 value2 = (output1113, value539, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node447_eq]
  try dsimp only
  rw [node1112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1113 input444)).val
theorem input1114_def : input1114 = (.seq input1113 input444) := by
  unfold input1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1113 output444)).val
theorem output1114_def : output1114 = (.seq output1113 output444) := by
  unfold output1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1114_skip : Flapjack.WordAlloc.isSkip output1114 = false := by
  rw [output1114_def]
  conv => lhs; cbv
  try rfl
theorem node1114_eq : Flapjack.WordAlloc.removeDeadStructural input1114 value227 value1 value2 = (output1114, value539, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node444_eq]
  try dsimp only
  rw [node1113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1114 input443)).val
theorem input1115_def : input1115 = (.seq input1114 input443) := by
  unfold input1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1114 output443)).val
theorem output1115_def : output1115 = (.seq output1114 output443) := by
  unfold output1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1115_skip : Flapjack.WordAlloc.isSkip output1115 = false := by
  rw [output1115_def]
  conv => lhs; cbv
  try rfl
theorem node1115_eq : Flapjack.WordAlloc.removeDeadStructural input1115 value225 value1 value2 = (output1115, value539, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node443_eq]
  try dsimp only
  rw [node1114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1115 input440)).val
theorem input1116_def : input1116 = (.seq input1115 input440) := by
  unfold input1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1115 output440)).val
theorem output1116_def : output1116 = (.seq output1115 output440) := by
  unfold output1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1116_skip : Flapjack.WordAlloc.isSkip output1116 = false := by
  rw [output1116_def]
  conv => lhs; cbv
  try rfl
theorem node1116_eq : Flapjack.WordAlloc.removeDeadStructural input1116 value224 value1 value2 = (output1116, value539, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node440_eq]
  try dsimp only
  rw [node1115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1116 input439)).val
theorem input1117_def : input1117 = (.seq input1116 input439) := by
  unfold input1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1116 output439)).val
theorem output1117_def : output1117 = (.seq output1116 output439) := by
  unfold output1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1117_skip : Flapjack.WordAlloc.isSkip output1117 = false := by
  rw [output1117_def]
  conv => lhs; cbv
  try rfl
theorem node1117_eq : Flapjack.WordAlloc.removeDeadStructural input1117 value222 value1 value2 = (output1117, value539, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node439_eq]
  try dsimp only
  rw [node1116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1117 input436)).val
theorem input1118_def : input1118 = (.seq input1117 input436) := by
  unfold input1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1117 output436)).val
theorem output1118_def : output1118 = (.seq output1117 output436) := by
  unfold output1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1118_skip : Flapjack.WordAlloc.isSkip output1118 = false := by
  rw [output1118_def]
  conv => lhs; cbv
  try rfl
theorem node1118_eq : Flapjack.WordAlloc.removeDeadStructural input1118 value221 value1 value2 = (output1118, value539, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node436_eq]
  try dsimp only
  rw [node1117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1118 input435)).val
theorem input1119_def : input1119 = (.seq input1118 input435) := by
  unfold input1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1118 output435)).val
theorem output1119_def : output1119 = (.seq output1118 output435) := by
  unfold output1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1119_skip : Flapjack.WordAlloc.isSkip output1119 = false := by
  rw [output1119_def]
  conv => lhs; cbv
  try rfl
theorem node1119_eq : Flapjack.WordAlloc.removeDeadStructural input1119 value219 value1 value2 = (output1119, value539, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node435_eq]
  try dsimp only
  rw [node1118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1119 input432)).val
theorem input1120_def : input1120 = (.seq input1119 input432) := by
  unfold input1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1119 output432)).val
theorem output1120_def : output1120 = (.seq output1119 output432) := by
  unfold output1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1120_skip : Flapjack.WordAlloc.isSkip output1120 = false := by
  rw [output1120_def]
  conv => lhs; cbv
  try rfl
theorem node1120_eq : Flapjack.WordAlloc.removeDeadStructural input1120 value218 value1 value2 = (output1120, value539, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node432_eq]
  try dsimp only
  rw [node1119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1120 input431)).val
theorem input1121_def : input1121 = (.seq input1120 input431) := by
  unfold input1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1120 output431)).val
theorem output1121_def : output1121 = (.seq output1120 output431) := by
  unfold output1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1121_skip : Flapjack.WordAlloc.isSkip output1121 = false := by
  rw [output1121_def]
  conv => lhs; cbv
  try rfl
theorem node1121_eq : Flapjack.WordAlloc.removeDeadStructural input1121 value196 value1 value2 = (output1121, value539, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node431_eq]
  try dsimp only
  rw [node1120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1121 input388)).val
theorem input1122_def : input1122 = (.seq input1121 input388) := by
  unfold input1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1121 output388)).val
theorem output1122_def : output1122 = (.seq output1121 output388) := by
  unfold output1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1122_skip : Flapjack.WordAlloc.isSkip output1122 = false := by
  rw [output1122_def]
  conv => lhs; cbv
  try rfl
theorem node1122_eq : Flapjack.WordAlloc.removeDeadStructural input1122 value194 value1 value2 = (output1122, value539, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node388_eq]
  try dsimp only
  rw [node1121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1122 input385)).val
theorem input1123_def : input1123 = (.seq input1122 input385) := by
  unfold input1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1122 output385)).val
theorem output1123_def : output1123 = (.seq output1122 output385) := by
  unfold output1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1123_skip : Flapjack.WordAlloc.isSkip output1123 = false := by
  rw [output1123_def]
  conv => lhs; cbv
  try rfl
theorem node1123_eq : Flapjack.WordAlloc.removeDeadStructural input1123 value193 value1 value2 = (output1123, value539, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node385_eq]
  try dsimp only
  rw [node1122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1123 input384)).val
theorem input1124_def : input1124 = (.seq input1123 input384) := by
  unfold input1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1123 output384)).val
theorem output1124_def : output1124 = (.seq output1123 output384) := by
  unfold output1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1124_skip : Flapjack.WordAlloc.isSkip output1124 = false := by
  rw [output1124_def]
  conv => lhs; cbv
  try rfl
theorem node1124_eq : Flapjack.WordAlloc.removeDeadStructural input1124 value192 value1 value2 = (output1124, value539, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node384_eq]
  try dsimp only
  rw [node1123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1124 input383)).val
theorem input1125_def : input1125 = (.seq input1124 input383) := by
  unfold input1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1124 output383)).val
theorem output1125_def : output1125 = (.seq output1124 output383) := by
  unfold output1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1125_skip : Flapjack.WordAlloc.isSkip output1125 = false := by
  rw [output1125_def]
  conv => lhs; cbv
  try rfl
theorem node1125_eq : Flapjack.WordAlloc.removeDeadStructural input1125 value191 value1 value2 = (output1125, value539, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node383_eq]
  try dsimp only
  rw [node1124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1125 input382)).val
theorem input1126_def : input1126 = (.seq input1125 input382) := by
  unfold input1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1125 output382)).val
theorem output1126_def : output1126 = (.seq output1125 output382) := by
  unfold output1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1126_skip : Flapjack.WordAlloc.isSkip output1126 = false := by
  rw [output1126_def]
  conv => lhs; cbv
  try rfl
theorem node1126_eq : Flapjack.WordAlloc.removeDeadStructural input1126 value190 value1 value2 = (output1126, value539, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node382_eq]
  try dsimp only
  rw [node1125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1126 input381)).val
theorem input1127_def : input1127 = (.seq input1126 input381) := by
  unfold input1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1126 output381)).val
theorem output1127_def : output1127 = (.seq output1126 output381) := by
  unfold output1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1127_skip : Flapjack.WordAlloc.isSkip output1127 = false := by
  rw [output1127_def]
  conv => lhs; cbv
  try rfl
theorem node1127_eq : Flapjack.WordAlloc.removeDeadStructural input1127 value189 value1 value2 = (output1127, value539, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node381_eq]
  try dsimp only
  rw [node1126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1127 input380)).val
theorem input1128_def : input1128 = (.seq input1127 input380) := by
  unfold input1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1127 output380)).val
theorem output1128_def : output1128 = (.seq output1127 output380) := by
  unfold output1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1128_skip : Flapjack.WordAlloc.isSkip output1128 = false := by
  rw [output1128_def]
  conv => lhs; cbv
  try rfl
theorem node1128_eq : Flapjack.WordAlloc.removeDeadStructural input1128 value187 value1 value2 = (output1128, value539, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node380_eq]
  try dsimp only
  rw [node1127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1128 input377)).val
theorem input1129_def : input1129 = (.seq input1128 input377) := by
  unfold input1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1128 output377)).val
theorem output1129_def : output1129 = (.seq output1128 output377) := by
  unfold output1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1129_skip : Flapjack.WordAlloc.isSkip output1129 = false := by
  rw [output1129_def]
  conv => lhs; cbv
  try rfl
theorem node1129_eq : Flapjack.WordAlloc.removeDeadStructural input1129 value186 value1 value2 = (output1129, value539, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node377_eq]
  try dsimp only
  rw [node1128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1129 input376)).val
theorem input1130_def : input1130 = (.seq input1129 input376) := by
  unfold input1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1129 output376)).val
theorem output1130_def : output1130 = (.seq output1129 output376) := by
  unfold output1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1130_skip : Flapjack.WordAlloc.isSkip output1130 = false := by
  rw [output1130_def]
  conv => lhs; cbv
  try rfl
theorem node1130_eq : Flapjack.WordAlloc.removeDeadStructural input1130 value184 value1 value2 = (output1130, value539, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node376_eq]
  try dsimp only
  rw [node1129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1130 input373)).val
theorem input1131_def : input1131 = (.seq input1130 input373) := by
  unfold input1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1130 output373)).val
theorem output1131_def : output1131 = (.seq output1130 output373) := by
  unfold output1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1131_skip : Flapjack.WordAlloc.isSkip output1131 = false := by
  rw [output1131_def]
  conv => lhs; cbv
  try rfl
theorem node1131_eq : Flapjack.WordAlloc.removeDeadStructural input1131 value183 value1 value2 = (output1131, value539, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node1130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1131 input372)).val
theorem input1132_def : input1132 = (.seq input1131 input372) := by
  unfold input1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1131 output372)).val
theorem output1132_def : output1132 = (.seq output1131 output372) := by
  unfold output1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1132_skip : Flapjack.WordAlloc.isSkip output1132 = false := by
  rw [output1132_def]
  conv => lhs; cbv
  try rfl
theorem node1132_eq : Flapjack.WordAlloc.removeDeadStructural input1132 value181 value1 value2 = (output1132, value539, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node372_eq]
  try dsimp only
  rw [node1131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1132 input369)).val
theorem input1133_def : input1133 = (.seq input1132 input369) := by
  unfold input1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1132 output369)).val
theorem output1133_def : output1133 = (.seq output1132 output369) := by
  unfold output1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1133_skip : Flapjack.WordAlloc.isSkip output1133 = false := by
  rw [output1133_def]
  conv => lhs; cbv
  try rfl
theorem node1133_eq : Flapjack.WordAlloc.removeDeadStructural input1133 value180 value1 value2 = (output1133, value539, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node369_eq]
  try dsimp only
  rw [node1132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1133 input368)).val
theorem input1134_def : input1134 = (.seq input1133 input368) := by
  unfold input1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1133 output368)).val
theorem output1134_def : output1134 = (.seq output1133 output368) := by
  unfold output1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1134_skip : Flapjack.WordAlloc.isSkip output1134 = false := by
  rw [output1134_def]
  conv => lhs; cbv
  try rfl
theorem node1134_eq : Flapjack.WordAlloc.removeDeadStructural input1134 value178 value1 value2 = (output1134, value539, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node368_eq]
  try dsimp only
  rw [node1133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1134 input365)).val
theorem input1135_def : input1135 = (.seq input1134 input365) := by
  unfold input1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1134)).val
theorem output1135_def : output1135 = (output1134) := by
  unfold output1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1135_skip : Flapjack.WordAlloc.isSkip output1135 = false := by
  rw [output1135_def]
  conv => lhs; cbv
  try rfl
theorem node1135_eq : Flapjack.WordAlloc.removeDeadStructural input1135 value178 value1 value2 = (output1135, value539, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  try dsimp only
  rw [node1134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1135 input364)).val
theorem input1136_def : input1136 = (.seq input1135 input364) := by
  unfold input1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1135 output364)).val
theorem output1136_def : output1136 = (.seq output1135 output364) := by
  unfold output1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1136_skip : Flapjack.WordAlloc.isSkip output1136 = false := by
  rw [output1136_def]
  conv => lhs; cbv
  try rfl
theorem node1136_eq : Flapjack.WordAlloc.removeDeadStructural input1136 value177 value1 value2 = (output1136, value539, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node364_eq]
  try dsimp only
  rw [node1135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1136 input363)).val
theorem input1137_def : input1137 = (.seq input1136 input363) := by
  unfold input1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1136 output363)).val
theorem output1137_def : output1137 = (.seq output1136 output363) := by
  unfold output1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1137_skip : Flapjack.WordAlloc.isSkip output1137 = false := by
  rw [output1137_def]
  conv => lhs; cbv
  try rfl
theorem node1137_eq : Flapjack.WordAlloc.removeDeadStructural input1137 value174 value1 value2 = (output1137, value539, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node363_eq]
  try dsimp only
  rw [node1136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1137 input358)).val
theorem input1138_def : input1138 = (.seq input1137 input358) := by
  unfold input1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1137 output358)).val
theorem output1138_def : output1138 = (.seq output1137 output358) := by
  unfold output1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1138_skip : Flapjack.WordAlloc.isSkip output1138 = false := by
  rw [output1138_def]
  conv => lhs; cbv
  try rfl
theorem node1138_eq : Flapjack.WordAlloc.removeDeadStructural input1138 value174 value1 value2 = (output1138, value539, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node358_eq]
  try dsimp only
  rw [node1137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1138 input357)).val
theorem input1139_def : input1139 = (.seq input1138 input357) := by
  unfold input1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1138 output357)).val
theorem output1139_def : output1139 = (.seq output1138 output357) := by
  unfold output1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1139_skip : Flapjack.WordAlloc.isSkip output1139 = false := by
  rw [output1139_def]
  conv => lhs; cbv
  try rfl
theorem node1139_eq : Flapjack.WordAlloc.removeDeadStructural input1139 value172 value1 value2 = (output1139, value539, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node357_eq]
  try dsimp only
  rw [node1138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1139 input354)).val
theorem input1140_def : input1140 = (.seq input1139 input354) := by
  unfold input1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1139 output354)).val
theorem output1140_def : output1140 = (.seq output1139 output354) := by
  unfold output1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1140_skip : Flapjack.WordAlloc.isSkip output1140 = false := by
  rw [output1140_def]
  conv => lhs; cbv
  try rfl
theorem node1140_eq : Flapjack.WordAlloc.removeDeadStructural input1140 value171 value1 value2 = (output1140, value539, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node354_eq]
  try dsimp only
  rw [node1139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1140 input353)).val
theorem input1141_def : input1141 = (.seq input1140 input353) := by
  unfold input1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1140 output353)).val
theorem output1141_def : output1141 = (.seq output1140 output353) := by
  unfold output1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1141_skip : Flapjack.WordAlloc.isSkip output1141 = false := by
  rw [output1141_def]
  conv => lhs; cbv
  try rfl
theorem node1141_eq : Flapjack.WordAlloc.removeDeadStructural input1141 value170 value1 value2 = (output1141, value539, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  try dsimp only
  rw [node1140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1141 input352)).val
theorem input1142_def : input1142 = (.seq input1141 input352) := by
  unfold input1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1141 output352)).val
theorem output1142_def : output1142 = (.seq output1141 output352) := by
  unfold output1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1142_skip : Flapjack.WordAlloc.isSkip output1142 = false := by
  rw [output1142_def]
  conv => lhs; cbv
  try rfl
theorem node1142_eq : Flapjack.WordAlloc.removeDeadStructural input1142 value168 value1 value2 = (output1142, value539, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node1141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1142 input349)).val
theorem input1143_def : input1143 = (.seq input1142 input349) := by
  unfold input1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1142 output349)).val
theorem output1143_def : output1143 = (.seq output1142 output349) := by
  unfold output1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1143_skip : Flapjack.WordAlloc.isSkip output1143 = false := by
  rw [output1143_def]
  conv => lhs; cbv
  try rfl
theorem node1143_eq : Flapjack.WordAlloc.removeDeadStructural input1143 value166 value1 value2 = (output1143, value539, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node349_eq]
  try dsimp only
  rw [node1142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1143 input346)).val
theorem input1144_def : input1144 = (.seq input1143 input346) := by
  unfold input1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1143 output346)).val
theorem output1144_def : output1144 = (.seq output1143 output346) := by
  unfold output1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1144_skip : Flapjack.WordAlloc.isSkip output1144 = false := by
  rw [output1144_def]
  conv => lhs; cbv
  try rfl
theorem node1144_eq : Flapjack.WordAlloc.removeDeadStructural input1144 value164 value1 value2 = (output1144, value539, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node346_eq]
  try dsimp only
  rw [node1143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1144 input343)).val
theorem input1145_def : input1145 = (.seq input1144 input343) := by
  unfold input1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1144 output343)).val
theorem output1145_def : output1145 = (.seq output1144 output343) := by
  unfold output1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1145_skip : Flapjack.WordAlloc.isSkip output1145 = false := by
  rw [output1145_def]
  conv => lhs; cbv
  try rfl
theorem node1145_eq : Flapjack.WordAlloc.removeDeadStructural input1145 value163 value1 value2 = (output1145, value539, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node343_eq]
  try dsimp only
  rw [node1144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1145 input342)).val
theorem input1146_def : input1146 = (.seq input1145 input342) := by
  unfold input1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1145 output342)).val
theorem output1146_def : output1146 = (.seq output1145 output342) := by
  unfold output1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1146_skip : Flapjack.WordAlloc.isSkip output1146 = false := by
  rw [output1146_def]
  conv => lhs; cbv
  try rfl
theorem node1146_eq : Flapjack.WordAlloc.removeDeadStructural input1146 value161 value1 value2 = (output1146, value539, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node1145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1146 input339)).val
theorem input1147_def : input1147 = (.seq input1146 input339) := by
  unfold input1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1146 output339)).val
theorem output1147_def : output1147 = (.seq output1146 output339) := by
  unfold output1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1147_skip : Flapjack.WordAlloc.isSkip output1147 = false := by
  rw [output1147_def]
  conv => lhs; cbv
  try rfl
theorem node1147_eq : Flapjack.WordAlloc.removeDeadStructural input1147 value159 value1 value2 = (output1147, value539, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  try dsimp only
  rw [node1146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1147 input336)).val
theorem input1148_def : input1148 = (.seq input1147 input336) := by
  unfold input1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1147 output336)).val
theorem output1148_def : output1148 = (.seq output1147 output336) := by
  unfold output1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1148_skip : Flapjack.WordAlloc.isSkip output1148 = false := by
  rw [output1148_def]
  conv => lhs; cbv
  try rfl
theorem node1148_eq : Flapjack.WordAlloc.removeDeadStructural input1148 value157 value1 value2 = (output1148, value539, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node336_eq]
  try dsimp only
  rw [node1147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1148 input333)).val
theorem input1149_def : input1149 = (.seq input1148 input333) := by
  unfold input1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1148 output333)).val
theorem output1149_def : output1149 = (.seq output1148 output333) := by
  unfold output1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1149_skip : Flapjack.WordAlloc.isSkip output1149 = false := by
  rw [output1149_def]
  conv => lhs; cbv
  try rfl
theorem node1149_eq : Flapjack.WordAlloc.removeDeadStructural input1149 value156 value1 value2 = (output1149, value539, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node333_eq]
  try dsimp only
  rw [node1148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1149 input332)).val
theorem input1150_def : input1150 = (.seq input1149 input332) := by
  unfold input1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1149 output332)).val
theorem output1150_def : output1150 = (.seq output1149 output332) := by
  unfold output1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1150_skip : Flapjack.WordAlloc.isSkip output1150 = false := by
  rw [output1150_def]
  conv => lhs; cbv
  try rfl
theorem node1150_eq : Flapjack.WordAlloc.removeDeadStructural input1150 value154 value1 value2 = (output1150, value539, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node332_eq]
  try dsimp only
  rw [node1149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1150 input329)).val
theorem input1151_def : input1151 = (.seq input1150 input329) := by
  unfold input1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1150 output329)).val
theorem output1151_def : output1151 = (.seq output1150 output329) := by
  unfold output1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1151_skip : Flapjack.WordAlloc.isSkip output1151 = false := by
  rw [output1151_def]
  conv => lhs; cbv
  try rfl
theorem node1151_eq : Flapjack.WordAlloc.removeDeadStructural input1151 value152 value1 value2 = (output1151, value539, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node1150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1151 input326)).val
theorem input1152_def : input1152 = (.seq input1151 input326) := by
  unfold input1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1151 output326)).val
theorem output1152_def : output1152 = (.seq output1151 output326) := by
  unfold output1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1152_skip : Flapjack.WordAlloc.isSkip output1152 = false := by
  rw [output1152_def]
  conv => lhs; cbv
  try rfl
theorem node1152_eq : Flapjack.WordAlloc.removeDeadStructural input1152 value150 value1 value2 = (output1152, value539, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  try dsimp only
  rw [node1151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1152 input323)).val
theorem input1153_def : input1153 = (.seq input1152 input323) := by
  unfold input1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1152 output323)).val
theorem output1153_def : output1153 = (.seq output1152 output323) := by
  unfold output1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1153_skip : Flapjack.WordAlloc.isSkip output1153 = false := by
  rw [output1153_def]
  conv => lhs; cbv
  try rfl
theorem node1153_eq : Flapjack.WordAlloc.removeDeadStructural input1153 value149 value1 value2 = (output1153, value539, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node323_eq]
  try dsimp only
  rw [node1152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1153 input322)).val
theorem input1154_def : input1154 = (.seq input1153 input322) := by
  unfold input1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1153 output322)).val
theorem output1154_def : output1154 = (.seq output1153 output322) := by
  unfold output1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1154_skip : Flapjack.WordAlloc.isSkip output1154 = false := by
  rw [output1154_def]
  conv => lhs; cbv
  try rfl
theorem node1154_eq : Flapjack.WordAlloc.removeDeadStructural input1154 value147 value1 value2 = (output1154, value539, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node322_eq]
  try dsimp only
  rw [node1153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1154 input319)).val
theorem input1155_def : input1155 = (.seq input1154 input319) := by
  unfold input1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1154)).val
theorem output1155_def : output1155 = (output1154) := by
  unfold output1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1155_skip : Flapjack.WordAlloc.isSkip output1155 = false := by
  rw [output1155_def]
  conv => lhs; cbv
  try rfl
theorem node1155_eq : Flapjack.WordAlloc.removeDeadStructural input1155 value147 value1 value2 = (output1155, value539, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node319_eq]
  try dsimp only
  rw [node1154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1155 input318)).val
theorem input1156_def : input1156 = (.seq input1155 input318) := by
  unfold input1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1155 output318)).val
theorem output1156_def : output1156 = (.seq output1155 output318) := by
  unfold output1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1156_skip : Flapjack.WordAlloc.isSkip output1156 = false := by
  rw [output1156_def]
  conv => lhs; cbv
  try rfl
theorem node1156_eq : Flapjack.WordAlloc.removeDeadStructural input1156 value146 value1 value2 = (output1156, value539, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node318_eq]
  try dsimp only
  rw [node1155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1156 input317)).val
theorem input1157_def : input1157 = (.seq input1156 input317) := by
  unfold input1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1156 output317)).val
theorem output1157_def : output1157 = (.seq output1156 output317) := by
  unfold output1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1157_skip : Flapjack.WordAlloc.isSkip output1157 = false := by
  rw [output1157_def]
  conv => lhs; cbv
  try rfl
theorem node1157_eq : Flapjack.WordAlloc.removeDeadStructural input1157 value143 value1 value2 = (output1157, value539, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node317_eq]
  try dsimp only
  rw [node1156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1157 input312)).val
theorem input1158_def : input1158 = (.seq input1157 input312) := by
  unfold input1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1157 output312)).val
theorem output1158_def : output1158 = (.seq output1157 output312) := by
  unfold output1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1158_skip : Flapjack.WordAlloc.isSkip output1158 = false := by
  rw [output1158_def]
  conv => lhs; cbv
  try rfl
theorem node1158_eq : Flapjack.WordAlloc.removeDeadStructural input1158 value143 value1 value2 = (output1158, value539, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node312_eq]
  try dsimp only
  rw [node1157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1158 input311)).val
theorem input1159_def : input1159 = (.seq input1158 input311) := by
  unfold input1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1158 output311)).val
theorem output1159_def : output1159 = (.seq output1158 output311) := by
  unfold output1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1159_skip : Flapjack.WordAlloc.isSkip output1159 = false := by
  rw [output1159_def]
  conv => lhs; cbv
  try rfl
theorem node1159_eq : Flapjack.WordAlloc.removeDeadStructural input1159 value141 value1 value2 = (output1159, value539, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node311_eq]
  try dsimp only
  rw [node1158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1159 input308)).val
theorem input1160_def : input1160 = (.seq input1159 input308) := by
  unfold input1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1159 output308)).val
theorem output1160_def : output1160 = (.seq output1159 output308) := by
  unfold output1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1160_skip : Flapjack.WordAlloc.isSkip output1160 = false := by
  rw [output1160_def]
  conv => lhs; cbv
  try rfl
theorem node1160_eq : Flapjack.WordAlloc.removeDeadStructural input1160 value140 value1 value2 = (output1160, value539, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node1159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1160 input307)).val
theorem input1161_def : input1161 = (.seq input1160 input307) := by
  unfold input1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1160 output307)).val
theorem output1161_def : output1161 = (.seq output1160 output307) := by
  unfold output1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1161_skip : Flapjack.WordAlloc.isSkip output1161 = false := by
  rw [output1161_def]
  conv => lhs; cbv
  try rfl
theorem node1161_eq : Flapjack.WordAlloc.removeDeadStructural input1161 value139 value1 value2 = (output1161, value539, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node307_eq]
  try dsimp only
  rw [node1160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1161 input306)).val
theorem input1162_def : input1162 = (.seq input1161 input306) := by
  unfold input1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1161 output306)).val
theorem output1162_def : output1162 = (.seq output1161 output306) := by
  unfold output1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1162_skip : Flapjack.WordAlloc.isSkip output1162 = false := by
  rw [output1162_def]
  conv => lhs; cbv
  try rfl
theorem node1162_eq : Flapjack.WordAlloc.removeDeadStructural input1162 value137 value1 value2 = (output1162, value539, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node306_eq]
  try dsimp only
  rw [node1161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1162 input303)).val
theorem input1163_def : input1163 = (.seq input1162 input303) := by
  unfold input1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1162)).val
theorem output1163_def : output1163 = (output1162) := by
  unfold output1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1163_skip : Flapjack.WordAlloc.isSkip output1163 = false := by
  rw [output1163_def]
  conv => lhs; cbv
  try rfl
theorem node1163_eq : Flapjack.WordAlloc.removeDeadStructural input1163 value137 value1 value2 = (output1163, value539, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node1162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1163 input302)).val
theorem input1164_def : input1164 = (.seq input1163 input302) := by
  unfold input1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1163 output302)).val
theorem output1164_def : output1164 = (.seq output1163 output302) := by
  unfold output1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1164_skip : Flapjack.WordAlloc.isSkip output1164 = false := by
  rw [output1164_def]
  conv => lhs; cbv
  try rfl
theorem node1164_eq : Flapjack.WordAlloc.removeDeadStructural input1164 value136 value1 value2 = (output1164, value539, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node302_eq]
  try dsimp only
  rw [node1163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1164 input301)).val
theorem input1165_def : input1165 = (.seq input1164 input301) := by
  unfold input1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1164 output301)).val
theorem output1165_def : output1165 = (.seq output1164 output301) := by
  unfold output1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1165_skip : Flapjack.WordAlloc.isSkip output1165 = false := by
  rw [output1165_def]
  conv => lhs; cbv
  try rfl
theorem node1165_eq : Flapjack.WordAlloc.removeDeadStructural input1165 value133 value1 value2 = (output1165, value539, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node301_eq]
  try dsimp only
  rw [node1164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1165 input296)).val
theorem input1166_def : input1166 = (.seq input1165 input296) := by
  unfold input1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1165 output296)).val
theorem output1166_def : output1166 = (.seq output1165 output296) := by
  unfold output1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1166_skip : Flapjack.WordAlloc.isSkip output1166 = false := by
  rw [output1166_def]
  conv => lhs; cbv
  try rfl
theorem node1166_eq : Flapjack.WordAlloc.removeDeadStructural input1166 value133 value1 value2 = (output1166, value539, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node296_eq]
  try dsimp only
  rw [node1165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1166 input295)).val
theorem input1167_def : input1167 = (.seq input1166 input295) := by
  unfold input1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1166 output295)).val
theorem output1167_def : output1167 = (.seq output1166 output295) := by
  unfold output1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1167_skip : Flapjack.WordAlloc.isSkip output1167 = false := by
  rw [output1167_def]
  conv => lhs; cbv
  try rfl
theorem node1167_eq : Flapjack.WordAlloc.removeDeadStructural input1167 value131 value1 value2 = (output1167, value539, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node295_eq]
  try dsimp only
  rw [node1166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1167 input292)).val
theorem input1168_def : input1168 = (.seq input1167 input292) := by
  unfold input1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1167 output292)).val
theorem output1168_def : output1168 = (.seq output1167 output292) := by
  unfold output1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1168_skip : Flapjack.WordAlloc.isSkip output1168 = false := by
  rw [output1168_def]
  conv => lhs; cbv
  try rfl
theorem node1168_eq : Flapjack.WordAlloc.removeDeadStructural input1168 value130 value1 value2 = (output1168, value539, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node292_eq]
  try dsimp only
  rw [node1167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1168 input291)).val
theorem input1169_def : input1169 = (.seq input1168 input291) := by
  unfold input1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1168 output291)).val
theorem output1169_def : output1169 = (.seq output1168 output291) := by
  unfold output1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1169_skip : Flapjack.WordAlloc.isSkip output1169 = false := by
  rw [output1169_def]
  conv => lhs; cbv
  try rfl
theorem node1169_eq : Flapjack.WordAlloc.removeDeadStructural input1169 value129 value1 value2 = (output1169, value539, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node291_eq]
  try dsimp only
  rw [node1168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1169 input290)).val
theorem input1170_def : input1170 = (.seq input1169 input290) := by
  unfold input1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1169 output290)).val
theorem output1170_def : output1170 = (.seq output1169 output290) := by
  unfold output1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1170_skip : Flapjack.WordAlloc.isSkip output1170 = false := by
  rw [output1170_def]
  conv => lhs; cbv
  try rfl
theorem node1170_eq : Flapjack.WordAlloc.removeDeadStructural input1170 value127 value1 value2 = (output1170, value539, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node290_eq]
  try dsimp only
  rw [node1169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1170 input287)).val
theorem input1171_def : input1171 = (.seq input1170 input287) := by
  unfold input1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1170 output287)).val
theorem output1171_def : output1171 = (.seq output1170 output287) := by
  unfold output1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1171_skip : Flapjack.WordAlloc.isSkip output1171 = false := by
  rw [output1171_def]
  conv => lhs; cbv
  try rfl
theorem node1171_eq : Flapjack.WordAlloc.removeDeadStructural input1171 value125 value1 value2 = (output1171, value539, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node287_eq]
  try dsimp only
  rw [node1170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1171 input284)).val
theorem input1172_def : input1172 = (.seq input1171 input284) := by
  unfold input1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1171 output284)).val
theorem output1172_def : output1172 = (.seq output1171 output284) := by
  unfold output1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1172_skip : Flapjack.WordAlloc.isSkip output1172 = false := by
  rw [output1172_def]
  conv => lhs; cbv
  try rfl
theorem node1172_eq : Flapjack.WordAlloc.removeDeadStructural input1172 value123 value1 value2 = (output1172, value539, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node284_eq]
  try dsimp only
  rw [node1171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1172 input281)).val
theorem input1173_def : input1173 = (.seq input1172 input281) := by
  unfold input1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1172 output281)).val
theorem output1173_def : output1173 = (.seq output1172 output281) := by
  unfold output1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1173_skip : Flapjack.WordAlloc.isSkip output1173 = false := by
  rw [output1173_def]
  conv => lhs; cbv
  try rfl
theorem node1173_eq : Flapjack.WordAlloc.removeDeadStructural input1173 value122 value1 value2 = (output1173, value539, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node281_eq]
  try dsimp only
  rw [node1172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1173 input280)).val
theorem input1174_def : input1174 = (.seq input1173 input280) := by
  unfold input1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1173 output280)).val
theorem output1174_def : output1174 = (.seq output1173 output280) := by
  unfold output1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1174_skip : Flapjack.WordAlloc.isSkip output1174 = false := by
  rw [output1174_def]
  conv => lhs; cbv
  try rfl
theorem node1174_eq : Flapjack.WordAlloc.removeDeadStructural input1174 value120 value1 value2 = (output1174, value539, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node280_eq]
  try dsimp only
  rw [node1173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1174 input277)).val
theorem input1175_def : input1175 = (.seq input1174 input277) := by
  unfold input1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1174 output277)).val
theorem output1175_def : output1175 = (.seq output1174 output277) := by
  unfold output1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1175_skip : Flapjack.WordAlloc.isSkip output1175 = false := by
  rw [output1175_def]
  conv => lhs; cbv
  try rfl
theorem node1175_eq : Flapjack.WordAlloc.removeDeadStructural input1175 value119 value1 value2 = (output1175, value539, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node277_eq]
  try dsimp only
  rw [node1174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1175 input276)).val
theorem input1176_def : input1176 = (.seq input1175 input276) := by
  unfold input1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1175 output276)).val
theorem output1176_def : output1176 = (.seq output1175 output276) := by
  unfold output1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1176_skip : Flapjack.WordAlloc.isSkip output1176 = false := by
  rw [output1176_def]
  conv => lhs; cbv
  try rfl
theorem node1176_eq : Flapjack.WordAlloc.removeDeadStructural input1176 value118 value1 value2 = (output1176, value539, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node276_eq]
  try dsimp only
  rw [node1175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1176 input275)).val
theorem input1177_def : input1177 = (.seq input1176 input275) := by
  unfold input1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1176 output275)).val
theorem output1177_def : output1177 = (.seq output1176 output275) := by
  unfold output1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1177_skip : Flapjack.WordAlloc.isSkip output1177 = false := by
  rw [output1177_def]
  conv => lhs; cbv
  try rfl
theorem node1177_eq : Flapjack.WordAlloc.removeDeadStructural input1177 value115 value1 value2 = (output1177, value539, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node275_eq]
  try dsimp only
  rw [node1176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1177 input270)).val
theorem input1178_def : input1178 = (.seq input1177 input270) := by
  unfold input1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1177 output270)).val
theorem output1178_def : output1178 = (.seq output1177 output270) := by
  unfold output1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1178_skip : Flapjack.WordAlloc.isSkip output1178 = false := by
  rw [output1178_def]
  conv => lhs; cbv
  try rfl
theorem node1178_eq : Flapjack.WordAlloc.removeDeadStructural input1178 value115 value1 value2 = (output1178, value539, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node270_eq]
  try dsimp only
  rw [node1177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1178 input269)).val
theorem input1179_def : input1179 = (.seq input1178 input269) := by
  unfold input1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1178 output269)).val
theorem output1179_def : output1179 = (.seq output1178 output269) := by
  unfold output1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1179_skip : Flapjack.WordAlloc.isSkip output1179 = false := by
  rw [output1179_def]
  conv => lhs; cbv
  try rfl
theorem node1179_eq : Flapjack.WordAlloc.removeDeadStructural input1179 value114 value1 value2 = (output1179, value539, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node269_eq]
  try dsimp only
  rw [node1178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1179 input268)).val
theorem input1180_def : input1180 = (.seq input1179 input268) := by
  unfold input1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1179 output268)).val
theorem output1180_def : output1180 = (.seq output1179 output268) := by
  unfold output1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1180_skip : Flapjack.WordAlloc.isSkip output1180 = false := by
  rw [output1180_def]
  conv => lhs; cbv
  try rfl
theorem node1180_eq : Flapjack.WordAlloc.removeDeadStructural input1180 value113 value1 value2 = (output1180, value539, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node268_eq]
  try dsimp only
  rw [node1179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1180 input267)).val
theorem input1181_def : input1181 = (.seq input1180 input267) := by
  unfold input1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1180 output267)).val
theorem output1181_def : output1181 = (.seq output1180 output267) := by
  unfold output1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1181_skip : Flapjack.WordAlloc.isSkip output1181 = false := by
  rw [output1181_def]
  conv => lhs; cbv
  try rfl
theorem node1181_eq : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value539, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node267_eq]
  try dsimp only
  rw [node1180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1181 input226)).val
theorem input1182_def : input1182 = (.seq input1181 input226) := by
  unfold input1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1181 output226)).val
theorem output1182_def : output1182 = (.seq output1181 output226) := by
  unfold output1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1182_skip : Flapjack.WordAlloc.isSkip output1182 = false := by
  rw [output1182_def]
  conv => lhs; cbv
  try rfl
theorem node1182_eq : Flapjack.WordAlloc.removeDeadStructural input1182 value105 value1 value2 = (output1182, value539, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node226_eq]
  try dsimp only
  rw [node1181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1182 input225)).val
theorem input1183_def : input1183 = (.seq input1182 input225) := by
  unfold input1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1182 output225)).val
theorem output1183_def : output1183 = (.seq output1182 output225) := by
  unfold output1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1183_skip : Flapjack.WordAlloc.isSkip output1183 = false := by
  rw [output1183_def]
  conv => lhs; cbv
  try rfl
theorem node1183_eq : Flapjack.WordAlloc.removeDeadStructural input1183 value103 value1 value2 = (output1183, value539, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node225_eq]
  try dsimp only
  rw [node1182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1183 input222)).val
theorem input1184_def : input1184 = (.seq input1183 input222) := by
  unfold input1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1183 output222)).val
theorem output1184_def : output1184 = (.seq output1183 output222) := by
  unfold output1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1184_skip : Flapjack.WordAlloc.isSkip output1184 = false := by
  rw [output1184_def]
  conv => lhs; cbv
  try rfl
theorem node1184_eq : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value539, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node222_eq]
  try dsimp only
  rw [node1183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1184 input219)).val
theorem input1185_def : input1185 = (.seq input1184 input219) := by
  unfold input1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1184 output219)).val
theorem output1185_def : output1185 = (.seq output1184 output219) := by
  unfold output1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1185_skip : Flapjack.WordAlloc.isSkip output1185 = false := by
  rw [output1185_def]
  conv => lhs; cbv
  try rfl
theorem node1185_eq : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value539, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node219_eq]
  try dsimp only
  rw [node1184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1185 input218)).val
theorem input1186_def : input1186 = (.seq input1185 input218) := by
  unfold input1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1185 output218)).val
theorem output1186_def : output1186 = (.seq output1185 output218) := by
  unfold output1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1186_skip : Flapjack.WordAlloc.isSkip output1186 = false := by
  rw [output1186_def]
  conv => lhs; cbv
  try rfl
theorem node1186_eq : Flapjack.WordAlloc.removeDeadStructural input1186 value97 value1 value2 = (output1186, value539, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node1185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1186 input213)).val
theorem input1187_def : input1187 = (.seq input1186 input213) := by
  unfold input1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1186 output213)).val
theorem output1187_def : output1187 = (.seq output1186 output213) := by
  unfold output1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1187_skip : Flapjack.WordAlloc.isSkip output1187 = false := by
  rw [output1187_def]
  conv => lhs; cbv
  try rfl
theorem node1187_eq : Flapjack.WordAlloc.removeDeadStructural input1187 value97 value1 value2 = (output1187, value539, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  try dsimp only
  rw [node1186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1187 input212)).val
theorem input1188_def : input1188 = (.seq input1187 input212) := by
  unfold input1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1187 output212)).val
theorem output1188_def : output1188 = (.seq output1187 output212) := by
  unfold output1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1188_skip : Flapjack.WordAlloc.isSkip output1188 = false := by
  rw [output1188_def]
  conv => lhs; cbv
  try rfl
theorem node1188_eq : Flapjack.WordAlloc.removeDeadStructural input1188 value95 value1 value2 = (output1188, value539, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node212_eq]
  try dsimp only
  rw [node1187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1188 input209)).val
theorem input1189_def : input1189 = (.seq input1188 input209) := by
  unfold input1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1188 output209)).val
theorem output1189_def : output1189 = (.seq output1188 output209) := by
  unfold output1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1189_skip : Flapjack.WordAlloc.isSkip output1189 = false := by
  rw [output1189_def]
  conv => lhs; cbv
  try rfl
theorem node1189_eq : Flapjack.WordAlloc.removeDeadStructural input1189 value92 value1 value2 = (output1189, value539, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node209_eq]
  try dsimp only
  rw [node1188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1189 input204)).val
theorem input1190_def : input1190 = (.seq input1189 input204) := by
  unfold input1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1189 output204)).val
theorem output1190_def : output1190 = (.seq output1189 output204) := by
  unfold output1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1190_skip : Flapjack.WordAlloc.isSkip output1190 = false := by
  rw [output1190_def]
  conv => lhs; cbv
  try rfl
theorem node1190_eq : Flapjack.WordAlloc.removeDeadStructural input1190 value89 value1 value2 = (output1190, value539, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node1189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1190 input199)).val
theorem input1191_def : input1191 = (.seq input1190 input199) := by
  unfold input1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1190 output199)).val
theorem output1191_def : output1191 = (.seq output1190 output199) := by
  unfold output1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1191_skip : Flapjack.WordAlloc.isSkip output1191 = false := by
  rw [output1191_def]
  conv => lhs; cbv
  try rfl
theorem node1191_eq : Flapjack.WordAlloc.removeDeadStructural input1191 value89 value1 value2 = (output1191, value539, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node199_eq]
  try dsimp only
  rw [node1190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1191 input198)).val
theorem input1192_def : input1192 = (.seq input1191 input198) := by
  unfold input1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1191 output198)).val
theorem output1192_def : output1192 = (.seq output1191 output198) := by
  unfold output1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1192_skip : Flapjack.WordAlloc.isSkip output1192 = false := by
  rw [output1192_def]
  conv => lhs; cbv
  try rfl
theorem node1192_eq : Flapjack.WordAlloc.removeDeadStructural input1192 value85 value1 value2 = (output1192, value539, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node198_eq]
  try dsimp only
  rw [node1191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1192 input191)).val
theorem input1193_def : input1193 = (.seq input1192 input191) := by
  unfold input1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1192 output191)).val
theorem output1193_def : output1193 = (.seq output1192 output191) := by
  unfold output1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1193_skip : Flapjack.WordAlloc.isSkip output1193 = false := by
  rw [output1193_def]
  conv => lhs; cbv
  try rfl
theorem node1193_eq : Flapjack.WordAlloc.removeDeadStructural input1193 value84 value1 value2 = (output1193, value539, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node191_eq]
  try dsimp only
  rw [node1192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1193 input190)).val
theorem input1194_def : input1194 = (.seq input1193 input190) := by
  unfold input1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1193 output190)).val
theorem output1194_def : output1194 = (.seq output1193 output190) := by
  unfold output1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1194_skip : Flapjack.WordAlloc.isSkip output1194 = false := by
  rw [output1194_def]
  conv => lhs; cbv
  try rfl
theorem node1194_eq : Flapjack.WordAlloc.removeDeadStructural input1194 value83 value1 value2 = (output1194, value539, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  try dsimp only
  rw [node1193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1194 input189)).val
theorem input1195_def : input1195 = (.seq input1194 input189) := by
  unfold input1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1194 output189)).val
theorem output1195_def : output1195 = (.seq output1194 output189) := by
  unfold output1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1195_skip : Flapjack.WordAlloc.isSkip output1195 = false := by
  rw [output1195_def]
  conv => lhs; cbv
  try rfl
theorem node1195_eq : Flapjack.WordAlloc.removeDeadStructural input1195 value81 value1 value2 = (output1195, value539, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node1194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1195 input186)).val
theorem input1196_def : input1196 = (.seq input1195 input186) := by
  unfold input1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1195 output186)).val
theorem output1196_def : output1196 = (.seq output1195 output186) := by
  unfold output1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1196_skip : Flapjack.WordAlloc.isSkip output1196 = false := by
  rw [output1196_def]
  conv => lhs; cbv
  try rfl
theorem node1196_eq : Flapjack.WordAlloc.removeDeadStructural input1196 value80 value1 value2 = (output1196, value539, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node186_eq]
  try dsimp only
  rw [node1195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1196 input185)).val
theorem input1197_def : input1197 = (.seq input1196 input185) := by
  unfold input1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1196 output185)).val
theorem output1197_def : output1197 = (.seq output1196 output185) := by
  unfold output1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1197_skip : Flapjack.WordAlloc.isSkip output1197 = false := by
  rw [output1197_def]
  conv => lhs; cbv
  try rfl
theorem node1197_eq : Flapjack.WordAlloc.removeDeadStructural input1197 value80 value1 value2 = (output1197, value539, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node185_eq]
  try dsimp only
  rw [node1196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1197 input184)).val
theorem input1198_def : input1198 = (.seq input1197 input184) := by
  unfold input1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1197 output184)).val
theorem output1198_def : output1198 = (.seq output1197 output184) := by
  unfold output1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1198_skip : Flapjack.WordAlloc.isSkip output1198 = false := by
  rw [output1198_def]
  conv => lhs; cbv
  try rfl
theorem node1198_eq : Flapjack.WordAlloc.removeDeadStructural input1198 value33 value1 value2 = (output1198, value539, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node184_eq]
  try dsimp only
  rw [node1197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1198 input50)).val
theorem input1199_def : input1199 = (.seq input1198 input50) := by
  unfold input1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1198 output50)).val
theorem output1199_def : output1199 = (.seq output1198 output50) := by
  unfold output1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1199_skip : Flapjack.WordAlloc.isSkip output1199 = false := by
  rw [output1199_def]
  conv => lhs; cbv
  try rfl
theorem node1199_eq : Flapjack.WordAlloc.removeDeadStructural input1199 value33 value1 value2 = (output1199, value539, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node50_eq]
  try dsimp only
  rw [node1198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1199 input49)).val
theorem input1200_def : input1200 = (.seq input1199 input49) := by
  unfold input1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1199 output49)).val
theorem output1200_def : output1200 = (.seq output1199 output49) := by
  unfold output1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1200_skip : Flapjack.WordAlloc.isSkip output1200 = false := by
  rw [output1200_def]
  conv => lhs; cbv
  try rfl
theorem node1200_eq : Flapjack.WordAlloc.removeDeadStructural input1200 value29 value1 value2 = (output1200, value539, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node49_eq]
  try dsimp only
  rw [node1199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1200 input42)).val
theorem input1201_def : input1201 = (.seq input1200 input42) := by
  unfold input1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1200 output42)).val
theorem output1201_def : output1201 = (.seq output1200 output42) := by
  unfold output1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1201_skip : Flapjack.WordAlloc.isSkip output1201 = false := by
  rw [output1201_def]
  conv => lhs; cbv
  try rfl
theorem node1201_eq : Flapjack.WordAlloc.removeDeadStructural input1201 value28 value1 value2 = (output1201, value539, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node42_eq]
  try dsimp only
  rw [node1200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1201 input41)).val
theorem input1202_def : input1202 = (.seq input1201 input41) := by
  unfold input1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1201 output41)).val
theorem output1202_def : output1202 = (.seq output1201 output41) := by
  unfold output1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1202_skip : Flapjack.WordAlloc.isSkip output1202 = false := by
  rw [output1202_def]
  conv => lhs; cbv
  try rfl
theorem node1202_eq : Flapjack.WordAlloc.removeDeadStructural input1202 value27 value1 value2 = (output1202, value539, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node41_eq]
  try dsimp only
  rw [node1201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1202 input40)).val
theorem input1203_def : input1203 = (.seq input1202 input40) := by
  unfold input1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1202 output40)).val
theorem output1203_def : output1203 = (.seq output1202 output40) := by
  unfold output1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1203_skip : Flapjack.WordAlloc.isSkip output1203 = false := by
  rw [output1203_def]
  conv => lhs; cbv
  try rfl
theorem node1203_eq : Flapjack.WordAlloc.removeDeadStructural input1203 value24 value1 value2 = (output1203, value539, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node40_eq]
  try dsimp only
  rw [node1202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1203 input35)).val
theorem input1204_def : input1204 = (.seq input1203 input35) := by
  unfold input1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1203 output35)).val
theorem output1204_def : output1204 = (.seq output1203 output35) := by
  unfold output1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1204_skip : Flapjack.WordAlloc.isSkip output1204 = false := by
  rw [output1204_def]
  conv => lhs; cbv
  try rfl
theorem node1204_eq : Flapjack.WordAlloc.removeDeadStructural input1204 value24 value1 value2 = (output1204, value539, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node35_eq]
  try dsimp only
  rw [node1203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1204 input34)).val
theorem input1205_def : input1205 = (.seq input1204 input34) := by
  unfold input1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1204 output34)).val
theorem output1205_def : output1205 = (.seq output1204 output34) := by
  unfold output1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1205_skip : Flapjack.WordAlloc.isSkip output1205 = false := by
  rw [output1205_def]
  conv => lhs; cbv
  try rfl
theorem node1205_eq : Flapjack.WordAlloc.removeDeadStructural input1205 value22 value1 value2 = (output1205, value539, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node1204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1205 input31)).val
theorem input1206_def : input1206 = (.seq input1205 input31) := by
  unfold input1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1205 output31)).val
theorem output1206_def : output1206 = (.seq output1205 output31) := by
  unfold output1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1206_skip : Flapjack.WordAlloc.isSkip output1206 = false := by
  rw [output1206_def]
  conv => lhs; cbv
  try rfl
theorem node1206_eq : Flapjack.WordAlloc.removeDeadStructural input1206 value19 value1 value2 = (output1206, value539, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node31_eq]
  try dsimp only
  rw [node1205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1206 input26)).val
theorem input1207_def : input1207 = (.seq input1206 input26) := by
  unfold input1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1206 output26)).val
theorem output1207_def : output1207 = (.seq output1206 output26) := by
  unfold output1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1207_skip : Flapjack.WordAlloc.isSkip output1207 = false := by
  rw [output1207_def]
  conv => lhs; cbv
  try rfl
theorem node1207_eq : Flapjack.WordAlloc.removeDeadStructural input1207 value19 value1 value2 = (output1207, value539, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node1206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1207 input25)).val
theorem input1208_def : input1208 = (.seq input1207 input25) := by
  unfold input1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1207 output25)).val
theorem output1208_def : output1208 = (.seq output1207 output25) := by
  unfold output1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1208_skip : Flapjack.WordAlloc.isSkip output1208 = false := by
  rw [output1208_def]
  conv => lhs; cbv
  try rfl
theorem node1208_eq : Flapjack.WordAlloc.removeDeadStructural input1208 value18 value1 value2 = (output1208, value539, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node25_eq]
  try dsimp only
  rw [node1207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1208 input24)).val
theorem input1209_def : input1209 = (.seq input1208 input24) := by
  unfold input1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1208 output24)).val
theorem output1209_def : output1209 = (.seq output1208 output24) := by
  unfold output1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1209_skip : Flapjack.WordAlloc.isSkip output1209 = false := by
  rw [output1209_def]
  conv => lhs; cbv
  try rfl
theorem node1209_eq : Flapjack.WordAlloc.removeDeadStructural input1209 value17 value1 value2 = (output1209, value539, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node24_eq]
  try dsimp only
  rw [node1208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1209 input23)).val
theorem input1210_def : input1210 = (.seq input1209 input23) := by
  unfold input1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1209 output23)).val
theorem output1210_def : output1210 = (.seq output1209 output23) := by
  unfold output1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1210_skip : Flapjack.WordAlloc.isSkip output1210 = false := by
  rw [output1210_def]
  conv => lhs; cbv
  try rfl
theorem node1210_eq : Flapjack.WordAlloc.removeDeadStructural input1210 value16 value1 value2 = (output1210, value539, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node1209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1210 input22)).val
theorem input1211_def : input1211 = (.seq input1210 input22) := by
  unfold input1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1210 output22)).val
theorem output1211_def : output1211 = (.seq output1210 output22) := by
  unfold output1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1211_skip : Flapjack.WordAlloc.isSkip output1211 = false := by
  rw [output1211_def]
  conv => lhs; cbv
  try rfl
theorem node1211_eq : Flapjack.WordAlloc.removeDeadStructural input1211 value13 value1 value2 = (output1211, value539, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node1210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1211 input17)).val
theorem input1212_def : input1212 = (.seq input1211 input17) := by
  unfold input1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1211 output17)).val
theorem output1212_def : output1212 = (.seq output1211 output17) := by
  unfold output1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1212_skip : Flapjack.WordAlloc.isSkip output1212 = false := by
  rw [output1212_def]
  conv => lhs; cbv
  try rfl
theorem node1212_eq : Flapjack.WordAlloc.removeDeadStructural input1212 value13 value1 value2 = (output1212, value539, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17_eq]
  try dsimp only
  rw [node1211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1212 input16)).val
theorem input1213_def : input1213 = (.seq input1212 input16) := by
  unfold input1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1212 output16)).val
theorem output1213_def : output1213 = (.seq output1212 output16) := by
  unfold output1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1213_skip : Flapjack.WordAlloc.isSkip output1213 = false := by
  rw [output1213_def]
  conv => lhs; cbv
  try rfl
theorem node1213_eq : Flapjack.WordAlloc.removeDeadStructural input1213 value11 value1 value2 = (output1213, value539, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node16_eq]
  try dsimp only
  rw [node1212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1213 input13)).val
theorem input1214_def : input1214 = (.seq input1213 input13) := by
  unfold input1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1213 output13)).val
theorem output1214_def : output1214 = (.seq output1213 output13) := by
  unfold output1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1214_skip : Flapjack.WordAlloc.isSkip output1214 = false := by
  rw [output1214_def]
  conv => lhs; cbv
  try rfl
theorem node1214_eq : Flapjack.WordAlloc.removeDeadStructural input1214 value9 value1 value2 = (output1214, value539, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13_eq]
  try dsimp only
  rw [node1213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1214 input10)).val
theorem input1215_def : input1215 = (.seq input1214 input10) := by
  unfold input1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1214 output10)).val
theorem output1215_def : output1215 = (.seq output1214 output10) := by
  unfold output1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1215_skip : Flapjack.WordAlloc.isSkip output1215 = false := by
  rw [output1215_def]
  conv => lhs; cbv
  try rfl
theorem node1215_eq : Flapjack.WordAlloc.removeDeadStructural input1215 value8 value1 value2 = (output1215, value539, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node1214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1215 input9)).val
theorem input1216_def : input1216 = (.seq input1215 input9) := by
  unfold input1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1215 output9)).val
theorem output1216_def : output1216 = (.seq output1215 output9) := by
  unfold output1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1216_skip : Flapjack.WordAlloc.isSkip output1216 = false := by
  rw [output1216_def]
  conv => lhs; cbv
  try rfl
theorem node1216_eq : Flapjack.WordAlloc.removeDeadStructural input1216 value5 value1 value2 = (output1216, value539, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9_eq]
  try dsimp only
  rw [node1215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1216 input4)).val
theorem input1217_def : input1217 = (.seq input1216 input4) := by
  unfold input1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1216 output4)).val
theorem output1217_def : output1217 = (.seq output1216 output4) := by
  unfold output1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1217_skip : Flapjack.WordAlloc.isSkip output1217 = false := by
  rw [output1217_def]
  conv => lhs; cbv
  try rfl
theorem node1217_eq : Flapjack.WordAlloc.removeDeadStructural input1217 value5 value1 value2 = (output1217, value539, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node1216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1217 input3)).val
theorem input1218_def : input1218 = (.seq input1217 input3) := by
  unfold input1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1217 output3)).val
theorem output1218_def : output1218 = (.seq output1217 output3) := by
  unfold output1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1218_skip : Flapjack.WordAlloc.isSkip output1218 = false := by
  rw [output1218_def]
  conv => lhs; cbv
  try rfl
theorem node1218_eq : Flapjack.WordAlloc.removeDeadStructural input1218 value4 value1 value2 = (output1218, value539, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node1217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1218 input2)).val
theorem input1219_def : input1219 = (.seq input1218 input2) := by
  unfold input1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1218 output2)).val
theorem output1219_def : output1219 = (.seq output1218 output2) := by
  unfold output1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1219_skip : Flapjack.WordAlloc.isSkip output1219 = false := by
  rw [output1219_def]
  conv => lhs; cbv
  try rfl
theorem node1219_eq : Flapjack.WordAlloc.removeDeadStructural input1219 value0 value1 value2 = (output1219, value539, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node1218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value540 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(117, 0), (121, 2)])).val
theorem input1220_def : input1220 = (Flapjack.WordLangProgHOL.move 1 [(117, 0), (121, 2)]) := by
  unfold input1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(117, 0), (121, 2)])).val
theorem output1220_def : output1220 = (Flapjack.WordLangProgHOL.move 1 [(117, 0), (121, 2)]) := by
  unfold output1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1220_skip : Flapjack.WordAlloc.isSkip output1220 = false := by
  rw [output1220_def]
  conv => lhs; cbv
  try rfl
theorem node1220_eq : Flapjack.WordAlloc.removeDeadStructural input1220 value539 value1 value2 = (output1220, value540, value1) := by
  rw [input1220_def, output1220_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1220 input1219)).val
theorem input1221_def : input1221 = (.seq input1220 input1219) := by
  unfold input1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1220 output1219)).val
theorem output1221_def : output1221 = (.seq output1220 output1219) := by
  unfold output1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1221_skip : Flapjack.WordAlloc.isSkip output1221 = false := by
  rw [output1221_def]
  conv => lhs; cbv
  try rfl
theorem node1221_eq : Flapjack.WordAlloc.removeDeadStructural input1221 value0 value1 value2 = (output1221, value540, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1219_eq]
  try dsimp only
  rw [node1220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1221_eq
end InitECandidate.Proofs.DeadStages866
