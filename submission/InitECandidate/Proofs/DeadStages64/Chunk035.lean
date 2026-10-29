import InitECandidate.Proofs.DeadStages64.Chunk034
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1119 input1110)).val
theorem input1120_def : input1120 = (.seq input1119 input1110) := by
  unfold input1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1119 output1110)).val
theorem output1120_def : output1120 = (.seq output1119 output1110) := by
  unfold output1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1120_skip : Flapjack.WordAlloc.isSkip output1120 = false := by
  rw [output1120_def]
  conv => lhs; cbv
  try rfl
theorem node1120_eq : Flapjack.WordAlloc.removeDeadStructural input1120 value558 value1 value2 = (output1120, value4, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1110_eq]
  dsimp only
  rw [node1119_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1120 input1109)).val
theorem input1121_def : input1121 = (.seq input1120 input1109) := by
  unfold input1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1120 output1109)).val
theorem output1121_def : output1121 = (.seq output1120 output1109) := by
  unfold output1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1121_skip : Flapjack.WordAlloc.isSkip output1121 = false := by
  rw [output1121_def]
  conv => lhs; cbv
  try rfl
theorem node1121_eq : Flapjack.WordAlloc.removeDeadStructural input1121 value4 value1 value2 = (output1121, value4, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1109_eq]
  dsimp only
  rw [node1120_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1121 input1106)).val
theorem input1122_def : input1122 = (.seq input1121 input1106) := by
  unfold input1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1121 output1106)).val
theorem output1122_def : output1122 = (.seq output1121 output1106) := by
  unfold output1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1122_skip : Flapjack.WordAlloc.isSkip output1122 = false := by
  rw [output1122_def]
  conv => lhs; cbv
  try rfl
theorem node1122_eq : Flapjack.WordAlloc.removeDeadStructural input1122 value553 value1 value2 = (output1122, value4, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1106_eq]
  dsimp only
  rw [node1121_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1122 input1099)).val
theorem input1123_def : input1123 = (.seq input1122 input1099) := by
  unfold input1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1122)).val
theorem output1123_def : output1123 = (output1122) := by
  unfold output1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1123_skip : Flapjack.WordAlloc.isSkip output1123 = false := by
  rw [output1123_def]
  conv => lhs; cbv
  try rfl
theorem node1123_eq : Flapjack.WordAlloc.removeDeadStructural input1123 value553 value1 value2 = (output1123, value4, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1099_eq]
  dsimp only
  rw [node1122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1123 input1098)).val
theorem input1124_def : input1124 = (.seq input1123 input1098) := by
  unfold input1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1123 output1098)).val
theorem output1124_def : output1124 = (.seq output1123 output1098) := by
  unfold output1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1124_skip : Flapjack.WordAlloc.isSkip output1124 = false := by
  rw [output1124_def]
  conv => lhs; cbv
  try rfl
theorem node1124_eq : Flapjack.WordAlloc.removeDeadStructural input1124 value552 value1 value2 = (output1124, value4, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1098_eq]
  dsimp only
  rw [node1123_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1124 input1097)).val
theorem input1125_def : input1125 = (.seq input1124 input1097) := by
  unfold input1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1124 output1097)).val
theorem output1125_def : output1125 = (.seq output1124 output1097) := by
  unfold output1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1125_skip : Flapjack.WordAlloc.isSkip output1125 = false := by
  rw [output1125_def]
  conv => lhs; cbv
  try rfl
theorem node1125_eq : Flapjack.WordAlloc.removeDeadStructural input1125 value4 value1 value2 = (output1125, value4, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1097_eq]
  dsimp only
  rw [node1124_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1125 input1094)).val
theorem input1126_def : input1126 = (.seq input1125 input1094) := by
  unfold input1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1125 output1094)).val
theorem output1126_def : output1126 = (.seq output1125 output1094) := by
  unfold output1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1126_skip : Flapjack.WordAlloc.isSkip output1126 = false := by
  rw [output1126_def]
  conv => lhs; cbv
  try rfl
theorem node1126_eq : Flapjack.WordAlloc.removeDeadStructural input1126 value547 value1 value2 = (output1126, value4, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1094_eq]
  dsimp only
  rw [node1125_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1126 input1087)).val
theorem input1127_def : input1127 = (.seq input1126 input1087) := by
  unfold input1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1126)).val
theorem output1127_def : output1127 = (output1126) := by
  unfold output1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1127_skip : Flapjack.WordAlloc.isSkip output1127 = false := by
  rw [output1127_def]
  conv => lhs; cbv
  try rfl
theorem node1127_eq : Flapjack.WordAlloc.removeDeadStructural input1127 value547 value1 value2 = (output1127, value4, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1087_eq]
  dsimp only
  rw [node1126_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1127 input1086)).val
theorem input1128_def : input1128 = (.seq input1127 input1086) := by
  unfold input1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1127 output1086)).val
theorem output1128_def : output1128 = (.seq output1127 output1086) := by
  unfold output1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1128_skip : Flapjack.WordAlloc.isSkip output1128 = false := by
  rw [output1128_def]
  conv => lhs; cbv
  try rfl
theorem node1128_eq : Flapjack.WordAlloc.removeDeadStructural input1128 value546 value1 value2 = (output1128, value4, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1086_eq]
  dsimp only
  rw [node1127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1128 input1085)).val
theorem input1129_def : input1129 = (.seq input1128 input1085) := by
  unfold input1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1128 output1085)).val
theorem output1129_def : output1129 = (.seq output1128 output1085) := by
  unfold output1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1129_skip : Flapjack.WordAlloc.isSkip output1129 = false := by
  rw [output1129_def]
  conv => lhs; cbv
  try rfl
theorem node1129_eq : Flapjack.WordAlloc.removeDeadStructural input1129 value4 value1 value2 = (output1129, value4, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1085_eq]
  dsimp only
  rw [node1128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1129 input1082)).val
theorem input1130_def : input1130 = (.seq input1129 input1082) := by
  unfold input1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1129 output1082)).val
theorem output1130_def : output1130 = (.seq output1129 output1082) := by
  unfold output1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1130_skip : Flapjack.WordAlloc.isSkip output1130 = false := by
  rw [output1130_def]
  conv => lhs; cbv
  try rfl
theorem node1130_eq : Flapjack.WordAlloc.removeDeadStructural input1130 value541 value1 value2 = (output1130, value4, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1082_eq]
  dsimp only
  rw [node1129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1130 input1075)).val
theorem input1131_def : input1131 = (.seq input1130 input1075) := by
  unfold input1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1130)).val
theorem output1131_def : output1131 = (output1130) := by
  unfold output1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1131_skip : Flapjack.WordAlloc.isSkip output1131 = false := by
  rw [output1131_def]
  conv => lhs; cbv
  try rfl
theorem node1131_eq : Flapjack.WordAlloc.removeDeadStructural input1131 value541 value1 value2 = (output1131, value4, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1075_eq]
  dsimp only
  rw [node1130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1131 input1074)).val
theorem input1132_def : input1132 = (.seq input1131 input1074) := by
  unfold input1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1131 output1074)).val
theorem output1132_def : output1132 = (.seq output1131 output1074) := by
  unfold output1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1132_skip : Flapjack.WordAlloc.isSkip output1132 = false := by
  rw [output1132_def]
  conv => lhs; cbv
  try rfl
theorem node1132_eq : Flapjack.WordAlloc.removeDeadStructural input1132 value540 value1 value2 = (output1132, value4, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1074_eq]
  dsimp only
  rw [node1131_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1132 input1073)).val
theorem input1133_def : input1133 = (.seq input1132 input1073) := by
  unfold input1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1132 output1073)).val
theorem output1133_def : output1133 = (.seq output1132 output1073) := by
  unfold output1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1133_skip : Flapjack.WordAlloc.isSkip output1133 = false := by
  rw [output1133_def]
  conv => lhs; cbv
  try rfl
theorem node1133_eq : Flapjack.WordAlloc.removeDeadStructural input1133 value4 value1 value2 = (output1133, value4, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1073_eq]
  dsimp only
  rw [node1132_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1133 input1070)).val
theorem input1134_def : input1134 = (.seq input1133 input1070) := by
  unfold input1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1133 output1070)).val
theorem output1134_def : output1134 = (.seq output1133 output1070) := by
  unfold output1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1134_skip : Flapjack.WordAlloc.isSkip output1134 = false := by
  rw [output1134_def]
  conv => lhs; cbv
  try rfl
theorem node1134_eq : Flapjack.WordAlloc.removeDeadStructural input1134 value535 value1 value2 = (output1134, value4, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1070_eq]
  dsimp only
  rw [node1133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1134 input1063)).val
theorem input1135_def : input1135 = (.seq input1134 input1063) := by
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
theorem node1135_eq : Flapjack.WordAlloc.removeDeadStructural input1135 value535 value1 value2 = (output1135, value4, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1063_eq]
  dsimp only
  rw [node1134_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1135 input1062)).val
theorem input1136_def : input1136 = (.seq input1135 input1062) := by
  unfold input1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1135 output1062)).val
theorem output1136_def : output1136 = (.seq output1135 output1062) := by
  unfold output1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1136_skip : Flapjack.WordAlloc.isSkip output1136 = false := by
  rw [output1136_def]
  conv => lhs; cbv
  try rfl
theorem node1136_eq : Flapjack.WordAlloc.removeDeadStructural input1136 value534 value1 value2 = (output1136, value4, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1062_eq]
  dsimp only
  rw [node1135_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1136 input1061)).val
theorem input1137_def : input1137 = (.seq input1136 input1061) := by
  unfold input1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1136 output1061)).val
theorem output1137_def : output1137 = (.seq output1136 output1061) := by
  unfold output1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1137_skip : Flapjack.WordAlloc.isSkip output1137 = false := by
  rw [output1137_def]
  conv => lhs; cbv
  try rfl
theorem node1137_eq : Flapjack.WordAlloc.removeDeadStructural input1137 value4 value1 value2 = (output1137, value4, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1061_eq]
  dsimp only
  rw [node1136_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1137 input1058)).val
theorem input1138_def : input1138 = (.seq input1137 input1058) := by
  unfold input1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1137 output1058)).val
theorem output1138_def : output1138 = (.seq output1137 output1058) := by
  unfold output1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1138_skip : Flapjack.WordAlloc.isSkip output1138 = false := by
  rw [output1138_def]
  conv => lhs; cbv
  try rfl
theorem node1138_eq : Flapjack.WordAlloc.removeDeadStructural input1138 value529 value1 value2 = (output1138, value4, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1058_eq]
  dsimp only
  rw [node1137_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1138 input1051)).val
theorem input1139_def : input1139 = (.seq input1138 input1051) := by
  unfold input1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1138)).val
theorem output1139_def : output1139 = (output1138) := by
  unfold output1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1139_skip : Flapjack.WordAlloc.isSkip output1139 = false := by
  rw [output1139_def]
  conv => lhs; cbv
  try rfl
theorem node1139_eq : Flapjack.WordAlloc.removeDeadStructural input1139 value529 value1 value2 = (output1139, value4, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1051_eq]
  dsimp only
  rw [node1138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1139 input1050)).val
theorem input1140_def : input1140 = (.seq input1139 input1050) := by
  unfold input1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1139 output1050)).val
theorem output1140_def : output1140 = (.seq output1139 output1050) := by
  unfold output1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1140_skip : Flapjack.WordAlloc.isSkip output1140 = false := by
  rw [output1140_def]
  conv => lhs; cbv
  try rfl
theorem node1140_eq : Flapjack.WordAlloc.removeDeadStructural input1140 value528 value1 value2 = (output1140, value4, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1050_eq]
  dsimp only
  rw [node1139_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1140 input1049)).val
theorem input1141_def : input1141 = (.seq input1140 input1049) := by
  unfold input1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1140 output1049)).val
theorem output1141_def : output1141 = (.seq output1140 output1049) := by
  unfold output1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1141_skip : Flapjack.WordAlloc.isSkip output1141 = false := by
  rw [output1141_def]
  conv => lhs; cbv
  try rfl
theorem node1141_eq : Flapjack.WordAlloc.removeDeadStructural input1141 value4 value1 value2 = (output1141, value4, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1049_eq]
  dsimp only
  rw [node1140_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1141 input1046)).val
theorem input1142_def : input1142 = (.seq input1141 input1046) := by
  unfold input1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1141 output1046)).val
theorem output1142_def : output1142 = (.seq output1141 output1046) := by
  unfold output1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1142_skip : Flapjack.WordAlloc.isSkip output1142 = false := by
  rw [output1142_def]
  conv => lhs; cbv
  try rfl
theorem node1142_eq : Flapjack.WordAlloc.removeDeadStructural input1142 value523 value1 value2 = (output1142, value4, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1046_eq]
  dsimp only
  rw [node1141_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1142 input1039)).val
theorem input1143_def : input1143 = (.seq input1142 input1039) := by
  unfold input1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1142)).val
theorem output1143_def : output1143 = (output1142) := by
  unfold output1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1143_skip : Flapjack.WordAlloc.isSkip output1143 = false := by
  rw [output1143_def]
  conv => lhs; cbv
  try rfl
theorem node1143_eq : Flapjack.WordAlloc.removeDeadStructural input1143 value523 value1 value2 = (output1143, value4, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1039_eq]
  dsimp only
  rw [node1142_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1143 input1038)).val
theorem input1144_def : input1144 = (.seq input1143 input1038) := by
  unfold input1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1143 output1038)).val
theorem output1144_def : output1144 = (.seq output1143 output1038) := by
  unfold output1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1144_skip : Flapjack.WordAlloc.isSkip output1144 = false := by
  rw [output1144_def]
  conv => lhs; cbv
  try rfl
theorem node1144_eq : Flapjack.WordAlloc.removeDeadStructural input1144 value522 value1 value2 = (output1144, value4, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1038_eq]
  dsimp only
  rw [node1143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1144 input1037)).val
theorem input1145_def : input1145 = (.seq input1144 input1037) := by
  unfold input1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1144 output1037)).val
theorem output1145_def : output1145 = (.seq output1144 output1037) := by
  unfold output1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1145_skip : Flapjack.WordAlloc.isSkip output1145 = false := by
  rw [output1145_def]
  conv => lhs; cbv
  try rfl
theorem node1145_eq : Flapjack.WordAlloc.removeDeadStructural input1145 value4 value1 value2 = (output1145, value4, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1037_eq]
  dsimp only
  rw [node1144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1145 input1034)).val
theorem input1146_def : input1146 = (.seq input1145 input1034) := by
  unfold input1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1145 output1034)).val
theorem output1146_def : output1146 = (.seq output1145 output1034) := by
  unfold output1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1146_skip : Flapjack.WordAlloc.isSkip output1146 = false := by
  rw [output1146_def]
  conv => lhs; cbv
  try rfl
theorem node1146_eq : Flapjack.WordAlloc.removeDeadStructural input1146 value517 value1 value2 = (output1146, value4, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1034_eq]
  dsimp only
  rw [node1145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1146 input1027)).val
theorem input1147_def : input1147 = (.seq input1146 input1027) := by
  unfold input1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1146)).val
theorem output1147_def : output1147 = (output1146) := by
  unfold output1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1147_skip : Flapjack.WordAlloc.isSkip output1147 = false := by
  rw [output1147_def]
  conv => lhs; cbv
  try rfl
theorem node1147_eq : Flapjack.WordAlloc.removeDeadStructural input1147 value517 value1 value2 = (output1147, value4, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1027_eq]
  dsimp only
  rw [node1146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1147 input1026)).val
theorem input1148_def : input1148 = (.seq input1147 input1026) := by
  unfold input1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1147 output1026)).val
theorem output1148_def : output1148 = (.seq output1147 output1026) := by
  unfold output1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1148_skip : Flapjack.WordAlloc.isSkip output1148 = false := by
  rw [output1148_def]
  conv => lhs; cbv
  try rfl
theorem node1148_eq : Flapjack.WordAlloc.removeDeadStructural input1148 value516 value1 value2 = (output1148, value4, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1026_eq]
  dsimp only
  rw [node1147_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1148 input1025)).val
theorem input1149_def : input1149 = (.seq input1148 input1025) := by
  unfold input1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1148 output1025)).val
theorem output1149_def : output1149 = (.seq output1148 output1025) := by
  unfold output1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1149_skip : Flapjack.WordAlloc.isSkip output1149 = false := by
  rw [output1149_def]
  conv => lhs; cbv
  try rfl
theorem node1149_eq : Flapjack.WordAlloc.removeDeadStructural input1149 value4 value1 value2 = (output1149, value4, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1025_eq]
  dsimp only
  rw [node1148_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1149 input1022)).val
theorem input1150_def : input1150 = (.seq input1149 input1022) := by
  unfold input1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1149 output1022)).val
theorem output1150_def : output1150 = (.seq output1149 output1022) := by
  unfold output1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1150_skip : Flapjack.WordAlloc.isSkip output1150 = false := by
  rw [output1150_def]
  conv => lhs; cbv
  try rfl
theorem node1150_eq : Flapjack.WordAlloc.removeDeadStructural input1150 value511 value1 value2 = (output1150, value4, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1022_eq]
  dsimp only
  rw [node1149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1150 input1015)).val
theorem input1151_def : input1151 = (.seq input1150 input1015) := by
  unfold input1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1150)).val
theorem output1151_def : output1151 = (output1150) := by
  unfold output1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1151_skip : Flapjack.WordAlloc.isSkip output1151 = false := by
  rw [output1151_def]
  conv => lhs; cbv
  try rfl
theorem node1151_eq : Flapjack.WordAlloc.removeDeadStructural input1151 value511 value1 value2 = (output1151, value4, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1015_eq]
  dsimp only
  rw [node1150_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1151_eq
end InitECandidate.Proofs.DeadStages64
